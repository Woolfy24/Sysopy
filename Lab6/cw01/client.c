//
// Created by marcinaman on 4/25/18.
//

#include "Defines.h"

struct IDs {
    int private_queue_id;
    int public_queue_id;
    int session_id;
};

struct IDs current_id;
char* path;

#define setupID(){current_id.private_queue_id=-1;current_id.public_queue_id=-1;current_id.session_id=-1;}

#define setup_SIGINT(){if(signal(SIGINT,sigint_handler)==SIG_ERR){ printf("Failed to add response to SIGINT, Terminating...\n");exit(1);}}
#define setup_atexit(){if(atexit(atexit_function)==-1){printf("Failed to add atexit function, Terminatin...\n");exit(1);}}
#define setup(){setupID();setup_SIGINT();setup_atexit();}

#define check_key(key){ \
    if(key==-1) {printf("Error at generating key... Terminating\n");exit(1);}}

/* http://man7.org/linux/man-pages/man2/msgctl.2.html */
void atexit_function(){
    if(current_id.private_queue_id != -1 && msgctl(current_id.private_queue_id,IPC_RMID,NULL)==-1){
        printf("Couldn't remove queue\n");
    }
    else{
        printf("Queue deleted\n");
    }
}

void sigint_handler(int signo){
    printf("Process %d killed by SIGINT\n",getpid());
    atexit_function();
}

struct message* send_and_receive_message(struct message* m){
    if(msgsnd(current_id.public_queue_id, m, sizeof(struct message), 0) == -1){
        printf("Error while sending mirror to server\n");
        exit(1);
    }
    if(msgrcv(current_id.private_queue_id, m, sizeof(struct message), 0, 0) == -1){
        printf("Error while receiving a message from queue\n");
        exit(1);
    }

    return m;
}

/*http://pubs.opengroup.org/onlinepubs/7908799/xsh/msgrcv.html*/

void mirror_function(struct message* m){
    m->command = MIRROR;
    printf("Command to mirror:\n");
    if(fgets(m->content, CONTENT_MAX, stdin) == 0) {
        printf("client: too long input\n");
        exit(1);
    }

    m = send_and_receive_message(m);

    printf("%s", m->content);
}

void calc_function(struct message* m){
    m->command = CALC;
    printf("Command to calculate:\n");
    if(fgets(m->content, CONTENT_MAX, stdin) == 0) {
        printf("client: too long input\n");
        exit(1);
    }

    m = send_and_receive_message(m);

    printf("%s",m->content);

}

void time_function(struct message* m){
    m->command = TIME;

    m = send_and_receive_message(m);

    printf("Time: %s\n",m->content);
}

void end_function(struct message* m){
    m->command = END;
    if(msgsnd(current_id.public_queue_id,m,sizeof(struct message),0)==-1){
        printf("Error while sending END communicate via public queue");
        exit(1);
    }
}



int main(int argc, char** argv){
    setup();
    if((path=getenv("HOME")) == 0){
        printf("Failed to gain $HOME, Terminating...\n");
        exit(1);
    }

    key_t key = ftok(path, ID);
    check_key(key);
    current_id.public_queue_id = key;

    key = ftok(path,getpid());
    check_key(key);
    current_id.private_queue_id = msgget(key,IPC_CREAT | IPC_EXCL | 0666);
    check_key(current_id.private_queue_id);


    struct message m;
    m.command = LOGIN;
    m.pid = getpid();
    sprintf(m.content,"%d",key);

    if(msgsnd(current_id.public_queue_id, &m, sizeof(struct message), 0) == -1){
        printf("client: LOGIN request failed\n");
    }
    if(msgrcv(current_id.private_queue_id, &m, sizeof(struct message), 0, 0) == -1) {
        printf("client: receiving LOGIN response failed\n");
        exit(1);
    }
    if(sscanf(m.content, "%d", &current_id.session_id) < 1){
        printf("client: scanning LOGIN response failed\n");
        exit(1);
    }

    if(current_id.session_id < 0){
        printf("client: server reached maximum clients capacity\n");
        exit(1);
    }
    printf("client: registered with session no %i\n", current_id.session_id);


    struct message m2;
    char command[255];
    while(1) {
        m2.pid = getpid();
        printf("client: provide command\n");
        if(fgets(command, 20, stdin) == 0)
            printf("client: error reading your command\n");

        if(command[strlen(command)-1] == '\n')
            command[strlen(command)-1] = 0;

        if(strcmp(command, "MIRROR") == 0)
            mirror_function(&m2);
        if (strcmp(command, "CALC") == 0)
            calc_function(&m2);
        if (strcmp(command, "TIME") == 0)
            time_function(&m2);
        if (strcmp(command, "END") == 0)
            end_function(&m2);
        if (strcmp(command, "STOP") == 0)
            exit(0);
    }
    return 0;
}

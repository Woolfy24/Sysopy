# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /home/woolfy/Downloads/CLion-2018.1.2/clion-2018.1.2/bin/cmake/bin/cmake

# The command to remove a file.
RM = /home/woolfy/Downloads/CLion-2018.1.2/clion-2018.1.2/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/woolfy/Sysopy/Lab10/cw02

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/woolfy/Sysopy/Lab10/cw02/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/Lab10.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Lab10.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Lab10.dir/flags.make

CMakeFiles/Lab10.dir/server.c.o: CMakeFiles/Lab10.dir/flags.make
CMakeFiles/Lab10.dir/server.c.o: ../server.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/woolfy/Sysopy/Lab10/cw02/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/Lab10.dir/server.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Lab10.dir/server.c.o   -c /home/woolfy/Sysopy/Lab10/cw02/server.c

CMakeFiles/Lab10.dir/server.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Lab10.dir/server.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/woolfy/Sysopy/Lab10/cw02/server.c > CMakeFiles/Lab10.dir/server.c.i

CMakeFiles/Lab10.dir/server.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Lab10.dir/server.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/woolfy/Sysopy/Lab10/cw02/server.c -o CMakeFiles/Lab10.dir/server.c.s

CMakeFiles/Lab10.dir/server.c.o.requires:

.PHONY : CMakeFiles/Lab10.dir/server.c.o.requires

CMakeFiles/Lab10.dir/server.c.o.provides: CMakeFiles/Lab10.dir/server.c.o.requires
	$(MAKE) -f CMakeFiles/Lab10.dir/build.make CMakeFiles/Lab10.dir/server.c.o.provides.build
.PHONY : CMakeFiles/Lab10.dir/server.c.o.provides

CMakeFiles/Lab10.dir/server.c.o.provides.build: CMakeFiles/Lab10.dir/server.c.o


CMakeFiles/Lab10.dir/client.c.o: CMakeFiles/Lab10.dir/flags.make
CMakeFiles/Lab10.dir/client.c.o: ../client.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/woolfy/Sysopy/Lab10/cw02/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/Lab10.dir/client.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Lab10.dir/client.c.o   -c /home/woolfy/Sysopy/Lab10/cw02/client.c

CMakeFiles/Lab10.dir/client.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Lab10.dir/client.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/woolfy/Sysopy/Lab10/cw02/client.c > CMakeFiles/Lab10.dir/client.c.i

CMakeFiles/Lab10.dir/client.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Lab10.dir/client.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/woolfy/Sysopy/Lab10/cw02/client.c -o CMakeFiles/Lab10.dir/client.c.s

CMakeFiles/Lab10.dir/client.c.o.requires:

.PHONY : CMakeFiles/Lab10.dir/client.c.o.requires

CMakeFiles/Lab10.dir/client.c.o.provides: CMakeFiles/Lab10.dir/client.c.o.requires
	$(MAKE) -f CMakeFiles/Lab10.dir/build.make CMakeFiles/Lab10.dir/client.c.o.provides.build
.PHONY : CMakeFiles/Lab10.dir/client.c.o.provides

CMakeFiles/Lab10.dir/client.c.o.provides.build: CMakeFiles/Lab10.dir/client.c.o


# Object files for target Lab10
Lab10_OBJECTS = \
"CMakeFiles/Lab10.dir/server.c.o" \
"CMakeFiles/Lab10.dir/client.c.o"

# External object files for target Lab10
Lab10_EXTERNAL_OBJECTS =

Lab10: CMakeFiles/Lab10.dir/server.c.o
Lab10: CMakeFiles/Lab10.dir/client.c.o
Lab10: CMakeFiles/Lab10.dir/build.make
Lab10: CMakeFiles/Lab10.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/woolfy/Sysopy/Lab10/cw02/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C executable Lab10"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Lab10.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Lab10.dir/build: Lab10

.PHONY : CMakeFiles/Lab10.dir/build

CMakeFiles/Lab10.dir/requires: CMakeFiles/Lab10.dir/server.c.o.requires
CMakeFiles/Lab10.dir/requires: CMakeFiles/Lab10.dir/client.c.o.requires

.PHONY : CMakeFiles/Lab10.dir/requires

CMakeFiles/Lab10.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Lab10.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Lab10.dir/clean

CMakeFiles/Lab10.dir/depend:
	cd /home/woolfy/Sysopy/Lab10/cw02/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/woolfy/Sysopy/Lab10/cw02 /home/woolfy/Sysopy/Lab10/cw02 /home/woolfy/Sysopy/Lab10/cw02/cmake-build-debug /home/woolfy/Sysopy/Lab10/cw02/cmake-build-debug /home/woolfy/Sysopy/Lab10/cw02/cmake-build-debug/CMakeFiles/Lab10.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Lab10.dir/depend

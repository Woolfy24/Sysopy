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
CMAKE_SOURCE_DIR = /home/woolfy/Sysopy/Lab7/cw01

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/woolfy/Sysopy/Lab7/cw01/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/cw01.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/cw01.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/cw01.dir/flags.make

CMakeFiles/cw01.dir/creator.c.o: CMakeFiles/cw01.dir/flags.make
CMakeFiles/cw01.dir/creator.c.o: ../creator.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/woolfy/Sysopy/Lab7/cw01/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/cw01.dir/creator.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/cw01.dir/creator.c.o   -c /home/woolfy/Sysopy/Lab7/cw01/creator.c

CMakeFiles/cw01.dir/creator.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/cw01.dir/creator.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/woolfy/Sysopy/Lab7/cw01/creator.c > CMakeFiles/cw01.dir/creator.c.i

CMakeFiles/cw01.dir/creator.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/cw01.dir/creator.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/woolfy/Sysopy/Lab7/cw01/creator.c -o CMakeFiles/cw01.dir/creator.c.s

CMakeFiles/cw01.dir/creator.c.o.requires:

.PHONY : CMakeFiles/cw01.dir/creator.c.o.requires

CMakeFiles/cw01.dir/creator.c.o.provides: CMakeFiles/cw01.dir/creator.c.o.requires
	$(MAKE) -f CMakeFiles/cw01.dir/build.make CMakeFiles/cw01.dir/creator.c.o.provides.build
.PHONY : CMakeFiles/cw01.dir/creator.c.o.provides

CMakeFiles/cw01.dir/creator.c.o.provides.build: CMakeFiles/cw01.dir/creator.c.o


CMakeFiles/cw01.dir/barber.c.o: CMakeFiles/cw01.dir/flags.make
CMakeFiles/cw01.dir/barber.c.o: ../barber.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/woolfy/Sysopy/Lab7/cw01/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/cw01.dir/barber.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/cw01.dir/barber.c.o   -c /home/woolfy/Sysopy/Lab7/cw01/barber.c

CMakeFiles/cw01.dir/barber.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/cw01.dir/barber.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/woolfy/Sysopy/Lab7/cw01/barber.c > CMakeFiles/cw01.dir/barber.c.i

CMakeFiles/cw01.dir/barber.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/cw01.dir/barber.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/woolfy/Sysopy/Lab7/cw01/barber.c -o CMakeFiles/cw01.dir/barber.c.s

CMakeFiles/cw01.dir/barber.c.o.requires:

.PHONY : CMakeFiles/cw01.dir/barber.c.o.requires

CMakeFiles/cw01.dir/barber.c.o.provides: CMakeFiles/cw01.dir/barber.c.o.requires
	$(MAKE) -f CMakeFiles/cw01.dir/build.make CMakeFiles/cw01.dir/barber.c.o.provides.build
.PHONY : CMakeFiles/cw01.dir/barber.c.o.provides

CMakeFiles/cw01.dir/barber.c.o.provides.build: CMakeFiles/cw01.dir/barber.c.o


# Object files for target cw01
cw01_OBJECTS = \
"CMakeFiles/cw01.dir/creator.c.o" \
"CMakeFiles/cw01.dir/barber.c.o"

# External object files for target cw01
cw01_EXTERNAL_OBJECTS =

cw01: CMakeFiles/cw01.dir/creator.c.o
cw01: CMakeFiles/cw01.dir/barber.c.o
cw01: CMakeFiles/cw01.dir/build.make
cw01: CMakeFiles/cw01.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/woolfy/Sysopy/Lab7/cw01/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C executable cw01"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/cw01.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/cw01.dir/build: cw01

.PHONY : CMakeFiles/cw01.dir/build

CMakeFiles/cw01.dir/requires: CMakeFiles/cw01.dir/creator.c.o.requires
CMakeFiles/cw01.dir/requires: CMakeFiles/cw01.dir/barber.c.o.requires

.PHONY : CMakeFiles/cw01.dir/requires

CMakeFiles/cw01.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/cw01.dir/cmake_clean.cmake
.PHONY : CMakeFiles/cw01.dir/clean

CMakeFiles/cw01.dir/depend:
	cd /home/woolfy/Sysopy/Lab7/cw01/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/woolfy/Sysopy/Lab7/cw01 /home/woolfy/Sysopy/Lab7/cw01 /home/woolfy/Sysopy/Lab7/cw01/cmake-build-debug /home/woolfy/Sysopy/Lab7/cw01/cmake-build-debug /home/woolfy/Sysopy/Lab7/cw01/cmake-build-debug/CMakeFiles/cw01.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/cw01.dir/depend

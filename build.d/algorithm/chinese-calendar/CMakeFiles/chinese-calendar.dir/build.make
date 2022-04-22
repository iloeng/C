# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.23

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /home/linuxbrew/.linuxbrew/Cellar/cmake/3.23.0/bin/cmake

# The command to remove a file.
RM = /home/linuxbrew/.linuxbrew/Cellar/cmake/3.23.0/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/leleliu008/C

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/leleliu008/C/build.d

# Include any dependencies generated for this target.
include algorithm/chinese-calendar/CMakeFiles/chinese-calendar.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include algorithm/chinese-calendar/CMakeFiles/chinese-calendar.dir/compiler_depend.make

# Include the progress variables for this target.
include algorithm/chinese-calendar/CMakeFiles/chinese-calendar.dir/progress.make

# Include the compile flags for this target's objects.
include algorithm/chinese-calendar/CMakeFiles/chinese-calendar.dir/flags.make

algorithm/chinese-calendar/CMakeFiles/chinese-calendar.dir/src/main/chinese-calendar.c.o: algorithm/chinese-calendar/CMakeFiles/chinese-calendar.dir/flags.make
algorithm/chinese-calendar/CMakeFiles/chinese-calendar.dir/src/main/chinese-calendar.c.o: ../algorithm/chinese-calendar/src/main/chinese-calendar.c
algorithm/chinese-calendar/CMakeFiles/chinese-calendar.dir/src/main/chinese-calendar.c.o: algorithm/chinese-calendar/CMakeFiles/chinese-calendar.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/leleliu008/C/build.d/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object algorithm/chinese-calendar/CMakeFiles/chinese-calendar.dir/src/main/chinese-calendar.c.o"
	cd /home/leleliu008/C/build.d/algorithm/chinese-calendar && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT algorithm/chinese-calendar/CMakeFiles/chinese-calendar.dir/src/main/chinese-calendar.c.o -MF CMakeFiles/chinese-calendar.dir/src/main/chinese-calendar.c.o.d -o CMakeFiles/chinese-calendar.dir/src/main/chinese-calendar.c.o -c /home/leleliu008/C/algorithm/chinese-calendar/src/main/chinese-calendar.c

algorithm/chinese-calendar/CMakeFiles/chinese-calendar.dir/src/main/chinese-calendar.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/chinese-calendar.dir/src/main/chinese-calendar.c.i"
	cd /home/leleliu008/C/build.d/algorithm/chinese-calendar && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/leleliu008/C/algorithm/chinese-calendar/src/main/chinese-calendar.c > CMakeFiles/chinese-calendar.dir/src/main/chinese-calendar.c.i

algorithm/chinese-calendar/CMakeFiles/chinese-calendar.dir/src/main/chinese-calendar.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/chinese-calendar.dir/src/main/chinese-calendar.c.s"
	cd /home/leleliu008/C/build.d/algorithm/chinese-calendar && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/leleliu008/C/algorithm/chinese-calendar/src/main/chinese-calendar.c -o CMakeFiles/chinese-calendar.dir/src/main/chinese-calendar.c.s

# Object files for target chinese-calendar
chinese__calendar_OBJECTS = \
"CMakeFiles/chinese-calendar.dir/src/main/chinese-calendar.c.o"

# External object files for target chinese-calendar
chinese__calendar_EXTERNAL_OBJECTS =

algorithm/chinese-calendar/chinese-calendar: algorithm/chinese-calendar/CMakeFiles/chinese-calendar.dir/src/main/chinese-calendar.c.o
algorithm/chinese-calendar/chinese-calendar: algorithm/chinese-calendar/CMakeFiles/chinese-calendar.dir/build.make
algorithm/chinese-calendar/chinese-calendar: algorithm/chinese-calendar/libchinese-calendar.a
algorithm/chinese-calendar/chinese-calendar: algorithm/chinese-calendar/CMakeFiles/chinese-calendar.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/leleliu008/C/build.d/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable chinese-calendar"
	cd /home/leleliu008/C/build.d/algorithm/chinese-calendar && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/chinese-calendar.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
algorithm/chinese-calendar/CMakeFiles/chinese-calendar.dir/build: algorithm/chinese-calendar/chinese-calendar
.PHONY : algorithm/chinese-calendar/CMakeFiles/chinese-calendar.dir/build

algorithm/chinese-calendar/CMakeFiles/chinese-calendar.dir/clean:
	cd /home/leleliu008/C/build.d/algorithm/chinese-calendar && $(CMAKE_COMMAND) -P CMakeFiles/chinese-calendar.dir/cmake_clean.cmake
.PHONY : algorithm/chinese-calendar/CMakeFiles/chinese-calendar.dir/clean

algorithm/chinese-calendar/CMakeFiles/chinese-calendar.dir/depend:
	cd /home/leleliu008/C/build.d && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/leleliu008/C /home/leleliu008/C/algorithm/chinese-calendar /home/leleliu008/C/build.d /home/leleliu008/C/build.d/algorithm/chinese-calendar /home/leleliu008/C/build.d/algorithm/chinese-calendar/CMakeFiles/chinese-calendar.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : algorithm/chinese-calendar/CMakeFiles/chinese-calendar.dir/depend

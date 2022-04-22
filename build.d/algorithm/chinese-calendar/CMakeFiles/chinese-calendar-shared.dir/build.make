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
include algorithm/chinese-calendar/CMakeFiles/chinese-calendar-shared.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include algorithm/chinese-calendar/CMakeFiles/chinese-calendar-shared.dir/compiler_depend.make

# Include the progress variables for this target.
include algorithm/chinese-calendar/CMakeFiles/chinese-calendar-shared.dir/progress.make

# Include the compile flags for this target's objects.
include algorithm/chinese-calendar/CMakeFiles/chinese-calendar-shared.dir/flags.make

algorithm/chinese-calendar/CMakeFiles/chinese-calendar-shared.dir/src/lib/chinese-calendar.c.o: algorithm/chinese-calendar/CMakeFiles/chinese-calendar-shared.dir/flags.make
algorithm/chinese-calendar/CMakeFiles/chinese-calendar-shared.dir/src/lib/chinese-calendar.c.o: ../algorithm/chinese-calendar/src/lib/chinese-calendar.c
algorithm/chinese-calendar/CMakeFiles/chinese-calendar-shared.dir/src/lib/chinese-calendar.c.o: algorithm/chinese-calendar/CMakeFiles/chinese-calendar-shared.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/leleliu008/C/build.d/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object algorithm/chinese-calendar/CMakeFiles/chinese-calendar-shared.dir/src/lib/chinese-calendar.c.o"
	cd /home/leleliu008/C/build.d/algorithm/chinese-calendar && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT algorithm/chinese-calendar/CMakeFiles/chinese-calendar-shared.dir/src/lib/chinese-calendar.c.o -MF CMakeFiles/chinese-calendar-shared.dir/src/lib/chinese-calendar.c.o.d -o CMakeFiles/chinese-calendar-shared.dir/src/lib/chinese-calendar.c.o -c /home/leleliu008/C/algorithm/chinese-calendar/src/lib/chinese-calendar.c

algorithm/chinese-calendar/CMakeFiles/chinese-calendar-shared.dir/src/lib/chinese-calendar.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/chinese-calendar-shared.dir/src/lib/chinese-calendar.c.i"
	cd /home/leleliu008/C/build.d/algorithm/chinese-calendar && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/leleliu008/C/algorithm/chinese-calendar/src/lib/chinese-calendar.c > CMakeFiles/chinese-calendar-shared.dir/src/lib/chinese-calendar.c.i

algorithm/chinese-calendar/CMakeFiles/chinese-calendar-shared.dir/src/lib/chinese-calendar.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/chinese-calendar-shared.dir/src/lib/chinese-calendar.c.s"
	cd /home/leleliu008/C/build.d/algorithm/chinese-calendar && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/leleliu008/C/algorithm/chinese-calendar/src/lib/chinese-calendar.c -o CMakeFiles/chinese-calendar-shared.dir/src/lib/chinese-calendar.c.s

# Object files for target chinese-calendar-shared
chinese__calendar__shared_OBJECTS = \
"CMakeFiles/chinese-calendar-shared.dir/src/lib/chinese-calendar.c.o"

# External object files for target chinese-calendar-shared
chinese__calendar__shared_EXTERNAL_OBJECTS =

algorithm/chinese-calendar/libchinese-calendar.so: algorithm/chinese-calendar/CMakeFiles/chinese-calendar-shared.dir/src/lib/chinese-calendar.c.o
algorithm/chinese-calendar/libchinese-calendar.so: algorithm/chinese-calendar/CMakeFiles/chinese-calendar-shared.dir/build.make
algorithm/chinese-calendar/libchinese-calendar.so: algorithm/chinese-calendar/CMakeFiles/chinese-calendar-shared.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/leleliu008/C/build.d/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C shared library libchinese-calendar.so"
	cd /home/leleliu008/C/build.d/algorithm/chinese-calendar && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/chinese-calendar-shared.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
algorithm/chinese-calendar/CMakeFiles/chinese-calendar-shared.dir/build: algorithm/chinese-calendar/libchinese-calendar.so
.PHONY : algorithm/chinese-calendar/CMakeFiles/chinese-calendar-shared.dir/build

algorithm/chinese-calendar/CMakeFiles/chinese-calendar-shared.dir/clean:
	cd /home/leleliu008/C/build.d/algorithm/chinese-calendar && $(CMAKE_COMMAND) -P CMakeFiles/chinese-calendar-shared.dir/cmake_clean.cmake
.PHONY : algorithm/chinese-calendar/CMakeFiles/chinese-calendar-shared.dir/clean

algorithm/chinese-calendar/CMakeFiles/chinese-calendar-shared.dir/depend:
	cd /home/leleliu008/C/build.d && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/leleliu008/C /home/leleliu008/C/algorithm/chinese-calendar /home/leleliu008/C/build.d /home/leleliu008/C/build.d/algorithm/chinese-calendar /home/leleliu008/C/build.d/algorithm/chinese-calendar/CMakeFiles/chinese-calendar-shared.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : algorithm/chinese-calendar/CMakeFiles/chinese-calendar-shared.dir/depend

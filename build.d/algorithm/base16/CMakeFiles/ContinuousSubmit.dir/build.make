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

# Utility rule file for ContinuousSubmit.

# Include any custom commands dependencies for this target.
include algorithm/base16/CMakeFiles/ContinuousSubmit.dir/compiler_depend.make

# Include the progress variables for this target.
include algorithm/base16/CMakeFiles/ContinuousSubmit.dir/progress.make

algorithm/base16/CMakeFiles/ContinuousSubmit:
	cd /home/leleliu008/C/build.d/algorithm/base16 && /home/linuxbrew/.linuxbrew/Cellar/cmake/3.23.0/bin/ctest -D ContinuousSubmit

ContinuousSubmit: algorithm/base16/CMakeFiles/ContinuousSubmit
ContinuousSubmit: algorithm/base16/CMakeFiles/ContinuousSubmit.dir/build.make
.PHONY : ContinuousSubmit

# Rule to build all files generated by this target.
algorithm/base16/CMakeFiles/ContinuousSubmit.dir/build: ContinuousSubmit
.PHONY : algorithm/base16/CMakeFiles/ContinuousSubmit.dir/build

algorithm/base16/CMakeFiles/ContinuousSubmit.dir/clean:
	cd /home/leleliu008/C/build.d/algorithm/base16 && $(CMAKE_COMMAND) -P CMakeFiles/ContinuousSubmit.dir/cmake_clean.cmake
.PHONY : algorithm/base16/CMakeFiles/ContinuousSubmit.dir/clean

algorithm/base16/CMakeFiles/ContinuousSubmit.dir/depend:
	cd /home/leleliu008/C/build.d && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/leleliu008/C /home/leleliu008/C/algorithm/base16 /home/leleliu008/C/build.d /home/leleliu008/C/build.d/algorithm/base16 /home/leleliu008/C/build.d/algorithm/base16/CMakeFiles/ContinuousSubmit.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : algorithm/base16/CMakeFiles/ContinuousSubmit.dir/depend

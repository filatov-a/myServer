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

# Produce verbose output by default.
VERBOSE = 1

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
CMAKE_COMMAND = /opt/homebrew/Cellar/cmake/3.23.2/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/Cellar/cmake/3.23.2/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/f/Desktop/b/server_c/CMakeFiles/CMakeTmp

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/f/Desktop/b/server_c/CMakeFiles/CMakeTmp

# Include any dependencies generated for this target.
include CMakeFiles/cmTC_da157.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/cmTC_da157.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/cmTC_da157.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/cmTC_da157.dir/flags.make

CMakeFiles/cmTC_da157.dir/HAVE_IDN2_H.c.o: CMakeFiles/cmTC_da157.dir/flags.make
CMakeFiles/cmTC_da157.dir/HAVE_IDN2_H.c.o: /Users/f/Desktop/b/server_c/CMakeFiles/CheckIncludeFiles/HAVE_IDN2_H.c
CMakeFiles/cmTC_da157.dir/HAVE_IDN2_H.c.o: CMakeFiles/cmTC_da157.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --progress-dir=/Users/f/Desktop/b/server_c/CMakeFiles/CMakeTmp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/cmTC_da157.dir/HAVE_IDN2_H.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/cmTC_da157.dir/HAVE_IDN2_H.c.o -MF CMakeFiles/cmTC_da157.dir/HAVE_IDN2_H.c.o.d -o CMakeFiles/cmTC_da157.dir/HAVE_IDN2_H.c.o -c /Users/f/Desktop/b/server_c/CMakeFiles/CheckIncludeFiles/HAVE_IDN2_H.c

CMakeFiles/cmTC_da157.dir/HAVE_IDN2_H.c.i: cmake_force
	@echo "Preprocessing C source to CMakeFiles/cmTC_da157.dir/HAVE_IDN2_H.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/f/Desktop/b/server_c/CMakeFiles/CheckIncludeFiles/HAVE_IDN2_H.c > CMakeFiles/cmTC_da157.dir/HAVE_IDN2_H.c.i

CMakeFiles/cmTC_da157.dir/HAVE_IDN2_H.c.s: cmake_force
	@echo "Compiling C source to assembly CMakeFiles/cmTC_da157.dir/HAVE_IDN2_H.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/f/Desktop/b/server_c/CMakeFiles/CheckIncludeFiles/HAVE_IDN2_H.c -o CMakeFiles/cmTC_da157.dir/HAVE_IDN2_H.c.s

# Object files for target cmTC_da157
cmTC_da157_OBJECTS = \
"CMakeFiles/cmTC_da157.dir/HAVE_IDN2_H.c.o"

# External object files for target cmTC_da157
cmTC_da157_EXTERNAL_OBJECTS =

cmTC_da157: CMakeFiles/cmTC_da157.dir/HAVE_IDN2_H.c.o
cmTC_da157: CMakeFiles/cmTC_da157.dir/build.make
cmTC_da157: CMakeFiles/cmTC_da157.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --progress-dir=/Users/f/Desktop/b/server_c/CMakeFiles/CMakeTmp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable cmTC_da157"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/cmTC_da157.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/cmTC_da157.dir/build: cmTC_da157
.PHONY : CMakeFiles/cmTC_da157.dir/build

CMakeFiles/cmTC_da157.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/cmTC_da157.dir/cmake_clean.cmake
.PHONY : CMakeFiles/cmTC_da157.dir/clean

CMakeFiles/cmTC_da157.dir/depend:
	cd /Users/f/Desktop/b/server_c/CMakeFiles/CMakeTmp && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/f/Desktop/b/server_c/CMakeFiles/CMakeTmp /Users/f/Desktop/b/server_c/CMakeFiles/CMakeTmp /Users/f/Desktop/b/server_c/CMakeFiles/CMakeTmp /Users/f/Desktop/b/server_c/CMakeFiles/CMakeTmp /Users/f/Desktop/b/server_c/CMakeFiles/CMakeTmp/CMakeFiles/cmTC_da157.dir/DependInfo.cmake
.PHONY : CMakeFiles/cmTC_da157.dir/depend


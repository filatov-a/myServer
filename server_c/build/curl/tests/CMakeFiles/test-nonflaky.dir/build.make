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
CMAKE_COMMAND = /opt/homebrew/Cellar/cmake/3.23.2/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/Cellar/cmake/3.23.2/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/f/Desktop/b/server_c

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/f/Desktop/b/server_c/build

# Utility rule file for test-nonflaky.

# Include any custom commands dependencies for this target.
include curl/tests/CMakeFiles/test-nonflaky.dir/compiler_depend.make

# Include the progress variables for this target.
include curl/tests/CMakeFiles/test-nonflaky.dir/progress.make

curl/tests/CMakeFiles/test-nonflaky:
	cd /Users/f/Desktop/b/server_c/build/curl/tests && /usr/bin/perl /Users/f/Desktop/b/server_c/curl/tests/runtests.pl -a -p !flaky "\$$TFLAGS"

test-nonflaky: curl/tests/CMakeFiles/test-nonflaky
test-nonflaky: curl/tests/CMakeFiles/test-nonflaky.dir/build.make
.PHONY : test-nonflaky

# Rule to build all files generated by this target.
curl/tests/CMakeFiles/test-nonflaky.dir/build: test-nonflaky
.PHONY : curl/tests/CMakeFiles/test-nonflaky.dir/build

curl/tests/CMakeFiles/test-nonflaky.dir/clean:
	cd /Users/f/Desktop/b/server_c/build/curl/tests && $(CMAKE_COMMAND) -P CMakeFiles/test-nonflaky.dir/cmake_clean.cmake
.PHONY : curl/tests/CMakeFiles/test-nonflaky.dir/clean

curl/tests/CMakeFiles/test-nonflaky.dir/depend:
	cd /Users/f/Desktop/b/server_c/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/f/Desktop/b/server_c /Users/f/Desktop/b/server_c/curl/tests /Users/f/Desktop/b/server_c/build /Users/f/Desktop/b/server_c/build/curl/tests /Users/f/Desktop/b/server_c/build/curl/tests/CMakeFiles/test-nonflaky.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : curl/tests/CMakeFiles/test-nonflaky.dir/depend


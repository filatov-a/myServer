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

# Utility rule file for uninstall.

# Include any custom commands dependencies for this target.
include curl/CMakeFiles/uninstall.dir/compiler_depend.make

# Include the progress variables for this target.
include curl/CMakeFiles/uninstall.dir/progress.make

curl/CMakeFiles/uninstall:
	cd /Users/f/Desktop/b/server_c/build/curl && /opt/homebrew/Cellar/cmake/3.23.2/bin/cmake -P /Users/f/Desktop/b/server_c/build/curl/CMake/cmake_uninstall.cmake

uninstall: curl/CMakeFiles/uninstall
uninstall: curl/CMakeFiles/uninstall.dir/build.make
.PHONY : uninstall

# Rule to build all files generated by this target.
curl/CMakeFiles/uninstall.dir/build: uninstall
.PHONY : curl/CMakeFiles/uninstall.dir/build

curl/CMakeFiles/uninstall.dir/clean:
	cd /Users/f/Desktop/b/server_c/build/curl && $(CMAKE_COMMAND) -P CMakeFiles/uninstall.dir/cmake_clean.cmake
.PHONY : curl/CMakeFiles/uninstall.dir/clean

curl/CMakeFiles/uninstall.dir/depend:
	cd /Users/f/Desktop/b/server_c/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/f/Desktop/b/server_c /Users/f/Desktop/b/server_c/curl /Users/f/Desktop/b/server_c/build /Users/f/Desktop/b/server_c/build/curl /Users/f/Desktop/b/server_c/build/curl/CMakeFiles/uninstall.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : curl/CMakeFiles/uninstall.dir/depend

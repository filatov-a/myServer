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

# Include any dependencies generated for this target.
include curl/tests/server/CMakeFiles/disabled.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include curl/tests/server/CMakeFiles/disabled.dir/compiler_depend.make

# Include the progress variables for this target.
include curl/tests/server/CMakeFiles/disabled.dir/progress.make

# Include the compile flags for this target's objects.
include curl/tests/server/CMakeFiles/disabled.dir/flags.make

curl/tests/server/CMakeFiles/disabled.dir/disabled.c.o: curl/tests/server/CMakeFiles/disabled.dir/flags.make
curl/tests/server/CMakeFiles/disabled.dir/disabled.c.o: ../curl/tests/server/disabled.c
curl/tests/server/CMakeFiles/disabled.dir/disabled.c.o: curl/tests/server/CMakeFiles/disabled.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/f/Desktop/b/server_c/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object curl/tests/server/CMakeFiles/disabled.dir/disabled.c.o"
	cd /Users/f/Desktop/b/server_c/build/curl/tests/server && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT curl/tests/server/CMakeFiles/disabled.dir/disabled.c.o -MF CMakeFiles/disabled.dir/disabled.c.o.d -o CMakeFiles/disabled.dir/disabled.c.o -c /Users/f/Desktop/b/server_c/curl/tests/server/disabled.c

curl/tests/server/CMakeFiles/disabled.dir/disabled.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/disabled.dir/disabled.c.i"
	cd /Users/f/Desktop/b/server_c/build/curl/tests/server && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/f/Desktop/b/server_c/curl/tests/server/disabled.c > CMakeFiles/disabled.dir/disabled.c.i

curl/tests/server/CMakeFiles/disabled.dir/disabled.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/disabled.dir/disabled.c.s"
	cd /Users/f/Desktop/b/server_c/build/curl/tests/server && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/f/Desktop/b/server_c/curl/tests/server/disabled.c -o CMakeFiles/disabled.dir/disabled.c.s

# Object files for target disabled
disabled_OBJECTS = \
"CMakeFiles/disabled.dir/disabled.c.o"

# External object files for target disabled
disabled_EXTERNAL_OBJECTS =

curl/tests/server/disabled: curl/tests/server/CMakeFiles/disabled.dir/disabled.c.o
curl/tests/server/disabled: curl/tests/server/CMakeFiles/disabled.dir/build.make
curl/tests/server/disabled: /opt/local/libexec/openssl3/lib/libssl.dylib
curl/tests/server/disabled: /opt/local/libexec/openssl3/lib/libcrypto.dylib
curl/tests/server/disabled: /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX12.3.sdk/usr/lib/libz.tbd
curl/tests/server/disabled: /opt/local/lib/libpsl.dylib
curl/tests/server/disabled: /opt/homebrew/lib/libssh2.dylib
curl/tests/server/disabled: curl/tests/server/CMakeFiles/disabled.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/f/Desktop/b/server_c/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable disabled"
	cd /Users/f/Desktop/b/server_c/build/curl/tests/server && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/disabled.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
curl/tests/server/CMakeFiles/disabled.dir/build: curl/tests/server/disabled
.PHONY : curl/tests/server/CMakeFiles/disabled.dir/build

curl/tests/server/CMakeFiles/disabled.dir/clean:
	cd /Users/f/Desktop/b/server_c/build/curl/tests/server && $(CMAKE_COMMAND) -P CMakeFiles/disabled.dir/cmake_clean.cmake
.PHONY : curl/tests/server/CMakeFiles/disabled.dir/clean

curl/tests/server/CMakeFiles/disabled.dir/depend:
	cd /Users/f/Desktop/b/server_c/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/f/Desktop/b/server_c /Users/f/Desktop/b/server_c/curl/tests/server /Users/f/Desktop/b/server_c/build /Users/f/Desktop/b/server_c/build/curl/tests/server /Users/f/Desktop/b/server_c/build/curl/tests/server/CMakeFiles/disabled.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : curl/tests/server/CMakeFiles/disabled.dir/depend

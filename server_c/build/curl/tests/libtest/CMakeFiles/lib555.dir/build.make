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
include curl/tests/libtest/CMakeFiles/lib555.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include curl/tests/libtest/CMakeFiles/lib555.dir/compiler_depend.make

# Include the progress variables for this target.
include curl/tests/libtest/CMakeFiles/lib555.dir/progress.make

# Include the compile flags for this target's objects.
include curl/tests/libtest/CMakeFiles/lib555.dir/flags.make

curl/tests/libtest/CMakeFiles/lib555.dir/lib555.c.o: curl/tests/libtest/CMakeFiles/lib555.dir/flags.make
curl/tests/libtest/CMakeFiles/lib555.dir/lib555.c.o: ../curl/tests/libtest/lib555.c
curl/tests/libtest/CMakeFiles/lib555.dir/lib555.c.o: curl/tests/libtest/CMakeFiles/lib555.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/f/Desktop/b/server_c/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object curl/tests/libtest/CMakeFiles/lib555.dir/lib555.c.o"
	cd /Users/f/Desktop/b/server_c/build/curl/tests/libtest && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT curl/tests/libtest/CMakeFiles/lib555.dir/lib555.c.o -MF CMakeFiles/lib555.dir/lib555.c.o.d -o CMakeFiles/lib555.dir/lib555.c.o -c /Users/f/Desktop/b/server_c/curl/tests/libtest/lib555.c

curl/tests/libtest/CMakeFiles/lib555.dir/lib555.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/lib555.dir/lib555.c.i"
	cd /Users/f/Desktop/b/server_c/build/curl/tests/libtest && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/f/Desktop/b/server_c/curl/tests/libtest/lib555.c > CMakeFiles/lib555.dir/lib555.c.i

curl/tests/libtest/CMakeFiles/lib555.dir/lib555.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/lib555.dir/lib555.c.s"
	cd /Users/f/Desktop/b/server_c/build/curl/tests/libtest && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/f/Desktop/b/server_c/curl/tests/libtest/lib555.c -o CMakeFiles/lib555.dir/lib555.c.s

curl/tests/libtest/CMakeFiles/lib555.dir/__/__/lib/timediff.c.o: curl/tests/libtest/CMakeFiles/lib555.dir/flags.make
curl/tests/libtest/CMakeFiles/lib555.dir/__/__/lib/timediff.c.o: ../curl/lib/timediff.c
curl/tests/libtest/CMakeFiles/lib555.dir/__/__/lib/timediff.c.o: curl/tests/libtest/CMakeFiles/lib555.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/f/Desktop/b/server_c/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object curl/tests/libtest/CMakeFiles/lib555.dir/__/__/lib/timediff.c.o"
	cd /Users/f/Desktop/b/server_c/build/curl/tests/libtest && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT curl/tests/libtest/CMakeFiles/lib555.dir/__/__/lib/timediff.c.o -MF CMakeFiles/lib555.dir/__/__/lib/timediff.c.o.d -o CMakeFiles/lib555.dir/__/__/lib/timediff.c.o -c /Users/f/Desktop/b/server_c/curl/lib/timediff.c

curl/tests/libtest/CMakeFiles/lib555.dir/__/__/lib/timediff.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/lib555.dir/__/__/lib/timediff.c.i"
	cd /Users/f/Desktop/b/server_c/build/curl/tests/libtest && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/f/Desktop/b/server_c/curl/lib/timediff.c > CMakeFiles/lib555.dir/__/__/lib/timediff.c.i

curl/tests/libtest/CMakeFiles/lib555.dir/__/__/lib/timediff.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/lib555.dir/__/__/lib/timediff.c.s"
	cd /Users/f/Desktop/b/server_c/build/curl/tests/libtest && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/f/Desktop/b/server_c/curl/lib/timediff.c -o CMakeFiles/lib555.dir/__/__/lib/timediff.c.s

curl/tests/libtest/CMakeFiles/lib555.dir/first.c.o: curl/tests/libtest/CMakeFiles/lib555.dir/flags.make
curl/tests/libtest/CMakeFiles/lib555.dir/first.c.o: ../curl/tests/libtest/first.c
curl/tests/libtest/CMakeFiles/lib555.dir/first.c.o: curl/tests/libtest/CMakeFiles/lib555.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/f/Desktop/b/server_c/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object curl/tests/libtest/CMakeFiles/lib555.dir/first.c.o"
	cd /Users/f/Desktop/b/server_c/build/curl/tests/libtest && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT curl/tests/libtest/CMakeFiles/lib555.dir/first.c.o -MF CMakeFiles/lib555.dir/first.c.o.d -o CMakeFiles/lib555.dir/first.c.o -c /Users/f/Desktop/b/server_c/curl/tests/libtest/first.c

curl/tests/libtest/CMakeFiles/lib555.dir/first.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/lib555.dir/first.c.i"
	cd /Users/f/Desktop/b/server_c/build/curl/tests/libtest && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/f/Desktop/b/server_c/curl/tests/libtest/first.c > CMakeFiles/lib555.dir/first.c.i

curl/tests/libtest/CMakeFiles/lib555.dir/first.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/lib555.dir/first.c.s"
	cd /Users/f/Desktop/b/server_c/build/curl/tests/libtest && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/f/Desktop/b/server_c/curl/tests/libtest/first.c -o CMakeFiles/lib555.dir/first.c.s

curl/tests/libtest/CMakeFiles/lib555.dir/testutil.c.o: curl/tests/libtest/CMakeFiles/lib555.dir/flags.make
curl/tests/libtest/CMakeFiles/lib555.dir/testutil.c.o: ../curl/tests/libtest/testutil.c
curl/tests/libtest/CMakeFiles/lib555.dir/testutil.c.o: curl/tests/libtest/CMakeFiles/lib555.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/f/Desktop/b/server_c/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object curl/tests/libtest/CMakeFiles/lib555.dir/testutil.c.o"
	cd /Users/f/Desktop/b/server_c/build/curl/tests/libtest && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT curl/tests/libtest/CMakeFiles/lib555.dir/testutil.c.o -MF CMakeFiles/lib555.dir/testutil.c.o.d -o CMakeFiles/lib555.dir/testutil.c.o -c /Users/f/Desktop/b/server_c/curl/tests/libtest/testutil.c

curl/tests/libtest/CMakeFiles/lib555.dir/testutil.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/lib555.dir/testutil.c.i"
	cd /Users/f/Desktop/b/server_c/build/curl/tests/libtest && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/f/Desktop/b/server_c/curl/tests/libtest/testutil.c > CMakeFiles/lib555.dir/testutil.c.i

curl/tests/libtest/CMakeFiles/lib555.dir/testutil.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/lib555.dir/testutil.c.s"
	cd /Users/f/Desktop/b/server_c/build/curl/tests/libtest && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/f/Desktop/b/server_c/curl/tests/libtest/testutil.c -o CMakeFiles/lib555.dir/testutil.c.s

curl/tests/libtest/CMakeFiles/lib555.dir/__/__/lib/warnless.c.o: curl/tests/libtest/CMakeFiles/lib555.dir/flags.make
curl/tests/libtest/CMakeFiles/lib555.dir/__/__/lib/warnless.c.o: ../curl/lib/warnless.c
curl/tests/libtest/CMakeFiles/lib555.dir/__/__/lib/warnless.c.o: curl/tests/libtest/CMakeFiles/lib555.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/f/Desktop/b/server_c/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object curl/tests/libtest/CMakeFiles/lib555.dir/__/__/lib/warnless.c.o"
	cd /Users/f/Desktop/b/server_c/build/curl/tests/libtest && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT curl/tests/libtest/CMakeFiles/lib555.dir/__/__/lib/warnless.c.o -MF CMakeFiles/lib555.dir/__/__/lib/warnless.c.o.d -o CMakeFiles/lib555.dir/__/__/lib/warnless.c.o -c /Users/f/Desktop/b/server_c/curl/lib/warnless.c

curl/tests/libtest/CMakeFiles/lib555.dir/__/__/lib/warnless.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/lib555.dir/__/__/lib/warnless.c.i"
	cd /Users/f/Desktop/b/server_c/build/curl/tests/libtest && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/f/Desktop/b/server_c/curl/lib/warnless.c > CMakeFiles/lib555.dir/__/__/lib/warnless.c.i

curl/tests/libtest/CMakeFiles/lib555.dir/__/__/lib/warnless.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/lib555.dir/__/__/lib/warnless.c.s"
	cd /Users/f/Desktop/b/server_c/build/curl/tests/libtest && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/f/Desktop/b/server_c/curl/lib/warnless.c -o CMakeFiles/lib555.dir/__/__/lib/warnless.c.s

# Object files for target lib555
lib555_OBJECTS = \
"CMakeFiles/lib555.dir/lib555.c.o" \
"CMakeFiles/lib555.dir/__/__/lib/timediff.c.o" \
"CMakeFiles/lib555.dir/first.c.o" \
"CMakeFiles/lib555.dir/testutil.c.o" \
"CMakeFiles/lib555.dir/__/__/lib/warnless.c.o"

# External object files for target lib555
lib555_EXTERNAL_OBJECTS =

curl/tests/libtest/lib555: curl/tests/libtest/CMakeFiles/lib555.dir/lib555.c.o
curl/tests/libtest/lib555: curl/tests/libtest/CMakeFiles/lib555.dir/__/__/lib/timediff.c.o
curl/tests/libtest/lib555: curl/tests/libtest/CMakeFiles/lib555.dir/first.c.o
curl/tests/libtest/lib555: curl/tests/libtest/CMakeFiles/lib555.dir/testutil.c.o
curl/tests/libtest/lib555: curl/tests/libtest/CMakeFiles/lib555.dir/__/__/lib/warnless.c.o
curl/tests/libtest/lib555: curl/tests/libtest/CMakeFiles/lib555.dir/build.make
curl/tests/libtest/lib555: curl/lib/libcurl.dylib
curl/tests/libtest/lib555: /opt/local/libexec/openssl3/lib/libssl.dylib
curl/tests/libtest/lib555: /opt/local/libexec/openssl3/lib/libcrypto.dylib
curl/tests/libtest/lib555: /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX12.3.sdk/usr/lib/libz.tbd
curl/tests/libtest/lib555: /opt/local/lib/libpsl.dylib
curl/tests/libtest/lib555: /opt/homebrew/lib/libssh2.dylib
curl/tests/libtest/lib555: curl/tests/libtest/CMakeFiles/lib555.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/f/Desktop/b/server_c/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking C executable lib555"
	cd /Users/f/Desktop/b/server_c/build/curl/tests/libtest && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/lib555.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
curl/tests/libtest/CMakeFiles/lib555.dir/build: curl/tests/libtest/lib555
.PHONY : curl/tests/libtest/CMakeFiles/lib555.dir/build

curl/tests/libtest/CMakeFiles/lib555.dir/clean:
	cd /Users/f/Desktop/b/server_c/build/curl/tests/libtest && $(CMAKE_COMMAND) -P CMakeFiles/lib555.dir/cmake_clean.cmake
.PHONY : curl/tests/libtest/CMakeFiles/lib555.dir/clean

curl/tests/libtest/CMakeFiles/lib555.dir/depend:
	cd /Users/f/Desktop/b/server_c/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/f/Desktop/b/server_c /Users/f/Desktop/b/server_c/curl/tests/libtest /Users/f/Desktop/b/server_c/build /Users/f/Desktop/b/server_c/build/curl/tests/libtest /Users/f/Desktop/b/server_c/build/curl/tests/libtest/CMakeFiles/lib555.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : curl/tests/libtest/CMakeFiles/lib555.dir/depend

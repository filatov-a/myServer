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
include src/CMakeFiles/app.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/CMakeFiles/app.dir/compiler_depend.make

# Include the progress variables for this target.
include src/CMakeFiles/app.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/app.dir/flags.make

src/CMakeFiles/app.dir/app.cpp.o: src/CMakeFiles/app.dir/flags.make
src/CMakeFiles/app.dir/app.cpp.o: ../src/app.cpp
src/CMakeFiles/app.dir/app.cpp.o: src/CMakeFiles/app.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/f/Desktop/b/server_c/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/CMakeFiles/app.dir/app.cpp.o"
	cd /Users/f/Desktop/b/server_c/build/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/CMakeFiles/app.dir/app.cpp.o -MF CMakeFiles/app.dir/app.cpp.o.d -o CMakeFiles/app.dir/app.cpp.o -c /Users/f/Desktop/b/server_c/src/app.cpp

src/CMakeFiles/app.dir/app.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/app.dir/app.cpp.i"
	cd /Users/f/Desktop/b/server_c/build/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/f/Desktop/b/server_c/src/app.cpp > CMakeFiles/app.dir/app.cpp.i

src/CMakeFiles/app.dir/app.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/app.dir/app.cpp.s"
	cd /Users/f/Desktop/b/server_c/build/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/f/Desktop/b/server_c/src/app.cpp -o CMakeFiles/app.dir/app.cpp.s

src/CMakeFiles/app.dir/client.cpp.o: src/CMakeFiles/app.dir/flags.make
src/CMakeFiles/app.dir/client.cpp.o: ../src/client.cpp
src/CMakeFiles/app.dir/client.cpp.o: src/CMakeFiles/app.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/f/Desktop/b/server_c/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/CMakeFiles/app.dir/client.cpp.o"
	cd /Users/f/Desktop/b/server_c/build/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/CMakeFiles/app.dir/client.cpp.o -MF CMakeFiles/app.dir/client.cpp.o.d -o CMakeFiles/app.dir/client.cpp.o -c /Users/f/Desktop/b/server_c/src/client.cpp

src/CMakeFiles/app.dir/client.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/app.dir/client.cpp.i"
	cd /Users/f/Desktop/b/server_c/build/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/f/Desktop/b/server_c/src/client.cpp > CMakeFiles/app.dir/client.cpp.i

src/CMakeFiles/app.dir/client.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/app.dir/client.cpp.s"
	cd /Users/f/Desktop/b/server_c/build/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/f/Desktop/b/server_c/src/client.cpp -o CMakeFiles/app.dir/client.cpp.s

src/CMakeFiles/app.dir/main.cpp.o: src/CMakeFiles/app.dir/flags.make
src/CMakeFiles/app.dir/main.cpp.o: ../src/main.cpp
src/CMakeFiles/app.dir/main.cpp.o: src/CMakeFiles/app.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/f/Desktop/b/server_c/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object src/CMakeFiles/app.dir/main.cpp.o"
	cd /Users/f/Desktop/b/server_c/build/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/CMakeFiles/app.dir/main.cpp.o -MF CMakeFiles/app.dir/main.cpp.o.d -o CMakeFiles/app.dir/main.cpp.o -c /Users/f/Desktop/b/server_c/src/main.cpp

src/CMakeFiles/app.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/app.dir/main.cpp.i"
	cd /Users/f/Desktop/b/server_c/build/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/f/Desktop/b/server_c/src/main.cpp > CMakeFiles/app.dir/main.cpp.i

src/CMakeFiles/app.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/app.dir/main.cpp.s"
	cd /Users/f/Desktop/b/server_c/build/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/f/Desktop/b/server_c/src/main.cpp -o CMakeFiles/app.dir/main.cpp.s

src/CMakeFiles/app.dir/server.cpp.o: src/CMakeFiles/app.dir/flags.make
src/CMakeFiles/app.dir/server.cpp.o: ../src/server.cpp
src/CMakeFiles/app.dir/server.cpp.o: src/CMakeFiles/app.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/f/Desktop/b/server_c/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object src/CMakeFiles/app.dir/server.cpp.o"
	cd /Users/f/Desktop/b/server_c/build/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/CMakeFiles/app.dir/server.cpp.o -MF CMakeFiles/app.dir/server.cpp.o.d -o CMakeFiles/app.dir/server.cpp.o -c /Users/f/Desktop/b/server_c/src/server.cpp

src/CMakeFiles/app.dir/server.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/app.dir/server.cpp.i"
	cd /Users/f/Desktop/b/server_c/build/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/f/Desktop/b/server_c/src/server.cpp > CMakeFiles/app.dir/server.cpp.i

src/CMakeFiles/app.dir/server.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/app.dir/server.cpp.s"
	cd /Users/f/Desktop/b/server_c/build/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/f/Desktop/b/server_c/src/server.cpp -o CMakeFiles/app.dir/server.cpp.s

src/CMakeFiles/app.dir/web.cpp.o: src/CMakeFiles/app.dir/flags.make
src/CMakeFiles/app.dir/web.cpp.o: ../src/web.cpp
src/CMakeFiles/app.dir/web.cpp.o: src/CMakeFiles/app.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/f/Desktop/b/server_c/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object src/CMakeFiles/app.dir/web.cpp.o"
	cd /Users/f/Desktop/b/server_c/build/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/CMakeFiles/app.dir/web.cpp.o -MF CMakeFiles/app.dir/web.cpp.o.d -o CMakeFiles/app.dir/web.cpp.o -c /Users/f/Desktop/b/server_c/src/web.cpp

src/CMakeFiles/app.dir/web.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/app.dir/web.cpp.i"
	cd /Users/f/Desktop/b/server_c/build/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/f/Desktop/b/server_c/src/web.cpp > CMakeFiles/app.dir/web.cpp.i

src/CMakeFiles/app.dir/web.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/app.dir/web.cpp.s"
	cd /Users/f/Desktop/b/server_c/build/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/f/Desktop/b/server_c/src/web.cpp -o CMakeFiles/app.dir/web.cpp.s

# Object files for target app
app_OBJECTS = \
"CMakeFiles/app.dir/app.cpp.o" \
"CMakeFiles/app.dir/client.cpp.o" \
"CMakeFiles/app.dir/main.cpp.o" \
"CMakeFiles/app.dir/server.cpp.o" \
"CMakeFiles/app.dir/web.cpp.o"

# External object files for target app
app_EXTERNAL_OBJECTS =

src/app: src/CMakeFiles/app.dir/app.cpp.o
src/app: src/CMakeFiles/app.dir/client.cpp.o
src/app: src/CMakeFiles/app.dir/main.cpp.o
src/app: src/CMakeFiles/app.dir/server.cpp.o
src/app: src/CMakeFiles/app.dir/web.cpp.o
src/app: src/CMakeFiles/app.dir/build.make
src/app: src/CMakeFiles/app.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/f/Desktop/b/server_c/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking CXX executable app"
	cd /Users/f/Desktop/b/server_c/build/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/app.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/app.dir/build: src/app
.PHONY : src/CMakeFiles/app.dir/build

src/CMakeFiles/app.dir/clean:
	cd /Users/f/Desktop/b/server_c/build/src && $(CMAKE_COMMAND) -P CMakeFiles/app.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/app.dir/clean

src/CMakeFiles/app.dir/depend:
	cd /Users/f/Desktop/b/server_c/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/f/Desktop/b/server_c /Users/f/Desktop/b/server_c/src /Users/f/Desktop/b/server_c/build /Users/f/Desktop/b/server_c/build/src /Users/f/Desktop/b/server_c/build/src/CMakeFiles/app.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/app.dir/depend


# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.29

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
CMAKE_COMMAND = /Applications/CMake.app/Contents/bin/cmake

# The command to remove a file.
RM = /Applications/CMake.app/Contents/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/alexey/client

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/alexey/client/build/unknown_f8dfd7-Debug

# Include any dependencies generated for this target.
include CMakeFiles/client.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/client.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/client.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/client.dir/flags.make

CMakeFiles/client.dir/client_autogen/mocs_compilation.cpp.o: CMakeFiles/client.dir/flags.make
CMakeFiles/client.dir/client_autogen/mocs_compilation.cpp.o: client_autogen/mocs_compilation.cpp
CMakeFiles/client.dir/client_autogen/mocs_compilation.cpp.o: CMakeFiles/client.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/alexey/client/build/unknown_f8dfd7-Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/client.dir/client_autogen/mocs_compilation.cpp.o"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/client.dir/client_autogen/mocs_compilation.cpp.o -MF CMakeFiles/client.dir/client_autogen/mocs_compilation.cpp.o.d -o CMakeFiles/client.dir/client_autogen/mocs_compilation.cpp.o -c /Users/alexey/client/build/unknown_f8dfd7-Debug/client_autogen/mocs_compilation.cpp

CMakeFiles/client.dir/client_autogen/mocs_compilation.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/client.dir/client_autogen/mocs_compilation.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/alexey/client/build/unknown_f8dfd7-Debug/client_autogen/mocs_compilation.cpp > CMakeFiles/client.dir/client_autogen/mocs_compilation.cpp.i

CMakeFiles/client.dir/client_autogen/mocs_compilation.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/client.dir/client_autogen/mocs_compilation.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/alexey/client/build/unknown_f8dfd7-Debug/client_autogen/mocs_compilation.cpp -o CMakeFiles/client.dir/client_autogen/mocs_compilation.cpp.s

CMakeFiles/client.dir/main.cpp.o: CMakeFiles/client.dir/flags.make
CMakeFiles/client.dir/main.cpp.o: /Users/alexey/client/main.cpp
CMakeFiles/client.dir/main.cpp.o: CMakeFiles/client.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/alexey/client/build/unknown_f8dfd7-Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/client.dir/main.cpp.o"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/client.dir/main.cpp.o -MF CMakeFiles/client.dir/main.cpp.o.d -o CMakeFiles/client.dir/main.cpp.o -c /Users/alexey/client/main.cpp

CMakeFiles/client.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/client.dir/main.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/alexey/client/main.cpp > CMakeFiles/client.dir/main.cpp.i

CMakeFiles/client.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/client.dir/main.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/alexey/client/main.cpp -o CMakeFiles/client.dir/main.cpp.s

CMakeFiles/client.dir/client.cpp.o: CMakeFiles/client.dir/flags.make
CMakeFiles/client.dir/client.cpp.o: /Users/alexey/client/client.cpp
CMakeFiles/client.dir/client.cpp.o: CMakeFiles/client.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/alexey/client/build/unknown_f8dfd7-Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/client.dir/client.cpp.o"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/client.dir/client.cpp.o -MF CMakeFiles/client.dir/client.cpp.o.d -o CMakeFiles/client.dir/client.cpp.o -c /Users/alexey/client/client.cpp

CMakeFiles/client.dir/client.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/client.dir/client.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/alexey/client/client.cpp > CMakeFiles/client.dir/client.cpp.i

CMakeFiles/client.dir/client.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/client.dir/client.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/alexey/client/client.cpp -o CMakeFiles/client.dir/client.cpp.s

# Object files for target client
client_OBJECTS = \
"CMakeFiles/client.dir/client_autogen/mocs_compilation.cpp.o" \
"CMakeFiles/client.dir/main.cpp.o" \
"CMakeFiles/client.dir/client.cpp.o"

# External object files for target client
client_EXTERNAL_OBJECTS =

client: CMakeFiles/client.dir/client_autogen/mocs_compilation.cpp.o
client: CMakeFiles/client.dir/main.cpp.o
client: CMakeFiles/client.dir/client.cpp.o
client: CMakeFiles/client.dir/build.make
client: /opt/homebrew/lib/QtNetwork.framework/Versions/A/QtNetwork
client: /opt/homebrew/lib/QtCore.framework/Versions/A/QtCore
client: CMakeFiles/client.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/alexey/client/build/unknown_f8dfd7-Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable client"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/client.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/client.dir/build: client
.PHONY : CMakeFiles/client.dir/build

CMakeFiles/client.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/client.dir/cmake_clean.cmake
.PHONY : CMakeFiles/client.dir/clean

CMakeFiles/client.dir/depend:
	cd /Users/alexey/client/build/unknown_f8dfd7-Debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/alexey/client /Users/alexey/client /Users/alexey/client/build/unknown_f8dfd7-Debug /Users/alexey/client/build/unknown_f8dfd7-Debug /Users/alexey/client/build/unknown_f8dfd7-Debug/CMakeFiles/client.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/client.dir/depend


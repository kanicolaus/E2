# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.10.2/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.10.2/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/karlnico/p-links/e2

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/karlnico/p-links/e2/build3

# Include any dependencies generated for this target.
include CMakeFiles/e2.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/e2.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/e2.dir/flags.make

CMakeFiles/e2.dir/main.cc.o: CMakeFiles/e2.dir/flags.make
CMakeFiles/e2.dir/main.cc.o: ../main.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/karlnico/p-links/e2/build3/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/e2.dir/main.cc.o"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/e2.dir/main.cc.o -c /Users/karlnico/p-links/e2/main.cc

CMakeFiles/e2.dir/main.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/e2.dir/main.cc.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/karlnico/p-links/e2/main.cc > CMakeFiles/e2.dir/main.cc.i

CMakeFiles/e2.dir/main.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/e2.dir/main.cc.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/karlnico/p-links/e2/main.cc -o CMakeFiles/e2.dir/main.cc.s

CMakeFiles/e2.dir/main.cc.o.requires:

.PHONY : CMakeFiles/e2.dir/main.cc.o.requires

CMakeFiles/e2.dir/main.cc.o.provides: CMakeFiles/e2.dir/main.cc.o.requires
	$(MAKE) -f CMakeFiles/e2.dir/build.make CMakeFiles/e2.dir/main.cc.o.provides.build
.PHONY : CMakeFiles/e2.dir/main.cc.o.provides

CMakeFiles/e2.dir/main.cc.o.provides.build: CMakeFiles/e2.dir/main.cc.o


CMakeFiles/e2.dir/c2.cc.o: CMakeFiles/e2.dir/flags.make
CMakeFiles/e2.dir/c2.cc.o: ../c2.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/karlnico/p-links/e2/build3/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/e2.dir/c2.cc.o"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/e2.dir/c2.cc.o -c /Users/karlnico/p-links/e2/c2.cc

CMakeFiles/e2.dir/c2.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/e2.dir/c2.cc.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/karlnico/p-links/e2/c2.cc > CMakeFiles/e2.dir/c2.cc.i

CMakeFiles/e2.dir/c2.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/e2.dir/c2.cc.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/karlnico/p-links/e2/c2.cc -o CMakeFiles/e2.dir/c2.cc.s

CMakeFiles/e2.dir/c2.cc.o.requires:

.PHONY : CMakeFiles/e2.dir/c2.cc.o.requires

CMakeFiles/e2.dir/c2.cc.o.provides: CMakeFiles/e2.dir/c2.cc.o.requires
	$(MAKE) -f CMakeFiles/e2.dir/build.make CMakeFiles/e2.dir/c2.cc.o.provides.build
.PHONY : CMakeFiles/e2.dir/c2.cc.o.provides

CMakeFiles/e2.dir/c2.cc.o.provides.build: CMakeFiles/e2.dir/c2.cc.o


# Object files for target e2
e2_OBJECTS = \
"CMakeFiles/e2.dir/main.cc.o" \
"CMakeFiles/e2.dir/c2.cc.o"

# External object files for target e2
e2_EXTERNAL_OBJECTS =

e2: CMakeFiles/e2.dir/main.cc.o
e2: CMakeFiles/e2.dir/c2.cc.o
e2: CMakeFiles/e2.dir/build.make
e2: CMakeFiles/e2.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/karlnico/p-links/e2/build3/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable e2"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/e2.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/e2.dir/build: e2

.PHONY : CMakeFiles/e2.dir/build

CMakeFiles/e2.dir/requires: CMakeFiles/e2.dir/main.cc.o.requires
CMakeFiles/e2.dir/requires: CMakeFiles/e2.dir/c2.cc.o.requires

.PHONY : CMakeFiles/e2.dir/requires

CMakeFiles/e2.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/e2.dir/cmake_clean.cmake
.PHONY : CMakeFiles/e2.dir/clean

CMakeFiles/e2.dir/depend:
	cd /Users/karlnico/p-links/e2/build3 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/karlnico/p-links/e2 /Users/karlnico/p-links/e2 /Users/karlnico/p-links/e2/build3 /Users/karlnico/p-links/e2/build3 /Users/karlnico/p-links/e2/build3/CMakeFiles/e2.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/e2.dir/depend


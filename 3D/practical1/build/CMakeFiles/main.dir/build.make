# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The program to use to edit the cache.
CMAKE_EDIT_COMMAND = /usr/bin/ccmake

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /user/5/.base/steinhia/home/3D/practical1

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /user/5/.base/steinhia/home/3D/practical1/build

# Include any dependencies generated for this target.
include CMakeFiles/main.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/main.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/main.dir/flags.make

CMakeFiles/main.dir/src/ConeRenderable.cpp.o: CMakeFiles/main.dir/flags.make
CMakeFiles/main.dir/src/ConeRenderable.cpp.o: ../src/ConeRenderable.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /user/5/.base/steinhia/home/3D/practical1/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/main.dir/src/ConeRenderable.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/main.dir/src/ConeRenderable.cpp.o -c /user/5/.base/steinhia/home/3D/practical1/src/ConeRenderable.cpp

CMakeFiles/main.dir/src/ConeRenderable.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/main.dir/src/ConeRenderable.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /user/5/.base/steinhia/home/3D/practical1/src/ConeRenderable.cpp > CMakeFiles/main.dir/src/ConeRenderable.cpp.i

CMakeFiles/main.dir/src/ConeRenderable.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/main.dir/src/ConeRenderable.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /user/5/.base/steinhia/home/3D/practical1/src/ConeRenderable.cpp -o CMakeFiles/main.dir/src/ConeRenderable.cpp.s

CMakeFiles/main.dir/src/ConeRenderable.cpp.o.requires:
.PHONY : CMakeFiles/main.dir/src/ConeRenderable.cpp.o.requires

CMakeFiles/main.dir/src/ConeRenderable.cpp.o.provides: CMakeFiles/main.dir/src/ConeRenderable.cpp.o.requires
	$(MAKE) -f CMakeFiles/main.dir/build.make CMakeFiles/main.dir/src/ConeRenderable.cpp.o.provides.build
.PHONY : CMakeFiles/main.dir/src/ConeRenderable.cpp.o.provides

CMakeFiles/main.dir/src/ConeRenderable.cpp.o.provides.build: CMakeFiles/main.dir/src/ConeRenderable.cpp.o

CMakeFiles/main.dir/src/Io.cpp.o: CMakeFiles/main.dir/flags.make
CMakeFiles/main.dir/src/Io.cpp.o: ../src/Io.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /user/5/.base/steinhia/home/3D/practical1/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/main.dir/src/Io.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/main.dir/src/Io.cpp.o -c /user/5/.base/steinhia/home/3D/practical1/src/Io.cpp

CMakeFiles/main.dir/src/Io.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/main.dir/src/Io.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /user/5/.base/steinhia/home/3D/practical1/src/Io.cpp > CMakeFiles/main.dir/src/Io.cpp.i

CMakeFiles/main.dir/src/Io.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/main.dir/src/Io.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /user/5/.base/steinhia/home/3D/practical1/src/Io.cpp -o CMakeFiles/main.dir/src/Io.cpp.s

CMakeFiles/main.dir/src/Io.cpp.o.requires:
.PHONY : CMakeFiles/main.dir/src/Io.cpp.o.requires

CMakeFiles/main.dir/src/Io.cpp.o.provides: CMakeFiles/main.dir/src/Io.cpp.o.requires
	$(MAKE) -f CMakeFiles/main.dir/build.make CMakeFiles/main.dir/src/Io.cpp.o.provides.build
.PHONY : CMakeFiles/main.dir/src/Io.cpp.o.provides

CMakeFiles/main.dir/src/Io.cpp.o.provides.build: CMakeFiles/main.dir/src/Io.cpp.o

CMakeFiles/main.dir/src/ToreRenderable.cpp.o: CMakeFiles/main.dir/flags.make
CMakeFiles/main.dir/src/ToreRenderable.cpp.o: ../src/ToreRenderable.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /user/5/.base/steinhia/home/3D/practical1/build/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/main.dir/src/ToreRenderable.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/main.dir/src/ToreRenderable.cpp.o -c /user/5/.base/steinhia/home/3D/practical1/src/ToreRenderable.cpp

CMakeFiles/main.dir/src/ToreRenderable.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/main.dir/src/ToreRenderable.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /user/5/.base/steinhia/home/3D/practical1/src/ToreRenderable.cpp > CMakeFiles/main.dir/src/ToreRenderable.cpp.i

CMakeFiles/main.dir/src/ToreRenderable.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/main.dir/src/ToreRenderable.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /user/5/.base/steinhia/home/3D/practical1/src/ToreRenderable.cpp -o CMakeFiles/main.dir/src/ToreRenderable.cpp.s

CMakeFiles/main.dir/src/ToreRenderable.cpp.o.requires:
.PHONY : CMakeFiles/main.dir/src/ToreRenderable.cpp.o.requires

CMakeFiles/main.dir/src/ToreRenderable.cpp.o.provides: CMakeFiles/main.dir/src/ToreRenderable.cpp.o.requires
	$(MAKE) -f CMakeFiles/main.dir/build.make CMakeFiles/main.dir/src/ToreRenderable.cpp.o.provides.build
.PHONY : CMakeFiles/main.dir/src/ToreRenderable.cpp.o.provides

CMakeFiles/main.dir/src/ToreRenderable.cpp.o.provides.build: CMakeFiles/main.dir/src/ToreRenderable.cpp.o

CMakeFiles/main.dir/src/IndexedCubeRenderable.cpp.o: CMakeFiles/main.dir/flags.make
CMakeFiles/main.dir/src/IndexedCubeRenderable.cpp.o: ../src/IndexedCubeRenderable.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /user/5/.base/steinhia/home/3D/practical1/build/CMakeFiles $(CMAKE_PROGRESS_4)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/main.dir/src/IndexedCubeRenderable.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/main.dir/src/IndexedCubeRenderable.cpp.o -c /user/5/.base/steinhia/home/3D/practical1/src/IndexedCubeRenderable.cpp

CMakeFiles/main.dir/src/IndexedCubeRenderable.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/main.dir/src/IndexedCubeRenderable.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /user/5/.base/steinhia/home/3D/practical1/src/IndexedCubeRenderable.cpp > CMakeFiles/main.dir/src/IndexedCubeRenderable.cpp.i

CMakeFiles/main.dir/src/IndexedCubeRenderable.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/main.dir/src/IndexedCubeRenderable.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /user/5/.base/steinhia/home/3D/practical1/src/IndexedCubeRenderable.cpp -o CMakeFiles/main.dir/src/IndexedCubeRenderable.cpp.s

CMakeFiles/main.dir/src/IndexedCubeRenderable.cpp.o.requires:
.PHONY : CMakeFiles/main.dir/src/IndexedCubeRenderable.cpp.o.requires

CMakeFiles/main.dir/src/IndexedCubeRenderable.cpp.o.provides: CMakeFiles/main.dir/src/IndexedCubeRenderable.cpp.o.requires
	$(MAKE) -f CMakeFiles/main.dir/build.make CMakeFiles/main.dir/src/IndexedCubeRenderable.cpp.o.provides.build
.PHONY : CMakeFiles/main.dir/src/IndexedCubeRenderable.cpp.o.provides

CMakeFiles/main.dir/src/IndexedCubeRenderable.cpp.o.provides.build: CMakeFiles/main.dir/src/IndexedCubeRenderable.cpp.o

CMakeFiles/main.dir/src/Renderable.cpp.o: CMakeFiles/main.dir/flags.make
CMakeFiles/main.dir/src/Renderable.cpp.o: ../src/Renderable.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /user/5/.base/steinhia/home/3D/practical1/build/CMakeFiles $(CMAKE_PROGRESS_5)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/main.dir/src/Renderable.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/main.dir/src/Renderable.cpp.o -c /user/5/.base/steinhia/home/3D/practical1/src/Renderable.cpp

CMakeFiles/main.dir/src/Renderable.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/main.dir/src/Renderable.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /user/5/.base/steinhia/home/3D/practical1/src/Renderable.cpp > CMakeFiles/main.dir/src/Renderable.cpp.i

CMakeFiles/main.dir/src/Renderable.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/main.dir/src/Renderable.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /user/5/.base/steinhia/home/3D/practical1/src/Renderable.cpp -o CMakeFiles/main.dir/src/Renderable.cpp.s

CMakeFiles/main.dir/src/Renderable.cpp.o.requires:
.PHONY : CMakeFiles/main.dir/src/Renderable.cpp.o.requires

CMakeFiles/main.dir/src/Renderable.cpp.o.provides: CMakeFiles/main.dir/src/Renderable.cpp.o.requires
	$(MAKE) -f CMakeFiles/main.dir/build.make CMakeFiles/main.dir/src/Renderable.cpp.o.provides.build
.PHONY : CMakeFiles/main.dir/src/Renderable.cpp.o.provides

CMakeFiles/main.dir/src/Renderable.cpp.o.provides.build: CMakeFiles/main.dir/src/Renderable.cpp.o

CMakeFiles/main.dir/src/ShaderProgram.cpp.o: CMakeFiles/main.dir/flags.make
CMakeFiles/main.dir/src/ShaderProgram.cpp.o: ../src/ShaderProgram.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /user/5/.base/steinhia/home/3D/practical1/build/CMakeFiles $(CMAKE_PROGRESS_6)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/main.dir/src/ShaderProgram.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/main.dir/src/ShaderProgram.cpp.o -c /user/5/.base/steinhia/home/3D/practical1/src/ShaderProgram.cpp

CMakeFiles/main.dir/src/ShaderProgram.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/main.dir/src/ShaderProgram.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /user/5/.base/steinhia/home/3D/practical1/src/ShaderProgram.cpp > CMakeFiles/main.dir/src/ShaderProgram.cpp.i

CMakeFiles/main.dir/src/ShaderProgram.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/main.dir/src/ShaderProgram.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /user/5/.base/steinhia/home/3D/practical1/src/ShaderProgram.cpp -o CMakeFiles/main.dir/src/ShaderProgram.cpp.s

CMakeFiles/main.dir/src/ShaderProgram.cpp.o.requires:
.PHONY : CMakeFiles/main.dir/src/ShaderProgram.cpp.o.requires

CMakeFiles/main.dir/src/ShaderProgram.cpp.o.provides: CMakeFiles/main.dir/src/ShaderProgram.cpp.o.requires
	$(MAKE) -f CMakeFiles/main.dir/build.make CMakeFiles/main.dir/src/ShaderProgram.cpp.o.provides.build
.PHONY : CMakeFiles/main.dir/src/ShaderProgram.cpp.o.provides

CMakeFiles/main.dir/src/ShaderProgram.cpp.o.provides.build: CMakeFiles/main.dir/src/ShaderProgram.cpp.o

CMakeFiles/main.dir/src/TextEngine.cpp.o: CMakeFiles/main.dir/flags.make
CMakeFiles/main.dir/src/TextEngine.cpp.o: ../src/TextEngine.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /user/5/.base/steinhia/home/3D/practical1/build/CMakeFiles $(CMAKE_PROGRESS_7)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/main.dir/src/TextEngine.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/main.dir/src/TextEngine.cpp.o -c /user/5/.base/steinhia/home/3D/practical1/src/TextEngine.cpp

CMakeFiles/main.dir/src/TextEngine.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/main.dir/src/TextEngine.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /user/5/.base/steinhia/home/3D/practical1/src/TextEngine.cpp > CMakeFiles/main.dir/src/TextEngine.cpp.i

CMakeFiles/main.dir/src/TextEngine.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/main.dir/src/TextEngine.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /user/5/.base/steinhia/home/3D/practical1/src/TextEngine.cpp -o CMakeFiles/main.dir/src/TextEngine.cpp.s

CMakeFiles/main.dir/src/TextEngine.cpp.o.requires:
.PHONY : CMakeFiles/main.dir/src/TextEngine.cpp.o.requires

CMakeFiles/main.dir/src/TextEngine.cpp.o.provides: CMakeFiles/main.dir/src/TextEngine.cpp.o.requires
	$(MAKE) -f CMakeFiles/main.dir/build.make CMakeFiles/main.dir/src/TextEngine.cpp.o.provides.build
.PHONY : CMakeFiles/main.dir/src/TextEngine.cpp.o.provides

CMakeFiles/main.dir/src/TextEngine.cpp.o.provides.build: CMakeFiles/main.dir/src/TextEngine.cpp.o

CMakeFiles/main.dir/src/FPSCounter.cpp.o: CMakeFiles/main.dir/flags.make
CMakeFiles/main.dir/src/FPSCounter.cpp.o: ../src/FPSCounter.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /user/5/.base/steinhia/home/3D/practical1/build/CMakeFiles $(CMAKE_PROGRESS_8)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/main.dir/src/FPSCounter.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/main.dir/src/FPSCounter.cpp.o -c /user/5/.base/steinhia/home/3D/practical1/src/FPSCounter.cpp

CMakeFiles/main.dir/src/FPSCounter.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/main.dir/src/FPSCounter.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /user/5/.base/steinhia/home/3D/practical1/src/FPSCounter.cpp > CMakeFiles/main.dir/src/FPSCounter.cpp.i

CMakeFiles/main.dir/src/FPSCounter.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/main.dir/src/FPSCounter.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /user/5/.base/steinhia/home/3D/practical1/src/FPSCounter.cpp -o CMakeFiles/main.dir/src/FPSCounter.cpp.s

CMakeFiles/main.dir/src/FPSCounter.cpp.o.requires:
.PHONY : CMakeFiles/main.dir/src/FPSCounter.cpp.o.requires

CMakeFiles/main.dir/src/FPSCounter.cpp.o.provides: CMakeFiles/main.dir/src/FPSCounter.cpp.o.requires
	$(MAKE) -f CMakeFiles/main.dir/build.make CMakeFiles/main.dir/src/FPSCounter.cpp.o.provides.build
.PHONY : CMakeFiles/main.dir/src/FPSCounter.cpp.o.provides

CMakeFiles/main.dir/src/FPSCounter.cpp.o.provides.build: CMakeFiles/main.dir/src/FPSCounter.cpp.o

CMakeFiles/main.dir/src/main.cpp.o: CMakeFiles/main.dir/flags.make
CMakeFiles/main.dir/src/main.cpp.o: ../src/main.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /user/5/.base/steinhia/home/3D/practical1/build/CMakeFiles $(CMAKE_PROGRESS_9)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/main.dir/src/main.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/main.dir/src/main.cpp.o -c /user/5/.base/steinhia/home/3D/practical1/src/main.cpp

CMakeFiles/main.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/main.dir/src/main.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /user/5/.base/steinhia/home/3D/practical1/src/main.cpp > CMakeFiles/main.dir/src/main.cpp.i

CMakeFiles/main.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/main.dir/src/main.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /user/5/.base/steinhia/home/3D/practical1/src/main.cpp -o CMakeFiles/main.dir/src/main.cpp.s

CMakeFiles/main.dir/src/main.cpp.o.requires:
.PHONY : CMakeFiles/main.dir/src/main.cpp.o.requires

CMakeFiles/main.dir/src/main.cpp.o.provides: CMakeFiles/main.dir/src/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/main.dir/build.make CMakeFiles/main.dir/src/main.cpp.o.provides.build
.PHONY : CMakeFiles/main.dir/src/main.cpp.o.provides

CMakeFiles/main.dir/src/main.cpp.o.provides.build: CMakeFiles/main.dir/src/main.cpp.o

CMakeFiles/main.dir/src/gl_helper.cpp.o: CMakeFiles/main.dir/flags.make
CMakeFiles/main.dir/src/gl_helper.cpp.o: ../src/gl_helper.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /user/5/.base/steinhia/home/3D/practical1/build/CMakeFiles $(CMAKE_PROGRESS_10)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/main.dir/src/gl_helper.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/main.dir/src/gl_helper.cpp.o -c /user/5/.base/steinhia/home/3D/practical1/src/gl_helper.cpp

CMakeFiles/main.dir/src/gl_helper.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/main.dir/src/gl_helper.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /user/5/.base/steinhia/home/3D/practical1/src/gl_helper.cpp > CMakeFiles/main.dir/src/gl_helper.cpp.i

CMakeFiles/main.dir/src/gl_helper.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/main.dir/src/gl_helper.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /user/5/.base/steinhia/home/3D/practical1/src/gl_helper.cpp -o CMakeFiles/main.dir/src/gl_helper.cpp.s

CMakeFiles/main.dir/src/gl_helper.cpp.o.requires:
.PHONY : CMakeFiles/main.dir/src/gl_helper.cpp.o.requires

CMakeFiles/main.dir/src/gl_helper.cpp.o.provides: CMakeFiles/main.dir/src/gl_helper.cpp.o.requires
	$(MAKE) -f CMakeFiles/main.dir/build.make CMakeFiles/main.dir/src/gl_helper.cpp.o.provides.build
.PHONY : CMakeFiles/main.dir/src/gl_helper.cpp.o.provides

CMakeFiles/main.dir/src/gl_helper.cpp.o.provides.build: CMakeFiles/main.dir/src/gl_helper.cpp.o

CMakeFiles/main.dir/src/Utils.cpp.o: CMakeFiles/main.dir/flags.make
CMakeFiles/main.dir/src/Utils.cpp.o: ../src/Utils.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /user/5/.base/steinhia/home/3D/practical1/build/CMakeFiles $(CMAKE_PROGRESS_11)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/main.dir/src/Utils.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/main.dir/src/Utils.cpp.o -c /user/5/.base/steinhia/home/3D/practical1/src/Utils.cpp

CMakeFiles/main.dir/src/Utils.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/main.dir/src/Utils.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /user/5/.base/steinhia/home/3D/practical1/src/Utils.cpp > CMakeFiles/main.dir/src/Utils.cpp.i

CMakeFiles/main.dir/src/Utils.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/main.dir/src/Utils.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /user/5/.base/steinhia/home/3D/practical1/src/Utils.cpp -o CMakeFiles/main.dir/src/Utils.cpp.s

CMakeFiles/main.dir/src/Utils.cpp.o.requires:
.PHONY : CMakeFiles/main.dir/src/Utils.cpp.o.requires

CMakeFiles/main.dir/src/Utils.cpp.o.provides: CMakeFiles/main.dir/src/Utils.cpp.o.requires
	$(MAKE) -f CMakeFiles/main.dir/build.make CMakeFiles/main.dir/src/Utils.cpp.o.provides.build
.PHONY : CMakeFiles/main.dir/src/Utils.cpp.o.provides

CMakeFiles/main.dir/src/Utils.cpp.o.provides.build: CMakeFiles/main.dir/src/Utils.cpp.o

CMakeFiles/main.dir/src/MeshRenderable.cpp.o: CMakeFiles/main.dir/flags.make
CMakeFiles/main.dir/src/MeshRenderable.cpp.o: ../src/MeshRenderable.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /user/5/.base/steinhia/home/3D/practical1/build/CMakeFiles $(CMAKE_PROGRESS_12)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/main.dir/src/MeshRenderable.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/main.dir/src/MeshRenderable.cpp.o -c /user/5/.base/steinhia/home/3D/practical1/src/MeshRenderable.cpp

CMakeFiles/main.dir/src/MeshRenderable.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/main.dir/src/MeshRenderable.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /user/5/.base/steinhia/home/3D/practical1/src/MeshRenderable.cpp > CMakeFiles/main.dir/src/MeshRenderable.cpp.i

CMakeFiles/main.dir/src/MeshRenderable.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/main.dir/src/MeshRenderable.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /user/5/.base/steinhia/home/3D/practical1/src/MeshRenderable.cpp -o CMakeFiles/main.dir/src/MeshRenderable.cpp.s

CMakeFiles/main.dir/src/MeshRenderable.cpp.o.requires:
.PHONY : CMakeFiles/main.dir/src/MeshRenderable.cpp.o.requires

CMakeFiles/main.dir/src/MeshRenderable.cpp.o.provides: CMakeFiles/main.dir/src/MeshRenderable.cpp.o.requires
	$(MAKE) -f CMakeFiles/main.dir/build.make CMakeFiles/main.dir/src/MeshRenderable.cpp.o.provides.build
.PHONY : CMakeFiles/main.dir/src/MeshRenderable.cpp.o.provides

CMakeFiles/main.dir/src/MeshRenderable.cpp.o.provides.build: CMakeFiles/main.dir/src/MeshRenderable.cpp.o

CMakeFiles/main.dir/src/CubeRenderable.cpp.o: CMakeFiles/main.dir/flags.make
CMakeFiles/main.dir/src/CubeRenderable.cpp.o: ../src/CubeRenderable.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /user/5/.base/steinhia/home/3D/practical1/build/CMakeFiles $(CMAKE_PROGRESS_13)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/main.dir/src/CubeRenderable.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/main.dir/src/CubeRenderable.cpp.o -c /user/5/.base/steinhia/home/3D/practical1/src/CubeRenderable.cpp

CMakeFiles/main.dir/src/CubeRenderable.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/main.dir/src/CubeRenderable.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /user/5/.base/steinhia/home/3D/practical1/src/CubeRenderable.cpp > CMakeFiles/main.dir/src/CubeRenderable.cpp.i

CMakeFiles/main.dir/src/CubeRenderable.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/main.dir/src/CubeRenderable.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /user/5/.base/steinhia/home/3D/practical1/src/CubeRenderable.cpp -o CMakeFiles/main.dir/src/CubeRenderable.cpp.s

CMakeFiles/main.dir/src/CubeRenderable.cpp.o.requires:
.PHONY : CMakeFiles/main.dir/src/CubeRenderable.cpp.o.requires

CMakeFiles/main.dir/src/CubeRenderable.cpp.o.provides: CMakeFiles/main.dir/src/CubeRenderable.cpp.o.requires
	$(MAKE) -f CMakeFiles/main.dir/build.make CMakeFiles/main.dir/src/CubeRenderable.cpp.o.provides.build
.PHONY : CMakeFiles/main.dir/src/CubeRenderable.cpp.o.provides

CMakeFiles/main.dir/src/CubeRenderable.cpp.o.provides.build: CMakeFiles/main.dir/src/CubeRenderable.cpp.o

CMakeFiles/main.dir/src/FrameRenderable.cpp.o: CMakeFiles/main.dir/flags.make
CMakeFiles/main.dir/src/FrameRenderable.cpp.o: ../src/FrameRenderable.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /user/5/.base/steinhia/home/3D/practical1/build/CMakeFiles $(CMAKE_PROGRESS_14)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/main.dir/src/FrameRenderable.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/main.dir/src/FrameRenderable.cpp.o -c /user/5/.base/steinhia/home/3D/practical1/src/FrameRenderable.cpp

CMakeFiles/main.dir/src/FrameRenderable.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/main.dir/src/FrameRenderable.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /user/5/.base/steinhia/home/3D/practical1/src/FrameRenderable.cpp > CMakeFiles/main.dir/src/FrameRenderable.cpp.i

CMakeFiles/main.dir/src/FrameRenderable.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/main.dir/src/FrameRenderable.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /user/5/.base/steinhia/home/3D/practical1/src/FrameRenderable.cpp -o CMakeFiles/main.dir/src/FrameRenderable.cpp.s

CMakeFiles/main.dir/src/FrameRenderable.cpp.o.requires:
.PHONY : CMakeFiles/main.dir/src/FrameRenderable.cpp.o.requires

CMakeFiles/main.dir/src/FrameRenderable.cpp.o.provides: CMakeFiles/main.dir/src/FrameRenderable.cpp.o.requires
	$(MAKE) -f CMakeFiles/main.dir/build.make CMakeFiles/main.dir/src/FrameRenderable.cpp.o.provides.build
.PHONY : CMakeFiles/main.dir/src/FrameRenderable.cpp.o.provides

CMakeFiles/main.dir/src/FrameRenderable.cpp.o.provides.build: CMakeFiles/main.dir/src/FrameRenderable.cpp.o

CMakeFiles/main.dir/src/Camera.cpp.o: CMakeFiles/main.dir/flags.make
CMakeFiles/main.dir/src/Camera.cpp.o: ../src/Camera.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /user/5/.base/steinhia/home/3D/practical1/build/CMakeFiles $(CMAKE_PROGRESS_15)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/main.dir/src/Camera.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/main.dir/src/Camera.cpp.o -c /user/5/.base/steinhia/home/3D/practical1/src/Camera.cpp

CMakeFiles/main.dir/src/Camera.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/main.dir/src/Camera.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /user/5/.base/steinhia/home/3D/practical1/src/Camera.cpp > CMakeFiles/main.dir/src/Camera.cpp.i

CMakeFiles/main.dir/src/Camera.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/main.dir/src/Camera.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /user/5/.base/steinhia/home/3D/practical1/src/Camera.cpp -o CMakeFiles/main.dir/src/Camera.cpp.s

CMakeFiles/main.dir/src/Camera.cpp.o.requires:
.PHONY : CMakeFiles/main.dir/src/Camera.cpp.o.requires

CMakeFiles/main.dir/src/Camera.cpp.o.provides: CMakeFiles/main.dir/src/Camera.cpp.o.requires
	$(MAKE) -f CMakeFiles/main.dir/build.make CMakeFiles/main.dir/src/Camera.cpp.o.provides.build
.PHONY : CMakeFiles/main.dir/src/Camera.cpp.o.provides

CMakeFiles/main.dir/src/Camera.cpp.o.provides.build: CMakeFiles/main.dir/src/Camera.cpp.o

CMakeFiles/main.dir/src/CylinderRenderable.cpp.o: CMakeFiles/main.dir/flags.make
CMakeFiles/main.dir/src/CylinderRenderable.cpp.o: ../src/CylinderRenderable.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /user/5/.base/steinhia/home/3D/practical1/build/CMakeFiles $(CMAKE_PROGRESS_16)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/main.dir/src/CylinderRenderable.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/main.dir/src/CylinderRenderable.cpp.o -c /user/5/.base/steinhia/home/3D/practical1/src/CylinderRenderable.cpp

CMakeFiles/main.dir/src/CylinderRenderable.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/main.dir/src/CylinderRenderable.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /user/5/.base/steinhia/home/3D/practical1/src/CylinderRenderable.cpp > CMakeFiles/main.dir/src/CylinderRenderable.cpp.i

CMakeFiles/main.dir/src/CylinderRenderable.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/main.dir/src/CylinderRenderable.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /user/5/.base/steinhia/home/3D/practical1/src/CylinderRenderable.cpp -o CMakeFiles/main.dir/src/CylinderRenderable.cpp.s

CMakeFiles/main.dir/src/CylinderRenderable.cpp.o.requires:
.PHONY : CMakeFiles/main.dir/src/CylinderRenderable.cpp.o.requires

CMakeFiles/main.dir/src/CylinderRenderable.cpp.o.provides: CMakeFiles/main.dir/src/CylinderRenderable.cpp.o.requires
	$(MAKE) -f CMakeFiles/main.dir/build.make CMakeFiles/main.dir/src/CylinderRenderable.cpp.o.provides.build
.PHONY : CMakeFiles/main.dir/src/CylinderRenderable.cpp.o.provides

CMakeFiles/main.dir/src/CylinderRenderable.cpp.o.provides.build: CMakeFiles/main.dir/src/CylinderRenderable.cpp.o

CMakeFiles/main.dir/src/log.cpp.o: CMakeFiles/main.dir/flags.make
CMakeFiles/main.dir/src/log.cpp.o: ../src/log.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /user/5/.base/steinhia/home/3D/practical1/build/CMakeFiles $(CMAKE_PROGRESS_17)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/main.dir/src/log.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/main.dir/src/log.cpp.o -c /user/5/.base/steinhia/home/3D/practical1/src/log.cpp

CMakeFiles/main.dir/src/log.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/main.dir/src/log.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /user/5/.base/steinhia/home/3D/practical1/src/log.cpp > CMakeFiles/main.dir/src/log.cpp.i

CMakeFiles/main.dir/src/log.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/main.dir/src/log.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /user/5/.base/steinhia/home/3D/practical1/src/log.cpp -o CMakeFiles/main.dir/src/log.cpp.s

CMakeFiles/main.dir/src/log.cpp.o.requires:
.PHONY : CMakeFiles/main.dir/src/log.cpp.o.requires

CMakeFiles/main.dir/src/log.cpp.o.provides: CMakeFiles/main.dir/src/log.cpp.o.requires
	$(MAKE) -f CMakeFiles/main.dir/build.make CMakeFiles/main.dir/src/log.cpp.o.provides.build
.PHONY : CMakeFiles/main.dir/src/log.cpp.o.provides

CMakeFiles/main.dir/src/log.cpp.o.provides.build: CMakeFiles/main.dir/src/log.cpp.o

CMakeFiles/main.dir/src/Viewer.cpp.o: CMakeFiles/main.dir/flags.make
CMakeFiles/main.dir/src/Viewer.cpp.o: ../src/Viewer.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /user/5/.base/steinhia/home/3D/practical1/build/CMakeFiles $(CMAKE_PROGRESS_18)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/main.dir/src/Viewer.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/main.dir/src/Viewer.cpp.o -c /user/5/.base/steinhia/home/3D/practical1/src/Viewer.cpp

CMakeFiles/main.dir/src/Viewer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/main.dir/src/Viewer.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /user/5/.base/steinhia/home/3D/practical1/src/Viewer.cpp > CMakeFiles/main.dir/src/Viewer.cpp.i

CMakeFiles/main.dir/src/Viewer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/main.dir/src/Viewer.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /user/5/.base/steinhia/home/3D/practical1/src/Viewer.cpp -o CMakeFiles/main.dir/src/Viewer.cpp.s

CMakeFiles/main.dir/src/Viewer.cpp.o.requires:
.PHONY : CMakeFiles/main.dir/src/Viewer.cpp.o.requires

CMakeFiles/main.dir/src/Viewer.cpp.o.provides: CMakeFiles/main.dir/src/Viewer.cpp.o.requires
	$(MAKE) -f CMakeFiles/main.dir/build.make CMakeFiles/main.dir/src/Viewer.cpp.o.provides.build
.PHONY : CMakeFiles/main.dir/src/Viewer.cpp.o.provides

CMakeFiles/main.dir/src/Viewer.cpp.o.provides.build: CMakeFiles/main.dir/src/Viewer.cpp.o

# Object files for target main
main_OBJECTS = \
"CMakeFiles/main.dir/src/ConeRenderable.cpp.o" \
"CMakeFiles/main.dir/src/Io.cpp.o" \
"CMakeFiles/main.dir/src/ToreRenderable.cpp.o" \
"CMakeFiles/main.dir/src/IndexedCubeRenderable.cpp.o" \
"CMakeFiles/main.dir/src/Renderable.cpp.o" \
"CMakeFiles/main.dir/src/ShaderProgram.cpp.o" \
"CMakeFiles/main.dir/src/TextEngine.cpp.o" \
"CMakeFiles/main.dir/src/FPSCounter.cpp.o" \
"CMakeFiles/main.dir/src/main.cpp.o" \
"CMakeFiles/main.dir/src/gl_helper.cpp.o" \
"CMakeFiles/main.dir/src/Utils.cpp.o" \
"CMakeFiles/main.dir/src/MeshRenderable.cpp.o" \
"CMakeFiles/main.dir/src/CubeRenderable.cpp.o" \
"CMakeFiles/main.dir/src/FrameRenderable.cpp.o" \
"CMakeFiles/main.dir/src/Camera.cpp.o" \
"CMakeFiles/main.dir/src/CylinderRenderable.cpp.o" \
"CMakeFiles/main.dir/src/log.cpp.o" \
"CMakeFiles/main.dir/src/Viewer.cpp.o"

# External object files for target main
main_EXTERNAL_OBJECTS =

main: CMakeFiles/main.dir/src/ConeRenderable.cpp.o
main: CMakeFiles/main.dir/src/Io.cpp.o
main: CMakeFiles/main.dir/src/ToreRenderable.cpp.o
main: CMakeFiles/main.dir/src/IndexedCubeRenderable.cpp.o
main: CMakeFiles/main.dir/src/Renderable.cpp.o
main: CMakeFiles/main.dir/src/ShaderProgram.cpp.o
main: CMakeFiles/main.dir/src/TextEngine.cpp.o
main: CMakeFiles/main.dir/src/FPSCounter.cpp.o
main: CMakeFiles/main.dir/src/main.cpp.o
main: CMakeFiles/main.dir/src/gl_helper.cpp.o
main: CMakeFiles/main.dir/src/Utils.cpp.o
main: CMakeFiles/main.dir/src/MeshRenderable.cpp.o
main: CMakeFiles/main.dir/src/CubeRenderable.cpp.o
main: CMakeFiles/main.dir/src/FrameRenderable.cpp.o
main: CMakeFiles/main.dir/src/Camera.cpp.o
main: CMakeFiles/main.dir/src/CylinderRenderable.cpp.o
main: CMakeFiles/main.dir/src/log.cpp.o
main: CMakeFiles/main.dir/src/Viewer.cpp.o
main: CMakeFiles/main.dir/build.make
main: /usr/lib64/libGLU.so
main: /usr/lib64/libGL.so
main: /usr/lib64/libSM.so
main: /usr/lib64/libICE.so
main: /usr/lib64/libX11.so
main: /usr/lib64/libXext.so
main: ../extlib/glew-1.13.0/lib/libGLEW.so
main: ../extlib/freetype-2.5.5/build/libfreetype.a
main: ../extlib/sfml-2.3.2/build/lib/libsfml-system.so
main: ../extlib/sfml-2.3.2/build/lib/libsfml-window.so
main: ../extlib/sfml-2.3.2/build/lib/libsfml-graphics.so
main: ../extlib/tinyobjloader/build/libtinyobjloader.a
main: CMakeFiles/main.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable main"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/main.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/main.dir/build: main
.PHONY : CMakeFiles/main.dir/build

CMakeFiles/main.dir/requires: CMakeFiles/main.dir/src/ConeRenderable.cpp.o.requires
CMakeFiles/main.dir/requires: CMakeFiles/main.dir/src/Io.cpp.o.requires
CMakeFiles/main.dir/requires: CMakeFiles/main.dir/src/ToreRenderable.cpp.o.requires
CMakeFiles/main.dir/requires: CMakeFiles/main.dir/src/IndexedCubeRenderable.cpp.o.requires
CMakeFiles/main.dir/requires: CMakeFiles/main.dir/src/Renderable.cpp.o.requires
CMakeFiles/main.dir/requires: CMakeFiles/main.dir/src/ShaderProgram.cpp.o.requires
CMakeFiles/main.dir/requires: CMakeFiles/main.dir/src/TextEngine.cpp.o.requires
CMakeFiles/main.dir/requires: CMakeFiles/main.dir/src/FPSCounter.cpp.o.requires
CMakeFiles/main.dir/requires: CMakeFiles/main.dir/src/main.cpp.o.requires
CMakeFiles/main.dir/requires: CMakeFiles/main.dir/src/gl_helper.cpp.o.requires
CMakeFiles/main.dir/requires: CMakeFiles/main.dir/src/Utils.cpp.o.requires
CMakeFiles/main.dir/requires: CMakeFiles/main.dir/src/MeshRenderable.cpp.o.requires
CMakeFiles/main.dir/requires: CMakeFiles/main.dir/src/CubeRenderable.cpp.o.requires
CMakeFiles/main.dir/requires: CMakeFiles/main.dir/src/FrameRenderable.cpp.o.requires
CMakeFiles/main.dir/requires: CMakeFiles/main.dir/src/Camera.cpp.o.requires
CMakeFiles/main.dir/requires: CMakeFiles/main.dir/src/CylinderRenderable.cpp.o.requires
CMakeFiles/main.dir/requires: CMakeFiles/main.dir/src/log.cpp.o.requires
CMakeFiles/main.dir/requires: CMakeFiles/main.dir/src/Viewer.cpp.o.requires
.PHONY : CMakeFiles/main.dir/requires

CMakeFiles/main.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/main.dir/cmake_clean.cmake
.PHONY : CMakeFiles/main.dir/clean

CMakeFiles/main.dir/depend:
	cd /user/5/.base/steinhia/home/3D/practical1/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /user/5/.base/steinhia/home/3D/practical1 /user/5/.base/steinhia/home/3D/practical1 /user/5/.base/steinhia/home/3D/practical1/build /user/5/.base/steinhia/home/3D/practical1/build /user/5/.base/steinhia/home/3D/practical1/build/CMakeFiles/main.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/main.dir/depend


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

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/sharong/Documents/comp-robo/comprobo2014/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/sharong/Documents/comp-robo/comprobo2014/build

# Include any dependencies generated for this target.
include gscam/CMakeFiles/gscam.dir/depend.make

# Include the progress variables for this target.
include gscam/CMakeFiles/gscam.dir/progress.make

# Include the compile flags for this target's objects.
include gscam/CMakeFiles/gscam.dir/flags.make

gscam/CMakeFiles/gscam.dir/src/gscam.cpp.o: gscam/CMakeFiles/gscam.dir/flags.make
gscam/CMakeFiles/gscam.dir/src/gscam.cpp.o: /home/sharong/Documents/comp-robo/comprobo2014/src/gscam/src/gscam.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/sharong/Documents/comp-robo/comprobo2014/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object gscam/CMakeFiles/gscam.dir/src/gscam.cpp.o"
	cd /home/sharong/Documents/comp-robo/comprobo2014/build/gscam && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/gscam.dir/src/gscam.cpp.o -c /home/sharong/Documents/comp-robo/comprobo2014/src/gscam/src/gscam.cpp

gscam/CMakeFiles/gscam.dir/src/gscam.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/gscam.dir/src/gscam.cpp.i"
	cd /home/sharong/Documents/comp-robo/comprobo2014/build/gscam && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/sharong/Documents/comp-robo/comprobo2014/src/gscam/src/gscam.cpp > CMakeFiles/gscam.dir/src/gscam.cpp.i

gscam/CMakeFiles/gscam.dir/src/gscam.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/gscam.dir/src/gscam.cpp.s"
	cd /home/sharong/Documents/comp-robo/comprobo2014/build/gscam && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/sharong/Documents/comp-robo/comprobo2014/src/gscam/src/gscam.cpp -o CMakeFiles/gscam.dir/src/gscam.cpp.s

gscam/CMakeFiles/gscam.dir/src/gscam.cpp.o.requires:
.PHONY : gscam/CMakeFiles/gscam.dir/src/gscam.cpp.o.requires

gscam/CMakeFiles/gscam.dir/src/gscam.cpp.o.provides: gscam/CMakeFiles/gscam.dir/src/gscam.cpp.o.requires
	$(MAKE) -f gscam/CMakeFiles/gscam.dir/build.make gscam/CMakeFiles/gscam.dir/src/gscam.cpp.o.provides.build
.PHONY : gscam/CMakeFiles/gscam.dir/src/gscam.cpp.o.provides

gscam/CMakeFiles/gscam.dir/src/gscam.cpp.o.provides.build: gscam/CMakeFiles/gscam.dir/src/gscam.cpp.o

# Object files for target gscam
gscam_OBJECTS = \
"CMakeFiles/gscam.dir/src/gscam.cpp.o"

# External object files for target gscam
gscam_EXTERNAL_OBJECTS =

/home/sharong/Documents/comp-robo/comprobo2014/devel/lib/libgscam.so: gscam/CMakeFiles/gscam.dir/src/gscam.cpp.o
/home/sharong/Documents/comp-robo/comprobo2014/devel/lib/libgscam.so: /opt/ros/hydro/lib/libimage_transport.so
/home/sharong/Documents/comp-robo/comprobo2014/devel/lib/libgscam.so: /opt/ros/hydro/lib/libmessage_filters.so
/home/sharong/Documents/comp-robo/comprobo2014/devel/lib/libgscam.so: /opt/ros/hydro/lib/libnodeletlib.so
/home/sharong/Documents/comp-robo/comprobo2014/devel/lib/libgscam.so: /opt/ros/hydro/lib/libbondcpp.so
/home/sharong/Documents/comp-robo/comprobo2014/devel/lib/libgscam.so: /usr/lib/i386-linux-gnu/libuuid.so
/home/sharong/Documents/comp-robo/comprobo2014/devel/lib/libgscam.so: /usr/lib/libtinyxml.so
/home/sharong/Documents/comp-robo/comprobo2014/devel/lib/libgscam.so: /opt/ros/hydro/lib/libclass_loader.so
/home/sharong/Documents/comp-robo/comprobo2014/devel/lib/libgscam.so: /usr/lib/libPocoFoundation.so
/home/sharong/Documents/comp-robo/comprobo2014/devel/lib/libgscam.so: /usr/lib/i386-linux-gnu/libdl.so
/home/sharong/Documents/comp-robo/comprobo2014/devel/lib/libgscam.so: /opt/ros/hydro/lib/libroslib.so
/home/sharong/Documents/comp-robo/comprobo2014/devel/lib/libgscam.so: /opt/ros/hydro/lib/libcamera_calibration_parsers.so
/home/sharong/Documents/comp-robo/comprobo2014/devel/lib/libgscam.so: /opt/ros/hydro/lib/libcamera_info_manager.so
/home/sharong/Documents/comp-robo/comprobo2014/devel/lib/libgscam.so: /opt/ros/hydro/lib/libroscpp.so
/home/sharong/Documents/comp-robo/comprobo2014/devel/lib/libgscam.so: /usr/lib/libboost_signals-mt.so
/home/sharong/Documents/comp-robo/comprobo2014/devel/lib/libgscam.so: /usr/lib/libboost_filesystem-mt.so
/home/sharong/Documents/comp-robo/comprobo2014/devel/lib/libgscam.so: /opt/ros/hydro/lib/librosconsole.so
/home/sharong/Documents/comp-robo/comprobo2014/devel/lib/libgscam.so: /opt/ros/hydro/lib/librosconsole_log4cxx.so
/home/sharong/Documents/comp-robo/comprobo2014/devel/lib/libgscam.so: /opt/ros/hydro/lib/librosconsole_backend_interface.so
/home/sharong/Documents/comp-robo/comprobo2014/devel/lib/libgscam.so: /usr/lib/liblog4cxx.so
/home/sharong/Documents/comp-robo/comprobo2014/devel/lib/libgscam.so: /usr/lib/libboost_regex-mt.so
/home/sharong/Documents/comp-robo/comprobo2014/devel/lib/libgscam.so: /opt/ros/hydro/lib/libxmlrpcpp.so
/home/sharong/Documents/comp-robo/comprobo2014/devel/lib/libgscam.so: /opt/ros/hydro/lib/libroscpp_serialization.so
/home/sharong/Documents/comp-robo/comprobo2014/devel/lib/libgscam.so: /opt/ros/hydro/lib/librostime.so
/home/sharong/Documents/comp-robo/comprobo2014/devel/lib/libgscam.so: /usr/lib/libboost_date_time-mt.so
/home/sharong/Documents/comp-robo/comprobo2014/devel/lib/libgscam.so: /usr/lib/libboost_system-mt.so
/home/sharong/Documents/comp-robo/comprobo2014/devel/lib/libgscam.so: /usr/lib/libboost_thread-mt.so
/home/sharong/Documents/comp-robo/comprobo2014/devel/lib/libgscam.so: /usr/lib/i386-linux-gnu/libpthread.so
/home/sharong/Documents/comp-robo/comprobo2014/devel/lib/libgscam.so: /opt/ros/hydro/lib/libcpp_common.so
/home/sharong/Documents/comp-robo/comprobo2014/devel/lib/libgscam.so: /opt/ros/hydro/lib/libconsole_bridge.so
/home/sharong/Documents/comp-robo/comprobo2014/devel/lib/libgscam.so: gscam/CMakeFiles/gscam.dir/build.make
/home/sharong/Documents/comp-robo/comprobo2014/devel/lib/libgscam.so: gscam/CMakeFiles/gscam.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX shared library /home/sharong/Documents/comp-robo/comprobo2014/devel/lib/libgscam.so"
	cd /home/sharong/Documents/comp-robo/comprobo2014/build/gscam && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/gscam.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
gscam/CMakeFiles/gscam.dir/build: /home/sharong/Documents/comp-robo/comprobo2014/devel/lib/libgscam.so
.PHONY : gscam/CMakeFiles/gscam.dir/build

gscam/CMakeFiles/gscam.dir/requires: gscam/CMakeFiles/gscam.dir/src/gscam.cpp.o.requires
.PHONY : gscam/CMakeFiles/gscam.dir/requires

gscam/CMakeFiles/gscam.dir/clean:
	cd /home/sharong/Documents/comp-robo/comprobo2014/build/gscam && $(CMAKE_COMMAND) -P CMakeFiles/gscam.dir/cmake_clean.cmake
.PHONY : gscam/CMakeFiles/gscam.dir/clean

gscam/CMakeFiles/gscam.dir/depend:
	cd /home/sharong/Documents/comp-robo/comprobo2014/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/sharong/Documents/comp-robo/comprobo2014/src /home/sharong/Documents/comp-robo/comprobo2014/src/gscam /home/sharong/Documents/comp-robo/comprobo2014/build /home/sharong/Documents/comp-robo/comprobo2014/build/gscam /home/sharong/Documents/comp-robo/comprobo2014/build/gscam/CMakeFiles/gscam.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : gscam/CMakeFiles/gscam.dir/depend


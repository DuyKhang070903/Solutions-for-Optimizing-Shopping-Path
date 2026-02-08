# CMake generated Testfile for 
# Source directory: /home/jetson/thesisAutonomous_ws/src/robot_navigation
# Build directory: /home/jetson/thesisAutonomous_ws/build/robot_navigation
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_robot_navigation_roslint_package "/home/jetson/thesisAutonomous_ws/build/catkin_generated/env_cached.sh" "/usr/bin/python3" "/opt/ros/noetic/share/catkin/cmake/test/run_tests.py" "/home/jetson/thesisAutonomous_ws/build/test_results/robot_navigation/roslint-robot_navigation.xml" "--working-dir" "/home/jetson/thesisAutonomous_ws/build/robot_navigation" "--return-code" "/opt/ros/noetic/share/roslint/cmake/../../../lib/roslint/test_wrapper /home/jetson/thesisAutonomous_ws/build/test_results/robot_navigation/roslint-robot_navigation.xml make roslint_robot_navigation")
set_tests_properties(_ctest_robot_navigation_roslint_package PROPERTIES  _BACKTRACE_TRIPLES "/opt/ros/noetic/share/catkin/cmake/test/tests.cmake;160;add_test;/opt/ros/noetic/share/roslint/cmake/roslint-extras.cmake;67;catkin_run_tests_target;/home/jetson/thesisAutonomous_ws/src/robot_navigation/CMakeLists.txt;272;roslint_add_test;/home/jetson/thesisAutonomous_ws/src/robot_navigation/CMakeLists.txt;0;")

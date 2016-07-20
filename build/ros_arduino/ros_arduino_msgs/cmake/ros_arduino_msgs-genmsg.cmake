# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "ros_arduino_msgs: 3 messages, 0 services")

set(MSG_I_FLAGS "-Iros_arduino_msgs:/home/designer/catkin_ws/src/ros_arduino/ros_arduino_msgs/msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/indigo/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(ros_arduino_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/designer/catkin_ws/src/ros_arduino/ros_arduino_msgs/msg/Encoders.msg" NAME_WE)
add_custom_target(_ros_arduino_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_arduino_msgs" "/home/designer/catkin_ws/src/ros_arduino/ros_arduino_msgs/msg/Encoders.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/designer/catkin_ws/src/ros_arduino/ros_arduino_msgs/msg/CmdDiffVel.msg" NAME_WE)
add_custom_target(_ros_arduino_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_arduino_msgs" "/home/designer/catkin_ws/src/ros_arduino/ros_arduino_msgs/msg/CmdDiffVel.msg" ""
)

get_filename_component(_filename "/home/designer/catkin_ws/src/ros_arduino/ros_arduino_msgs/msg/RawImu.msg" NAME_WE)
add_custom_target(_ros_arduino_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_arduino_msgs" "/home/designer/catkin_ws/src/ros_arduino/ros_arduino_msgs/msg/RawImu.msg" "geometry_msgs/Vector3:std_msgs/Header"
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(ros_arduino_msgs
  "/home/designer/catkin_ws/src/ros_arduino/ros_arduino_msgs/msg/Encoders.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_arduino_msgs
)
_generate_msg_cpp(ros_arduino_msgs
  "/home/designer/catkin_ws/src/ros_arduino/ros_arduino_msgs/msg/CmdDiffVel.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_arduino_msgs
)
_generate_msg_cpp(ros_arduino_msgs
  "/home/designer/catkin_ws/src/ros_arduino/ros_arduino_msgs/msg/RawImu.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_arduino_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(ros_arduino_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_arduino_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(ros_arduino_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(ros_arduino_msgs_generate_messages ros_arduino_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/designer/catkin_ws/src/ros_arduino/ros_arduino_msgs/msg/Encoders.msg" NAME_WE)
add_dependencies(ros_arduino_msgs_generate_messages_cpp _ros_arduino_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/designer/catkin_ws/src/ros_arduino/ros_arduino_msgs/msg/CmdDiffVel.msg" NAME_WE)
add_dependencies(ros_arduino_msgs_generate_messages_cpp _ros_arduino_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/designer/catkin_ws/src/ros_arduino/ros_arduino_msgs/msg/RawImu.msg" NAME_WE)
add_dependencies(ros_arduino_msgs_generate_messages_cpp _ros_arduino_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ros_arduino_msgs_gencpp)
add_dependencies(ros_arduino_msgs_gencpp ros_arduino_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ros_arduino_msgs_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(ros_arduino_msgs
  "/home/designer/catkin_ws/src/ros_arduino/ros_arduino_msgs/msg/Encoders.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_arduino_msgs
)
_generate_msg_lisp(ros_arduino_msgs
  "/home/designer/catkin_ws/src/ros_arduino/ros_arduino_msgs/msg/CmdDiffVel.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_arduino_msgs
)
_generate_msg_lisp(ros_arduino_msgs
  "/home/designer/catkin_ws/src/ros_arduino/ros_arduino_msgs/msg/RawImu.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_arduino_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(ros_arduino_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_arduino_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(ros_arduino_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(ros_arduino_msgs_generate_messages ros_arduino_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/designer/catkin_ws/src/ros_arduino/ros_arduino_msgs/msg/Encoders.msg" NAME_WE)
add_dependencies(ros_arduino_msgs_generate_messages_lisp _ros_arduino_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/designer/catkin_ws/src/ros_arduino/ros_arduino_msgs/msg/CmdDiffVel.msg" NAME_WE)
add_dependencies(ros_arduino_msgs_generate_messages_lisp _ros_arduino_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/designer/catkin_ws/src/ros_arduino/ros_arduino_msgs/msg/RawImu.msg" NAME_WE)
add_dependencies(ros_arduino_msgs_generate_messages_lisp _ros_arduino_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ros_arduino_msgs_genlisp)
add_dependencies(ros_arduino_msgs_genlisp ros_arduino_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ros_arduino_msgs_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(ros_arduino_msgs
  "/home/designer/catkin_ws/src/ros_arduino/ros_arduino_msgs/msg/Encoders.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_arduino_msgs
)
_generate_msg_py(ros_arduino_msgs
  "/home/designer/catkin_ws/src/ros_arduino/ros_arduino_msgs/msg/CmdDiffVel.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_arduino_msgs
)
_generate_msg_py(ros_arduino_msgs
  "/home/designer/catkin_ws/src/ros_arduino/ros_arduino_msgs/msg/RawImu.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_arduino_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(ros_arduino_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_arduino_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(ros_arduino_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(ros_arduino_msgs_generate_messages ros_arduino_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/designer/catkin_ws/src/ros_arduino/ros_arduino_msgs/msg/Encoders.msg" NAME_WE)
add_dependencies(ros_arduino_msgs_generate_messages_py _ros_arduino_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/designer/catkin_ws/src/ros_arduino/ros_arduino_msgs/msg/CmdDiffVel.msg" NAME_WE)
add_dependencies(ros_arduino_msgs_generate_messages_py _ros_arduino_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/designer/catkin_ws/src/ros_arduino/ros_arduino_msgs/msg/RawImu.msg" NAME_WE)
add_dependencies(ros_arduino_msgs_generate_messages_py _ros_arduino_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ros_arduino_msgs_genpy)
add_dependencies(ros_arduino_msgs_genpy ros_arduino_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ros_arduino_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_arduino_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_arduino_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(ros_arduino_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
add_dependencies(ros_arduino_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_arduino_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_arduino_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(ros_arduino_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
add_dependencies(ros_arduino_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_arduino_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_arduino_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_arduino_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(ros_arduino_msgs_generate_messages_py std_msgs_generate_messages_py)
add_dependencies(ros_arduino_msgs_generate_messages_py geometry_msgs_generate_messages_py)

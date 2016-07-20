# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "ros_arduino_base: 0 messages, 1 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(ros_arduino_base_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/designer/catkin_ws/src/ros_arduino/ros_arduino_base/srv/UpdateGains.srv" NAME_WE)
add_custom_target(_ros_arduino_base_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_arduino_base" "/home/designer/catkin_ws/src/ros_arduino/ros_arduino_base/srv/UpdateGains.srv" ""
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(ros_arduino_base
  "/home/designer/catkin_ws/src/ros_arduino/ros_arduino_base/srv/UpdateGains.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_arduino_base
)

### Generating Module File
_generate_module_cpp(ros_arduino_base
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_arduino_base
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(ros_arduino_base_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(ros_arduino_base_generate_messages ros_arduino_base_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/designer/catkin_ws/src/ros_arduino/ros_arduino_base/srv/UpdateGains.srv" NAME_WE)
add_dependencies(ros_arduino_base_generate_messages_cpp _ros_arduino_base_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ros_arduino_base_gencpp)
add_dependencies(ros_arduino_base_gencpp ros_arduino_base_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ros_arduino_base_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(ros_arduino_base
  "/home/designer/catkin_ws/src/ros_arduino/ros_arduino_base/srv/UpdateGains.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_arduino_base
)

### Generating Module File
_generate_module_lisp(ros_arduino_base
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_arduino_base
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(ros_arduino_base_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(ros_arduino_base_generate_messages ros_arduino_base_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/designer/catkin_ws/src/ros_arduino/ros_arduino_base/srv/UpdateGains.srv" NAME_WE)
add_dependencies(ros_arduino_base_generate_messages_lisp _ros_arduino_base_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ros_arduino_base_genlisp)
add_dependencies(ros_arduino_base_genlisp ros_arduino_base_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ros_arduino_base_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(ros_arduino_base
  "/home/designer/catkin_ws/src/ros_arduino/ros_arduino_base/srv/UpdateGains.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_arduino_base
)

### Generating Module File
_generate_module_py(ros_arduino_base
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_arduino_base
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(ros_arduino_base_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(ros_arduino_base_generate_messages ros_arduino_base_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/designer/catkin_ws/src/ros_arduino/ros_arduino_base/srv/UpdateGains.srv" NAME_WE)
add_dependencies(ros_arduino_base_generate_messages_py _ros_arduino_base_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ros_arduino_base_genpy)
add_dependencies(ros_arduino_base_genpy ros_arduino_base_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ros_arduino_base_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_arduino_base)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_arduino_base
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(ros_arduino_base_generate_messages_cpp std_msgs_generate_messages_cpp)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_arduino_base)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_arduino_base
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(ros_arduino_base_generate_messages_lisp std_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_arduino_base)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_arduino_base\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_arduino_base
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(ros_arduino_base_generate_messages_py std_msgs_generate_messages_py)

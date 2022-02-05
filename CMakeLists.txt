cmake_minimum_required(VERSION 3.5)

project(sh_common_interfaces)

# Default to C++14
if(NOT CMAKE_CXX_STANDARD)
    set(CMAKE_CXX_STANDARD 14)
endif()

if(CMAKE_COMPILER_IS_GNUCXX OR CMAKE_CXX_COMPILER_ID MATCHES "Clang")
    add_compile_options(-Wall -Wextra -Wpedantic)
endif()

find_package(ament_cmake REQUIRED)
find_package(std_msgs REQUIRED)
find_package(rosidl_default_generators REQUIRED)

rosidl_generate_interfaces(sh_common_interfaces
    "msg/Color.msg"
    "msg/CountdownState.msg"
    "msg/DeviceActivationChange.msg"
    "msg/Float32Arr.msg"
    "msg/Point.msg"
    "msg/StringArr.msg"
    "msg/WaveParticipantLocation.msg"
    "msg/WaveUpdate.msg"
    DEPENDENCIES std_msgs
)

ament_package()

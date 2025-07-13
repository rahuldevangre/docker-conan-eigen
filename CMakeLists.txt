cmake_minimum_required(VERSION 3.15)
project(EigenTest)

find_package(Eigen3 REQUIRED)

add_executable(eigen_test src/main.cpp)
target_link_libraries(eigen_test PRIVATE Eigen3::Eigen)

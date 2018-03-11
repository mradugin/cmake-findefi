cmake_minimum_required(VERSION 3.0.2)
project(helloefi)

set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "${CMAKE_SOURCE_DIR}/../")
find_package(efi REQUIRED)

add_library(${PROJECT_NAME} SHARED main.c)

target_compile_options(${PROJECT_NAME} PRIVATE -Wall -Wextra)

target_link_libraries(${PROJECT_NAME} efi)

create_efi_image(${PROJECT_NAME} hello)

install(FILES $<TARGET_PROPERTY:${PROJECT_NAME},EFI_IMAGE_FILE> DESTINATION bin)

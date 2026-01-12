set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

file(GLOB HARQ_SOURCES CONFIGURE_DEPENDS
    ${CMAKE_CURRENT_LIST_DIR}/../src/*.cpp
)

add_library(harq STATIC ${HARQ_SOURCES})

target_include_directories(harq PUBLIC
    ${CMAKE_CURRENT_LIST_DIR}/../include
)

add_executable(bpsk_passband_cloud
    ${CMAKE_CURRENT_LIST_DIR}/../tools/bpsk_passband_cloud.cpp
)

target_link_libraries(bpsk_passband_cloud PRIVATE harq)

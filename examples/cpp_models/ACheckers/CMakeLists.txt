cmake_minimum_required(VERSION 2.8.3)

add_executable("${PROJECT_NAME}_ACheckers"
  src/ACheckers.cpp
  src/main.cpp
  src/base_ACheckers.cpp
)
target_link_libraries("${PROJECT_NAME}_ACheckers"
  "${PROJECT_NAME}"
)
install(TARGETS "${PROJECT_NAME}_ACheckers"
  RUNTIME DESTINATION "${BINARY_INSTALL_PATH}"
)
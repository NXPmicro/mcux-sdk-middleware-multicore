#Description: Embedded Remote Procedure Call; user_visible: True
include_guard(GLOBAL)
message("middleware_multicore_erpc_common component is included.")

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
    ${CMAKE_CURRENT_LIST_DIR}/erpc/erpc_c/infra/erpc_basic_codec.cpp
    ${CMAKE_CURRENT_LIST_DIR}/erpc/erpc_c/infra/erpc_message_buffer.cpp
    ${CMAKE_CURRENT_LIST_DIR}/erpc/erpc_c/infra/erpc_message_loggers.cpp
    ${CMAKE_CURRENT_LIST_DIR}/erpc/erpc_c/infra/erpc_crc16.cpp
    ${CMAKE_CURRENT_LIST_DIR}/erpc/erpc_c/infra/erpc_pre_post_action.cpp
)


target_include_directories(${MCUX_SDK_PROJECT_NAME} PRIVATE
    ${CMAKE_CURRENT_LIST_DIR}/erpc/erpc_c
    ${CMAKE_CURRENT_LIST_DIR}/erpc/erpc_c/infra
    ${CMAKE_CURRENT_LIST_DIR}/erpc/erpc_c/port
    ${CMAKE_CURRENT_LIST_DIR}/erpc/erpc_c/setup
    ${CMAKE_CURRENT_LIST_DIR}/erpc/erpc_c/transports
)



#Description: Remote Procedure Messaging Lite porting layer for MIMX8QM6 board; user_visible: False
include_guard(GLOBAL)
message("middleware_multicore_rpmsg_lite_imx8qx_m4_freertos component is included.")

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
    ${CMAKE_CURRENT_LIST_DIR}/rpmsg_lite/lib/rpmsg_lite/porting/platform/imx8qx_cm4/rpmsg_platform.c
)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
    ${CMAKE_CURRENT_LIST_DIR}/rpmsg_lite/lib/include/platform/imx8qx_cm4
)


include(middleware_freertos-kernel_heap_4)
include(middleware_multicore_rpmsg_lite_MIMX8QX6)

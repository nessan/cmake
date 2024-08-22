# -----------------------------------------------------------------------------
# @brief Wrapper around FetchContent.
# @link  https://nessan.github.io/cmake/
#
# SPDX-FileCopyrightText:  2023 Nessan Fitzmaurice <nessan.fitzmaurice@me.com>
# SPDX-License-Identifier: MIT
# -----------------------------------------------------------------------------
function(fetch_content)
    include(FetchContent)
    set(FETCHCONTENT_QUIET FALSE)
    set(FETCHCONTENT_TRY_FIND_PACKAGE_MODE ALWAYS)
    message("<fetch_content> Fetching: ${ARGV}")
    FetchContent_Declare(${ARGV}
        GIT_SHALLOW 1
        GIT_PROGRESS TRUE
        SYSTEM
    )
    message("<fetch_content> Making available: ${ARGV0}")
    FetchContent_MakeAvailable(${ARGV0})
endfunction()

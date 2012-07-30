#  Copyright 2010-2012 Matus Chochlik. Distributed under the Boost
#  Software License, Version 1.0. (See accompanying file
#  LICENSE_1_0.txt or copy at http://www.boost.org/LICENSE_1_0.txt)
#
find_path(
	GLM_INCLUDE_DIR NAMES glm/glm.hpp
	PATHS ${HEADER_SEARCH_PATHS}
	NO_DEFAULT_PATH
)

if(NOT GLM_INCLUDE_DIR)
	find_path(GLM_INCLUDE_DIR NAMES glm/glm.hpp)
endif()

if(NOT GLM_INCLUDE_DIR)
	message(STATUS "GLM header files not found")
	set(GLM_FOUND false)
else()
	set(GLM_FOUND true)
endif()
cmake_minimum_required(VERSION 2.8.3)
project(esiaf_hyperion_configs)

## Find catkin macros and libraries
## if COMPONENTS list like find_package(catkin REQUIRED COMPONENTS xyz)
## is used, also find other catkin packages
find_package(catkin REQUIRED
        )



###################################
## catkin specific configuration ##
###################################
## The catkin_package macro generates cmake config files for your package
## Declare things to be passed to dependent projects
## INCLUDE_DIRS: uncomment this if you package contains header files
## LIBRARIES: libraries you create in this project that dependent projects also need
## CATKIN_DEPENDS: catkin_packages dependent projects also need
## DEPENDS: system dependencies of this project that dependent projects also need
catkin_package(
)

###########
## Build ##
###########


## Specify additional locations of header files
## Your package locations should be listed before other locations
include_directories(
)




#############
## Install ##
#############

# all install targets should use catkin DESTINATION variables
# See http://ros.org/doc/api/catkin/html/adv_user_guide/variables.html

INSTALL(DIRECTORY "${CMAKE_CURRENT_SOURCE_DIR}/components" DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION})
INSTALL(DIRECTORY "${CMAKE_CURRENT_SOURCE_DIR}/systems" DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION})

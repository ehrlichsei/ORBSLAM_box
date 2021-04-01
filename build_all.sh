./build.sh
echo "build.sh finished"
export ROS_PACKAGE_PATH=${ROS_PACKAGE_PATH}:/home/yuli/Software/ORB_SLAM_box/Examples/ROS
./build_ros.sh
echo "build_ros.sh finished"
export ROS_PACKAGE_PATH=${ROS_PACKAGE_PATH}:/home/yuli/Software/ORB_SLAM_box/Examples/ROS


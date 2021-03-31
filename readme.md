export ROS_PACKAGE_PATH=${ROS_PACKAGE_PATH}:/home/yuli/Software/ORB_SLAM_box/Examples/ROS
./ros_build.sh

rosrun ORB_SLAM2 Mono /home/yuli/Software/ORB_SLAM_box/Vocabulary/ORBvoc.txt /home/yuli/Software/ORB_SLAM_box/Examples/Monocular/RealSense.yaml

roslaunch ORB_SLAM2 single_monitor.launch 

rosbag play '/home/yuli/Software/data_rgbd/18_monitor_side/reedit_monitor_side.bag' /camera/color/image_raw:=/camera/image_raw --clock -r 1

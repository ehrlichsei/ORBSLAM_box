export ROS_PACKAGE_PATH=${ROS_PACKAGE_PATH}:/home/yuli/Software/ORB_SLAM_box/Examples/ROS
./ros_build.sh

rosrun ORB_SLAM2 Mono /home/yuli/Software/ORB_SLAM_box/Vocabulary/ORBvoc.txt /home/yuli/Software/ORB_SLAM_box/Examples/Monocular/RealSense.yaml

roslaunch ORB_SLAM2 monitor_side.launch 
rosbag play '/home/yuli/Software/data_rgbd/18_monitor_side/reedit_monitor_side.bag' /camera/color/image_raw:=/camera/image_raw --clock -r 1

roslaunch ORB_SLAM2 monitor_front.launch 
rosbag play '/home/yuli/Software/data_rgbd/17_monitor_front/reedit_monitor_front.bag' /camera/color/image_raw:=/camera/image_raw --clock -r 1


roslaunch ORB_SLAM2 kitti.launch 
rosbag play '/home/yuli/Software/data_rgbd/6_kitti_seq09/kitti_seq09.bag' kitti/left/image_raw:=/camera/image_raw --clock -r 0.5
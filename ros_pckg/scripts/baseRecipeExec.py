#!/usr/bin/env python
# -*- coding: utf-8 -*-
# ROS ver. Kineic Kame / ubuntu 16.04LTS
# Base execution node

import rospy
from std_msgs.msg import String

def callback(data):
	# this is for debug and will be muted 
    rospy.loginfo("base baking step.: %s", data.data)
    
def base_exec():

	# this is abstract now
    # connectivity with debug functions is here gotta add HW spesc funcs
	# obviously array is for debug and will be replaced	

    rospy.init_node('base_recipe_executor')

    rospy.Subscriber("base_recipe", String, callback)

    # spin() simply keeps python from exiting until this node is stopped
    rospy.spin()

if __name__ == '__main__':
    base_exec()

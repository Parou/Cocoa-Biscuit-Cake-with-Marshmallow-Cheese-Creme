#!/usr/bin/env python
# -*- coding: utf-8 -*-
# ROS ver. Kineic Kame / ubuntu 16.04LTS
# Creme execution node
import rospy
from std_msgs.msg import String

def callback(data):
	# this is for debug
    rospy.loginfo("Recieving recipe %s", data.data)
    
def creme_exec():

 
	# this is abstract now
    # connectivity with debug functions is here gotta add HW spesc funcs
	# obviously array is for debug and will be replaced	
    
	rospy.init_node('creme_recipe_executor')

    rospy.Subscriber("creme_recipe", String, callback)

    # spin() simply keeps python from exiting until this node is stopped
    rospy.spin()

if __name__ == '__main__':
    creme_exec()

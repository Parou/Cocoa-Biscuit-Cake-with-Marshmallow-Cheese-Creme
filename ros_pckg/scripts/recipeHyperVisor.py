#!/usr/bin/env python
# -*- coding: utf-8 -*-
# base recipe publishing node
# ROS ver. Kineic Kame / ubuntu 16.04LTS
# Baking hypervision node

import rospy
from std_msgs.msg import String

def callback(data):
	# this is for debug and will be muted 
    rospy.loginfo("Cooking.: %s", data.data)
    
def recipe_hypervisor():

    # this is a hypervisor node. basic connectivity is here HW specific control flags needed.

    rospy.init_node('recipe_hypervisor')
    rospy.Subscriber("base_recipe", String, callback)
    rospy.Subscriber("creme_recipe", String, callback)
    rospy.spin()

if __name__ == '__main__':
    recipe_hypervisor()

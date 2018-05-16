#!/usr/bin/env python
# -*- coding: utf-8 -*-
# ROS ver. Kineic Kame / ubuntu 16.04LTS
# Base execution node preparator

import rospy
from std_msgs.msg import String

def base_recipe():
	pub = rospy.Publisher('base_recipe', String, queue_size=3)
	rospy.init_node('base_recipe_sender')
	rate = rospy.Rate(5)


	# this is abstract for now
	# connectivity with debug functions is here gotta add HW spesc funcs
	# array is for debug and will be replaced	

	recipeArray=["Cocoa-Biscuit Cake with Marshmallow-Cheese Creme Ground:", "1 -  280g solid, dry biscuits violently dismembered.", "2 -  20g cocoa powder, dark as our souls.", "3 -  120g slowly and painfully molten butter.", "4 -  Force everything in a cake tin with a diameter of 26 cm and use a cup to press your victim tightly against it, leaving a border of maybe 1 cm that is also pressed against the sides.", "5 -  Put it in the fridge for 10 Minutes and take it out right before it freezes to death.", "6 -  Put it into the oven and torture your victim for 15 Minutes by 180C." ]
	while not rospy.is_shutdown():
		i = 0
		step = 0
		while step <= 6:
			recipe_str = recipeArray[i]
			i += 1
			step += 1
			# this is for debug and will be muted 
			rospy.loginfo(recipe_str)
			pub.publish(recipe_str)
		
		rate.sleep()

if __name__ == '__main__':
	try:
		base_recipe()
	except rospy.ROSInterruptException:
		pass

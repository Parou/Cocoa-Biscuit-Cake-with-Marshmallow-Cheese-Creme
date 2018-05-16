#!/usr/bin/env python
# -*- coding: utf-8 -*-
# ROS ver. Kineic Kame / ubuntu 16.04LTS
# Creme execution node preparator

import rospy
from std_msgs.msg import String

def creme_recipe():
	pub = rospy.Publisher('creme_recipe', String, queue_size=3)
	rospy.init_node('creme_recipe_sender')
	rate = rospy.Rate(1)

	# this is abstract for now
	# connectivity with debug functions is here gotta add HW spesc funcs
	# array is for debug and will be replaced	

	recipeArray=["Marshmallow-Cheese Creme: ", "7 -  Put 120g Marshmallows in a bowl, add 160g Cream Cheese and put it without mixing into the microwave for 1 Minute by 600 Watts.", "8 -  Beat the mixture up with your whisk until it doesn't look like it originally did anymore (A creme).", "9 -  Add 120g Milk and continue mixing.", "10 - Add a teaspoon of lemon juice and continue mixing for a couple of seconds.", "11 - Now pour the liquified remains into the previously made cake ground so it fills the hole in its heart.", "12 - Put everything in the fridge for another hour.", "13 - Eat it.", "14 - Clean your mess up so you can make another one." ]	
	

	while not rospy.is_shutdown():
		i = 0
		step = 0
		while step <= 8:
			recipe_str = recipeArray[i]
			i += 1
			step += 1
			# this is for debug and will be muted 
			rospy.loginfo(recipe_str)
			pub.publish(recipe_str)
		
		rate.sleep()

if __name__ == '__main__':
	try:
		creme_recipe()
	except rospy.ROSInterruptException:
		pass

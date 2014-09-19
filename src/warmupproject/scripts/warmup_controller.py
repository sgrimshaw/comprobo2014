#!/usr/bin/env python

# Warmup Project for CompRobo
# 9/19/14

import rospy
import math
from std_msgs.msg import String
from geometry_msgs.msg import Twist, Vector3
from sensor_msgs.msg import LaserScan

def find_wall(msg):
	global vel, turning
	turning=0.0 #initial turning speed
	vel=0.1 #initial forward velocity

	"""Wall following parameters"""
	constant=0.1 #speed constant
	desired_distance=0.8 #distance, in meters from the wall, before starting turning
	valid_ranges = []

	"""Person following parameters"""
	minimum=1000 #initial minimum (intentionally ridiculously high)
	my_range=msg.ranges[0:20]
	my_range=my_range+msg.ranges[340:360]
	my_range=filter(lambda a:a!=0.0,my_range)

	if len(my_range)<1:
		front_view=0.0
	else:
		front_view = sum(my_range)/len(my_range)

	if front_view > 0.1 and front_view < 0.5:
		"""Person Following Code"""
		vel=0.1
		for i in range(40): #cycle through the 40 degree cone in the front of the robot
			if i>20:
				x=i+320
			else:
				x=i
			if msg.ranges[x]<minimum and msg.ranges[x]!=0.0:
				minimum=msg.ranges[x] #find the closest object
				min_index=x
		if min_index>180: #look at which side the object is on and turn that way
			turning=-0.2
		else:
			turning=0.2

	else:
		"""Wall Following Code"""
		for i in range(20):
			if msg.ranges[i]>0 and msg.ranges[i]<8:
				valid_ranges.append(msg.ranges[i])
		if len(valid_ranges)>0:
			mean_distance=sum(valid_ranges)/float(len(valid_ranges))
			if mean_distance<desired_distance:
				error=mean_distance-0.4
				vel = constant*error #set velocity based on how close to the wall you are
		if sum(msg.ranges[0:5])/5<0.6 and sum(msg.ranges[0:5])/5>0.05:
			#if you aren't near a wall, go straight until you're near a wall
			#then once you approach a wall turn to the left to follow it
			vel=0.1
			turning=1
		if sum(msg.ranges[275:280])/5>sum(msg.ranges[260:265])/5 or (sum(msg.ranges[275:280])/5>1 and sum(msg.ranges[275:280])/5<2):
			#if the robot is moving too far away from the wall, turn back
			turning=-0.2
		if (sum(msg.ranges[275:280])/5<sum(msg.ranges[260:265])/5 and sum(msg.ranges[275:280])/5<0.3) or (sum(msg.ranges[0:5])/5<0.6 and sum(msg.ranges[0:5])/5>0.05):
			#if the robot is moving too close to the wall, turn away
			turning=0.2

def run():
	global vel, turning
	vel=0.0
	turning=0.0
	pub = rospy.Publisher('cmd_vel', Twist, queue_size=10)
	sub = rospy.Subscriber('scan', LaserScan, find_wall)
	rospy.init_node('talker', anonymous=True)
	r = rospy.Rate(10) # 10hz
	while not rospy.is_shutdown():
		msg=Twist(Vector3(vel,0.0,0.0),Vector3(0.0,0.0,turning))
		pub.publish(msg)
		r.sleep()

if __name__ == '__main__':
	try:
		run()
	except rospy.ROSInterruptException: pass
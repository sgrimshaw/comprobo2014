#!/usr/bin/env python
# license removed for brevity
import rospy
from std_msgs.msg import String
from geometry.msgs import Twist,Vector3
from sensor.msgs import LaserScan

def getch():
    """ Return the next character typed on the keyboard """
    import sys, tty, termios
    fd = sys.stdin.fileno()
    old_settings = termios.tcgetattr(fd)
    try:
        tty.setraw(sys.stdin.fileno())
        ch = sys.stdin.read(1)
    finally:
        termios.tcsetattr(fd, termios.TCSADRAIN, old_settings)
    return ch

def scan_received(msg, pub):
  print "scan received"
  desired_distance=1
  constant=5
  vel=0.0
  valid_ranges = []
  for i in range(5):
    if msg.ranges[i]>0 and msg.ranges[i]<8:
      valid_ranges.append(msg.ranges[i])
  if len(valid_ranges)>0:
    mean_distance=sum(valid_ranges)/float(len(valid_ranges))
    error = mean_distance-desired_distance
    vel = constant*error
    pub.publish(vel)
  return vel

def teleop():
  pub = rospy.Publisher('cmd_vel', Twist, queue_size=10)
  sub = rospy.Subscriber('scan', LaserScan, scan_received, pub)
  rospy.init_node('talker', anonymous=True)
  r = rospy.Rate(10) # 10hz
  while not rospy.is_shutdown():
    Twist(Vector3(vel,0.0,0.0),Vector3(0.0,0.0,0.0))
  #   #msg = Twist(Vector3(0.0,0.0,0.0),Vector3(0.0,0.0,0.0))
  #   ch=getch()
  #   if ch='u':
  #     Twist(Vector3(1.0,0.0,0.0),Vector3(0.0,0.0,1.0))
  #   elif ch='i':
  #     Twist(Vector3(1.0,0.0,0.0),Vector3(0.0,0.0,0.0))
  #   elif ch='o':
  #     Twist(Vector3(1.0,0.0,0.0),Vector3(0.0,0.0,-1.0))
  #   elif ch='j':
  #     Twist(Vector3(0.0,0.0,0.0),Vector3(0.0,0.0,1.0))
  #   elif ch='k':
  #     Twist(Vector3(0.0,0.0,0.0),Vector3(0.0,0.0,0.0))
  #   elif ch='l':
  #     Twist(Vector3(0.0,0.0,0.0),Vector3(0.0,0.0,-1.0))
  #   elif ch='n':
  #     Twist(Vector3(-1.0,0.0,0.0),Vector3(0.0,0.0,1.0))
  #   elif ch='m':
  #     Twist(Vector3(-1.0,0.0,0.0),Vector3(0.0,0.0,0.0))
  #   elif ch=',':
  #     Twist(Vector3(-1.0,0.0,0.0),Vector3(0.0,0.0,-1.0))
  #   elif ch='q':
  #     break
    pub.publish(msg)
    r.sleep()

if __name__ == '__main__':
  try:
    teleop()
  except rospy.ROSInterruptException: pass
README

Sharon Grimshaw
Warmup Project
CompRobo 9/19/14

1. Which behaviors?
   Wall following and people following

2. Implementation strategies?
   For the wall following, I am checking the length to the wall from a slightly backward-facing direction and a slightly frontward-facing direction (both on the right-hand side). If the backward-facing length is longer than the forward-facing one, the robot turns to the left, and vice versa.
   For the person following, I am looking at a cone of space in front of the robot for something very close. The robot looks for which side of "zero" the paper is on and turns in that direction.

3. Finite state controller - which combined and how? What's the switch?
   I combined the wall following and the person following. The default for the robot is wall following. If something appears close to the robot, it will follow that thing until the thing is removed. Then the robot will go back to wall following.

4. Code structure?
   I put all of my code inside of a ROS package. All the information is in one script, and the information is conveyed using functions.

5. Challenges?
   The biggest challenge was figuring out how to use the data from the robot to get the robot to do what I wanted. My first idea was to have the robot turn a certain amount to follow the wall. After fighting the robot for a while, it occurred to me that it would probably be easier to just use the data that the robot was continually sensing to gauge whether or not it should keep turning (rather than knowing at the beginning how much to turn).

6. Improvements?
   I would break my code into more manageable chunks. I'm currently afraid to change anything because I don't want to break it, but if I had more hours I would break the wall following and person following into separate functions or maybe attempt some class structure. I would also fix some of the silly inconsistencies of the robot like that it sometimes doesn't want to follow a person to the left and that it only follows walls that are on it's right-hand side. I would just make the code take care of more scenarios.

7. Interesting lessons?
   I would write my code in much smaller pieces and test every little piece. I also wouldn't necessarily test with the velocity feeding to the publisher. Some of the most helpful information I got was when I stopped sending actual velocity commands and just used print statements and interacted with the robot to see how it would respond. That made me not need to chase the robot down quite as much and also let me test more things without always rerunning the code.
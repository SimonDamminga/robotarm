require 'robot_arm'
robot_arm:load_level('exercise 11')
robot_arm.speed = 0.9
steps = 9
robot_arm:move_right()
while steps >0 do
  robot_arm:grab()
  robot_arm:scan()
  if robot_arm:scan() == 'red' then
    for i=1, steps do
      robot_arm:move_right()
    end
    robot_arm:drop()
    for i=3, steps do
      robot_arm:move_left()
    end
  else 
    robot_arm:drop()
    robot_arm:move_right()
    steps = steps - 1
  end
  end
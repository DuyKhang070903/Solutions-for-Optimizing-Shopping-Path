
## Running the Node

```bash
# In one terminal, run
$ roscore

# In another terminal, run
$ rosrun teleop_twist_keyboard_cpp teleop_twist_keyboard

# If you want to see the outputs, check the /cmd_vel topic
$ rostopic echo /cmd_vel
```


## Usage

Same as the original

```
Reading from the keyboard  and Publishing to Twist!
---------------------------
Moving around:
   u    i    o
   j    k    l
   m    ,    .

For Holonomic mode (strafing), hold down the shift key:
---------------------------
   U    I    O
   J    K    L
   M    <    >

t : up (+z)
b : down (-z)

anything else : stop

q/z : increase/decrease max speeds by 10%
w/x : increase/decrease only linear speed by 10%
e/c : increase/decrease only angular speed by 10%

CTRL-C to quit
```
------


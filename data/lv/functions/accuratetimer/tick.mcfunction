##accurate worldborder timer
execute store result score systick value run worldborder get
scoreboard players operation systick value %= MILLION Constant
worldborder set 50000000
worldborder set 60000000 10000

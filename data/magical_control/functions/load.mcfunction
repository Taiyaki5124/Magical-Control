#ScoreBoard
scoreboard objectives add MagicalControl.time dummy
scoreboard objectives add MagicalControl.temp dummy
scoreboard objectives add MagicalControl.PlayerID dummy
scoreboard objectives add MagicalControl.guisize dummy
scoreboard objectives add MagicalControl.Health dummy

scoreboard objectives add Mana.value dummy
scoreboard objectives add Mana.max dummy
scoreboard objectives add Mana.timer dummy
scoreboard objectives add Mana.timer.increaseAmount dummy
scoreboard objectives add Mana.value.increaseAmount dummy

#ScoreInitialize
scoreboard players set $Abs.time MagicalControl.time 0
scoreboard players set $100 Mana.value 100
scoreboard players set #10000 MagicalControl.temp 10000
scoreboard players set #102 MagicalControl.temp 102

#Data
data modify storage magical_control: Data.ChargingModel set value 512400
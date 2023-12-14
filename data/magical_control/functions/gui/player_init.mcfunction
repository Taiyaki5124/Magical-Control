#>magical_control:gui/player_init
#
#プレイヤー初期化
#
#@within function magical_control:gui/playerid

#Bossbar
$bossbar add magical_control:player.gui.$(id) {"text":" "}
$bossbar set magical_control:player.gui.$(id) players @s
$bossbar set magical_control:player.gui.$(id) visible true

#Score
scoreboard players operation @s Mana..max = $Default Mana.max
scoreboard players operation @s Mana.timer.increaseAmount = $Default Mana.timer.increaseAmount
scoreboard players operation @s Mana.value.increaseAmount = $Default Mana.value.increaseAmount
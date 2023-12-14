#>magical_control:gui/playerid
#
#プレイヤーごとにユニークな値
#
#@within function magical_control:tick

scoreboard players add #Additive MagicalControl.PlayerID 1
scoreboard players operation @s MagicalControl.PlayerID = #Additive MagicalControl.PlayerID

execute store result storage magical_control: temp.id int 1 run scoreboard players get @s MagicalControl.PlayerID
function magical_control:gui/player_init with storage magical_control: temp
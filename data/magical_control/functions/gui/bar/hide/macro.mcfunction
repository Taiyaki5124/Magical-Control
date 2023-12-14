#>magical_control:gui/bar/hide/macro
#
#HP、MPバーを隠す マクロ用
#
#@within function magical_control:tick

execute store result storage magical_control: temp.id int 1 run scoreboard players get @s MagicalControl.PlayerID
function magical_control:gui/bar/hide/ with storage magical_control: temp
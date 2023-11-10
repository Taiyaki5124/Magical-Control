#>magical_control:ct/proceed
#
#クールタイム進行
#
#@within function magical_control:tick

#経過時間
execute store result score $UsedTime MagicalControl.time run data get entity @s SelectedItem.tag.UsedTime
scoreboard players operation $Elapsed MagicalControl.time = $Abs.time MagicalControl.time
scoreboard players operation $Elapsed MagicalControl.time -= $UsedTime MagicalControl.time

#End
execute store result score $CT MagicalControl.time run data get entity @s SelectedItem.tag.CT
execute if score $Elapsed MagicalControl.time >= $CT MagicalControl.time run function magical_control:ct/end
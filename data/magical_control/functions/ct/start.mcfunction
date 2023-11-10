#>magical_control:ct/start
#
#クールタイム開始
#
#@api

#Item Modifier
execute store result storage magical_control: temp.AbsTime int 1 run scoreboard players get $Abs.time MagicalControl.time
item modify entity @s weapon.mainhand magical_control:ct/start
#Abs.time
scoreboard players add $Abs.time MagicalControl.time 1

#CT Proceed
execute as @a at @s if data entity @s SelectedItem.tag{isMagic:true,isCT:true} run function magical_control:ct/proceed

#Mana Recharge
execute as @a at @s if score @s Mana.value < @s Mana.max run function magical_control:mana/recharge/timer
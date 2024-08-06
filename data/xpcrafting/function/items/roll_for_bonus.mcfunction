##
 # roll_for_bonus.mcfunction
 # 
 #
 # Created by imalittlhigh.
##
#rolling random value for crafting better chance
execute store result score %xpc.rand xpc_dummy run random value 0..200
#debug
execute if score %xpc.rand xpc_dummy <= %xpc.level xpc_dummy run tellraw @a[tag=xpc_debug] ["",{"text":"\nRolled Custom Item","color":"white"}]

#if roll is more than level remove identifier from crafted item (this looses the random chance roll) 
$execute unless score %xpc.rand xpc_dummy <= %xpc.level xpc_dummy run item modify entity @s container.$(holding_slot) xpcrafting:remove_custom_data

#if roll is less than level check item type to modify
execute if score %xpc.rand xpc_dummy <= %xpc.level xpc_dummy run function xpcrafting:items/type with storage xpc:player inventory

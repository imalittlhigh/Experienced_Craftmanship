##
 # crafted.mcfunction
 # 
 #
 # Created by imalittlhigh.
##
#removing advancement
advancement revoke @s only xpcrafting:crafted_item
#getting slot the crafted item is in and saving it in storage
execute store result storage xpc:player inventory.holding_slot byte 1 run data get entity @s Inventory[{components:{"minecraft:custom_data":{xpc_crafted:1b}}}].Slot
#getting player level
execute store result score %xpc.level xpc_dummy run experience query @s levels
#capping level at 100
execute unless score %xpc.level xpc_dummy matches ..100 run scoreboard players set %xpc.level xpc_dummy 100

#runing random roll
function xpcrafting:items/roll_for_bonus with storage xpc:player inventory
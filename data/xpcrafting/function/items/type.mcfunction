##
 # type.mcfunction
 # 
 #
 # Created by imalittlhigh.
##
#resetting type
scoreboard players reset %xpc.type xpc_dummy

#giving audio feedback to crafter
playsound minecraft:block.crafter.craft player @s ~ ~ ~ 1.5 1.2 0.1
playsound entity.experience_orb.pickup player @s ~ ~ ~ 0.05 0.75 0.1


#checking what item is in the slot to run correct function
$execute if items entity @s container.$(holding_slot) #xpcrafting:pickaxes run scoreboard players set %xpc.type xpc_dummy 1
$execute if items entity @s container.$(holding_slot) #xpcrafting:axes run scoreboard players set %xpc.type xpc_dummy 2
$execute if items entity @s container.$(holding_slot) #xpcrafting:shovels run scoreboard players set %xpc.type xpc_dummy 3
$execute if items entity @s container.$(holding_slot) #xpcrafting:hoes run scoreboard players set %xpc.type xpc_dummy 4
$execute if items entity @s container.$(holding_slot) #xpcrafting:swords run scoreboard players set %xpc.type xpc_dummy 5

#armor
#helmets
$execute if items entity @s container.$(holding_slot) #xpcrafting:helmets_tier_1 run scoreboard players set %xpc.type xpc_dummy 31
$execute if items entity @s container.$(holding_slot) #xpcrafting:helmets_tier_2 run scoreboard players set %xpc.type xpc_dummy 32
$execute if items entity @s container.$(holding_slot) #xpcrafting:helmets_tier_3 run scoreboard players set %xpc.type xpc_dummy 33
#chestplates
$execute if items entity @s container.$(holding_slot) #xpcrafting:chestplates_tier_1 run scoreboard players set %xpc.type xpc_dummy 41
$execute if items entity @s container.$(holding_slot) #xpcrafting:chestplates_tier_2 run scoreboard players set %xpc.type xpc_dummy 42
$execute if items entity @s container.$(holding_slot) #xpcrafting:chestplates_tier_3 run scoreboard players set %xpc.type xpc_dummy 43
#leggings
$execute if items entity @s container.$(holding_slot) #xpcrafting:leggings_tier_1 run scoreboard players set %xpc.type xpc_dummy 51
$execute if items entity @s container.$(holding_slot) #xpcrafting:leggings_tier_2 run scoreboard players set %xpc.type xpc_dummy 52
$execute if items entity @s container.$(holding_slot) #xpcrafting:leggings_tier_3 run scoreboard players set %xpc.type xpc_dummy 53
#boots
$execute if items entity @s container.$(holding_slot) #xpcrafting:boots_tier_1 run scoreboard players set %xpc.type xpc_dummy 61
$execute if items entity @s container.$(holding_slot) #xpcrafting:boots_tier_2 run scoreboard players set %xpc.type xpc_dummy 62
$execute if items entity @s container.$(holding_slot) #xpcrafting:boots_tier_3 run scoreboard players set %xpc.type xpc_dummy 63
#ranged
$execute if items entity @s container.$(holding_slot) bow run scoreboard players set %xpc.type xpc_dummy 12
$execute if items entity @s container.$(holding_slot) crossbow run scoreboard players set %xpc.type xpc_dummy 13
#tools n shit
$execute if items entity @s container.$(holding_slot) flint_and_steel run scoreboard players set %xpc.type xpc_dummy 14
$execute if items entity @s container.$(holding_slot) shield run scoreboard players set %xpc.type xpc_dummy 15
$execute if items entity @s container.$(holding_slot) shears run scoreboard players set %xpc.type xpc_dummy 16
$execute if items entity @s container.$(holding_slot) brush run scoreboard players set %xpc.type xpc_dummy 17
$execute if items entity @s container.$(holding_slot) fishing_rod run scoreboard players set %xpc.type xpc_dummy 18
$execute if items entity @s container.$(holding_slot) carrot_on_a_stick run scoreboard players set %xpc.type xpc_dummy 19
$execute if items entity @s container.$(holding_slot) warped_fungus_on_a_stick run scoreboard players set %xpc.type xpc_dummy 20
$execute if items entity @s container.$(holding_slot) wolf_armor run scoreboard players set %xpc.type xpc_dummy 21
$execute if items entity @s container.$(holding_slot) leather_horse_armor run scoreboard players set %xpc.type xpc_dummy 22




#running correct function (i know this could be done in the macro, but i like being able to link-klick to the function)
execute positioned ~ -500 ~ if score %xpc.type xpc_dummy matches 1 run function xpcrafting:items/tools/pickaxe with storage xpc:player inventory
execute positioned ~ -500 ~ if score %xpc.type xpc_dummy matches 2 run function xpcrafting:items/weapons/axe with storage xpc:player inventory
execute positioned ~ -500 ~ if score %xpc.type xpc_dummy matches 3 run function xpcrafting:items/tools/shovel with storage xpc:player inventory
execute positioned ~ -500 ~ if score %xpc.type xpc_dummy matches 4 run function xpcrafting:items/tools/hoe with storage xpc:player inventory
execute positioned ~ -500 ~ if score %xpc.type xpc_dummy matches 5 run function xpcrafting:items/weapons/sword with storage xpc:player inventory


execute positioned ~ -500 ~ if score %xpc.type xpc_dummy matches 12 run function xpcrafting:items/weapons/bow with storage xpc:player inventory
execute positioned ~ -500 ~ if score %xpc.type xpc_dummy matches 13 run function xpcrafting:items/weapons/crossbow with storage xpc:player inventory


execute positioned ~ -500 ~ if score %xpc.type xpc_dummy matches 14 run function xpcrafting:items/tools/flint_and_steel with storage xpc:player inventory
execute positioned ~ -500 ~ if score %xpc.type xpc_dummy matches 15 run function xpcrafting:items/armor/shield with storage xpc:player inventory
execute positioned ~ -500 ~ if score %xpc.type xpc_dummy matches 16 run function xpcrafting:items/tools/shears with storage xpc:player inventory
execute positioned ~ -500 ~ if score %xpc.type xpc_dummy matches 17 run function xpcrafting:items/tools/brush with storage xpc:player inventory
execute positioned ~ -500 ~ if score %xpc.type xpc_dummy matches 18 run function xpcrafting:items/tools/fishing_rod with storage xpc:player inventory
execute positioned ~ -500 ~ if score %xpc.type xpc_dummy matches 19 run function xpcrafting:items/tools/carrot_on_a_stick with storage xpc:player inventory
execute positioned ~ -500 ~ if score %xpc.type xpc_dummy matches 20 run function xpcrafting:items/tools/warped_fungus_on_a_stick with storage xpc:player inventory
execute positioned ~ -500 ~ if score %xpc.type xpc_dummy matches 21 run function xpcrafting:items/armor/wolf_armor with storage xpc:player inventory
execute positioned ~ -500 ~ if score %xpc.type xpc_dummy matches 22 run function xpcrafting:items/armor/leather_horse_armor with storage xpc:player inventory

execute positioned ~ -500 ~ if score %xpc.type xpc_dummy matches 31 run function xpcrafting:items/armor/head/helmet_tier_1 with storage xpc:player inventory
execute positioned ~ -500 ~ if score %xpc.type xpc_dummy matches 32 run function xpcrafting:items/armor/head/helmet_tier_2 with storage xpc:player inventory
execute positioned ~ -500 ~ if score %xpc.type xpc_dummy matches 33 run function xpcrafting:items/armor/head/helmet_tier_3 with storage xpc:player inventory

execute positioned ~ -500 ~ if score %xpc.type xpc_dummy matches 41 run function xpcrafting:items/armor/chest/chestplate_tier_1 with storage xpc:player inventory
execute positioned ~ -500 ~ if score %xpc.type xpc_dummy matches 42 run function xpcrafting:items/armor/chest/chestplate_tier_2 with storage xpc:player inventory
execute positioned ~ -500 ~ if score %xpc.type xpc_dummy matches 43 run function xpcrafting:items/armor/chest/chestplate_tier_3 with storage xpc:player inventory

execute positioned ~ -500 ~ if score %xpc.type xpc_dummy matches 51 run function xpcrafting:items/armor/legs/leggings_tier_1 with storage xpc:player inventory
execute positioned ~ -500 ~ if score %xpc.type xpc_dummy matches 52 run function xpcrafting:items/armor/legs/leggings_tier_2 with storage xpc:player inventory
execute positioned ~ -500 ~ if score %xpc.type xpc_dummy matches 53 run function xpcrafting:items/armor/legs/leggings_tier_3 with storage xpc:player inventory

execute positioned ~ -500 ~ if score %xpc.type xpc_dummy matches 61 run function xpcrafting:items/armor/boots/boots_tier_1 with storage xpc:player inventory
execute positioned ~ -500 ~ if score %xpc.type xpc_dummy matches 62 run function xpcrafting:items/armor/boots/boots_tier_2 with storage xpc:player inventory
execute positioned ~ -500 ~ if score %xpc.type xpc_dummy matches 63 run function xpcrafting:items/armor/boots/boots_tier_3 with storage xpc:player inventory
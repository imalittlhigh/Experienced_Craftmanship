##
 # test_simp.mcfunction
 # 
 #
 # Created by imalittlhigh.
##
#smmon container to modify item in
summon chest_minecart ~ ~ ~ {NoGravity:true,Tags:["xpc.minecart"]}

#copy item to container
$item replace entity @n[type=chest_minecart,tag=xpc.minecart,distance=..1] container.0 from entity @s container.$(holding_slot)

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

#resetting very sccoreboard used
#generated
scoreboard players reset %xpc.armor.added_percentage xpc_dummy
scoreboard players reset %xpc.durability.percentage xpc_dummy
scoreboard players reset %xpc.armor_toughness.added_percentage xpc_dummy
scoreboard players reset %xpc.knockback_resistance.added_percentage xpc_dummy
scoreboard players reset %xpc.higher_quality_materials.percentage xpc_dummy
scoreboard players reset %xpc.durability xpc_dummy
scoreboard players reset %xpc.knockback_resistance xpc_dummy
scoreboard players reset %xpc.armor xpc_dummy
scoreboard players reset %xpc.armor_toughness xpc_dummy
scoreboard players reset %xpc.rarity xpc_dummy
scoreboard players reset %xpc.armor_toughness.lore.pre_decimal xpc_dummy

scoreboard players reset @s xpc_dummy

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

#setting base armor toughness to 40000 (for calculating, base armor toughness is 4)
scoreboard players set %xpc.armor_toughness.base xpc_dummy 40000
#setting 100 for calc for lore
scoreboard players set %xpc.100 xpc_dummy 100
#setting 10 for calc for lore
scoreboard players set %xpc.10 xpc_dummy 10
#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

#generating random values
#armor added // 
execute store result score %xpc.armor.added_percentage xpc_dummy run random value 0..100
#durability
execute store result score %xpc.durability.percentage xpc_dummy run random value 100..300
#armor toughness
execute store result score %xpc.armor_toughness.added_percentage xpc_dummy run random value 0..100
#knockback resistance for correct blocks
execute store result score %xpc.knockback_resistance.added_percentage xpc_dummy run random value 0..200
#able to mine higher quality materials? (reinforced) [ONLY ON PICKboots]
#execute store result score %xpc.higher_quality_materials.percentage xpc_dummy run random value 0..100

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

#setting tier dependant values

#setting durability per tier (default tier durability * rolled percentage)
#saving in durability score
#(for display -> 0.01)
scoreboard players operation %xpc.durability xpc_dummy = %xpc.durability.percentage xpc_dummy
#calculating new durability
scoreboard players operation %xpc.durability xpc_dummy *= %xpc.durability.netherite.boots xpc_dummy

#setting knockback resistance for correct blocks per tier
#saving in knockback resistance score
#(for display -> 0.01)
scoreboard players operation %xpc.knockback_resistance xpc_dummy = %xpc.knockback_resistance.added_percentage xpc_dummy
#calculating new knockback resistance
scoreboard players operation %xpc.knockback_resistance xpc_dummy *= %xpc.knockback_resistance.netherite.boots xpc_dummy

#armor per tier
#saving in armor score
scoreboard players operation %xpc.armor xpc_dummy = %xpc.armor.added_percentage xpc_dummy
#calculating new armord
scoreboard players operation %xpc.armor xpc_dummy *= %xpc.armor.netherite.boots xpc_dummy

#armor toughness per tier
#saving in armor toughness score
scoreboard players operation %xpc.armor_toughness xpc_dummy = %xpc.armor_toughness.added_percentage xpc_dummy
#calculating new armor toughness
scoreboard players operation %xpc.armor_toughness xpc_dummy *= %xpc.armor_toughness.netherite.boots xpc_dummy
#armor toughness is additive and its base is 4, so to set the speed, we need to remove 4 from the new calculated armor toughness
#copying armor toughness in addition score
scoreboard players operation %xpc.armor_toughness.addition xpc_dummy = %xpc.armor_toughness xpc_dummy
#calculating what to set the attackspeed addition in item modifier to (*0.0001)
scoreboard players operation %xpc.armor_toughness.addition xpc_dummy -= %xpc.armor_toughness.base xpc_dummy

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

#Getting generated values ready for display in Lore


#armor is additive, so i need to add the base armor
#saving in addition score
scoreboard players operation %xpc.armor.lore xpc_dummy = %xpc.armor xpc_dummy
#getting the score to standard scale
scoreboard players operation %xpc.armor.lore xpc_dummy /= %xpc.100 xpc_dummy
#removing base armor of item
scoreboard players operation %xpc.armor.lore xpc_dummy += %xpc.armor.netherite.boots xpc_dummy
#getting the score to standard scale
scoreboard players operation %xpc.armor.lore xpc_dummy /= %xpc.10 xpc_dummy

#armor_toughness is additive, so i need to add the base armor_toughness
#saving in addition score
scoreboard players operation %xpc.armor_toughness.lore xpc_dummy = %xpc.armor_toughness xpc_dummy
#getting the score to standard scale
scoreboard players operation %xpc.armor_toughness.lore xpc_dummy /= %xpc.100 xpc_dummy
#removing base armor_toughness of item
scoreboard players operation %xpc.armor_toughness.lore xpc_dummy += %xpc.armor_toughness.netherite.boots xpc_dummy
#getting the score to standard scale
scoreboard players operation %xpc.armor_toughness.lore xpc_dummy /= %xpc.10 xpc_dummy

#knockback_resistance is additive, so i need to add the base knockback_resistance
#saving in addition score
scoreboard players operation %xpc.knockback_resistance.lore xpc_dummy = %xpc.knockback_resistance xpc_dummy
#getting the score to standard scale
scoreboard players operation %xpc.knockback_resistance.lore xpc_dummy /= %xpc.100 xpc_dummy
#removing base knockback_resistance of item
scoreboard players operation %xpc.knockback_resistance.lore xpc_dummy += %xpc.knockback_resistance.netherite.boots xpc_dummy
#getting the score to standard scale
scoreboard players operation %xpc.knockback_resistance.lore xpc_dummy /= %xpc.10 xpc_dummy



#adjusting for everything in from of the decimal for armor toughness lore
#im seperating the pre decimal number from the post decimal number, since scoreboar is only int and i need fload for lore
#cant use storage with float here, since it will output 0.1f and u cant remov the f in lore sadly


#Setting rarity dependant on generated values
#if item has high durability add one to rarity (100-300)
execute if score %xpc.armor_toughness.added_percentage xpc_dummy matches 80.. run scoreboard players add %xpc.rarity xpc_dummy 1
#if item has fast knockback resistance add one to rarity (100-200)
execute if score %xpc.durability.percentage xpc_dummy matches 280.. run scoreboard players add %xpc.rarity xpc_dummy 1
#if item has high damage add one to rarity (0-100)
execute if score %xpc.armor.added_percentage xpc_dummy matches 70.. run scoreboard players add %xpc.rarity xpc_dummy 1
#if item has high armor toughness add one to rarity (100-200)
execute if score %xpc.knockback_resistance.added_percentage xpc_dummy matches 100.. run scoreboard players add %xpc.rarity xpc_dummy 1




#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

#Saving values for components in storage
#durability
execute store result storage xpc:components item.durability int 0.01 run scoreboard players get %xpc.durability xpc_dummy

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

#Modifying components of item

#durability
data modify entity @n[type=chest_minecart,tag=xpc.minecart,distance=..1] Items[0].components."minecraft:max_damage" set from storage xpc:components item.durability

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

#Adding Lore
item modify entity @n[type=chest_minecart,tag=xpc.minecart,distance=..1] container.0 xpcrafting:items/armor/boots_tier_3

#Adding Rarity
execute unless score %xpc.rarity xpc_dummy matches 1.. run item modify entity @n[type=chest_minecart,tag=xpc.minecart,distance=..1] container.0 xpcrafting:items/rarity/common
execute if score %xpc.rarity xpc_dummy matches 1 run item modify entity @n[type=chest_minecart,tag=xpc.minecart,distance=..1] container.0 xpcrafting:items/rarity/common
execute if score %xpc.rarity xpc_dummy matches 2 run item modify entity @n[type=chest_minecart,tag=xpc.minecart,distance=..1] container.0 xpcrafting:items/rarity/uncommon
execute if score %xpc.rarity xpc_dummy matches 3 run item modify entity @n[type=chest_minecart,tag=xpc.minecart,distance=..1] container.0 xpcrafting:items/rarity/rare
execute if score %xpc.rarity xpc_dummy matches 4 run item modify entity @n[type=chest_minecart,tag=xpc.minecart,distance=..1] container.0 xpcrafting:items/rarity/epic


#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

#Returning Item
#removing custom data to detect item was crafted
item modify entity @n[type=chest_minecart,tag=xpc.minecart,distance=..1] container.0 xpcrafting:remove_custom_data
#copying back to player inventory
$item replace entity @s container.$(holding_slot) from entity @n[type=chest_minecart,tag=xpc.minecart,distance=..1] container.0
#removing item from minecart
item replace entity @n[type=chest_minecart,tag=xpc.minecart,distance=..1] container.0 with air
#removing minecart
kill @n[type=chest_minecart,tag=xpc.minecart,distance=..1]


#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

#Debug
tellraw @a[tag=xpc_debug] ["",{"text":"\narmor added Percentage : ","color":"white"},{"score":{"name":"%xpc.armor.added_percentage","objective":"xpc_dummy"},"color":"white"}]
tellraw @a[tag=xpc_debug] ["",{"text":"\narmor added Flat : ","color":"white"},{"score":{"name":"%xpc.armor","objective":"xpc_dummy"},"color":"white"}]
tellraw @a[tag=xpc_debug] ["",{"text":"\narmor Lore : ","color":"white"},{"score":{"name":"%xpc.armor.lore","objective":"xpc_dummy"},"color":"white"}]
tellraw @a[tag=xpc_debug] ["",{"text":"\narmor toughness percentage : ","color":"white"},{"score":{"name":"%xpc.armor_toughness.added_percentage","objective":"xpc_dummy"},"color":"white"}]
tellraw @a[tag=xpc_debug] ["",{"text":"\narmor toughness : ","color":"white"},{"score":{"name":"%xpc.armor_toughness","objective":"xpc_dummy"},"color":"white"}]
tellraw @a[tag=xpc_debug] ["",{"text":"\narmor toughness Lore pre decimal : ","color":"white"},{"score":{"name":"%xpc.armor_toughness.lore.pre_decimal","objective":"xpc_dummy"},"color":"white"}]
tellraw @a[tag=xpc_debug] ["",{"text":"\nDurability percentage : ","color":"white"},{"score":{"name":"%xpc.durability.percentage","objective":"xpc_dummy"},"color":"white"}]
tellraw @a[tag=xpc_debug] ["",{"text":"\nDurability : ","color":"white"},{"score":{"name":"%xpc.durability","objective":"xpc_dummy"},"color":"white"}]
tellraw @a[tag=xpc_debug] ["",{"text":"\nknockback resistance Percentage : ","color":"white"},{"score":{"name":"%xpc.knockback_resistance.added_percentage","objective":"xpc_dummy"},"color":"white"}]
tellraw @a[tag=xpc_debug] ["",{"text":"\nknockback resistance : ","color":"white"},{"score":{"name":"%xpc.knockback_resistance","objective":"xpc_dummy"},"color":"white"}]
tellraw @a[tag=xpc_debug] ["",{"text":"\nHigher Material Percentage : ","color":"white"},{"score":{"name":"%xpc.higher_quality_materials.percentage","objective":"xpc_dummy"},"color":"white"}]
tellraw @a[tag=xpc_debug] ["",{"text":"\nRarity : ","color":"white"},{"score":{"name":"%xpc.rarity","objective":"xpc_dummy"},"color":"white"}]





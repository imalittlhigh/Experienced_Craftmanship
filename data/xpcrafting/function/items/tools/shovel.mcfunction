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
scoreboard players reset %xpc.attack_damage.added_percentage xpc_dummy
scoreboard players reset %xpc.durability.percentage xpc_dummy
scoreboard players reset %xpc.attack_speed.percentage xpc_dummy
scoreboard players reset %xpc.mining_speed.percentage xpc_dummy
scoreboard players reset %xpc.higher_quality_materials.percentage xpc_dummy
scoreboard players reset %xpc.durability xpc_dummy
scoreboard players reset %xpc.mining_speed xpc_dummy
scoreboard players reset %xpc.attack_damage xpc_dummy
scoreboard players reset %xpc.attack_speed xpc_dummy
scoreboard players reset %xpc.rarity xpc_dummy
scoreboard players reset %xpc.attack_speed.lore.pre_decimal xpc_dummy

scoreboard players reset @s xpc_dummy

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

#setting base attack speed to 40000 (for calculating, base attack speed is 4)
scoreboard players set %xpc.attack_speed.base xpc_dummy 40000
#setting 100 for calc for lore
scoreboard players set %xpc.100 xpc_dummy 100
#setting 10 for calc for lore
scoreboard players set %xpc.10 xpc_dummy 10
#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

#generating random values
#attack damage added // 
execute store result score %xpc.attack_damage.added_percentage xpc_dummy run random value 0..50
#durability
execute store result score %xpc.durability.percentage xpc_dummy run random value 100..300
#attack speed
execute store result score %xpc.attack_speed.percentage xpc_dummy run random value 100..150
#mining speed for correct blocks
execute store result score %xpc.mining_speed.percentage xpc_dummy run random value 100..200

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

#setting tier dependant values

#setting durability per tier (default tier durability * rolled percentage)
#saving in durability score
#(for display -> 0.01)
scoreboard players operation %xpc.durability xpc_dummy = %xpc.durability.percentage xpc_dummy
#calculating new durability
execute if data entity @n[type=chest_minecart,tag=xpc.minecart,distance=..1] Items[{id:"minecraft:wooden_shovel"}] run scoreboard players operation %xpc.durability xpc_dummy *= %xpc.durability.wooden xpc_dummy
execute if data entity @n[type=chest_minecart,tag=xpc.minecart,distance=..1] Items[{id:"minecraft:stone_shovel"}] run scoreboard players operation %xpc.durability xpc_dummy *= %xpc.durability.stone xpc_dummy
execute if data entity @n[type=chest_minecart,tag=xpc.minecart,distance=..1] Items[{id:"minecraft:iron_shovel"}] run scoreboard players operation %xpc.durability xpc_dummy *= %xpc.durability.iron xpc_dummy
execute if data entity @n[type=chest_minecart,tag=xpc.minecart,distance=..1] Items[{id:"minecraft:golden_shovel"}] run scoreboard players operation %xpc.durability xpc_dummy *= %xpc.durability.golden xpc_dummy
execute if data entity @n[type=chest_minecart,tag=xpc.minecart,distance=..1] Items[{id:"minecraft:diamond_shovel"}] run scoreboard players operation %xpc.durability xpc_dummy *= %xpc.durability.diamond xpc_dummy
execute if data entity @n[type=chest_minecart,tag=xpc.minecart,distance=..1] Items[{id:"minecraft:netherite_shovel"}] run scoreboard players operation %xpc.durability xpc_dummy *= %xpc.durability.netherite xpc_dummy

#setting mining speed for correct blocks per tier
#saving in mining speed score
#(for display -> 0.01)
scoreboard players operation %xpc.mining_speed xpc_dummy = %xpc.mining_speed.percentage xpc_dummy
#calculating new mining speed
execute if data entity @n[type=chest_minecart,tag=xpc.minecart,distance=..1] Items[{id:"minecraft:wooden_shovel"}] run scoreboard players operation %xpc.mining_speed xpc_dummy *= %xpc.mining_speed.wooden xpc_dummy
execute if data entity @n[type=chest_minecart,tag=xpc.minecart,distance=..1] Items[{id:"minecraft:stone_shovel"}] run scoreboard players operation %xpc.mining_speed xpc_dummy *= %xpc.mining_speed.stone xpc_dummy
execute if data entity @n[type=chest_minecart,tag=xpc.minecart,distance=..1] Items[{id:"minecraft:iron_shovel"}] run scoreboard players operation %xpc.mining_speed xpc_dummy *= %xpc.mining_speed.iron xpc_dummy
execute if data entity @n[type=chest_minecart,tag=xpc.minecart,distance=..1] Items[{id:"minecraft:golden_shovel"}] run scoreboard players operation %xpc.mining_speed xpc_dummy *= %xpc.mining_speed.golden xpc_dummy
execute if data entity @n[type=chest_minecart,tag=xpc.minecart,distance=..1] Items[{id:"minecraft:diamond_shovel"}] run scoreboard players operation %xpc.mining_speed xpc_dummy *= %xpc.mining_speed.diamond xpc_dummy
execute if data entity @n[type=chest_minecart,tag=xpc.minecart,distance=..1] Items[{id:"minecraft:netherite_shovel"}] run scoreboard players operation %xpc.mining_speed xpc_dummy *= %xpc.mining_speed.netherite xpc_dummy

#attack damage per tier
#saving in attack damage score
scoreboard players operation %xpc.attack_damage xpc_dummy = %xpc.attack_damage.added_percentage xpc_dummy
#calculating new attack damaged
execute if data entity @n[type=chest_minecart,tag=xpc.minecart,distance=..1] Items[{id:"minecraft:wooden_shovel"}] run scoreboard players operation %xpc.attack_damage xpc_dummy *= %xpc.attack_damage.wooden.shovel xpc_dummy
execute if data entity @n[type=chest_minecart,tag=xpc.minecart,distance=..1] Items[{id:"minecraft:stone_shovel"}] run scoreboard players operation %xpc.attack_damage xpc_dummy *= %xpc.attack_damage.stone.shovel xpc_dummy
execute if data entity @n[type=chest_minecart,tag=xpc.minecart,distance=..1] Items[{id:"minecraft:iron_shovel"}] run scoreboard players operation %xpc.attack_damage xpc_dummy *= %xpc.attack_damage.iron.shovel xpc_dummy
execute if data entity @n[type=chest_minecart,tag=xpc.minecart,distance=..1] Items[{id:"minecraft:golden_shovel"}] run scoreboard players operation %xpc.attack_damage xpc_dummy *= %xpc.attack_damage.golden.shovel xpc_dummy
execute if data entity @n[type=chest_minecart,tag=xpc.minecart,distance=..1] Items[{id:"minecraft:diamond_shovel"}] run scoreboard players operation %xpc.attack_damage xpc_dummy *= %xpc.attack_damage.diamond.shovel xpc_dummy
execute if data entity @n[type=chest_minecart,tag=xpc.minecart,distance=..1] Items[{id:"minecraft:netherite_shovel"}] run scoreboard players operation %xpc.attack_damage xpc_dummy *= %xpc.attack_damage.netherite.shovel xpc_dummy

#attack speed per tier
#saving in attack speed score
scoreboard players operation %xpc.attack_speed xpc_dummy = %xpc.attack_speed.percentage xpc_dummy
#calculating new attack speed
scoreboard players operation %xpc.attack_speed xpc_dummy *= %xpc.attack_speed.shovel xpc_dummy
#attack speed is additive and its base is 4, so to set the speed, we need to remove 4 from the new calculated attack speed
#copying attack speed in addition score
scoreboard players operation %xpc.attack_speed.addition xpc_dummy = %xpc.attack_speed xpc_dummy
#calculating what to set the attackspeed addition in item modifier to (*0.0001)
scoreboard players operation %xpc.attack_speed.addition xpc_dummy -= %xpc.attack_speed.base xpc_dummy

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

#Getting generated values ready for display in Lore

#attack damage is additive, so i need to add the base attack damage
#saving in addition score
scoreboard players operation %xpc.attack_damage.lore xpc_dummy = %xpc.attack_damage xpc_dummy
#getting the score to standard scale
scoreboard players operation %xpc.attack_damage.lore xpc_dummy /= %xpc.100 xpc_dummy
#removing base attack damage of item
execute if data entity @n[type=chest_minecart,tag=xpc.minecart,distance=..1] Items[{id:"minecraft:wooden_shovel"}] run scoreboard players operation %xpc.attack_damage.lore xpc_dummy += %xpc.attack_damage.wooden.shovel xpc_dummy
execute if data entity @n[type=chest_minecart,tag=xpc.minecart,distance=..1] Items[{id:"minecraft:stone_shovel"}] run scoreboard players operation %xpc.attack_damage.lore xpc_dummy += %xpc.attack_damage.stone.shovel xpc_dummy
execute if data entity @n[type=chest_minecart,tag=xpc.minecart,distance=..1] Items[{id:"minecraft:iron_shovel"}] run scoreboard players operation %xpc.attack_damage.lore xpc_dummy += %xpc.attack_damage.iron.shovel xpc_dummy
execute if data entity @n[type=chest_minecart,tag=xpc.minecart,distance=..1] Items[{id:"minecraft:golden_shovel"}] run scoreboard players operation %xpc.attack_damage.lore xpc_dummy += %xpc.attack_damage.golden.shovel xpc_dummy
execute if data entity @n[type=chest_minecart,tag=xpc.minecart,distance=..1] Items[{id:"minecraft:diamond_shovel"}] run scoreboard players operation %xpc.attack_damage.lore xpc_dummy += %xpc.attack_damage.diamond.shovel xpc_dummy
execute if data entity @n[type=chest_minecart,tag=xpc.minecart,distance=..1] Items[{id:"minecraft:netherite_shovel"}] run scoreboard players operation %xpc.attack_damage.lore xpc_dummy += %xpc.attack_damage.netherite.shovel xpc_dummy
#getting the score to standard scale
scoreboard players operation %xpc.attack_damage.lore xpc_dummy /= %xpc.10 xpc_dummy

#mining speed
scoreboard players operation %xpc.mining_speed.lore xpc_dummy = %xpc.mining_speed.percentage xpc_dummy
#changing 100%-200% to only increase in percentage (0%-100%) [This is Proficiency in the Lore]
scoreboard players remove %xpc.mining_speed.lore xpc_dummy 100
#setting players xpc_dummy to 1, if item can break better materials (so a condition can be used in item modifier to add correct lore)
execute if score %xpc.higher_quality_materials.percentage xpc_dummy matches 70.. run scoreboard players set @s xpc_dummy 1
#attack speed
#copying attack speed in lore score
scoreboard players operation %xpc.attack_speed.lore xpc_dummy = %xpc.attack_speed xpc_dummy
#adjusting for correct display (only numbers after decimal)
scoreboard players operation %xpc.attack_speed.lore xpc_dummy /= %xpc.100 xpc_dummy

#adjusting for everything in from of the decimal for attack speed lore
#im seperating the pre decimal number from the post decimal number, since scoreboar is only int and i need fload for lore
#cant use storage with float here, since it will output 0.1f and u cant remov the f in lore sadly

#if attack speed < 1
#set pre decimal to 0 and push in lore
execute if score %xpc.attack_speed.lore xpc_dummy matches ..99 run scoreboard players set %xpc.attack_speed.lore.pre_decimal xpc_dummy 0
#if attack speed is 1 < 2
#set pre decimal to 1
execute if score %xpc.attack_speed.lore xpc_dummy matches 100..199 run scoreboard players set %xpc.attack_speed.lore.pre_decimal xpc_dummy 1
#remove 100 from post decimal score
execute if score %xpc.attack_speed.lore xpc_dummy matches 100..199 run scoreboard players remove %xpc.attack_speed.lore xpc_dummy 100
#if attack speed is 2 < 3
#set pre decimal to 2
execute if score %xpc.attack_speed.lore xpc_dummy matches 200..299 run scoreboard players set %xpc.attack_speed.lore.pre_decimal xpc_dummy 2
#remove 200 from post decimal score
execute if score %xpc.attack_speed.lore xpc_dummy matches 200..299 run scoreboard players remove %xpc.attack_speed.lore xpc_dummy 200
#if attack speed is 3 < 4
#set pre decimal to 3
execute if score %xpc.attack_speed.lore xpc_dummy matches 300..399 run scoreboard players set %xpc.attack_speed.lore.pre_decimal xpc_dummy 3
#remove 300 from post decimal score
execute if score %xpc.attack_speed.lore xpc_dummy matches 300..399 run scoreboard players remove %xpc.attack_speed.lore xpc_dummy 300
#if attack speeed is 4
#set pre decimal to 4
execute if score %xpc.attack_speed.lore xpc_dummy matches 400.. run scoreboard players set %xpc.attack_speed.lore.pre_decimal xpc_dummy 4
#remove 400 from post decimal score
execute if score %xpc.attack_speed.lore xpc_dummy matches 400.. run scoreboard players remove %xpc.attack_speed.lore xpc_dummy 400



#Setting rarity dependant on generated values
#if item has high durability add one to rarity (100-300)
execute if score %xpc.durability.percentage xpc_dummy matches 280.. run scoreboard players add %xpc.rarity xpc_dummy 1
#if item has fast mining speed add one to rarity (100-200)
execute if score %xpc.mining_speed.percentage xpc_dummy matches 180.. run scoreboard players add %xpc.rarity xpc_dummy 1
#if item has high damage add one to rarity (0-100)
execute if score %xpc.attack_damage.added_percentage xpc_dummy matches 80.. run scoreboard players add %xpc.rarity xpc_dummy 1
#if item has high attack speed add one to rarity (100-200)
execute if score %xpc.attack_speed.percentage xpc_dummy matches 180.. run scoreboard players add %xpc.rarity xpc_dummy 1




#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

#Saving values for components in storage
#durability
execute store result storage xpc:components item.durability int 0.01 run scoreboard players get %xpc.durability xpc_dummy
#mining speed
execute store result storage xpc:components item.mining_speed int 0.01 run scoreboard players get %xpc.mining_speed xpc_dummy

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

#Modifying components of item


data modify entity @n[type=chest_minecart,tag=xpc.minecart,distance=..1] Items[0].components.minecraft:tool.rules.[].blocks set value "#minecraft:mineable/shovel"
#adding drops for corredt blocks (set above)
data modify entity @n[type=chest_minecart,tag=xpc.minecart,distance=..1] Items[0].components.minecraft:tool.rules.[].correct_for_drops set value true
#durability
data modify entity @n[type=chest_minecart,tag=xpc.minecart,distance=..1] Items[0].components."minecraft:max_damage" set from storage xpc:components item.durability
#mining speed
data modify entity @n[type=chest_minecart,tag=xpc.minecart,distance=..1] Items[0].components.minecraft:tool.rules.[].speed set from storage xpc:components item.mining_speed


#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

#Adding Lore
item modify entity @n[type=chest_minecart,tag=xpc.minecart,distance=..1] container.0 xpcrafting:items/modify

#Adding Rarity
execute unless score %xpc.rarity xpc_dummy matches 1.. run item modify entity @n[type=chest_minecart,tag=xpc.minecart,distance=..1] container.0 xpcrafting:items/rarity/common
execute if score %xpc.rarity xpc_dummy matches 1 run item modify entity @n[type=chest_minecart,tag=xpc.minecart,distance=..1] container.0 xpcrafting:items/rarity/uncommon
execute if score %xpc.rarity xpc_dummy matches 2 run item modify entity @n[type=chest_minecart,tag=xpc.minecart,distance=..1] container.0 xpcrafting:items/rarity/rare
execute if score %xpc.rarity xpc_dummy matches 3 run item modify entity @n[type=chest_minecart,tag=xpc.minecart,distance=..1] container.0 xpcrafting:items/rarity/epic
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
tellraw @a[tag=xpc_debug] ["",{"text":"\nAttack Damage added Percentage : ","color":"white"},{"score":{"name":"%xpc.attack_damage.added_percentage","objective":"xpc_dummy"},"color":"white"}]
tellraw @a[tag=xpc_debug] ["",{"text":"\nAttack Damage added Flat : ","color":"white"},{"score":{"name":"%xpc.attack_damage","objective":"xpc_dummy"},"color":"white"}]
tellraw @a[tag=xpc_debug] ["",{"text":"\nAttack Damage Lore : ","color":"white"},{"score":{"name":"%xpc.attack_damage.lore","objective":"xpc_dummy"},"color":"white"}]
tellraw @a[tag=xpc_debug] ["",{"text":"\nAttack Speed percentage : ","color":"white"},{"score":{"name":"%xpc.attack_speed.percentage","objective":"xpc_dummy"},"color":"white"}]
tellraw @a[tag=xpc_debug] ["",{"text":"\nAttack Speed : ","color":"white"},{"score":{"name":"%xpc.attack_speed","objective":"xpc_dummy"},"color":"white"}]
tellraw @a[tag=xpc_debug] ["",{"text":"\nAttack Speed Lore pre decimal : ","color":"white"},{"score":{"name":"%xpc.attack_speed.lore.pre_decimal","objective":"xpc_dummy"},"color":"white"}]
tellraw @a[tag=xpc_debug] ["",{"text":"\nDurability percentage : ","color":"white"},{"score":{"name":"%xpc.durability.percentage","objective":"xpc_dummy"},"color":"white"}]
tellraw @a[tag=xpc_debug] ["",{"text":"\nDurability : ","color":"white"},{"score":{"name":"%xpc.durability","objective":"xpc_dummy"},"color":"white"}]
tellraw @a[tag=xpc_debug] ["",{"text":"\nMining speed Percentage : ","color":"white"},{"score":{"name":"%xpc.mining_speed.percentage","objective":"xpc_dummy"},"color":"white"}]
tellraw @a[tag=xpc_debug] ["",{"text":"\nMining Speed : ","color":"white"},{"score":{"name":"%xpc.mining_speed","objective":"xpc_dummy"},"color":"white"}]
tellraw @a[tag=xpc_debug] ["",{"text":"\nHigher Material Percentage : ","color":"white"},{"score":{"name":"%xpc.higher_quality_materials.percentage","objective":"xpc_dummy"},"color":"white"}]
tellraw @a[tag=xpc_debug] ["",{"text":"\nRarity : ","color":"white"},{"score":{"name":"%xpc.rarity","objective":"xpc_dummy"},"color":"white"}]





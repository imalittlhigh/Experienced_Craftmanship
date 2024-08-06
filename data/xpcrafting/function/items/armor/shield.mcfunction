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

#durability
execute store result score %xpc.durability.percentage xpc_dummy run random value 100..300

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

#setting tier dependant values

#setting durability per tier (default tier durability * rolled percentage)
#saving in durability score
#(for display -> 0.01)
scoreboard players operation %xpc.durability xpc_dummy = %xpc.durability.percentage xpc_dummy
#calculating new durability
scoreboard players operation %xpc.durability xpc_dummy *= %xpc.durability.shield xpc_dummy

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

#Getting generated values ready for display in Lore

##removing possible lore for not upgradable pickaxes
#execute if data entity @n[type=chest_minecart,tag=xpc.minecart,distance=..1] Items[{id:"minecraft:diamond_pickaxe"}] run scoreboard players set %xpc.higher_quality_materials.percentage xpc_dummy 0
#execute if data entity @n[type=chest_minecart,tag=xpc.minecart,distance=..1] Items[{id:"minecraft:netherite_pickaxe"}] run scoreboard players set %xpc.higher_quality_materials.percentage xpc_dummy 0





#Setting rarity dependant on generated values
#if item has high durability add one to rarity (100-300)
execute if score %xpc.durability.percentage xpc_dummy matches 280.. run scoreboard players add %xpc.rarity xpc_dummy 1
#if item has fast mining speed add one to rarity (100-200)
execute if score %xpc.durability.percentage xpc_dummy matches 225.. run scoreboard players add %xpc.rarity xpc_dummy 1
#if item has high damage add one to rarity (0-100)
execute if score %xpc.durability.percentage xpc_dummy matches 175.. run scoreboard players add %xpc.rarity xpc_dummy 1
#if item has high attack speed add one to rarity (100-200)
execute if score %xpc.durability.percentage xpc_dummy matches 150.. run scoreboard players add %xpc.rarity xpc_dummy 1




#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

#Saving values for components in storage
#durability
execute store result storage xpc:components item.durability int 0.01 run scoreboard players get %xpc.durability xpc_dummy

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

#Modifying components of item
#Setting default block break (for being able to change mining speed)
#this is hardcored (use minecraft namespace for all except pickaxes)

##adding better tool if rolled
#execute if score %xpc.higher_quality_materials.percentage xpc_dummy matches 70.. if data entity @n[type=chest_minecart,tag=xpc.minecart,distance=..1] Items[{id:"minecraft:wooden_pickaxe"}] run data modify entity @n[type=chest_minecart,tag=xpc.minecart,distance=..1] Items[0].components.minecraft:tool.rules.[].blocks set value "#xpcrafting:mineable/stone_pickaxe"
#execute if score %xpc.higher_quality_materials.percentage xpc_dummy matches 70.. if data entity @n[type=chest_minecart,tag=xpc.minecart,distance=..1] Items[{id:"minecraft:stone_pickaxe"}] run data modify entity @n[type=chest_minecart,tag=xpc.minecart,distance=..1] Items[0].components.minecraft:tool.rules.[].blocks set value "#xpcrafting:mineable/iron_pickaxe"
#execute if score %xpc.higher_quality_materials.percentage xpc_dummy matches 70.. if data entity @n[type=chest_minecart,tag=xpc.minecart,distance=..1] Items[{id:"minecraft:iron_pickaxe"}] run data modify entity @n[type=chest_minecart,tag=xpc.minecart,distance=..1] Items[0].components.minecraft:tool.rules.[].blocks set value "#xpcrafting:mineable/diamond_pickaxe"
#execute if score %xpc.higher_quality_materials.percentage xpc_dummy matches 70.. if data entity @n[type=chest_minecart,tag=xpc.minecart,distance=..1] Items[{id:"minecraft:golden_pickaxe"}] run data modify entity @n[type=chest_minecart,tag=xpc.minecart,distance=..1] Items[0].components.minecraft:tool.rules.[].blocks set value "#xpcrafting:mineable/iron_pickaxe"
#
##setting default
#execute unless score %xpc.higher_quality_materials.percentage xpc_dummy matches 70.. if data entity @n[type=chest_minecart,tag=xpc.minecart,distance=..1] Items[{id:"minecraft:wooden_pickaxe"}] run data modify entity @n[type=chest_minecart,tag=xpc.minecart,distance=..1] Items[0].components.minecraft:tool.rules.[].blocks set value "#xpcrafting:mineable/wooden_pickaxe"
#execute unless score %xpc.higher_quality_materials.percentage xpc_dummy matches 70.. if data entity @n[type=chest_minecart,tag=xpc.minecart,distance=..1] Items[{id:"minecraft:stone_pickaxe"}] run data modify entity @n[type=chest_minecart,tag=xpc.minecart,distance=..1] Items[0].components.minecraft:tool.rules.[].blocks set value "#xpcrafting:mineable/stone_pickaxe"
#execute unless score %xpc.higher_quality_materials.percentage xpc_dummy matches 70.. if data entity @n[type=chest_minecart,tag=xpc.minecart,distance=..1] Items[{id:"minecraft:iron_pickaxe"}] run data modify entity @n[type=chest_minecart,tag=xpc.minecart,distance=..1] Items[0].components.minecraft:tool.rules.[].blocks set value "#xpcrafting:mineable/iron_pickaxe"
#execute unless score %xpc.higher_quality_materials.percentage xpc_dummy matches 70.. if data entity @n[type=chest_minecart,tag=xpc.minecart,distance=..1] Items[{id:"minecraft:golden_pickaxe"}] run data modify entity @n[type=chest_minecart,tag=xpc.minecart,distance=..1] Items[0].components.minecraft:tool.rules.[].blocks set value "#xpcrafting:mineable/wooden_pickaxe"
#
#execute if data entity @n[type=chest_minecart,tag=xpc.minecart,distance=..1] Items[{id:"minecraft:diamond_pickaxe"}] run data modify entity @n[type=chest_minecart,tag=xpc.minecart,distance=..1] Items[0].components.minecraft:tool.rules.[].blocks set value "#xpcrafting:mineable/diamond_pickaxe"
#execute if data entity @n[type=chest_minecart,tag=xpc.minecart,distance=..1] Items[{id:"minecraft:netherite_pickaxe"}] run data modify entity @n[type=chest_minecart,tag=xpc.minecart,distance=..1] Items[0].components.minecraft:tool.rules.[].blocks set value "#xpcrafting:mineable/diamond_pickaxe"
#


#data modify entity @n[type=chest_minecart,tag=xpc.minecart,distance=..1] Items[0].components.minecraft:tool.rules.[].blocks set value "#minecraft:mineable/axe"
#adding drops for corredt blocks (set above)
#data modify entity @n[type=chest_minecart,tag=xpc.minecart,distance=..1] Items[0].components.minecraft:tool.rules.[].correct_for_drops set value true
#durability
data modify entity @n[type=chest_minecart,tag=xpc.minecart,distance=..1] Items[0].components."minecraft:max_damage" set from storage xpc:components item.durability
#mining speed
#data modify entity @n[type=chest_minecart,tag=xpc.minecart,distance=..1] Items[0].components.minecraft:tool.rules.[].speed set from storage xpc:components item.mining_speed


#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


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





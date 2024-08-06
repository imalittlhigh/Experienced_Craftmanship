##
 # load.mcfunction
 # 
 #
 # Created by imalittlhigh
##

tellraw @a[tag=xpc_debug] ["",{"text":"Loaded Experienced Craftmanship","color":"white"}]

#adding scoreboards
scoreboard objectives add xpc_level_weight level
scoreboard objectives add xpc_dummy dummy

#setting scores for calculating
scoreboard players set %xpc.100 xpc_dummy 100
scoreboard players set %xpc.10 xpc_dummy 10

#Setting default values for items that are needed for calculation
#tools (mining tools)
#mining speed
scoreboard players set %xpc.mining_speed.wooden xpc_dummy 3
scoreboard players set %xpc.mining_speed.stone xpc_dummy 4
scoreboard players set %xpc.mining_speed.iron xpc_dummy 6
scoreboard players set %xpc.mining_speed.golden xpc_dummy 12
scoreboard players set %xpc.mining_speed.diamond xpc_dummy 7
scoreboard players set %xpc.mining_speed.netherite xpc_dummy 8
#durability
scoreboard players set %xpc.durability.wooden xpc_dummy 60
scoreboard players set %xpc.durability.stone xpc_dummy 132
scoreboard players set %xpc.durability.iron xpc_dummy 251
scoreboard players set %xpc.durability.golden xpc_dummy 33
scoreboard players set %xpc.durability.diamond xpc_dummy 1562
scoreboard players set %xpc.durability.netherite xpc_dummy 2032

#Axe
#attack damage
scoreboard players set %xpc.attack_damage.wooden.axe xpc_dummy 70
scoreboard players set %xpc.attack_damage.golden.axe xpc_dummy 70
scoreboard players set %xpc.attack_damage.stone.axe xpc_dummy 90
scoreboard players set %xpc.attack_damage.iron.axe xpc_dummy 90
scoreboard players set %xpc.attack_damage.diamond.axe xpc_dummy 90
scoreboard players set %xpc.attack_damage.netherite.axe xpc_dummy 100
#attack speed
scoreboard players set %xpc.attack_speed.wooden.axe xpc_dummy 80
scoreboard players set %xpc.attack_speed.golden.axe xpc_dummy 100
scoreboard players set %xpc.attack_speed.stone.axe xpc_dummy 80
scoreboard players set %xpc.attack_speed.iron.axe xpc_dummy 90
scoreboard players set %xpc.attack_speed.diamond.axe xpc_dummy 100
scoreboard players set %xpc.attack_speed.netherite.axe xpc_dummy 100
#Pickaxe
#attack damage
scoreboard players set %xpc.attack_damage.wooden.pickaxe xpc_dummy 20
scoreboard players set %xpc.attack_damage.golden.pickaxe xpc_dummy 20
scoreboard players set %xpc.attack_damage.stone.pickaxe xpc_dummy 30
scoreboard players set %xpc.attack_damage.iron.pickaxe xpc_dummy 40
scoreboard players set %xpc.attack_damage.diamond.pickaxe xpc_dummy 50
scoreboard players set %xpc.attack_damage.netherite.pickaxe xpc_dummy 60
#attack speed
scoreboard players set %xpc.attack_speed.pickaxe xpc_dummy 120

#Hoe
#attack damage
scoreboard players set %xpc.attack_damage.hoe xpc_dummy 10
#attack speed
scoreboard players set %xpc.attack_speed.wooden.hoe xpc_dummy 100
scoreboard players set %xpc.attack_speed.golden.hoe xpc_dummy 100
scoreboard players set %xpc.attack_speed.stone.hoe xpc_dummy 200
scoreboard players set %xpc.attack_speed.iron.hoe xpc_dummy 300
scoreboard players set %xpc.attack_speed.diamond.hoe xpc_dummy 400
scoreboard players set %xpc.attack_speed.netherite.hoe xpc_dummy 400

#Shovel
#attack damage
scoreboard players set %xpc.attack_damage.wooden.shovel xpc_dummy 25
scoreboard players set %xpc.attack_damage.golden.shovel xpc_dummy 25
scoreboard players set %xpc.attack_damage.stone.shovel xpc_dummy 35
scoreboard players set %xpc.attack_damage.iron.shovel xpc_dummy 45
scoreboard players set %xpc.attack_damage.diamond.shovel xpc_dummy 55
scoreboard players set %xpc.attack_damage.netherite.shovel xpc_dummy 65
#attack speed
scoreboard players set %xpc.attack_speed.shovel xpc_dummy 100

#Sword
#attack damage
scoreboard players set %xpc.attack_damage.wooden.sword xpc_dummy 40
scoreboard players set %xpc.attack_damage.golden.sword xpc_dummy 40
scoreboard players set %xpc.attack_damage.stone.sword xpc_dummy 50
scoreboard players set %xpc.attack_damage.iron.sword xpc_dummy 60
scoreboard players set %xpc.attack_damage.diamond.sword xpc_dummy 70
scoreboard players set %xpc.attack_damage.netherite.sword xpc_dummy 80
#attack speed
scoreboard players set %xpc.attack_speed.sword xpc_dummy 160

#Tools
#flint and steel
scoreboard players set %xpc.durability.flint_and_steel xpc_dummy 64
#shears
scoreboard players set %xpc.durability.shears xpc_dummy 238
#brush
scoreboard players set %xpc.durability.brush xpc_dummy 64
#fishing rod
scoreboard players set %xpc.durability.fishing_rod xpc_dummy 64
#carrot on a stick
scoreboard players set %xpc.durability.carrot_on_a_stick xpc_dummy 25
#warped fungus on a stick
scoreboard players set %xpc.durability.warped_fungus_on_a_stick xpc_dummy 100

#combat
#shield
scoreboard players set %xpc.durability.shield xpc_dummy 336
#bow
scoreboard players set %xpc.durability.bow xpc_dummy 384
#crossbow
scoreboard players set %xpc.durability.crossbow xpc_dummy 465

#Armmor
#wolf
#armor value
scoreboard players set %xpc.armor.wolf xpc_dummy 110
#horse
#armor value
scoreboard players set %xpc.armor.leather_horse xpc_dummy 30

#helmets
#armor value
scoreboard players set %xpc.armor.turtle.helmet xpc_dummy 20
scoreboard players set %xpc.armor.leather.helmet xpc_dummy 10
scoreboard players set %xpc.armor.iron.helmet xpc_dummy 20
scoreboard players set %xpc.armor.golden.helmet xpc_dummy 20
scoreboard players set %xpc.armor.chainmail.helmet xpc_dummy 20
scoreboard players set %xpc.armor.diamond.helmet xpc_dummy 30
scoreboard players set %xpc.armor.netherite.helmet xpc_dummy 30
#armor toughness
scoreboard players set %xpc.armor_toughness.diamond.helmet xpc_dummy 20
scoreboard players set %xpc.armor_toughness.netherite.helmet xpc_dummy 30
#knockback resistance
scoreboard players set %xpc.knockback_resistance.netherite.helmet xpc_dummy 10
#durability
scoreboard players set %xpc.durability.turtle.helmet xpc_dummy 275
scoreboard players set %xpc.durability.leather.helmet xpc_dummy 55
scoreboard players set %xpc.durability.iron.helmet xpc_dummy 165
scoreboard players set %xpc.durability.golden.helmet xpc_dummy 77
scoreboard players set %xpc.durability.chainmail.helmet xpc_dummy 165
scoreboard players set %xpc.durability.diamond.helmet xpc_dummy 363
scoreboard players set %xpc.durability.netherite.helmet xpc_dummy 407


#chestplates
#armor value
scoreboard players set %xpc.armor.leather.chestplate xpc_dummy 30
scoreboard players set %xpc.armor.iron.chestplate xpc_dummy 60
scoreboard players set %xpc.armor.golden.chestplate xpc_dummy 50
scoreboard players set %xpc.armor.chainmail.chestplate xpc_dummy 50
scoreboard players set %xpc.armor.diamond.chestplate xpc_dummy 80
scoreboard players set %xpc.armor.netherite.chestplate xpc_dummy 80
#armor toughness
scoreboard players set %xpc.armor_toughness.diamond.chestplate xpc_dummy 20
scoreboard players set %xpc.armor_toughness.netherite.chestplate xpc_dummy 30
#knockback resistance
scoreboard players set %xpc.knockback_resistance.netherite.chestplate xpc_dummy 10
#durability
scoreboard players set %xpc.durability.leather.chestplate xpc_dummy 80
scoreboard players set %xpc.durability.iron.chestplate xpc_dummy 240
scoreboard players set %xpc.durability.golden.chestplate xpc_dummy 112
scoreboard players set %xpc.durability.chainmail.chestplate xpc_dummy 240
scoreboard players set %xpc.durability.diamond.chestplate xpc_dummy 528
scoreboard players set %xpc.durability.netherite.chestplate xpc_dummy 592

#leggings
#armor value
scoreboard players set %xpc.armor.leather.leggings xpc_dummy 20
scoreboard players set %xpc.armor.iron.leggings xpc_dummy 50
scoreboard players set %xpc.armor.golden.leggings xpc_dummy 30
scoreboard players set %xpc.armor.chainmail.leggings xpc_dummy 40
scoreboard players set %xpc.armor.diamond.leggings xpc_dummy 60
scoreboard players set %xpc.armor.netherite.leggings xpc_dummy 60
#armor toughness
scoreboard players set %xpc.armor_toughness.diamond.leggings xpc_dummy 20
scoreboard players set %xpc.armor_toughness.netherite.leggings xpc_dummy 30
#knockback resistance
scoreboard players set %xpc.knockback_resistance.netherite.leggings xpc_dummy 10
#durability
scoreboard players set %xpc.durability.leather.leggings xpc_dummy 75
scoreboard players set %xpc.durability.iron.leggings xpc_dummy 255
scoreboard players set %xpc.durability.golden.leggings xpc_dummy 105
scoreboard players set %xpc.durability.chainmail.leggings xpc_dummy 225
scoreboard players set %xpc.durability.diamond.leggings xpc_dummy 495
scoreboard players set %xpc.durability.netherite.leggings xpc_dummy 555


#boots
#armor value
scoreboard players set %xpc.armor.leather.boots xpc_dummy 10
scoreboard players set %xpc.armor.iron.boots xpc_dummy 20
scoreboard players set %xpc.armor.golden.boots xpc_dummy 10
scoreboard players set %xpc.armor.chainmail.boots xpc_dummy 10
scoreboard players set %xpc.armor.diamond.boots xpc_dummy 30
scoreboard players set %xpc.armor.netherite.boots xpc_dummy 30
#armor toughness
scoreboard players set %xpc.armor_toughness.diamond.boots xpc_dummy 20
scoreboard players set %xpc.armor_toughness.netherite.boots xpc_dummy 30
#knockback resistance
scoreboard players set %xpc.knockback_resistance.netherite.boots xpc_dummy 10
#durability
scoreboard players set %xpc.durability.leather.boots xpc_dummy 65
scoreboard players set %xpc.durability.iron.boots xpc_dummy 195
scoreboard players set %xpc.durability.golden.boots xpc_dummy 91
scoreboard players set %xpc.durability.chainmail.boots xpc_dummy 195
scoreboard players set %xpc.durability.diamond.boots xpc_dummy 429
scoreboard players set %xpc.durability.netherite.boots xpc_dummy 481

#warming up the storage
data merge storage xpc:components {damage:0,speed:0,better_tool:"",prof:0}
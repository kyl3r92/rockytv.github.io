---
title: A game project - map design
category: duality
---
I’ve been working on a game project lately, using the Duality framework. The framework itself is not complicated, and I even prefer it because it incentivates you to do everything you need for your game.
<!-- more -->

I decided I would go on the 2D top-down RPG style. Why? I don’t know. Figured it would help me learning the advanced stuff of Duality.

The first step I took was to build the map system. I wanted a map system that would store information about each tile and their properties, such as: tile occupied by player, is it a tile that the player can walk, what kind of tile is that.

I had no clue on how to do it, because my C# knowledge is still basic. I asked on the forums, and someone came with a great solution: have an object that stores the map info, another object that renders the map with the info, and another object that renders the physic shape of the map, according to its tiles. With this reply, I had a great idea – why not join the three objects together into one?

That’s exactly how I did. The map system is made out of one object only, that handles drawing, physics shape, and map info. There is a field on the object that sets the map’s tileset. Currently, I only draw random colored tiles, but soon I’ll start drawing actual textures on it.

![](http://i.imgur.com/Zq4Fhkv.png){: .center-align}*This is the current map of the game.*

Before I move on to rendering actual textures from the specified tileset, I need to figure out how am I going to check if a specified material is in the right place. Let’s say: you have four materials: grass, water, sand, cactus. You want to only generate cactuses on sand. If the material is not sand, you should not generate cactuses.

It’s complicated, I know. I just hope that I can come out with a solution for it.
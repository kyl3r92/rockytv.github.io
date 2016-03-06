---
title: Deciding gameplay aspects
category: duality
---
The basic map system/framework is done, so, why not choose something else to work on?
<!-- more -->

I got tired of tweaking the map system. It really kept me tired, and I couldn’t even think about how would I tweak it. So, I moved to something else: spell system.

Yesterday I sat down, and started thinking about gameplay. I asked myself a few questions, and decided it all. Basically, the game is going to let you choose from 3 classes: warrior (melee), archer (ranged) and mage (ranged). Then, each class has a skill tree to follow. Each class can follow one of three skill paths. They are **aggressive**, **defensive** and **neutral**.

Aggressive pretty much focuses on doing damage. Defensive focuses on defending (huh, obviously), and neutral focuses on both.

After I wrote the concept, I started coding the framework of the spell system. First, I’ve created this `Projectile.cs` class, that serves as a base for other classes. It defines important fields and methods, such as: damage, projectile speed, the fire method, and others.

So, every spell is going to derive from this **Projectile base class**, and each spell will override the base fields and methods according to its needs. For example, the base damage is 10, and I create a Double Damage spell. So, it overrides the base damage and changes the damage from 10 to 20, lets say.

Here’s a gif for you to enjoy the beauty of this prototype system.

<div style='position:relative;padding-bottom:calc(100% / 1.72)'><iframe src='https://gfycat.com/ifr/DelightfulYellowJenny' frameborder='0' scrolling='no' width='100%' height='100%' style='position:absolute;top:0;left:0;' allowfullscreen></iframe></div>
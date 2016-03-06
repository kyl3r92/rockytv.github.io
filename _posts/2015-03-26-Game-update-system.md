---
title: How the update system will work
category: duality
---
Before getting my hands on coding, I decided to think about how am I going to offer updates for the game without the users needing to manually download them from a website.
<!-- more -->

A few days ago I was in the process of designing the game’s launcher. I thought it would be good to do it now because I wouldn’t have to do it later. Of course, most people say that you need to work on your game first, then work on things like launchers, etc.

Turns out that, those people are right. You shouldn’t matter with least important things when you have important things to do. Translating, I should keep working on the game instead of moving to a less important thing. The game is my priority.

After I’ve setup this blog, VITAS offered me some sort of cloud hosting. And I had the brilliant idea of using it for my games instead of using GitHub. No. I’m not crazy. I was really going to use GitHub for distributing binaries.

It’s going to work like this: the user, through the launcher application, will have the option to choose between two servers: **Server #1**, located in **Nuremberg, Germany**, and **Server #2**, located in **Brazil**. After they choose the server, the launcher will start the updating process.

This is just an idea I had, and probably I’ll go with it until me and VITAS manage to create a CDN using those two servers.
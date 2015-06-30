---
title: Tiled plugin planning
category: duality
---
I have decided to write this blog post to tell about the plans I have for this plugin: what it will do, what features it will have, etc.

I have renamed the plugin to **[DualityTiled](https://github.com/RockyTV/duality-tiled/commit/433ae3815895af868b0e58b505e2c6c6c7df7297)**. It is no longer called Tilety. I have apparently no good reason for this change, but DualityTiled looks better to me.

The plugin should be designed for integrating Tiled maps into Duality. It should allow the user to edit and render this map in Duality. But there's a problem: integrating the map editing features would require quite a lot work, and there's Tiled for editing the maps. A good idea to replace this "functionality" would be to add a button that allows the user to open the .tmx file in Tiled.

Not everything should be supported, but, I should try to support as many features as I can.

- A new CamViewLayer should be added to see the maps (maybe implement the map layer in the existing camera plugin?)
- The imported files should be refreshed when something changes in them
- Create a new pixmap in the same folder as the .tmx file, for each tileset, containing its tilesheet image

I'm also accepting suggestions. If you have a suggestion for the plugin, [create a new issue](https://github.com/RockyTV/duality-tiled/issues/new) in the plugin's repository.
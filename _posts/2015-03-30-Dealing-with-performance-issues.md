---
title: Dealing with performance issues
category: duality
---
This last weekend I was in doubt if my map rendering code was correct and clear. Spent a couple of hours staring at it, until I decided to rewrite it completely.
<!-- more -->

To start, I figured that the code I wrote was pretty ugly. And changing the way the tiles are rendered was needed because of **Tile Materials**. The old code had no way that I could think of using materials to draw it. And, again, it was pretty ugly.

I looked at the Duality source code, specifically the code for Renderers, and I thought of coding a `Renderer` just for the `TileMap`. An actual renderer.

I based myself off Duality’s SpriteRenderer code, and implemented it on my `TileMap` class. At first, I thought it worked, but a few seconds later, I was certain that something went wrong.

When you tried zooming in/out with the camera in the editor, you could notice that the editor’s FPS was under 10. I had absolutely no idea on how to fix it. I asked on the forums, Adam – the creator of Duality – told me to add a `ProfileRenderer` to my Scene, and find out what’s taking so long that decreases the game’s FPS, and suggested to remove any other GameObject present on the scene, one by one, until the performance issue was almost gone.

I removed my PlayerController object, and anything else that had nothing to do with the TileMap class. The issue was kind of fixed, but it would still lag your game out. This time, I decided to test and see if it was Duality’s fault.

I copied exactly the same code I was using for rendering the tile map, with a few modifications, of course. Then, I had the same result I had with my game code. My code’s structure was something like this:

> PrepareVertices(params) – prepare the vertices to be drawn on the screen
> DrawMethod() – was calling PrepareVertices(params) 1024 times and drawing those vertices.

`DrawMethod()` was calling `PrepareVertices(params)` 1024 times, and draw 4096 vertices every time it was called because it had a loop in it; it would send the position of each tile to the vertices method, and then draw those vertices. I thought it wasn’t a problem, because, after all, I thought that having the loop in the draw method, and having the loop in the vertices method would result in the same thing.

Turns out it didn’t result in the same thing. I moved the for loops to the `PrepareVertices` method, and all the performance issues were gone.

I didn’t expect that to happen. I shared my conclusions with the community, and Adam suggested me a few more things to do to improve performance on the game.
---
title: Source control for Duality
category: duality
---
I gave my MMORPG project a break, and decided to create and test new things on Duality.
<!-- more -->

Recently, I created a plugin for Duality that does exactly what this post title says. Yes, source control. Source control for your Duality projects.

I called it **Git Plugin**, but you can find it on NuGet under the name of **RockyTV’s Git Plugin**. Basically, it turns your current Duality work directory into a Git repository, and at every editor reload, it commits the changes you’ve made.

As Adam already told me, committing changes every time is not a good idea. He’s right. But this is just a “beta”, let’s say. Soon I’ll allow users to choose when to commit, and what files to stage.

You might have asked how does it differ from an external Git client like SourceTree. Well, I have the answer right here:

* You don’t need to do anything to commit the changes. You only need to install the plugin, and done. It will save your changes at every editor reload.
* It commits every change made to the repository automatically. No need to type those crazy git commands.
* It’s a built-in editor plugin.

In case you’re interested, you can find the plugin on the Duality Package Manager dialog, or on [NuGet](https://www.nuget.org/packages/RockyTV.GitPlugin.editor/).
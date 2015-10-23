---
layout: post
title: Refactoring code
category: [duality, general]
---

Honestly, I don't know if much has changed since the last blog post, which was about a month ago. Duality 2.0 was released, and now I'm in the process of porting my plugins to it. It's not much work, but it can be complicated, depending on the size of your project. 
<!-- more -->

Duality 2.0 had a major update: the core project (Duality) is now a [Portable Class Library](https://developer.xamarin.com/guides/cross-platform/application_fundamentals/pcl/introduction_to_portable_class_libraries/), and so are the game plugins. For this reason, I had to change the plugin to a PCL (the editor plugin is still a Class Library, only the game plugin has changed), and that brought me issues.

One of the issues was that I couldn't depend on local libraries (e.g., System.IO and System.Xml). Then, I decided to rewrite the whole resource again. One of the major changes were that the fields are now properties, and they have a private backing field.

{% highlight csharp %}
private int myVar;
public int MyVar 
{
    get { return myVar; }
    set { myVar = value; }
}
{% endhighlight %}

Another change was that TmxTileset became a resource. I had to do this to allow the user to import .tsx (Tiled external tileset) files, using the custom importer.

Now, with the new importer, both resources have a RawData field, which is an array of bytes. When you drag and drop a .tsx or .tmx file, the custom importer will grab the file bytes and pass it over to RawData. The importer then calls the LoadMapData() method, which will parse the file data from the RawData field. Doing this was necessary to stop the resources from loading from external files.

I've also decided to port my Git integration plugin to Duality 2.0, and I even asked for [feedback at the forums](http://forum.adamslair.net/viewtopic.php?p=3388#p3388), asking what people wanted in the plugin. Adam and hsnabn gave good suggestions, and I added them to my secret [Hack and Plan](http://hacknplan.com) board. One of the big changes is that I have decided to completely nuke the auto commit feature, and leaving the user to freely chose when he wants to commit, and what he wants to commit.
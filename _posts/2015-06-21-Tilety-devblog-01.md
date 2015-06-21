---
title: Tilety - Devblog 01
category: duality
---

*For those who do not know what Tilety is, Tilety is a [Duality](http://duality.adamslair.net/) plugin that integrates Tiled maps in Duality.*

Today was the most unproductive day for Tilety. All the other days I've worked on Tilety brought big changes to the plugin, but today was a day just for fixing.

I've re-written the way the plugin parses map properties. Instead of checking if the current XML node has a `<properties>` node, I realized that the node is also a descendant of the `<map>` node. It made parsing properties much easier than before. So, instead of having this code block for each descendant node that supports the property node:
{% highlight csharp %}
if (descendantNode.Name == "properties" && descendantNode.Parent == mapNode)
{
	foreach (XElement propertyElem in descendantNode.Descendants())
	{
		this.Properties.Add(
		propertyElem.GetAttributeValue("name"), 
		propertyElem.GetAttributeValue("value"));
	}
}
{% endhighlight %}

I have this:

{% highlight csharp %}
if (descendantNode.Name == "properties")
{
	switch (descendantNode.Parent.Name.ToString())
	{
		case "map":
			foreach (XElement propertyElem in descendantNode.Descendants())
			{
				this.Properties.Add(
				propertyElem.GetAttributeValue("name"), 
				propertyElem.GetAttributeValue("value"));
			}
			break;
		case "layer":
			if (tmxLayer != null)
			{
				foreach (XElement propertyElem in descendantNode.Descendants())
				{
					tmxLayer.Properties.Add(
					propertyElem.GetAttributeValue("name"), 
					propertyElem.GetAttributeValue("value"));
				}
			}
			break;
		default:
			break;
	}
}
{% endhighlight %}

I've also implemented support for *.tsx* files. .tsx files are tilesets defined in an external file, and they follow the same format as a tileset element defined in the .tmx file. It was a bit tricky in the start, until I thought of adding a method on the `TmxTileset` class that loads a tileset from an `XDocument` object.


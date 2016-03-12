---
layout: post
title: Unturned 3.0 Server Hosting Guide
permalink: /unturned-server-hosting-guide/
redirect_from: /unturned/setting-up-an-unturned-3.0-server/
---

***DISCLAIMER: this guide is for hosting an Unturned 3.0 server on Windows only.***

The reason why I’m writing this guide is simple. I don’t like video tutorials at all. They are quite distractive, and, in my oppinion, written guides are the best.

Moving on, this guide is from last year. I wrote it exactly in the same day Nelson released the Unturned 3.0 Server Hosting video guide.

I hope you guys can understand it well!



##### <a class="link-nostyle" href="#shortcut" name="shortcut">Setting up the shortcut</a>

- Create a new shortcut for the Unturned executable.

![](/static/images/utshortcut.png)

- Rename it to whatever you want. The shortcut name doesn't interfere in anything at all.
- Right-click on it, click Properties.
- Add the following parameters to the Target text box: 
`-nographics -batchmode +[ServerMode]server/[ServerFolder]`

_**NOTE:** replace **[ServerMode]** with one of these: **secure**, **insecure**, **lan**_
_**NOTE 2:** replace **[ServerFolder]** with what you want your server folder to be called._

![](/static/images/utparameters.png)

- Run the recently created shortcut. It will generate the required files and folders for your server to work correctly. To shutdown the server, type in the following command: `shutdown`


##### <a class="link-nostyle" href="#setup" name="setup">Setting up the server</a>

Setting up the server is pretty simple. All you need to do is type in some commands on a text file and save it.

The commands you have typed in this text file will be executed when the server starts.

- Open the file **Commands.dat**, located on:
`[Unturned Install Location]/Servers/Your Server Folder`
- Add the following commands:
`name Your Server Name`
`password serverpassword`
`maxplayers 8`
`port 27015`
`map PEI`

After you’ve typed these commands, save the file. When you’ve done it, you’re ready to go. Your server is ready!
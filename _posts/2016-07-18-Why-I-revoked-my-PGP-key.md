---
title: Why I revoked my PGP key
category: general
---
Yesterday I reinstalled Windows 10, because my previous installation was old and it had some issues that were annoying me. Luckily, I had a few things to backup, because almost everything I use is located on my external HDD.
<!-- more -->

My previous Windows installation was almost 6 months old and I was using a buggy Insider Preview. I had used the [DisableWinTracking](https://github.com/10se1ucgo/DisableWinTracking) tool and deleted some services and apps to protect my privacy, as Windows 10 is known for sending lots of information about you to Microsoft, and we don't even know what they do with our data. I then tried to revert these changes a few months later, because I wanted to get the most recent Insider Preview Build (the one that comes with some kind of Ubuntu shell). Sadly, it didn't work.

When I was figuring out what was essential to back up, I forgot about my PGP key. It was stored in `%USERPROFILE%\.gnupg`, and it didn't even came to my mind that I had a PGP key somewhere. I only noticed after I reinstalled Windows and I was desperate because I had lost it.

With luck, I had used Enigmail to generate the revocation certificate for it. So I just grabbed my PGP key from a keyserver and revoked it.

I know this is a stupid thing that happened, and I'm even more stupid to not have a key backup in a memory stick or in my external HDD. But it taught me a lesson: **always have a backup for your PGP key**.

I have generated a new key (and I made a backup too!). Here's the fingerprint: `167F D82F 514A E8D1 2E9E  C62D 1B63 9D4A 7E9D DA9D`

And just before I forget: **don't forget to make a backup of your PGP keys**, so when something like this happens to you, you can still use it.


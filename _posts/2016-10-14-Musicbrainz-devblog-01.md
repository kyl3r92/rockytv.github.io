---
title: There's no rust in my brains!
category: programming
---
This is the first dev blog of my _most recent_ project: [musicbrainz.rs](https://github.com/RockyTV/musicbrainz.rs), which aims to provide simple MusicBrainz API bindings for the Rust language.
<!-- more -->


###### What is MusicBrainz?
[MusicBrainz](https://musicbrainz.org) is an online music database, created by the non-profit [MetaBrainz Foundation](https://metabrainz.org). Quoting their website, MusicBrainz is _the ultimate source of music information_, and is maintained by a large community. They provide complete details about artists and their albums and songs (often called "work").
<br>


###### A brief intro
I had the idea of writing a software that would help people to correctly identify the music stored in their PCs. It was a good idea I had, but before I started writing it, I had a problem: how would I identify the music that was stored in someone's PC? I thought of IMDb and its functionality and decided to search for something similar, but for music. Then I found MusicBrainz.

It has a nice API that works with JSON, but I couldn't find anything made in Rust that was related to the online music database. So, I decided it was time to face this challenge and create my first Rust crate.
<br>


###### How it works
I am no expert programmer, so the code you read in my repository may not be ideal for what I am doing, but I'm here to learn. What I basically do while coding is hope for the best, and if it works, it's good enough for me.

The crate makes use of [hyper](https://github.com/hyperium/hyper)'s HTTP client for querying the API, and [json-rust](https://github.com/maciejhirsz/json-rust/) to deserialize the response JSON into Rust objects. It also uses [Servo's URL parser](https://github.com/servo/rust-url) crate for parsing the API endpoints we need to use and for building a User Agent string (MusicBrainz require developers to identify their libraries/code to use their API). And last, but not least, there's the [uuid](https://github.com/rust-lang-nursery/uuid) crate for handling MetaBrainz Identifiers (MBID, in short).

To make the HTTP requests, there's a method that sets the user agent and also adds a parameter that tells MusicBrainz we are expecting a JSON response. We then call this method everytime we want to fetch something from the API.
<br>


###### What works, so far
I've started this project last month, but there's not much code in it. Right now it can only lookup and browse (these are different methods) only two types of entities: artists and release groups.
<br>


Anyways, this is pretty much the first dev blog of my crate. I really am sorry for only explaining the crate and not writing about the changes I made to the crate, but to write about something unknown you must first introduce it, right?

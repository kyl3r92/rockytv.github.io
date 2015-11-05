---
title: Rusting a Roman cipher
category: programming
---
Looking for challenges and fun things to do with a programming language, I came across a particular site which caught my eye. The site in question is [Rosetta Code](http://rosettacode.org), which objective is to present solutions to the same task in as many different languages as possible, demonstrating the similarities and differences between each other.
<!-- more -->

As I was looking for an easy task to do in a programming language, I found one that was quite interesting. The objective of the task was to implement a [Caesar cipher](https://en.wikipedia.org/wiki/Caesar_cipher) in the language you choose, supporting both encrypting and decrypting.

A Caesar cipher, also known as Caesar's code, is a simple encryption technique named after Julius Caesar, a Roman politician which eventually became the dictator of the Roman Republic.
It consists of assigning an index to each letter in the alphabet (A gets index 0, B gets 1, Z gets 25), and then rotating the alphabet left or right by a number:

![]({{ site.baseurl }}/static/images/caesar-table.png){: .center-align}*A table showing the index of A-E for shifts 0-4*

For this task, I decided to use the [Rust programming language](https://rust-lang.org). Reasons? I started learning it and I thought this could be a fun task to do with it.

The encrypt function was the hard part of the task. Implementing it wasn't too much easy, but I had thought it right. I thought of having a string containing all the 26 letters in the latin alphabet, and assign each one an index. But how would I do it? Luckily for me, Rust strings have a method called `.chars()`. According to the Rust documentation, it iterates over the code points of self (self would be the string calling the method). However, I just like to say it iterates through each char (a Unicode scalar value) that composes a string.

With that method, I could just ignore the indexing part, and deal with it later.

Having dealt with the index issue, it was time to move on to the rest of the function. The encrypt function takes a string (not a String) and an unsigned 32-bit integer, and returns a `String`.
My first thought was to iterate through each character in the string argument and assign them a new index.

For this part, I compared each char in the alphabet binding to the current element in the iteration to the message argument, using a closure. The method used was `.position()` and it takes a closure that returns true or false. If the closure returns true, `position()` returns `Some(index)`. If the closure is false, it returns `None`.

Assigning a new index to the current char in the iteration is easy. Just transform the shift argument to `usize`, and add it to the current index, which is inside our `Some()`. 
Then a little check is made to be sure that the new index is not greater than the number of letters in our alphabet (in this case, 26). If it is, just subtract the number of letters from it.

And finally, get the char for the new index, and append it to a `String` using `String.push(char)`. When our iteration is done, we just return the recently created string.

The whitespace character is included in the encrypted string because at the beginning of the function I check if the current element in the iteration is a whitespace, and if it is, we just want to push it to our result and skip it.

With the encrypt function done, I was thinking how could I decrypt the message, and I thought: let's say a character B has index of 1 in a shift of 0. In a shift of 1 this character would have index 2, and would refer to character C. How many rotations do I have to do to reset the index of this character, so it refers to B again?
The answer is simple: `26 - shift`. In the case above, it would be `26-1 = 25`, which means it would take 25 more rotations for the character to be back at its original index.

[Here's a gist with my code](https://gist.github.com/RockyTV/c3412fabf6cec5156e49). [Click here to try it out](https://play.rust-lang.org/?gist=c3412fabf6cec5156e49&version=nightly).

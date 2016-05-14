+++
categories = ["golang", "code", "python"]
date = "2016-05-13T17:02:38+10:00"
description = ""
keywords = []
title = "Syntax highlighting code"
+++

I learned about how to post syntax highlighted code in a post. Hugo has two
options when it comes to syntax highlighting - server side and client side.

This is an example of client side highlighting. You can read all about it
[here](http://gohugo.io/extras/highlighting/).


~~~python
# A line of Python
print('Hello world')
~~~

~~~go
// A simple program in Golang
package main

import (
     "fmt"
)

func main() {
     fmt.Println("Hello world")
 }

~~~



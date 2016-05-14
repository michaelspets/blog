+++
categories = ["hugo"]
date = "2016-05-14T11:32:10+10:00"
keywords = []
title = "Demo of shortcodes"

+++

[Shortcodes](https://gohugo.io/extras/shortcodes/) in Hugo allow us to achieve common tasks. For example, to link to another [post]({{< ref "post/hello-world.md" >}}) or [page]({{< ref "page/about.md" >}}) in our site,
we will use the "ref" shortcode.

An example of embedding a GitHub gist:

{{< gist amitsaha 9864ec0475dd9b68c4a38be37726e552 >}}

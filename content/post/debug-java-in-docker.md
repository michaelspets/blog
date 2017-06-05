+++
categories = ["docker","java"]
date = "2017-06-05T23:49:59+03:00"
description = ""
keywords = ["docker","java","debug"]
title = "Debug a Java app in Docker"

+++

To debug an application running inside a container run your container

~~~bash
$docker run -p 5005:5005 \
	-e JAVA_OPTIONS='-Xdebug -Xrunjdwp:transport=dt_socket,server=y,suspend=y,address=5005' \
	your_java_image
~~~

After that your application will stop and wait for a debugger. So, open your IDE and attach a debugger to 
Port: 5005. 

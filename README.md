# my-app

first app

# Overview

[lucerne](http://eudoxia.me/lucerne/docs/overview.html)

# Usage

````
> sudo apt-get install libev-dev
> sudo gem install sass
(ql:quickload :lucerne)
(ql:quickload :ASDF-LINGUIST)

>cd ~/quicklisp/local-projects
>git clone https://github.com/leyap/my-app
>sbcl
(ql:quickload :my-app)
(lucerne:start my-app:app :port 8000)
or
(lucerne:start my-app:app :server :woo :port 8000)
````

# License

Copyright (c) 2016 lisper

Licensed under the MIT License.

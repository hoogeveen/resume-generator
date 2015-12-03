<a href="https://codeclimate.com/github/hoogeveen/cv"><img src="https://codeclimate.com/github/hoogeveen/cv/badges/gpa.svg" /></a>

# CV Generator
Create your own CV in a couple of seconds by filling out a YAML file and compiling it into HTML and CSS.

![alt text](http://yourcv.io/cv.png "CV Screenshot")

## How to get started
-  Clone this repository to your machine.
- Install the gems listed in the Gemfile, with `bundle install`
- Rename 'data/info.yaml.example' to `data/info.yaml` and do the same for the `data/_variables.scss` file
- Run `ruby app.rb`
- Your CV is now in the 'export' folder

##  Feel free to customize
- You can set colors and typography in the `data/_variables.scss`
- You can import other google fonts by specifying it in the `links` array in the `data/info.yaml` file
- You can create a folder called `assets`, all its contents will be copied to the 'export' folder.

The design of this CV template was made by [Franklin Schamhart](https://dribbble.com/shots/1887983-Resume)

##Copyright

Copyright (c) 2015 Merijn Hoogeveen

This project is licensed under the MIT license.

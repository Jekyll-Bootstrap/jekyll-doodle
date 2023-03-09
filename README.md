# Jekyll Doodle - [![Gem Version](https://badge.fury.io/rb/jekyll-doodle.svg)](https://badge.fury.io/rb/jekyll-doodle)

This is a simple plugin to embed a Jdoodle IDE onto your page. To use this just `gem install jekyll-doodle` and edit the line in your config file for plugins:

```yaml
plugins:
  jekyll-feed
  jekyll-doodle
```
This will load a Jdoodle IDE. You can preload some code in the IDE for the user by putting some code between the tags like:

```
{% doodle %}
print("Hello, world!")
{% enddoodle %}
```

for now this loads a Python3 IDE, I will set it up to allow other languages in the future.
# @__author__: Yosi Leyid
# @__filename__: doodle.rb
# @__date__: 03/08/2023
# @__version__: 0.0.1
#
# USE 
# ===
# Use the liquid tag 
#
# {% doodle %}
# print("Hello, world!")
# {% enddoodle %}
#
# Which will embed a Jdoodle plugin with "print("Hello, world!")"
# already loaded so the user can press the "RUN" button 
# and see "Hello, world!" in the console in the IDE.

module Jekyll
  class DoodleTag < Liquid::Block
    def render(context)
      code = super.strip
      "
<div data-pym-src='https://www.jdoodle.com/plugin' data-language='python3' data-version-index='0'>
#{code}
</div>
      "
    end
  end
end

Liquid::Template.register_tag('doodle', Jekyll::DoodleTag)
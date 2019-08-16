## Capybara Actions

```ruby
# Anchor
click_link 'Save'

# Button
click_button 'awesome'

# Both above
click_link_or_button 'Save'

# Text (area) field
fill_in 'Name', with: 'Content'

# Checkbox
check 'Content'
uncheck 'Content'

# Radio button
choose 'Content'

# Select option from select tag
select 'Option', from: 'Label'

# File input
attach_file Rails.root.join('spec/fixture/some_file.png')

# Percentage - int or float
 {int}.percent_of({int})

# Send a particular key press - values found [https://www.rubydoc.info/github/jnicklas/capybara/Capybara%2FNode%2FElement:send_keys]
page.<element>.send_keys :space

# Click and element to a particular pixel point in XY coordinates 
page.<element>.click(x: 1, y: 1)

# Get CSS value for a specified style from the page under test
page.<element>.style('<css_style>')
```


## Capybara Finders

```ruby
page.all(:xpath, '//a')

page.first(:xpath, '//a')

page.find('//textarea[@id="additional_newline"]')

page.find(:xpath, "//input[@id='form_pets_dog']")['checked']
# => true

page.find(:css, '#with_focus_event').trigger(:focus)

page.find(:css,'.wrapper').hover

page.find_field("test_field").value
# => 'blah'

page.find_by_id('red').tag_name
# => 'a'

# finds invisible elements when false
page.find_by_id("hidden_via_ancestor", visible: false)

page.find_button('What an Awesome')[:value]
# => 'awesome'

page.find_link('abo').text
# => 'labore'

page.find_link('other')[:href]
# => '/some_uri'
```

**Note:** `find` will wait for an element to appear on the page, as explained in the Ajax section. If the element does not appear it will raise an error.

**Note:** In XPath the expression `//` means something very specific, and it might not be what you think. Contrary to common belief, `//` means "anywhere in the document" not "anywhere in the current context".


## Capybara Scoped Finder `within`

```ruby
within(search_form) do
  fill_in 'Name', with: 'iOS 7'
  click_button 'Search'
end

def search_form
  '.search_form'
end

within_fieldset("villain_fieldset") do
  # ...
end

within_table("some_table") do
  # ...
end

# Execute the given block within the given iframe using given frame name or index.
#
within_frame('some_frame') do
end

save_page

# You need to install launchy gem.
save_and_open_page
```

## Capybara Common

```ruby
visit("http://google.com")

page.current_url

# Execute the given script, not returning a result. This is useful for scripts that return
# complex objects, such as jQuery statements. +execute_script+ should be used over
# +evaluate_script+ whenever possible.
#
page.execute_script("$('#change').text('Funky Doodle')")

# Evaluate the given JavaScript and return the result. Be careful when using this with
# scripts that return complex objects, such as jQuery statements. +execute_script+ might
# be a better alternative.
#
page.evaluate_script("1+3")
# => 4

using_wait_time 6 do
  # ... Changed Capybara.default_wait_time in this block scope.
end
```

## Capybara Matchers

```ruby
expect(page).to have_content("Some Content")
expect(page).to have_no_content("Some Content")

# True if there is a anchor tag with text matching regex
expect(page).to have_xpath("//a")
expect(page).to have_xpath("//a",:href => "google.com")
expect(page).to have_xpath("//a[@href => 'google.com']")
expect(page).to have_xpath("//a[contains(.,'some string')]")
expect(page).to have_xpath("//p//a", :text => /re[dab]i/i, :count => 1)

 # can take both xpath and css as input and can take arguments similar to both have_css and have_xpath
 expect(page).to have_selector(:xpath, "//p/h1")
 expect(page).to have_selector(:css, "p a#post_edit_path")

 expect(page).to have_css("input#post_title")
 expect(page).to have_css("input#post_title", :value => "Capybara cheatsheet")

 # True if there are 3 input tags in response
 expect(page).to have_css("input", :count => 3)

 # True if there or fewer or equal to 3 input tags
 expect(page).to have_css("input", :maximum => 3)

 # True if there are minimum of 3 input tags
 expect(page).to have_css("input", :minimum => 3)

 # True if there 1 to 3 input tags
 expect(page).to have_css("input", :between => 1..3)

 # True if there is a anchor tag with text hello
 expect(page).to have_css("p a", :text => "hello")
 expect(page).to have_css("p a", :text => /[hH]ello(.+)/i)

# For making capybara to take css as default selector
Capybara.default_selector = :css

# checks for the presence of the input tag
expect(page).to have_selector("input")

# checks for input tag with value
expect(page).to have_selector("input", :value =>"Post Title")

expect(page).to have_no_selector("input")

# For making capybara to take css as default selector
Capybara.default_selector = :xpath
# checks for the presence of the input tag
expect(page).to have_selector("//input")

# checks for input tag with value
expect(page).to have_selector("//input", :value =>"Post Title")

# checks for presence of a input field named FirstName in a form
expect(page).to have_field("FirstName")

expect(page).to have_field("FirstName", :value => "Rambo")
expect(page).to have_field("FirstName", :with => "Rambo")

expect(page).to have_link("Foo")
expect(page).to have_link("Foo", :href=>"googl.com")
expect(page).to have_no_link("Foo", :href=>"google.com")
```

## Capybara Extensions - https://github.com/DavyJonesLocker/capybara-extensions

## Finders

```ruby
  # Find an HTML article based on the given arguments.
  #
  # @param args [String] text contained within the article sought.
  # @param args [Object] the object whose article is sought.
  # @return [Capybara::Element] the found element.
  #
  def find_article(args)
    find_element('article', args)
  end

  alias_method :article, :find_article

  # Find an HTML aside based on the given arguments.
  #
  # @param args [String] text contained within the aside sought.
  # @param args [Object] the object whose aside is sought.
  # @return [Capybara::Element] the found element.
  #
  def find_aside(args)
    find_element('aside', args)
  end

  alias_method :aside, :find_aside

  # Find an HTML footer based on the given arguments.
  #
  # @param args [String] text contained within the footer sought.
  # @param args [Object] the object whose footer is sought.
  # @return [Capybara::Element] the found element.
  #
  def find_footer(args)
    find_element('footer', args)
  end

  alias_method :footer, :find_footer

  # Find an HTML form based on the given arguments.
  #
  # @param args [String] text contained within the form sought.
  # @param args [Object] the object whose form is sought.
  # @return [Capybara::Element] the found element.
  #
  def find_form(args)
    find_element('form', args)
  end

  alias_method :form, :find_form

  # Find an HTML img based on the src and/or alt values.
  #
  # @param options [Hash] Must pass a hash containing the src and/or alt of the image sought. You may pass a Regexp with src; however, this should be done sparingly, as CapybaraExtensions::Locators#image_locator will find and iterate over all images in the current scope.
  # @return [Capybara::Element] the found element
  #
  def find_image(options = {})
    raise "Must pass a hash containing 'src' or 'alt'" unless options.is_a?(Hash) && (options.has_key?(:src) || options.has_key?(:alt))
    find(:xpath, "//img#{image_locator(options)}")
  end

  # Find an HTML header based on the given arguments.
  #
  # @param args [String] text contained within the header sought.
  # @param args [Object] the object whose header is sought.
  # @return [Capybara::Element] the found element.
  #
  def find_header(args)
    find_element('header', args)
  end

  alias_method :header, :find_header

  # Find an HTML li based on the given arguments.
  #
  # @param args [String] text contained within the li sought.
  # @param args [Object] the object whose li is sought.
  # @return [Capybara::Element] the found element.
  #
  def find_list_item(args)
    find_element('li', args)
  end

  alias_method :list_item, :find_list_item

  # Find an HTML nav based on the given arguments.
  #
  # @param args [String] text contained within the nav sought.
  # @param args [Object] the object whose nav is sought.
  # @return [Capybara::Element] the found element.
  #
  def find_navigation(args)
    find_element('nav', args)
  end

  alias_method :navigation, :find_navigation

  # Find an HTML ol based on the given arguments.
  #
  # @param args [String] text contained within the ol sought.
  # @param args [Object] the object whose ol is sought.
  # @return [Capybara::Element] the found element.
  #
  def find_ordered_list(args)
    find_element('ol', args)
  end

  alias_method :ordered_list, :find_ordered_list

  # Find an HTML p based on the given arguments.
  #
  # @param args [String] text contained within the p sought.
  # @param args [Object] the object whose p is sought.
  # @return [Capybara::Element] the found element.
  #
  def find_paragraph(args)
    find_element('p', args)
  end

  alias_method :paragraph, :find_paragraph

  # Find an HTML tr based on the given arguments.
  #
  # @param args [String] text contained within the tr sought.
  # @param args [Object] the object whose tr is sought.
  # @return [Capybara::Element] the found element.
  #
  def find_row(args)
    find_element('tr', args)
  end

  alias_method :row, :find_row

  # Find an HTML section based on the given arguments.
  #
  # @param args [String] text contained within the section sought.
  # @param args [Object] the object whose section is sought.
  # @return [Capybara::Element] the found element.
  #
  def find_section(args)
    find_element('section', args)
  end

  alias_method :section, :find_section

  # Find an HTML table based on the given arguments.
  #
  # @param args [String] text contained within the table sought.
  # @param args [Object] the object whose table is sought.
  # @return [Capybara::Element] the found element.
  #
  def find_table(args)
    if String === args
      find_element('table', args)
    else
      row = find_row(args)
      row.find(:xpath, 'ancestor::table')
    end
  end

  alias_method :table, :find_table

  # Find an HTML ul based on the given arguments.
  #
  # @param args [String] text contained within the ul sought.
  # @param args [Object] the object whose ul is sought.
  # @return [Capybara::Element] the found element.
  #
  def find_unordered_list(args)
    find_element('ul', args)
  end

  alias_method :unordered_list, :find_unordered_list

  # Find the first HTML article on the page matching the given arguments. If no arguments are supplied, it will find the first article within your current scope.
  #
  # @param args [String] text contained within the article sought.
  # @param args [Object] the object whose article is sought.
  # @return [Capybara::Element] the found element.
  #
  def first_article(args=nil)
    first_element('article', args)
  end

  # Find the first HTML aside on the page matching the given arguments. If no arguments are supplied, it will find the first aside within your current scope.
  #
  # @param args [String, Object] if passed a string, the text contained within the aside sought; if passed an object, the object whose aside is sought.
  # @return [Capybara::Element] the found element.
  #
  def first_aside(args=nil)
    first_element('aside', args)
  end

  # Find the first HTML footer on the page matching the given arguments. If no arguments are supplied, it will find the first footer within your current scope.
  #
  # @param args [String, Object] if passed a string, the text contained within the footer sought; if passed an object, the object whose footer is sought.
  # @return [Capybara::Element] the found element.
  #
  def first_footer(args=nil)
    first_element('footer', args)
  end

  # Find the first HTML form on the page matching the given arguments. If no arguments are supplied, it will find the first form within your current scope.
  #
  # @param args [String, Object] if passed a string, the text contained within the form sought; if passed an object, the object whose form is sought.
  # @return [Capybara::Element] the found element.
  #
  def first_form(args=nil)
    first_element('form', args)
  end

  # Find the first HTML header on the page matching the given arguments. If no arguments are supplied, it will find the first header within your current scope.
  #
  # @param args [String, Object] if passed a string, the text contained within the header sought; if passed an object, the object whose header is sought.
  # @return [Capybara::Element] the found element.
  #
  def first_header(args=nil)
    first_element('header', args)
  end

  # Find the first HTML nav on the page matching the given arguments. If no arguments are supplied, it will find the first nav within your current scope.
  #
  # @param args [String, Object] if passed a string, the text contained within the nav sought; if passed an object, the object whose nav is sought.
  # @return [Capybara::Element] the found element.
  #
  def first_navigation(args=nil)
    first_element('nav', args)
  end

  # Find the first HTML ol on the page matching the given arguments. If no arguments are supplied, it will find the first ol within your current scope.
  #
  # @param args [String, Object] if passed a string, the text contained within the ol sought; if passed an object, the object whose ol is sought.
  # @return [Capybara::Element] the found element.
  #
  def first_ordered_list(args=nil)
    first_element('ol', args)
  end

  # Find the first HTML p on the page matching the given arguments. If no arguments are supplied, it will find the first p within your current scope.
  #
  # @param args [String, Object] if passed a string, the text contained within the p sought; if passed an object, the object whose p is sought.
  # @return [Capybara::Element] the found element.
  #
  def first_paragraph(args=nil)
    first_element('p', args)
  end

  # Find the first HTML tr on the page matching the given arguments. If no arguments are supplied, it will find the first tr within your current scope.
  #
  # @param args [String, Object] if passed a string, the text contained within the tr sought; if passed an object, the object whose tr is sought.
  # @return [Capybara::Element] the found element.
  #
  def first_row(args=nil)
    first_element('tr', args)
  end

  # Find the first HTML section on the page matching the given arguments. If no arguments are supplied, it will find the first section within your current scope.
  #
  # @param args [String, Object] if passed a string, the text contained within the section sought; if passed an object, the object whose section is sought.
  # @return [Capybara::Element] the found element.
  #
  def first_section(args=nil)
    first_element('section', args)
  end

  # Find the first HTML table on the page matching the given arguments. If no arguments are supplied, it will find the first table within your current scope.
  #
  # @param args [String, Object] if passed a string, the text contained within the table sought; if passed an object, the object whose table is sought.
  # @return [Capybara::Element] the found element.
  #
  def first_table(args=nil)
    first_element('table', args)
  end

  # Find the first HTML ul on the page matching the given arguments. If no arguments are supplied, it will find the first unordered list within your current scope.
  #
  # @param args [String, Object] if passed a string, the text contained within the ul sought; if passed an object, the object whose ul is sought.
  # @return [Capybara::Element] the found element.
  #
  def first_unordered_list(args=nil)
    first_element('ul', args)
  end

  # When scoped to an ol or ul, find the first HTML li on the page matching the given arguments.
  #
  # @param number [Integer] the nth li element sought.
  # @return [Capybara::Element] the found element.
  #
  def list_item_number(number)
    find_element_by_number('li', number)
  end

  # When scoped to a table, find the first HTML tr on the page matching the given arguments. If passed a negative number, it will find the first tr from the bottom of the table (so row_number(-1) finds the last row in the table).
  #
  # @param number [Integer] the nth tr element sought 
  # @return [Capybara::Element] the found element.
  #
  def row_number(number)
    find_element_by_number('tr', number)
  end

  private

  # Find an element matching the given arguments
  #
  # @param tag [String] the HTML tag for the element
  # @param args [String] the text used to find the element
  # @param args [Object] the object used to find the element. Designed to work with the `content_tag_for` method in Rails, which creates an HTML element with the class and id parameters that relate to the specified Active Record object.
  #
  def find_element(tag, args)
    if String === args
      find(tag, text: args)
    else
      klass = args.class.to_s.downcase
      find("#{tag}##{klass}_#{args.id}", "#{tag}.#{klass}")
    end
  end

  # Find an element by it's nth occurrence
  #
  # @param element [String] the HTML tag for the element
  #
  def find_element_by_number(tag, number)
    elements = all(tag)
    number = number.to_i
    element_number = number < 0 ? ((elements.length + 1) + number) : number
    elements[element_number - 1]
  end


  # Find the first element on the page matching the given arguments.
  #
  # @param args [String, Object] if passed a string as args, returns the text contained within the element sought; if passed an object, returns the object whose element is sought.
  # @return [Capybara::Element] the found element.
  #
  def first_element(tag, args=nil)
    if args && String === args
      first(tag, text: args)
    elsif args
      klass = args.class.to_s.downcase
      first("#{tag}##{klass}_#{args.id}", "#{tag}.#{klass}")
    else
      first("#{tag}")
    end
  end
end
```

## Capybara Extensions - https://github.com/DavyJonesLocker/capybara-extensions

## Locators
```ruby
# Builds a locator via the given src or alt.
  #
  # @param options[Hash] must pass a hash containing src and/or alt to match against.
  # @return [String] string formatted for finding an attribute with xpath.
  #
  def image_locator(options)
    locator = String.new

    if options[:src]
      if Regexp === options[:src] && image = _find_image_with_regex(options[:src])
        locator.concat("[@src='#{image}']")
      else options[:src]
        locator.concat "[@src='#{options[:src]}']"
      end
    end

    locator.concat "[@alt='#{options[:alt]}']" if options[:alt]
    locator
  end

  # Builds a locator via the given name and content.
  #
  # @params name[String] the name of the meta tag sought.
  # @params content [String] the content of the meta tag sought.
  # @return [String] string formatted for finding a meta tag with xpath.
  #
  def meta_tag_locator(name, content)
    locator = String.new
    locator.concat "[@name='#{name}']"
    locator.concat "[@content='#{content}']"
    locator
  end

  private

  def _find_image_with_regex(src)
    all_images = all('img')
    all_images.each do |image|
      if image.native.attributes['src'].value.match(src).nil?
        return nil
      else
        return image.native.attributes['src'].value
      end
    end
  end
end
```
## Capybara Extensions - https://github.com/DavyJonesLocker/capybara-extensions

## Matchers

```ruby
# Checks that the current node has an image with the given src or alt.
  #
  # @param options [Hash] must pass a hash containing src and/or alt to match against. You may pass a Regexp with src.
  # @return [Boolean] true if the image matches.
  #
  def has_image?(options = {})
    raise "Must pass a hash containing 'src' or 'alt'" unless options.is_a?(Hash) && (options.has_key?(:src) || options.has_key?(:alt))
    has_selector?(:xpath, "//img#{image_locator(options)}")
  end

  # Checks that the current node does not have an image with the given src or alt.
  #
  # @param options [Hash] must pass a hash containing src and/or alt to match against.
  # @return [Boolean] true if the image does not match.
  #
  def has_no_image?(options = {})
    raise "Must pass a hash with 'alt' or 'src'" unless options.is_a?(Hash) and (options.has_key?(:alt) or options.has_key?(:src))
    has_no_selector?(:xpath, "//img#{image_locator(options)}")
  end

  # Checks that the value of a field matches a given value. Typically, you'll want to scope this to a form.
  #
  # @param locator [String] the label, name, or id of the field.
  # @param text [String] the text to match against the field value.
  # @return [Boolean] true if the field value matches.
  #
  def has_field_value?(locator, text)
    if find_field(locator).value == text
      true
    else
      raise Capybara::ExpectationNotMet, "expected to find field #{locator} with a value of #{text}."
    end
  end

  # Checks that the value of a field does not match a given value. Typically, you'll want to scope this to a form.
  #
  # @param locator [String] the label, name, or id of the field.
  # @param text [String] the text to match against the field value.
  # @return [Boolean] true if the field value does not match.
  #
  def has_no_field_value?(locator, text)
    if find_field(locator).value != text
      true
    else
      raise Capybara::ExpectationNotMet, "expected to not find field #{locator} with a value of #{text}."
    end
  end

  # Checks the that the content of a meta tag matches a given value.
  #
  # @param name [String] the name attribute of the meta tag.
  # @param content [String] the value of the content attribute to match against.
  # @return [Boolean] true if the meta tag content matches the name.
  #
  def has_meta_tag?(name, content)
    has_selector?(:xpath, "/html/head/meta#{meta_tag_locator(name, content)}", visible: false)
  end

  # Checks the that the content of a meta tag does not match a given value.
  #
  # @param name [String] the name attribute of the meta tag.
  # @param content [String] the value of the content attribute to match against.
  # @return [Boolean] true if the meta tag content does not match the name.
  #
  def has_no_meta_tag?(name, content)
    has_no_selector?(:xpath, "/html/head/meta#{meta_tag_locator(name, content)}", visible: false)
  end
end
```
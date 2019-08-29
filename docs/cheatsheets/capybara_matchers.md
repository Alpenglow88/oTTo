## **Capybara Matchers**

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
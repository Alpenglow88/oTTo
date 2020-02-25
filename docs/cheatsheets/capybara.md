# **Capybara**

## **Navigating**

```ruby
visit('/projects')
  visit(post_comments_path(post))
  current_host
  current_path
  current_url
```

## **Clicking links and buttons**

```ruby
click_link('id-of-link')
  click_link('Link Text')
  click_button('Save')
  click('Link Text') # Click either a link or a button
  click('Button Value')
```

## **Interacting with forms**

```ruby
fill_in('First Name', :with => 'John')
  fill_in('Password', :with => 'Seekrit')
  fill_in('Description', :with => 'Really Long Text…')
  choose('A Radio Button')
  check('A Checkbox')
  uncheck('A Checkbox')
  attach_file('Image', '/path/to/image.jpg')
  select('Option', :from => 'Select Box')
  unselect(value, options = {})
  page.unselect 'March', :from => 'Month'
```

## **Scoping**

```ruby
within("//li[@id='employee']") do
    fill_in 'Name', :with => 'Jimmy'
  end
  within(:css, "li#employee") do
    fill_in 'Name', :with => 'Jimmy'
  end
  within_fieldset('Employee') do
    fill_in 'Name', :with => 'Jimmy'
  end
  within_table('Employee') do
    fill_in 'Name', :with => 'Jimmy'
  end
  within_frame('some_frame') do
  end
```

## **Querying**

```ruby
page.has_xpath?('//table/tr')
  page.has_css?('table tr.foo')
  page.has_content?('foo')
  page.should have_xpath('//table/tr')
  page.should have_css('table tr.foo')
  page.should have_content('foo')
  page.should have_no_content('foo')

  find_field('First Name').value
  page.find_field("test_field").value
  find_link('Hello').visible?
  page.find_link('abo').text
  page.find_link('other')[:href]
  find_button('Send').click
  page.find_button('What an Awesome')[:value]
  page.find_by_id('red').tag_name
  page.find_by_id("hidden_via_ancestor", visible: false)
  find('//table/tr').click

  locate("//*[@id='overlay'").find("//h1").click
  all('a').each { |a| a[:href] }

  page.all(:xpath, '//a')
  page.first(:xpath, '//a')
  page.find('//textarea[@id="additional_newline"]')
  page.find(:xpath, "//input[@id='form_pets_dog']")['checked']
  page.find(:css, '#with_focus_event').trigger(:focus)
  page.find(:css,'.wrapper').hover
```

**Note:** `find` will wait for an element to appear on the page, as explained in the Ajax section. If the element does not appear it will raise an error.

**Note:** In XPath the expression `//` means something very specific, and it might not be what you think. Contrary to common belief, `//` means "anywhere in the document" not "anywhere in the current context".

## **Scripting**

```ruby
result = page.evaluate_script('4 + 4');
```

## **Asynchronous JavaScript**

```ruby
click_link('foo')
  click_link('bar')
  page.should have_content('baz')
  page.should_not have_xpath('//a')
  page.should have_no_xpath('//a')
```

## **XPath and CSS**

```ruby
within(:css, 'ul li') { ... }
  find(:css, 'ul li').text
  locate(:css, 'input#name').value
  Capybara.default_selector = :css
  within('ul li') { ... }
  find('ul li').text
  locate('input#name').value
```

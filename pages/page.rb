class Home < SitePrism::Page
    set_url '/home.htm'

element :search_entry_field, 'input[name=#q]'
element :logo, '#hplogo'

end


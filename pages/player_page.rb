class TestPlayer < SitePrism::Page
    set_url "https://google.com"

element :main_logo, :xpath, '//hplogo'
element :search_entry_field, "#q"


end


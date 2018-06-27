class TestPlayer < SitePrism::Page
#    set_url "https://google.com"

element :main_logo, :xpath, "//*[@id='hplogo']"
element :search_entry_field, :xpath, "//*[@id='q']"


end


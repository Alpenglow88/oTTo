class TestHome < SitePrism::Page

element :main_logo, :xpath, "//*[@id='hplogo']"
element :search_entry_field, :xpath, "//*[@id='lst-ib']" 
element :search_btn, :xpath, "//*[@id='tsf']/div[2]/div[3]/center/input[1]" 
element :feel_lucky_btn, :xpath,  "//*[@id='tsf']/div[2]/div[3]/center/input[2]"

end

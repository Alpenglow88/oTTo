class Home < SitePrism::Page
    set_url '/home.htm'

#element :search_entry_field, 'input[name=#q]'
#element :logo, '#hplogo'

element :play_button, :xpath, '//*[@id="azuremediaplayer"]/div/button'



end


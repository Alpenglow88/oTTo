class TestPlayer < SitePrism::Page
    set_url "https://google.com"


#element :search_entry_field, 'input[name=#q]'
#element :logo, '#hplogo'

element :main_logo, :xpath '//[@id="hplogo"]'

#<button class="vjs-big-play-button " type="button" aria-live="off"><span class="vjs-control-text">Play Video</span></button>

end


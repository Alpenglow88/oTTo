# frozen_string_literal: true

Before do
  SitePrism.raise_on_wait_fors = false
  @home = TestHome.new
end

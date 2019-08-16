# frozen_string_literal: true

require 'require_all'

require_all 'pages/*.rb'

SitePrismSubclass.results.each_pair do |method_name, class_name|
  self.class.send(:define_method, method_name) do
    class_name.new
  end
end

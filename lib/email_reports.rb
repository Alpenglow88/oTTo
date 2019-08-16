# frozen_string_literal: true

require 'mail'
require 'rest-client'
require 'json'
require '../lib/constants'
require '../lib/utils'

include EmailUtils

mail =
  Mail.new do
    from <sender>
    to      <recipient>
    subject "Testing reports #{Date.today}"
    body   <body_message>
    add_file "reports_#{Date.today}.zip"
  end

mail.delivery_method :sendmail
mail.deliver

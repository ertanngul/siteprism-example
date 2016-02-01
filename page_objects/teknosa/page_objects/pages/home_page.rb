module Teknosa
  module PageObjects
    module Pages
      class HomePage < SitePrism::Page
        set_url '/'

        element :registration_page_link, '.register a'
        element :login_page_link, '.login a'
        element :customer_name, ".customer-name"

      end
    end
  end
end

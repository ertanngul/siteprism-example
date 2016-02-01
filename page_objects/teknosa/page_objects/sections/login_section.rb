module Teknosa
  module PageObjects
    module Sections
      class LoginSection < SitePrism::Section

        element :user, "#signinemail"
        element :password, "#signinpassw"
        element :login_btn, "#login-btn"
        element :facebook_img, "#fbLogin img"

        #error messages
        element :user_textfield_error_message, "#signinemail+ .error"
        element :password_textfield_error_message, "#signinpassw+ .error"

        def login (name,pwd)
          user.set name
          password.set pwd
          login_btn.click
        end

      end
    end
  end
end

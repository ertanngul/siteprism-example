
module Teknosa
  module PageObjects
    module Pages
      class LoginPage < SitePrism::Page

        set_url '/uyelik'

        #section :login_section, LoginSection, ".col-signin"
        section :signup_section,  ".login-right" do
          element :name, "#signupname"
          element :surname, "#signupsurname"
          element :email, "#signupemail"
          element :phone, "#signupphone"
          element :password, "#signuppassw"
          element :repassword, "#signuppassw2"
          element :birthday_day, "#membership_birthday_day"
          element :birthday_month, "#membership_birthday_monthSelectBoxIt"
          element :birthday_year, "#membership_birthday_year"
          element :gender, "#signupgenderSelectBoxIt"
          element :newsletter_checkbox, "#forcethreed"
          element :termbox_checkbox, "#terms_of_use"
          element :orangecard_checkbox, "#signupWantTeknosaCard"
        end


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

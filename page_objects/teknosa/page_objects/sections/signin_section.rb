module Teknosa
  module PageObjects
    module Sections
      class SignupSection < SitePrism::Section

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
    end
  end
end

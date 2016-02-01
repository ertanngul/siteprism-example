module Teknosa
  module PageObjects
    class Application
      def initialize
        @pages = {}
      end

      def home
        @pages[:home] ||= Teknosa::PageObjects::Pages::HomePage.new
      end

      def login_in
        @pages[:login_in] ||= Teknosa::PageObjects::Pages::LoginPage.new
      end

    end
  end
end

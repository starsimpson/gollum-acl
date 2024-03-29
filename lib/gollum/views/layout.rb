require 'cgi'

module Precious
  module Views
    class Layout < Mustache
      include Rack::Utils
      alias_method :h, :escape_html

      attr_reader :name, :path

      def escaped_name
        CGI.escape(@name)
      end

      def title
        "Home"
      end

      def has_path
        !@path.nil?
      end

      def base_url
        @base_url
      end

      def css # custom css
        @css
      end

      def js # custom js
        @js
      end

      # Passthrough additional omniauth parameters for status bar
      def user_authed
        @user_authed
      end
      
      def user_provider
        @user.provider
      end
      
      def user_name
        @user.name
      end
    end
  end
end

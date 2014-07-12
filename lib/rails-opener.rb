require 'rails/commands/server'
require 'launchy'

module Rails
  class Server < ::Rack::Server
    class Options
      def option_parser_with_open(options)
        parser = option_parser_without_open options
        parser.on('-o', '--open', 'Open in default browser') { options[:open] = true }
        parser
      end
      alias_method_chain :option_parser, :open
    end

    def start_with_open
      url = "#{options[:SSLEnable] ? 'https' : 'http'}://#{options[:Host]}:#{options[:Port]}"
      start_without_open { Launchy.open url if options[:open] }
    end
    alias_method_chain :start, :open
  end
end

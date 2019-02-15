require_relative '../config/environment'
require_relative '../lib/command_line_interface.rb'

cli = CommandLineInterface.new
cli.start

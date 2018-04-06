require 'net/ssh'
require 'etc'

module SshOperations
  def run(command)
    Net::SSH.start(@ip, Etc.getlogin) do |ssh|
      stdout_data = ''
      stderr_data = ''
      exit_code = nil
      ssh.open_channel do |channel|
        channel.exec(command) do |_ch, success|
          unless success
            abort "FAILED: couldn't execute command (ssh.channel.exec)"
          end
          channel.on_data do |_ch, data|
            stdout_data += data
          end

          channel.on_extended_data do |_ch, _type, data|
            stderr_data += data
          end

          channel.on_request('exit-status') do |_ch, data|
            exit_code = data.read_long
          end
        end
      end
      ssh.loop
      [stdout_data, stderr_data, exit_code]
    end
  end
end

class Server
  include SshOperations
  attr_accessor :server
  def initialize
    @ip = ENV['SERVER']
  end
end


## this is for using in tests
server = Server.new

# server.run("uptime") etc

module Slack
  module Aria
    class Undine
      class << self
        def name
          raise 'please override me!'
        end

        def icon
          raise 'please override me!'
        end

        def speak(channel, message)
          message = {
            token: TOKEN,
            username: name,
            channel: channel,
            text: message,
            icon_url: icon
          }
          Slack.chat_postMessage(message)
        end
      end
    end
  end
end

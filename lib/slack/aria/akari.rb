module Slack
  module Aria
    class Akari < Undine
      class << self
        def name
          '水無灯里'
        end

        def icon
          'https://raw.githubusercontent.com/takesato/slack-aria/master/image/akari120x120.jpg'
        end
      end

      Company.client.on :message do |data|
        if data['type'] == 'message' && rand(100) == 0 && data['subtype'] != 'bot_message'
          answer = (rand(10) != 0) ? "はひっ" : "えーっ"
          Akari.speak(data['channel'], "<@#{data['user']}> #{answer}")
        end
      end
    end
  end
end

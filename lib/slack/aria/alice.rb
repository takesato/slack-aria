module Slack
  module Aria
    class Alice < Undine
      class << self
        def name
          'アリス･キャロル'
        end

        def icon
          'https://raw.githubusercontent.com/takesato/slack-aria/master/image/alice120x120.jpg'
        end
      end

      Company.client.on :message do |data|
        if(data['type'] == 'message' && data['subtype'] == 'file_share')
          if data['file']['size'] >= 1048576
            Alice.speak(data['channel'], "<@#{data['user']}> でっかいファイルです")
          end
        end
      end
    end
  end
end

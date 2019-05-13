module Slack
  module Aria
    class Aika < Undine
      class << self
        def name
          '藍華・S・グランチェスタ'
        end

        def icon
          'https://raw.githubusercontent.com/takesato/slack-aria/master/image/aika120x120.jpg'
        end
      end

      Company.client.on :message do |data|
        if(data['type'] == 'message' && data['subtype'].nil? && data['text'] =~ /奇跡|ミラクル/)
          Aika.speak(data['channel'], "<@#{data['user']}> 恥しいセリフ禁止ー!!")
        end
      end
    end
  end
end

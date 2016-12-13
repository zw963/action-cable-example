class MessagesChannel < ApplicationCable::Channel
  def subscribed
    # 这里定义的是频道名称.
    # 当前示例中, 只有一个频道, 叫做 messages
    stream_from 'messages'
  end
end

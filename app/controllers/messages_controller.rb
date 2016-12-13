class MessagesController < ApplicationController
  def create
    message = current_user.messages.new(message_params)
    if message.save
      # 给 messages 频道广播一条消息.
      ActionCable.server.broadcast('messages',
                                  message: message.content,
                                  user: message.user.username
                                 )
      head :ok
    else
      redirect_to chatrooms_paths3
    end
  end

  private

  def message_params
    params.require(:message).permit(:content, :chatroom_id)
  end
end

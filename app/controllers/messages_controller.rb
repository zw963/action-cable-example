class MessagesController < ApplicationController
  def create
    message = current_user.messages.new(message_params)
    if message.save
      # do some stuff
    else
      redirect_to chatrooms_paths3
    end
  end

  private
  def message_params
    params.require(:message).premit(:content, :chatroom_id)
  end
end

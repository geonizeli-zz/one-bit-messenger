class MessagesController < ApplicationController
  def create
    @message = current_user.sent.build(receiver_id: params[:chat_id], file: params[:file])
    @message.attributes = params.require(:message).permit(:content, :file)
    @message.save
    render :create
  end
end

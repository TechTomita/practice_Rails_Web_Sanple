class MessagesController < ApplicationController
    def index
        @messages = Message.all
    end
    
    def show
        @message = Message.find(params[:id])
    end
    
    def new
        @message = Message.new(content: "message")
    end
    
    def create
        @message = Message.new(message_params)
        
        if @message.save
            flash[:successf] = "Messageが正常に投稿されました"
            redirect_to @message
        else
            flash.now[:danger] = "Messageが投稿されませんでした"
            render :new
        end
    end
    
    def edit
        @message = Message.find(params[:id])
    end
    
    def update
    end
    
    def destroy
    end
    
    
    private
    
    
    def message_params
        params.require(:message).permit(:content)
    end
end

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
    end
    
    def edit
    end
    
    def update
    end
    
    def destroy
    end
end

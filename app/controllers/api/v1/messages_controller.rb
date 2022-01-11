module Api
  module V1
    class MessagesController < ApplicationController
      def index
        @greetings = Message.all.order('random()').limit(1)
        render json: @greetings
      end
    end
  end
end

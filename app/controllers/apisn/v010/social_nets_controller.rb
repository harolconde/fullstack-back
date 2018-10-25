module  Apisn
  module V010
    class SocialNetsController < ApplicationController
      before_action :set_social_net, only: [:show, :update, :destroy]
    
      # GET /social_nets
      def index
        @social_nets = SocialNet.all
    
        render json: @social_nets
      end
    
      # GET /social_nets/1
      def show
        render json: @social_net
      end
    
      # POST /social_nets
      def create
        @social_net = SocialNet.new(social_net_params)
    
        if @social_net.save
          render json: @social_net, status: :created, respond_with: @social_net
        else
          render json: @social_net.errors, status: :unprocessable_entity
        end
      end
    
      # PATCH/PUT /social_nets/1
      def update
        if @social_net.update(social_net_params)
          render json: @social_net
        else
          render json: @social_net.errors, status: :unprocessable_entity
        end
      end
    
      # DELETE /social_nets/1
      def destroy
        @social_net.destroy
      end
    
      private
        # Use callbacks to share common setup or constraints between actions.
        def set_social_net
          @social_net = SocialNet.find(params[:id])
        end
    
        # Only allow a trusted parameter "white list" through.
        def social_net_params
          params.require(:social_net).permit(:name)
        end
    end      
  end
end
  
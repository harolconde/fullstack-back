module Apiad
  module V010
    class AdminsController < ApplicationController
      before_action :set_admin, only: [:show, :update, :destroy]
    
      # GET /admins
      def index
        @admins = Admin.all
    
        render json: @admins
      end
    
      # GET /admins/1
      def show
        render json: @admin
      end
    
      # POST /admins
      def create
        @admin = Admin.new(admin_params)
    
        if @admin.save
          render json: @admin, status: :created, respond_with: @admin
        else
          render json: @admin.errors, status: :unprocessable_entity
        end
      end
    
      # PATCH/PUT /admins/1
      def update
        if @admin.update(admin_params)
          render json: @admin
        else
          render json: @admin.errors, status: :unprocessable_entity
        end
      end
    
      # DELETE /admins/1
      def destroy
        @admin.destroy
      end
    
      private
        # Use callbacks to share common setup or constraints between actions.
        def set_admin
          @admin = Admin.find(params[:id])
        end
    
        # Only allow a trusted parameter "white list" through.
        def admin_params
          params.require(:admin).permit(:user, :password)
        end
    end
  end  
end


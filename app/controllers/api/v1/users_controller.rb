class Api::V1::UsersController < ApplicationController
# Assumption: we will want version tracking of our api.

    def index
        begin
            parse_users
            render json: @users 
        rescue ArgumentError => e
            render json: {error: e.message}, status: 404
        end
    end

    def create
        @user = User.new(user_params)
        # Note: potential optimization possible through error serialization
        if @user.save
            render json: @user
        else
            render json: {error: @user.errors.full_messages}, status: 400
        end
    end

    def delete
        begin
            parse_users(true)
            @users.first.destroy
            render json: {}, status: 204
        rescue ArgumentError => e
            render json: {error: e.message}, status: 404
        end
    end

    private 

    def user_params
        params.permit(:first_name, :last_name, :email, :gov_id_number, :gov_id_type)
    end


    def parse_users(exact_override=false)
        if user_params.present?
            @users = User.where(user_params)
            if @users.empty?
                raise ArgumentError.new('No user found matching those criteria')
            elsif (params.key?(:exact) || exact_override) && @users.count > 1
                raise ArgumentError.new('Multiple users found matching those criteria')
            end
            puts @users.first.email
        else
            @users = User.all
        end
    end
end

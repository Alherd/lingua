require "nokogiri"

class LoginController < ApplicationController
  def index
    user = User.find_by(email: params["email"], password: params["password"])
    if user.present?
      render json: { "1": user.name }
    else
        render json: { error: 'Запись не найдена' }, status: :not_found
    end
  end
end

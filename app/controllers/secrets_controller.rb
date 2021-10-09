class SecretsController < ApplicationController
  before_action :require_login
  
  def show  
      render 'secrets/show'   
  end

  private

  def require_login
    return redirect_to '/login' unless current_user
  end
end

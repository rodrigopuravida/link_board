class MainController < ApplicationController

  # before_action :is_authenticated?, only: [:secret]
    before_action :is_authenticated?, except: [:index]


  def index
  end

  def about
  end

  def secret
    is_authenticated?
  end
end

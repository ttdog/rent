class HomeController < ApplicationController
  #ユーザがログインしていないと"show"にアクセスできない
  before_action :authenticate_user!, only: :show
#  before_action :property_check, if: :authenticate_user!

  def index

  end

  def show
  end

end

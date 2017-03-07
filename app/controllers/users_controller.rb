class UsersController < ApplicationController
  # ランキングの表示
  def index
    @users = User.order("score")
#    redirect_to (root_url + "start.json")
  end

  def show
    @user = User.find(params[:id])
  end
  # アカウントの追加
  def new
    @user = User.new()
  end
  # ハイスコアの変更
  def edit
    @user = User.find(params[:id])
  end

  def create
    @user.save
  end

  def update
  end

  def destroy
  end

end

class TopController < ApplicationController
  def index
  end

  def start
    @messages = {"a" => "Log In", "b" => "Create A New Account", "c" => "Ranking"}
  end

  def login
    json_request = JSON.parse(request.body.read)
    @user = User.authenticate(json_request.name)
    if user
      @alert = "Hello! #{@user.name}!"
    else
      @alert = "ERROR::The user name '#{@user.name}' was not found."
    end
  end
end

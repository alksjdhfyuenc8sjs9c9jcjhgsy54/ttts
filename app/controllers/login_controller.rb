=begin rdoc
=ログインコントローラ
=end	
=end
class LoginController < ApplicationController
	  # viewアクションにのみ適用されるbeforeフィルタcheck_loginedを登録
	  before_action :check_logined, only: :view
	
	  # 認証済みか銅貨を判定するcheck_loginedフィルタを定義
  private
  def check_logined
    if session[:usr] then 
      begin
        @usr = User.find(session[:usr])
      rescue ActiveRecord::RecordNotFound
        reset_session
      end
    end 
    unless @usr 
      flash[:referer] = request.fullpath
      redirect_to controller: :login, action: :index
    end
  end
end

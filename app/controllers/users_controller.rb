class UsersController < ApplicationController
  skip_before_action :require_login, only: %i[new create]
  
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to login_path, flash:{ success: t('.success' )}
    else
      flash.now[:danger] = t('.fail')
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @user = User.find(params[:id])
    likes = Like.where(user_id: current_user.id).pluck(:drug_id)  # ログイン中のユーザーのお気に入りのpost_idカラムを取得
    @like_list = Like.find(likes)     # postsテーブルから、お気に入り登録済みのレコードを取得
  end

  private
    def user_params
      params.require(:user).permit(:email, :password, :password_confirmation, :username, :admin)
    end
end

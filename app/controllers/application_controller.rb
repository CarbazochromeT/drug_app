class ApplicationController < ActionController::Base
  add_flash_types :success, :info, :warning, :danger
  before_action :require_login

  private

  def not_authenticated
    redirect_to login_path, danger: "ログインしてください"
  end

  def integer_string?(str)
    Integer(str)
    true
  rescue ArgumentError
    false
  end
end

class ApplicationController < ActionController::Base
  before_action :require_login

  def require_login
    # ログインを確認して、非ログインじにリダイレクトする処理
  end
end

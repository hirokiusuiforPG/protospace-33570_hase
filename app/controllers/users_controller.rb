class UsersController < ApplicationController
  before_action :authenticate_user!, except:[:show]

  def show
    @user = User.find(params[:id])
    @prototypes = @user.prototypes.includes(:user)
    #一回目の挑戦で成功するとなぜこれで合っているか分からないから困るんだよね...
  end
end

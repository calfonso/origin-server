module AdminConsole
  class UserController < BaseController
    def show
      @user   = ::CloudUser.find_by(:id => params[:id])
      @domains = @user.domains
    end
  end
end

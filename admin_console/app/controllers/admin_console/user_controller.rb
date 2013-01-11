module AdminConsole
  class User < BaseController
    def show
      @user = CloudUser.find_by(:login => params[:id])
    end
  end
end

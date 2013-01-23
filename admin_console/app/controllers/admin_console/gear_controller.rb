module AdminConsole
  class GearController < BaseController
    def show
      redirect_to application_path(:id => params[:id])
    end
  end
end

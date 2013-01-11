module AdminConsole
  class ApplicationController < BaseController
    def show
      @application = Application.find_by(:uuid => params[:id])
    end
  end
end

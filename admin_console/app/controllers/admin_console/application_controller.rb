module AdminConsole
  class ApplicationController < BaseController
    def show
      @application = AdminConsole::Application.find_by(:uuid => params[:id])
    end
  end
end

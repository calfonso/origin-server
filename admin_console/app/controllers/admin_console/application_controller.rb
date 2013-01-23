module AdminConsole
  class ApplicationController < BaseController
    def show
      @application      = AdminConsole::Application.find_by(:uuid => params[:id])
      @domain           = @application.domain
      @group_instances  = @application.group_instances
    end
  end
end

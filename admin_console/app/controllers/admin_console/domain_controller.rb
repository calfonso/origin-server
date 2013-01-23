module AdminConsole
  class DomainController < BaseController
    def show
      @domain = ::Domain.find_by(:namespace => params[:id])
      @applications = @domain.applications
    end
  end
end

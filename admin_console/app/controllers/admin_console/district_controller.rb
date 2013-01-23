module AdminConsole
  class DistrictController < ApplicationController
    def index
      @districts = District.find_all
    end

    def show
      @district = District.find_by_name(params[:id])
      @nodes = AdminConsole::Node.find_in_district(@district)
    end
  end
end

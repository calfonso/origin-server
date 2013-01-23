module AdminConsole
  class NodeController < BaseController
    def show
      @node = AdminConsole::Node.find_by_name(params[:id])
      @gears = AdminConsole::Gear.find_in_node(@node)
    end
  end
end

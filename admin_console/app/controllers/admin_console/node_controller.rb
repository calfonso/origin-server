module AdminConsole
  class NodeController < BaseController
    def show
      @node = Node.find_by_name(params[:id])
      @gears = Gear.find_by_node(@node.server_identity)
    end
  end
end

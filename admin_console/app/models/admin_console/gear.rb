module AdminConsole
  class Gear < ::Gear
    class << self
      def find_by_node(node)
        AdminConsole::Application.find_by_node(node).map(&:group_instances).flatten.map(&:gears).flatten
      end
    end
  end
end

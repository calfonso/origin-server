module AdminConsole
  class Gear < ::Gear
    def applications
      AdminConsole::Application.where('group_instances.gears.uuid' => '50f5b5eb1397e0ca21000001')
    end
    class << self
      def find_by_node(node)
        AdminConsole::Application.find_by_node(node).map(&:group_instances).flatten.map(&:gears).flatten
      end
    end
  end
end

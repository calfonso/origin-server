module AdminConsole
  class Gear < ::Gear
    class << self
      def find_in_node(node)
        apps = AdminConsole::Application.where('group_instances.gears.server_identity' => node.server_identity).to_a
        group_instances = apps.map(&:group_instances).flatten
        gears           = group_instances.map(&:gears).flatten.select{|x| x.server_identity == node.server_identity }
        gears
      end

      def where(*args)
        ::Gear.where(*args)
      end

      def find_by(*args)
        ::Gear.find_by(*args)
      end
    end
  end
end

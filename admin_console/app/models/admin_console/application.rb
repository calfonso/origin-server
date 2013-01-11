module AdminConsole
  class Application < ::Application
    class << self
      def find_by_node(node)
        where(
          "group_instances.gears.server_identity" => node
        )
      end

      def where(*args)
        ::Application.where(*args)
      end

      def find_by(*args)
        ::Application.find_by(*args)
      end
    end
  end
end

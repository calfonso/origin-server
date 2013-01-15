module AdminConsole
  class Node
    attr_reader :server_identity

    def initialize(args)
      @server_identity = args['name']
    end

    def district
      _district = District.where('server_identities.name' => server_identity).first
    ensure
      _district.reload if _district
    end

    def active?
      district.server_identities_hash[server_identity]['active']
    end

    def active_string
      active? ? "Active" : "Not Active"
    end

    def gears
      AdminConsole::Gear.find_by_node(server_identity)
    end

    class << self
      def find_by_name(server_identity)
        find(
          {
            'server_identities.name' => server_identity
          }
        ).first
      end

      def find_in_district(district)
        find(
          {
            '_id' => district.id
          }
        )
      end

      def find_all
        districts = District.find_all
        districts_to_nodes(districts)
      end

      def to_param
        server_identity
      end

      private
      def find(args)
        districts_to_nodes(District.where(args)) || []
      end

      def districts_to_nodes(districts)
        return nil unless districts.respond_to?(:map)
        nodes = districts.map(&:server_identities).flatten
        nodes.map{|x| Node.new(x) }
      end
    end
  end
end

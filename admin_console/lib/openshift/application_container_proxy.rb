# Needed to monkey patch this to get some of the controller models to
# work properly
module OpenShift
  class ApplicationContainerProxy
    def initialize(server)
      @server = server
    end

    class << self
      def instance(server)
        new(server)
      end
    end
  end
end

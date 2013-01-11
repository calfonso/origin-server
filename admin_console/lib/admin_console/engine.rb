module AdminConsole
  class Engine < ::Rails::Engine
    isolate_namespace AdminConsole

    config.openshift = {
      :default_gear_size => :small,
      :default_max_gears => 3
    }
  end
end

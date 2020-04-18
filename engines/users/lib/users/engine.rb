module Users
  class Engine < ::Rails::Engine
    isolate_namespace Users

    initializer :append_migrations do |app|
      # Migrations
      config.paths['db/migrate'].expanded.each do |expanded_path|
        app.config.paths['db/migrate'] << expanded_path
      end
    end
  end
end
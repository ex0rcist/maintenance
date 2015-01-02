class MaintenanceRailtie < Rails::Railtie
  initializer 'maintenance' do |app|
    app.middleware.use 'Rack::Maintenance', file: Rails.root.join('public', 'maintenance.html')
  end

  rake_tasks do
    load 'lib/tasks/maintenance.rake'
  end

end
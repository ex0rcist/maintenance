class MaintenanceRailtie < Rails::Railtie
  initializer 'maintenance' do |app|
    app.middleware.use 'Rack::Maintenance', file: Rails.root.join('public', 'system', 'maintenance.html')
  end

  rake_tasks do
    load 'tasks/maintenance.rake'
  end

end
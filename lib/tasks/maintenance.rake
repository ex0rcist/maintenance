namespace :maintenance do
  desc "Turn on site to maintenance mode"
  task :on do
    `cp #{Rails.root.join('lib/rack/templates/maintenance.html')} #{Rails.root.join('public/maintenance.html')}`
  end

  desc "Turn off site from maintenance mode"
  task :off do
    `rm #{Rails.root.join('public/maintenance.html')}`
  end

end

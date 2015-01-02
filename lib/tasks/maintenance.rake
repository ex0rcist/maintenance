namespace :maintenance do

  desc 'Turn on site to maintenance mode'
  task :on do
    gembase = File.expand_path '../..', __FILE__
    `cp #{gembase}/rack/templates/maintenance.html #{Rails.root.join('public/maintenance.html')}`
  end

  desc 'Turn off site from maintenance mode'
  task :off do
    `rm #{Rails.root.join('public/maintenance.html')}`
  end

end

namespace :maintenance do

  desc 'Turn on site to maintenance mode'
  task :on do
    local_basename = Rails.root.join('lib/rack/templates/maintenance.html')
    gem_basename = File.expand_path('../..', __FILE__) + '/rack/templates/maintenance.html'

    source = File.exists?(local_basename) ? local_basename : gem_basename
    `cp #{source} #{Rails.root.join('public/maintenance.html')}`
  end

  desc 'Turn off site from maintenance mode'
  task :off do
    `rm #{Rails.root.join('public/maintenance.html')}`
  end

end

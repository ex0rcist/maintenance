namespace :maintenance do

  desc 'Turn on site to maintenance mode'
  task on: :environment do
    local_basename = Rails.root.join('lib/rack/templates/maintenance.html')
    gem_basename = File.expand_path('../..', __FILE__) + '/rack/templates/maintenance.html'

    source = File.exists?(local_basename) ? local_basename : gem_basename

    `mkdir -p #{Rails.root.join('public/system')}`
    `cp #{source} #{Rails.root.join('public/system/maintenance.html')}`
  end

  desc 'Turn off site from maintenance mode'
  task off: :environment do
    `rm #{Rails.root.join('public/system/maintenance.html')}`
  end

end

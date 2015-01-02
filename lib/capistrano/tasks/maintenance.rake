namespace :maintenance do

  task :on do
    on roles(:app) do

      within "#{current_path}" do
        with rails_env: :production do
          execute :rake, "maintenance:on"
        end
      end

    end
  end

  task :off do
    on roles(:app) do

      within "#{current_path}" do
        with rails_env: :production do
          execute :rake, "maintenance:off"
        end
      end

    end
  end

end

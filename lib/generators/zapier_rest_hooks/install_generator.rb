# frozen_string_literal: true

require 'rails/generators/base'
module ZapierRestHooks
  class InstallGenerator < Rails::Generators::Base
    include Rails::Generators::Migration
    source_root File.expand_path('templates', __dir__)
    require 'rails/generators/migration'

    desc 'Mounts ZapierRestHooks in routes and copies migrations.'

    def mount_in_routes
      route 'mount ZapierRestHooks::Engine, at: "/hooks"'
    end

    def copy_migrations
      require 'rake'
      Rails.application.load_tasks
      Rake::Task['railties:install:migrations'].reenable
      Rake::Task['zapier_rest_hooks:install:migrations'].invoke
    end
  end
end

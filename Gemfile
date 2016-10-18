source 'http://rubygems.org'
ruby '2.1.5'

gem 'rails', '3.2.13'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'pg', '0.17.1'
gem 'activerecord-postgis-adapter'

gem 'rgeo', '0.3.20'
gem 'rgeo-geojson', '0.3.1'

#    app server
gem 'puma'
gem 'dotenv-rails'

#    Render HAML content for narratives
gem 'haml', '4.0.5'
gem 'redcarpet' # Render Markdown in HAML
gem 'd3-rails', '3.4.4'
gem 'tufted-rails', '0.0.2' # Terse D3 by Matt Gardner (allthesignals)
gem 'crease' # Simpler text helpers by Matt Cloyd (beechnut)

#    Export Word files
gem 'docx_replace', git: "git://github.com/beechnut/docx_replace.git"

#    Autocomplete
gem 'twitter-typeahead-rails', '0.10.2'
gem 'bootstrap-typeahead-rails', '0.9.3.3'

#      For user management of plan
# gem 'devise'
# gem 'rails_admin'
# gem 'cancan'

# TODO: Consider adding machine-readability
gem 'rabl', '0.9.3' # RABL templates for JSON
gem 'oj',   '2.9.0'


group :development do
  gem 'capistrano',      '~> 2.0'
  gem 'net-ssh',         '2.7.0'
  gem 'net-ssh-gateway', '1.2.0'
  gem 'capistrano-unicorn', '0.2.0', :require => false
  gem 'better_errors'
  gem 'binding_of_caller'
end

group :development, :test do
  gem 'progress_bar'

  gem 'rspec-rails', '3.0.1'
  gem 'capybara',    '2.2.0'
  gem 'launchy'
end

group :test do
  gem 'rake', '10.3.2'
  gem "codeclimate-test-reporter", require: nil
end

group :production do
  gem 'rails_12factor'
end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails', '3.2.6'
  gem 'sass',       '3.3.10'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  gem 'therubyracer', platforms: :ruby

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails', '3.1.1'




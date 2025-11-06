# frozen_string_literal: true

source 'https://rubygems.org'

def github_gem(plugin_name, branch = 'feature/v1.0.0')
  gem_name = "way_of_working-#{plugin_name}"
  gem gem_name, git: "https://github.com/HealthDataInsight/#{gem_name}.git", branch:
end

github_gem('audit-github-cis_benchmark')

# Specify your gem's dependencies in way_of_working-for-hdi.gemspec
gemspec

gem 'activesupport', '~> 7.0', '>= 7.1.5.1'
gem 'minitest', '~> 5.0'
gem 'mocha', '~> 2.0'
gem 'ndr_dev_support', '>= 7.3.1'
gem 'railties', '~> 7.0', '>= 7.1.5.1'
gem 'rake', '~> 13.0'

# Security requirements
gem 'cgi', '>= 0.4.2'
gem 'nokogiri', '>= 1.18.4'
gem 'rack-session', '>= 2.1.1'
gem 'rack', '>= 3.1.16'
gem 'rails-html-sanitizer', '>= 1.6.1'
gem 'uri', '~> 0.13.2'

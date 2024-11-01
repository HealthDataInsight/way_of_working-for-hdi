# frozen_string_literal: true

source 'https://rubygems.org'

def github_gem(plugin_name, branch = 'feature/v1.0.0')
  gem_name = "way_of_working-#{plugin_name}"
  gem gem_name, git: "https://github.com/HealthDataInsight/#{gem_name}.git", branch:
end

github_gem('audit-github-cis_benchmark')
github_gem('audit-github')
github_gem('changelog-keepachangelog')
github_gem('code_linting-hdi')
github_gem('code_of_conduct-contributor_covenant')
github_gem('decision_record-madr')
github_gem('pull_request_template-hdi')

# Specify your gem's dependencies in way_of_working-for-hdi.gemspec
gemspec

gem 'minitest', '~> 5.0'
gem 'mocha', '~> 2.0'
gem 'ndr_dev_support', '>= 3.1.3'
gem 'railties', '~> 7.0'
gem 'rake', '~> 13.0'
gem 'zeitwerk', '~> 2.6.18'

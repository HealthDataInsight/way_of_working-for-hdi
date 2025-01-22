# frozen_string_literal: true

require_relative 'lib/way_of_working/for/hdi/version'

Gem::Specification.new do |spec|
  spec.name = 'way_of_working-for-hdi'
  spec.version = WayOfWorking::For::Hdi::VERSION
  spec.authors = ['Tim Gentry']
  spec.email = ['52189+timgentry@users.noreply.github.com']

  spec.summary = 'Way of Working for Health Data Insight'
  spec.homepage = 'https://github.com/HealthDataInsight/way_of_working-for-hdi'
  spec.license = 'MIT'
  spec.required_ruby_version = '>= 3.1.0'

  spec.metadata['allowed_push_host'] = 'https://rubygems.org'
  spec.metadata['rubygems_mfa_required'] = 'true'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/HealthDataInsight/way_of_working-for-hdi'
  spec.metadata['changelog_uri'] = 'https://github.com/HealthDataInsight/way_of_working-for-hdi/blob/main/CHANGELOG.md'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  gemspec = File.basename(__FILE__)
  spec.files = IO.popen(%w[git ls-files -z], chdir: __dir__, err: IO::NULL) do |ls|
    ls.readlines("\x0", chomp: true).reject do |f|
      (f == gemspec) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git .github appveyor Gemfile])
    end
  end
  spec.bindir = 'exe'
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'way_of_working', '~> 2.0.1'
  spec.add_dependency 'way_of_working-audit-github-cis_benchmark' # , '~> 1.0.0'
  spec.add_dependency 'way_of_working-audit-github' # , '~> 1.0.0'
  spec.add_dependency 'way_of_working-changelog-keepachangelog' # , '~> 1.0.0'
  spec.add_dependency 'way_of_working-code_linting-hdi' # , '~> 1.0.0'
  spec.add_dependency 'way_of_working-code_of_conduct-contributor_covenant' # , '~> 1.0.0'
  spec.add_dependency 'way_of_working-decision_record-madr' # , '~> 1.0.0'
  spec.add_dependency 'way_of_working-inclusive_language-alex', '~> 1.0.1'
  spec.add_dependency 'way_of_working-pull_request_template-hdi' # , '~> 1.0.0'
  spec.add_dependency 'zeitwerk', '~> 2.6.18'

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end

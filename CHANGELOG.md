# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Changed

- Inclusive Language (alex) is now enabled via the built-in `way_of_working` feature (`require 'way_of_working/inclusive_language/alex'`) instead of the separate `way_of_working-inclusive_language-alex` plugin gem. This requires `way_of_working` >= 2.0.2.
- Markdown Any Decision Records (MADR) is now enabled via the built-in `way_of_working` feature (`require 'way_of_working/decision_record/madr'`) instead of the separate `way_of_working-decision_record-madr` plugin gem.
- Keep a Changelog is now enabled via the built-in `way_of_working` feature (`require 'way_of_working/changelog/keepachangelog'`) instead of the separate `way_of_working-changelog-keepachangelog` plugin gem.
- The HDI Pull Request template is now enabled via the built-in `way_of_working` feature (`require 'way_of_working/pull_request_template/hdi'`) instead of the separate `way_of_working-pull_request_template-hdi` plugin gem.
- Contributor Covenant Code of Conduct is now enabled via the built-in `way_of_working` feature (`require 'way_of_working/code_of_conduct/contributor_covenant'`) instead of the separate `way_of_working-code_of_conduct-contributor_covenant` plugin gem.
- GitHub audit is now enabled via the built-in `way_of_working` feature (`require 'way_of_working/audit/github'`) instead of the separate `way_of_working-audit-github` plugin gem.

## [1.0.0] - 2025-11-20

### Added

- Adopted: Markdown Any Decision Records (MADR), via a plugin
- Adopted: Contributor Covenant Code of Conduct, via a plugin
- Adopted: MegaLinter, via a plugin
- Adopted: Keep a Changelog, via a plugin
- Adopted: Cypress end-to-end testing
- Adopted: Semantic Versioning
- Added dark mode support to our GitHub pages theme
- Adopted: Accessibility (a11y) testing using pa11y
- Adopted: Checking for inclusive language, using Alex, via a plugin
- Adopted: Using Cabin as our cookie-free Software-as-a-Service (SaaS) Web Analytics Solution
- Adopted: HDI Pull Request template, via a plugin

[unreleased]: https://github.com/HealthDataInsight/way_of_working-for-hdi/compare/v1.0.0...HEAD
[1.0.0]: https://github.com/HealthDataInsight/way_of_working-for-hdi/releases/tag/v1.0.0

# Way of Working for HDI

<!-- Way of Working: Main Badge Holder Start -->
![HDI Way of Working Badge](https://img.shields.io/badge/HDI_Way_of_Working-v1.0.0-%238169e3?labelColor=black)
<!-- Way of Working: Additional Badge Holder Start -->
<!-- Way of Working: Badge Holder End -->

[![Gem Version](https://badge.fury.io/rb/way_of_working.svg)](https://badge.fury.io/rb/way_of_working)
<br />
[![MegaLinter](https://github.com/HealthDataInsight/way_of_working-for-hdi/workflows/MegaLinter/badge.svg?branch=main)](https://github.com/HealthDataInsight/way_of_working-for-hdi/actions?query=workflow%3AMegaLinter+branch%3Amain)
[![Inclusive Language](https://github.com/HealthDataInsight/way_of_working-for-hdi/actions/workflows/inclusive-language.yml/badge.svg)](https://github.com/HealthDataInsight/way_of_working-for-hdi/actions/workflows/inclusive-language.yml)
[![WCAG 2.1 AA](https://github.com/HealthDataInsight/way_of_working-for-hdi/actions/workflows/wcag2aa.yml/badge.svg)](https://github.com/HealthDataInsight/way_of_working-for-hdi/actions/workflows/wcag2aa.yml)
[![WCAG 2.1 AAA](https://github.com/HealthDataInsight/way_of_working-for-hdi/actions/workflows/wcag2aaa.yml/badge.svg)](https://github.com/HealthDataInsight/way_of_working-for-hdi/actions/workflows/wcag2aaa.yml)

## Introduction

This framework will describe a consistent, high-quality approach to Software Engineering at Health Data Insight.

It is an opinionated approach intending to support rapid development, across numerous projects, by a fungible workforce who can swap between assignments with the minimum friction.

It builds on the [twelve-factor app](https://12factor.net) methodology and is intended to be compatible with the [NHS Digital Software Engineering Quality Framework](https://github.com/NHSDigital/software-engineering-quality-framework) and other frameworks like [the GDS Way](https://gds-way.cloudapps.digital).

The most significant difference here is that we will be opinionated and make technological and process choices. Everyone is encouraged to discuss and submit Pull Requests (PRs) if they want changes to the choices made, but by making those choices, we can automate many tedious background tasks that are currently manual.

It consists of a GitHub Pages website, available at <https://healthdatainsight.github.io/way_of_working-for-hdi>, and command line tool.

## Installation

TODO: Replace `UPDATE_WITH_YOUR_GEM_NAME_IMMEDIATELY_AFTER_RELEASE_TO_RUBYGEMS_ORG` with your gem name right after releasing it to RubyGems.org. Please do not do it earlier due to security reasons. Alternatively, replace this section with instructions to install your gem from git if you don't plan to release to RubyGems.org.

Install the gem and add to the application's Gemfile by executing:

```bash
bundle add UPDATE_WITH_YOUR_GEM_NAME_IMMEDIATELY_AFTER_RELEASE_TO_RUBYGEMS_ORG
```

If bundler is not being used to manage dependencies, install the gem by executing:

```bash
gem install UPDATE_WITH_YOUR_GEM_NAME_IMMEDIATELY_AFTER_RELEASE_TO_RUBYGEMS_ORG
```

## Usage

### Initialise All Components

To add all the HDI Way of Working components to your project, run:

```bash
way_of_working init all --contact-method [CONTACT METHOD]
```

You will need to provide the Code of Conduct `[CONTACT METHOD]`, usually an email address, for community leaders to receive reports of unacceptable behavior.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.
This RubyGem was created using `bundle gem way_of_working-for-hdi`.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

### Help

More help on using the command line tool is found by using:

```bash
way_of_working help
```

## Contributing

Bug reports and pull requests are welcome on GitHub at <https://github.com/HealthDataInsight/way_of_working-for-hdi>. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/HealthDataInsight/way_of_working-for-hdi/blob/main/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Hdi::WayOfWorking project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/HealthDataInsight/way_of_working-for-hdi/blob/main/CODE_OF_CONDUCT.md).

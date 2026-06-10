---
# Configuration for the Jekyll template "Just the Docs"
nav_order: 10
parent: Decision Records

# These are optional elements. Feel free to remove any of them.
status: accepted
date: 2026-06-10
deciders: Tim Gentry
---
# Use mise to manage development tool versions

## Context and Problem Statement

Our projects use multiple language runtimes (Ruby, Node.js, Python, etc.), each pinned to a specific version per project. Historically we have managed these with a separate version manager per language (rbenv for Ruby, nvm for Node.js, pyenv for Python, and so on). Each tool has its own installation process, configuration, shell integration and version file format, which makes setting up a development machine slow and inconsistent across the team.

Which tool should we use to manage development tool versions going forwards?

## Decision Drivers

* A single tool and a single workflow for installing and switching all language runtimes
* Compatibility with projects shared with external partner teams, who continue to use rbenv, nvm, etc.
* Fast, well-maintained tooling with support for project-level configuration

## Considered Options

* [mise (mise-en-place)](https://mise.jdx.dev) – a single polyglot tool version manager
* Per-language version managers ([rbenv](https://github.com/rbenv/rbenv), [nvm](https://github.com/nvm-sh/nvm), [pyenv](https://github.com/pyenv/pyenv), etc.) – the status quo
* [asdf](https://asdf-vm.com) – a polyglot version manager with a plugin ecosystem

## Decision Outcome

Chosen option: "mise (mise-en-place)", because:

* one tool replaces rbenv, nvm, pyenv and friends, simplifying machine setup and onboarding
* it is fast (written in Rust, no shell shims) and actively maintained
* it understands the "idiomatic" version files used by the per-language managers (`.ruby-version`, `.nvmrc`, `.node-version`, `.python-version`), so it can coexist with external partners' tooling
* it also manages environment variables and tasks, giving us room to consolidate further tooling later

### Existing projects shared with external teams

Some of our projects interface with external partner teams who continue to use rbenv, nvm, etc. Where such a project already has an idiomatic version file (for example a `.ruby-version` file), that file remains the single source of truth for the version:

* **Do not** duplicate the version number in `.mise.toml` – duplicating it would create two sources of truth that can drift apart.
* **Do** configure `.mise.toml` to defer to the idiomatic version file, for example:

  ```toml
  [settings]
  idiomatic_version_file_enable_tools = ["ruby"]
  ```

  With this setting, mise reads the version from `.ruby-version`, the same file rbenv uses, so internal developers using mise and external partners using rbenv stay in sync automatically.

For new internal-only projects, versions should be declared directly in `.mise.toml`.

### Consequences

* Good, because new starters install one tool instead of three or more
* Good, because projects shared with external teams keep working unchanged for those teams
* Bad, because existing team members need to migrate their local setup from rbenv/nvm/pyenv to mise
* Bad, because shared projects carry both a `.mise.toml` and an idiomatic version file, which requires understanding that the idiomatic file is the source of truth

## More Information

* [mise documentation](https://mise.jdx.dev)
* [mise idiomatic version files](https://mise.jdx.dev/configuration.html#idiomatic-version-files) – note that since mise 2025.1.0 idiomatic version files (other than `.tool-versions`) must be opted into per tool via the `idiomatic_version_file_enable_tools` setting

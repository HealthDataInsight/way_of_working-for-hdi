---
layout: page
---
# Decision Records

## Overview

We use [Markdown Any Decision Records (MADR)](https://adr.github.io/madr/) v3.0.0 to capture project decisions that:

- aren't covered in the [Way of Working](https://github.com/HealthDataInsight/way_of_working)
- need project-specific implementation details
- diverge from Way of Working guidance

Background: [GDS Way page on Architecture Decisions](https://gds-way.cloudapps.digital/standards/architecture-decisions.html) and [MADR documentation](https://adr.github.io/madr/).

{: .note }
Proposing and reviewing decisions requires familiarity with [GitHub pull requests](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/proposing-changes-to-your-work-with-pull-requests/about-pull-requests).

## Setup

Add MADR v3.0.0 to your project:

```bash
way_of_working init decision_record
```

## Usage

### Create a new decision record

**Automated:**

```bash
way_of_working new decision_record "Use Markdown Any Decision Records"
```

**Manual:**

1. Copy `docs/decisions/adr-template.md` to `docs/decisions/NNNN-title-with-dashes.md` (NNNN = next sequence number)
2. Edit the new file

**File naming:** `NNNN-title-with-dashes.md` where:

- `NNNN` is consecutive (assumes <10,000 ADRs per repo)
- Title uses lowercase and dashes (matching [adr-tools](https://github.com/npryce/adr-tools) convention)
- `.md` extension for Markdown format

{: .note }
Alternative [directory patterns](https://github.com/joelparkerhenderson/architecture_decision_record#adr-file-name-conventions) are supported but may affect tooling compatibility.

Decisions are stored in `decisions/` subfolder to separate them from other documentation while keeping them accessible.

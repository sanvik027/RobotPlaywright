# Design Decisions

## 1. Folder Structure
See tree in README. Key split:
- `tests/ui/` vs `tests/api/` — separates test types, enables per-type Pabot runs
- `resources/fixtures/` — lifecycle (setup/teardown)
- `resources/keywords/` — reusable non-page-specific actions
- `resources/locators/` — one file per page (SCREAMING_SNAKE vars)
- `resources/pages/` — one file per page (page objects)
- `data/` — YAML test data (no hardcoding)
- `variables/` — env config, overridable via env vars

## 2. Locators
One file per page under `resources/locators/`.
Variables in `${SCREAMING_SNAKE_CASE}`.
No locators anywhere else — single source of truth.

## 3. Page Objects
One file per page under `resources/pages/`.
Keywords describe user actions ("Fill Account Details"), not DOM ("Click input#x").
Page objects contain NO locators (import from locators/) and NO data (import from YAML).

## 4. Test Data
YAML files under `data/`.
Loaded by `resources/fixtures/data_fixtures.resource`.
No test file contains a string literal for user data.

## 5. Setup/Teardown Ownership
- `tests/__init__.robot` → Suite Setup/Teardown + Test Setup/Teardown
- Per-test overrides via `[Setup]` / `[Teardown]` when a test needs something different

## 6. Naming Conventions
- Keywords:      Title Case (`Fill Account Details`, `Verify Home Page Is Visible`)
- Locators:      `${SCREAMING_SNAKE}` (`${HOME_LINK}`)
- Locals:        `${snake_case}` (`${email}`, `${user_password}`)
- Test cases:    Sentence Case (`Register New User Successfully`)
- Files:         snake_case (`home_page.resource`, `registration_data.yaml`)

## 7. Browser Config
Env vars first (`%{BROWSER=chromium}`), CLI `--variable` second (also works).
Default: chromium, headless=True.
Override examples:
  BROWSER=firefox HEADLESS=False robot tests/
  robot --variable BROWSER:webkit tests/

## 8. Reports
Baked into `config/robot.yaml`. Run via:
  robot --config config/robot.yaml tests/
Or explicitly:
  robot --outputdir reports tests/
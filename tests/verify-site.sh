#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

test -f "${repo_root}/index.html"
test -f "${repo_root}/styles.css"
grep -q '<title>testrepo</title>' "${repo_root}/index.html"
grep -q 'Hello from testrepo' "${repo_root}/index.html"
grep -q 'href="styles.css"' "${repo_root}/index.html"
grep -q 'actions/deploy-pages@d6db90164ac5ed86f2b6aed7e0febac5b3c0c03e' "${repo_root}/.github/workflows/pages.yml"

echo "Site checks passed."

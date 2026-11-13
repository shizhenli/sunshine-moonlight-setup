# Template version

- Version: v1.1.0
- Source: `_shared/layouts` + `_shared/static/{css,robots.txt,favicon.svg}`
- Sync: `pwsh -File scripts/sync-template.ps1`
- Per-site config records `params.template_version = "v1.1.0"`.
- First 3 guides were replaced with project-specific content; other 17 guides remain drafts.
- Production/preview robots and canonical are generated from the shared base template.

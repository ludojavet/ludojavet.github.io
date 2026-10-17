# javet.lu

Personal website of Ludovic Javet, published at [javet.lu](https://javet.lu/).

Built from the [al-folio](https://github.com/alshedivat/al-folio) v1.2 starter. The layouts, styles and features come from the `al_*` gems pinned in `Gemfile`; this repository only holds the content and the site configuration.

## Local development

```bash
bundle install
bundle exec jekyll serve
```

The site is then served at <http://localhost:4000/>.

## Where things live

| What                  | File                                                                          |
| --------------------- | ----------------------------------------------------------------------------- |
| Homepage              | `_pages/about.md`                                                             |
| Publications          | `_bibliography/papers.bib` (PDFs in `assets/pdf/`)                            |
| CV                    | `assets/json/resume.json` (JSON Resume format)                                |
| Social links, authors | `_data/socials.yml`, `_data/coauthors.yml`                                    |
| Search indexing       | `robots.txt`, `_plugins/noindex.rb` (homepage only)                           |
| Style override        | `assets/css/main.scss` (CV date column), tracked in `.al-folio-overrides.yml` |

## Updating al-folio

Merge the release tags, not upstream `main`:

```bash
git fetch upstream --tags
git merge v1.x
bundle exec al-folio upgrade audit
bundle exec al-folio upgrade overrides audit
```

Template docs are kept in [`docs/`](docs/README.md).

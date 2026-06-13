# DSRC Newsletter

Source files for the Dundee Sailing and Rowing Club newsletter. The workflow converts a Markdown file to a styled PDF using Pando
c and WeasyPrint.

## Prerequisites

Install the two required tools:

**macOS (Homebrew):**
```bash
brew install pandoc weasyprint
```

**Ubuntu/Debian:**
```bash
sudo apt install pandoc python3-weasyprint
```

**pip (any platform):**
```bash
pip install weasyprint
# pandoc must be installed separately — see https://pandoc.org/installing.html
```

## Usage

Edit `newsletter.md` with the issue content (you will see last issue there), then run:

```bash
make          # generates DSRC_Newsletter.pdf
make html     # generates newsletter.html (useful for previewing)
make clean    # removes generated files
```

The PDF is written to `DSRC_Newsletter.pdf` in the project root. The root-level PDF is gitignored; once an issue is final, copy i
t to the archive folder:

```bash
cp DSRC_Newsletter.pdf 2026_06/DSRC_Newsletter\ June\ 26.pdf
```

## Files

| File | Purpose |
|---|---|
| `newsletter.md` | Newsletter content (edit this each issue) |
| `newsletter.template.html` | Pandoc HTML template |
| `newsletter.css` | Print/screen stylesheet |
| `Makefile` | Build rules |
| `DSRC Logo Full Small.png` | Logo used in the template |
| `DRSC Logo Icon.png` | Icon variant |

## Archive structure

Finished PDFs are stored in dated folders (`2026_04/`, `2026_05/`, …) and committed to the repo. The working-directory PDF (`DSRC
_Newsletter.pdf`) is gitignored.

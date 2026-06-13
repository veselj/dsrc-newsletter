# DSRC Newsletter

Source files for the Dundee Sailing and Rowing Club newsletter. The workflow converts a Markdown file to a styled PDF using Pando
c and WeasyPrint.

## Prerequisites

### macOS

```bash
brew install pandoc weasyprint
```

### Ubuntu/Debian

```bash
sudo apt install pandoc python3-weasyprint
```

### Windows

**1. Install Git for Windows**

Download and run the installer from https://git-scm.com/download/win. During setup, choose "Git Bash" as the terminal — the commands below assume Git Bash.

**2. Install Pandoc**

Download the `.msi` installer from https://pandoc.org/installing.html and run it. Pandoc will be added to your PATH automatically.

**3. Install Python and WeasyPrint**

Download Python from https://www.python.org/downloads/windows/ — tick "Add Python to PATH" during installation. Then open Git Bash and run:

```bash
pip install weasyprint
```

WeasyPrint also requires GTK3 libraries on Windows. Download and run the GTK3 runtime installer from https://github.com/tschoonj/GTK-for-Windows-Runtime-Environment-Installer/releases (pick the latest `.exe`).

**4. Install Make**

Git Bash does not include `make` by default. Install it via Chocolatey — open PowerShell as Administrator and run:

```powershell
Set-ExecutionPolicy Bypass -Scope Process -Force
[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072
iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
choco install make
```

Then restart Git Bash.

## Usage

Edit `newsletter.md` with the issue content (you will see last issue there), then run:

```bash
make          # generates DSRC_Newsletter.pdf
make html     # generates newsletter.html (useful for previewing)
make clean    # removes generated files
```

The PDF is written to `DSRC_Newsletter.pdf` in the project root. The root-level PDF is gitignored; once an issue is final, copy it to the archive folder and commit:

```bash
cp DSRC_Newsletter.pdf "2026_06/DSRC_Newsletter June 26.pdf"
git add "2026_06/DSRC_Newsletter June 26.pdf"
git commit -m "Archive June 26 newsletter"
git push
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

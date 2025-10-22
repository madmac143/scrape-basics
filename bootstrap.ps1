# Run from project root
$ErrorActionPreference = "Stop"
py -3.13 -m venv .venv
.\.venv\Scripts\Activate.ps1
python -m pip install --upgrade pip setuptools wheel
if (Test-Path requirements.txt) { pip install -r requirements.txt } else {
  pip install requests beautifulsoup4 lxml pandas tenacity python-dotenv rich selenium webdriver-manager scrapy playwright
  python -m playwright install
  pip freeze > requirements.txt
}

import requests
from bs4 import BeautifulSoup

r = requests.get("https://example.com", timeout=15)
soup = BeautifulSoup(r.text, "lxml")
print("Title:", soup.title.string if soup.title else "no title")

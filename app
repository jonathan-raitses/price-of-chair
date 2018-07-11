import requests
from bs4 import BeautifulSoup

request = requests.get("https://www.johnlewis.com/string-pocket-shelves/p3364844")
content = request.content
soup = BeautifulSoup(content, "html.parser")
elements = soup.find("p", {"class": "price price--large"})
string_price = elements.text.strip()

price_without_symbol = string_price[1:]

price = float(price_without_symbol)

if price < 200:
    print("Buy the chair")
    print("The current price is {}".format(string_price))
else:
    print("Do not buy the chair")
#https://www.amazon.com/gp/product/B077N51CR2/

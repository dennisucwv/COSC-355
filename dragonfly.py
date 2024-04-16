import requests
from bs4 import BeautifulSoup

def get_dragonnike_price(dragonnike):
    url = f'https://www.nike.com/t/zoomx-dragoy-track-field-distance-spikes-0P9jtc/CV0400-101?nikemt=true&cp=35640345119_search_--x-20429762868---c-----9009137-1013490514-00196969465209&gad_source=4&gclid=Cj0KCQjw-r-vBhC-ARIsAGgUO2DpYrjYrbyY8qiDJLjfGJRrOfYsKg70ZueHADdBKwTCdI_RAHhEG4MaAvWGEALw_wcB&gclsrc=aw.ds'
    response = requests.get(url)
    soup = BeautifulSoup(response.text, 'html.parser')
    
    price_element = soup.find('div', {'class': 'product-price css-11s12ax is--current-price css-tpaepq'})
    if price_element:
        price = price_element.get_text()
        print(f"Nike Price: {price}")
    else:
        print("Price not found on Nike")

def get_heart_price(dragonheart):
    url = f'https://heartbreak.run/products/u-zoomx-dragonfly?variant=42305731068064&currency=USD&utm_medium=product_sync&utm_source=google&utm_content=sag_organic&utm_campaign=sag_organic&utm_source=google&utm_medium=cpc&utm_campaign=&gad_source=4&gclid=Cj0KCQjw-r-vBhC-ARIsAGgUO2DQrM2upbGO2L-HAlD2UqfBUrAaMKuVwH1-vLanmVQT5GD2oLR9LnUaAo61EALw_wcB'
    response = requests.get(url)
    soup = BeautifulSoup(response.text, 'html.parser')
    
    price_element = soup.find('span', {'class': 'money'})
    if price_element:
        price = price_element.get_text()
        print(f"HeartBreak Price: {price}")
    else:
        print("Price not found on HeartBreak")

def get_runware_price(dragonrunware):
    url = f'https://www.runningwarehouse.com/Nike_Dragonfly_Spike/descpage-NZMZD08.html?from=gshop&gad_source=4&gclid=Cj0KCQjw-r-vBhC-ARIsAGgUO2DOZFRPBgnGkxKOIzu6sRsIibfsXIGAyEySlqukcpk6iTMRQXvSh2QaAnn7EALw_wcB'
    response = requests.get(url)
    soup = BeautifulSoup(response.text, 'html.parser')
    
    price_element = soup.find('span', {'class': 'price'})
    if price_element:
        price = price_element.get_text()
        print(f"Running Warehouse Price: {price}")
    else:
        print("Price not found on Running Warehouse")

if __name__ == "__main__":
    shoe_query = "Nike ZoomX Dragonfly"

    print("Getting Nike Price...")
    get_dragonnike_price(shoe_query)

    print("Getting HeartBreak Price...")
    get_heart_price(shoe_query)

    print("Getting Running Warehouse Price...")
    get_runware_price(shoe_query)
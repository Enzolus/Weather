import requests

def get_weather():
    city = "Paris"
    url = f"http://wttr.in/{city}?format=2"

    response = requests.get(url)
    print(f"Weather in {city}: {response.text}")

if __name__ == "__main__":
    get_weather()

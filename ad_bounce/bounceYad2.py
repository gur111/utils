"""
  This will automatically login and bounce all the ads in the order_ids list. 
  The first value you'll need to get from the link of the bounce button (there will be a link even if it's already bounced and disabled)
  The second value is the CatID (Category ID) and can be found also as part of the button's link. It can also be found as URL param
    of the page itself.
  Example for bounce link and the needed parameters:
  https://my.yad2.co.il/newOrder/index.php?action=updateBounceListing&CatID=3&SubCatID=0&OrderID=12345678
                                                                            ^ Second Value       ^ First Value
  If you have SubCatID then you might need to modify my script. Mine is always 0 from what I've observed so it's hardcoded.
  Don't forget to put your username and password.
"""
import requests, datetime

USERNAME = 'ENTER_USERNAME_HERE_USUALLY_YOUR_EMAIL'
PASSWORD = 'ENTER_YOUR_PASSWORD_HERE'

def now():
        return str(datetime.datetime.now())

print("{}:\tBouncing Yad2".format(now()))
headers = {'X-Requested-With': 'XMLHttpRequest'}
creds = {'UserName': USERNAME, 'password': PASSWORD}
login_url = 'https://my.yad2.co.il/newOrder/index.php?action=connect'
bounce_url = 'https://my.yad2.co.il/newOrder/index.php?action=updateBounceListing&CatID={}&SubCatID=0&OrderID={}'
# Fill here the IDs of all the ads you want to bounce
order_ids = [[12345678, 6], # Tutor
             [87654321, 6], # Tutor
             [12345689, 6], # Tutor
             [98765543, 6], # Tutor
             [14725836, 3] # computer
             ]

ses = requests.Session()
# This is very important to use Israeli proxy or run from an Israeli IP. Yad2 won't let you log in otherwise. I use Google Cloud
#     so this was an issue for me. You can delete this line if you run locally from Israel. You can also find another proxy servers
#     if these don't work.
ses.proxies = {'http': 'socks4://81.218.45.130:4145', 'https': 'socks4://81.218.45.130:4145'}

r = ses.post(login_url, data=creds).text

for id in order_ids:
        r = ses.post(bounce_url.format(id[1], id[0]), headers=headers).text
        if r.find('{"status":true,') >0:
                print(now()+":\tBounced successfully.")
        else:
                print("{}:\torder_id {} didn't bounce.\nGot:\n".format(now(), id, r))

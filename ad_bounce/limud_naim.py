"""
	Also add this to crontab -e
	*/5 * * * * python3 /path/to/bounceLimudNaim.py >>/path/to/limudNaim.log
"""

import requests, datetime

USERNAME = 'ENTER_USERNAME'
PASSWORD = 'ENTER_PASSWORD'

def now():
        return str(datetime.datetime.now())

print("{}:\tBouncing LimudNaim".format(now()))

headers = {'X-Requested-With': 'XMLHttpRequest'}
creds = {'name': USERNAME, 'pass': PASSWORD, 'form_id':'user_login', 'op':'כניסה'}
login_url = 'https://www.limudnaim.co.il/user'
bounce_url = 'https://www.limudnaim.co.il/node/12222/update-modified'

ses = requests.Session()
# This might not be necessarity but it's an Israeli proxy so less likely to get suspicious logins.
ses.proxies = {'http': 'socks4://81.218.45.130:4145', 'https': 'socks4://81.218.45.130:4145'}

if ses.post(login_url, data=creds).text.find("גור") > 0:
        print("{}:\tLogged in successfully. Bouncing:".format(now()))
        r = ses.get(bounce_url)
        if r.text.find('לא ניתן') > 0:
                print("{}:\tBounced too early".format(now()))
                raise Exception("{}:\tBounced too early".format(now()))
        elif r.status_code == 200:
                print("{}:\tBounced successfully".format(now()))
else:
        print("{}:\tCouldn't login.".format(now()))
        raise Exception("{}:\tCouldn't login".format(now()))

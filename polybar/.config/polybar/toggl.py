#!/usr/bin/env python3.8
import time, requests, json
from dotenv import load_dotenv
from os import getenv
import pathlib 

truncate = 8

# Get api token securely
current_dir = pathlib.Path(__file__).parent.absolute()
env_path = current_dir / 'togglapi.env'
load_dotenv(dotenv_path=env_path)
api_token = getenv("TOGGL_API_KEY") 
if(api_token == None):
	print("API token empty")
	exit()

current = json.loads(
    requests.get("https://www.toggl.com/api/v8/time_entries/current", auth=(api_token, "api_token")).content)
if current['data'] is not None and ("pid" in current["data"] or "description" in current["data"]):
    seconds = time.time() - abs(current['data']['duration'])
    m, s = divmod(seconds, 60)
    h, m = divmod(m, 60)
    if "pid" in current["data"]:
        link = 'https://www.toggl.com/api/v8/projects/' + str(current['data']['pid'])
        name = json.loads(requests.get(link, auth=(api_token, "api_token")).content)["data"]["name"]
    else:
        name = current['data']['description']
    name = name.replace("-"," ")
    if len(name) > truncate + 3:
        words = name.count(' ') + 1
        each = int((truncate + 3 - 2 * words) / words)
        each = each if each > 0 else 1
        name = ''.join(s[:each] + '. ' for s in name.split())
        name = name[:-1]
    m = int(m)
    h = int(h)
    if m < 10: m = '0' + str(m)
    m = str(m)
    h = str(h)
    out = name + " " + '(' + h + ':' + m + ')'
    print(out)
else:
    print("精")

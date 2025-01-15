#!/usr/bin/python3
import os, sys, urllib.parse

if len(sys.argv) > 1:
    link = sys.argv[1]
    parsed = urllib.parse.urlparse(link)
    phone = urllib.parse.parse_qs(parsed.query).get("phone", [""])[0]
    text = urllib.parse.parse_qs(parsed.query).get("text", [""])[0]
    os.system(
        f"xdg-open 'https://web.whatsapp.com/send?phone={phone}&text={urllib.parse.quote(text)}'"
    )
else:
    print("Uso: python3 script.py '<enlace_whatsapp>'")

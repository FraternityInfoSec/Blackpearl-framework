from urllib2 import Request, urlopen, URLError, HTTPError

def findAdmin():
        f = open("link.txt","r");
        link = raw_input("Enter Site Name \n(ex : site.com or www.site.com) > ")
        print "\n\nAdmin Panels >  \n"
        while True:
                sub_link = f.readline()
                if not sub_link:
                        break
                req_link = "http://"+link+"/"+sub_link
                req = Request(req_link)
                try:
                        response = urlopen(req)
                except HTTPError as e:
                        continue
                except URLError as e:
                        continue
                else:
                        print "OK => ",req_link
  
findAdmin()

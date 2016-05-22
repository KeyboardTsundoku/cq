import os
import shutil 
import subprocess

# initial setup
# folders
rootf = os.path.expanduser('~') + "/Dropbox/cqtheme/"
jsf = rootf + 'js/'

# files
html = "index.html"
js = "index.js"

# put index file into root folder
print("Currently Running => transferring index.html")
shutil.copy2(html, rootf)

# convert coffee file to js and put in <root>/js
print("Currently Running => converting coffee files to index.js")
cat = subprocess.Popen('cat coffee/*.coffee', shell=True, stdout=subprocess.PIPE)
tmpIndex = open(js, "w")
coffee = subprocess.Popen(['coffee', '-c', '-s'], stdin=cat.stdout, stdout=tmpIndex)

print("Currently Running => transferring index.js")
try:
  os.remove(jsf + js)
except OSError:
  pass

shutil.move(js, jsf)

# convert scss file to css and put in <root>/css




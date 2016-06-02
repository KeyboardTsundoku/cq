import os
import shutil 
import subprocess

# initial setup
# folders
rootf = os.path.expanduser('~') + "/Dropbox/cqtheme/"
jsf = rootf + 'js/'
cssf = rootf + 'css/'

# files
html = "index.html"
js = "cq.js"
css = "cq.css"

print("Currently Running => converting *.haml to *.html")
subprocess.call(['haml', 'main.haml', 'index.html'])

# put index html into root folder
print("Currently Running => transferring index.html")
try:
  os.remove(rootf + html)
except OSError:
  pass

shutil.move(html, rootf)

# convert coffee file to js and put in <root>/js
print("Currently Running => converting coffee files to " + js)
cat = subprocess.Popen('cat coffee/*.coffee', shell=True, stdout=subprocess.PIPE)
tmpIndex = open(js, "w")
coffee = subprocess.Popen(['coffee', '-c', '-s'], stdin=cat.stdout, stdout=tmpIndex)

print("Currently Running => transferring " + js)
try:
  os.remove(jsf + js)
except OSError:
  pass

shutil.move(js, jsf)

# convert scss file to css and put in <root>/css
print("Currently Running => converting sass files to " + css)
subprocess.call(['sass', 'sass/main.sass', css])

# put css file into root folder
print("Currently Running => transferring " + css)
try:
  os.remove(cssf + css)
except OSError:
  pass

shutil.move(css, cssf)

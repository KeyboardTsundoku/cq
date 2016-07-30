import os
import shutil 
import subprocess

# initial setup
# folders
rootf = os.path.expanduser('~') + "/Dropbox/cq/"
htmlf = rootf + 'html/'
jsf = rootf + 'js/'
cssf = rootf + 'css/'

# production files
html = "index.html"
js = "cq.js"
jsmin = "cq.min.js"
css = "cq.css"
cssmin = "cq.min.css"

# convert main.haml to index.html
print("Currently Running => converting main.haml to index.html")
subprocess.call(['haml', 'haml/main.haml', html])

# put index html into root folder
print("Currently Running => transferring index.html")
try:
  os.remove(rootf + html)
except OSError:
  pass

shutil.move(html, rootf)

# convert coffee files to js and put in <root>/js
print("Currently Running => converting coffee files to " + js)
cat = subprocess.Popen('cat coffee/*.coffee', shell=True, stdout=subprocess.PIPE)
tmpIndex = open(js, "w")
coffee = subprocess.Popen(['coffee', '-c', '-s'], stdin=cat.stdout, stdout=tmpIndex)

# minify js file
print("Currently Running => minify " + js + " to " + jsmin)
subprocess.call(['java', '-jar', 'yuiminify.jar', js, '-o', jsmin])

# transfer minified js file
print("Currently Running => transferring " + jsmin)
try:
  os.remove(jsf + jsmin)
except OSError:
  pass

shutil.move(jsmin, jsf)

# convert scss file to css and put in <root>/css
print("Currently Running => converting sass files to " + css)
subprocess.call(['sass', 'sass/main.sass', css])

# minify css file
print("Currently Running => minify " + css + " to " + cssmin)
subprocess.call(['java', '-jar', 'yuiminify.jar', css, '-o', cssmin])

# put css file into root folder
print("Currently Running => transferring " + css)
try:
  os.remove(cssf + cssmin)
except OSError:
  pass

shutil.move(cssmin, cssf)

# clean dev directory
print("Currently Running => cleaning dev directory")
os.remove(js)
os.remove(css)
os.remove("cq.css.map")

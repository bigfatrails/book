echo "You need to install pandoc"
echo 
echo
echo "On ubuntu/debian it's sudo apt-get install pandoc."
echo "On other systems, you're on your own."
sudo apt-get install pandoc

echo "Pandoc installed"

echo "You also need to install some stuff for TeX."
echo "sudo apt-get install texlive-xetex"

sudo apt-get install texlive-xetex

echo "texlive-xetex installed"


echo "You also need ebook-convert for the mobi generation (kindle)"

sudo apt-get install calibre

echo "calibre installed for ebook-convert"
# gotogh: makes a copy of public directory in tmp, checkouts to gh-pages branch
# and copy the content of /tmp/hugo_public

cp -r public /tmp/hugo_public

git checkout gh-pages

cp -r /tmp/hugo_public/* .

rm -r /tmp/hugo_public

BASEDIR=$(CURDIR)
OUTPUTDIR=$(BASEDIR)/public
TMPDIR=/tmp/public

# default target
serve:
	$(GOPATH)/bin/hugo server

publish:
	$(GOPATH)/bin/hugo 

github: publish
	# master branch (content)
	cp -r $(OUTPUTDIR) $(TMPDIR)
	git add -A .
	git commit -m "New post/page" || true
	
	# gh-pages branch (build artificats)
	git checkout gh-pages
	cp -r $(TMPDIR)/* .
	git add -A .
	git commit -m "New build" || true
	git push -f origin master gh-pages
	rm -rf $(TMPDIR)

.PHONY:  github publish serve
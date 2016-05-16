BASEDIR=$(CURDIR)
OUTPUTDIR=$(BASEDIR)/public
WORKINGDIR=/tmp/hugo_public

# default target
serve:
	$(GOPATH)/bin/hugo server

publish:
	$(GOPATH)/bin/hugo 

github: publish
	# master branch (content)
	cp -r $(OUTPUTDIR)/ $(WORKINGDIR)
	git add -A .
	git commit -m "New post/page" || true
	
	# gh-pages branch (build artificats)
	git checkout gh-pages
	cp -r $(WORKINGDIR)/* .
	git add -A .
	git commit -m "New build" || true
	git push -f origin master gh-pages
	rm -rf $(WORKINGDIR)
	# back to master
	git checkout master

.PHONY:  github publish serve
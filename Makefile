BASEDIR=$(CURDIR)
OUTPUTDIR=$(BASEDIR)/public
TMPDIR=`mktemp -d 2>/dev/null || mktemp -d -t 'hugo-public'`

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
	cp -r $(TMPDIR)/public/* .
	git add -A .
	git commit -m "New build" || true
	git push -f origin master gh-pages
	rm -rf $(TMPDIR)/public
	# back to master
	git checkout master

.PHONY:  github publish serve
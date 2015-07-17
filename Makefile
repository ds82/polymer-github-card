all:

release:
	

build-gh-pages:
	git checkout gh-pages
	git reset --hard master
	rm -rf components
	bower install ../polymer-github-card#master
	cp -a demo components/
	git add -A -f components/
	git commit -m "doc(gh-pages): regenerate gh-pages branch"

gh-pages:
	build-gh-pages
	git push -f
	git checkout master


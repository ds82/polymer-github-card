all:

release:
	

gh-pages:
	git checkout gh-pages
	git reset --hard master
	rm -rf components
	bower install
	bower install ../polymer-github-card#master
	cp -a demo components/
	git add -A -f components/
	git commit -m "doc(gh-pages): regenerate gh-pages branch"
	git push -f
	git checkout master


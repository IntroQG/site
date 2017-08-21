# Minimal makefile for Sphinx documentation
#

# You can set these variables from the command line.
SPHINXOPTS    =
SPHINXBUILD   = python -msphinx
SPHINXPROJ    = IntroQG
SOURCEDIR     = source
BUILDDIR      = source/_build

GH_PAGES_SOURCES = source Makefile

# Put it first so that "make" without argument is like "make help".
help:
	@$(SPHINXBUILD) -M help "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)

.PHONY: help Makefile

# Build for GitHub Pages
gh-pages:
	git checkout gh-pages
	rm -rf build _sources _static
	git checkout master $(GH_PAGES_SOURCES)
	git reset HEAD
	make html
	#mv -fv source/_build/html/* source/_build/html/.nojekyll ./
	cp -rv source/_build/html/* source/_build/html/.nojeckyll ./
	rm -rf $(GH_PAGES_SOURCES)
	git add -A
	git commit -m "Generated gh-pages for `git log master -1 --pretty=short --abbrev-commit`" && git push origin gh-pages ; git checkout master

# Catch-all target: route all unknown targets to Sphinx using the new
# "make mode" option.  $(O) is meant as a shortcut for $(SPHINXOPTS).
%: Makefile
	@$(SPHINXBUILD) -M $@ "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)

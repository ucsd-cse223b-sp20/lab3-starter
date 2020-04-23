######################################################
ORG=ucsd-cse223b-sp20
ASSN=lab3
STARTER=lab3-starter
######################################################

check: 
	cd ${CURDIR}/src/triblab/ && $(MAKE) all
	cd ${CURDIR}/src/triblab/ && $(MAKE) testv-lab2

turnin: 
	git commit -a -m "turnin"
	git push origin master

upstream:
	git remote add upstream https://github.com/$(ORG)/$(STARTER)

update:
	git pull upstream master

help:		## Show this help
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'

validate:	## Validate vagrant config.
	vagrant validate

status:		## Check vagrant status.
	vagrant status

up:		## starts and provisions the vagrant environment
	vagrant up

halt:		## stops the vagrant machine
	vagrant halt            

destroy:	## stops and deletes all traces of the vagrant machine
	vagrant destroy -f

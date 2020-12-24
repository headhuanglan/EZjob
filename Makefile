PYT=python3

install: 
	${PYT} setup.py install --user --prefix= --record files.txt

clean: 
	rm -rf ezjob.egg-info
	rm -rf dist
	rm -rf build
	rm files.txt


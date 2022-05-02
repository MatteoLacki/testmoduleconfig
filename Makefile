PROJECT_NAME = testmoduleconfig
install:
	virtualenv ve_testmoduleconfig
	ve_testmoduleconfig/bin/pip install IPython
	ve_testmoduleconfig/bin/pip install -e .
upload_test_pypi:
	rm -rf dist || True
	python setup.py sdist
	twine -r testpypi dist/* 
upload_pypi:
	rm -rf dist || True
	python setup.py sdist
	twine upload dist/*
py:
	ve_testmoduleconfig/bin/ipython

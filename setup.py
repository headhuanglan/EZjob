from setuptools import setup
from setuptools import find_packages

with open("README.md", "r") as fh:
    long_description = fh.read()

setup(name='ezjob',
      version='0.1.8',
      packages=find_packages(),
      include_package_data=True,
      description='EZjob for Jupyter Notebook, ssh sftp and terminal all in one for HPC job management.',
      long_description=long_description,
      long_description_content_type="text/markdown",
      url='http://greatfire.uchicago.edu/huangl/ezjob',
      author='Lan Huang',
      author_email='huangl@anl.gov',
      license='MIT',
      install_requires=[
          'paramiko',
          'ipywidgets',
          'pathlib'
      ],
      zip_safe=True)


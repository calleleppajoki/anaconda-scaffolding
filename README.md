# Anaconda scaffolding

This is intended to be a starting point for projects using Anaconda/Jupyter notebooks (using Python 2.x or 3.x) and is run with Docker.
It's just a few shellscripts for Windows (powershell) or Linux/macOS (bash).
These scritps will start a docker-container for Miniconda or Anaconda with the specified python version.

## Commands:

These should be self explanatory. Either start Miniconda or Anaconda, and choose which python version to run.

* miniconda2
* miniconda3
* anaconda2
* anaconda3
* kill

Note: kill will run `docker stop` and `docker rm` on _all_ containers (through e.g `docker stop $(docker ps -aq)`)

## Example usage:

Let's say I want to start a new project using Anaconda for Python 2.x
Make sure the scripts are placed in an appropriate location, I usually go with the root folder of my current project.

On Windows:

`./build.ps1 anaconda2`

On Linux/macOS:

`./build.sh anaconda2`

# This is a Makefile, a commonly used utility for standardizing commands in the terminal.
# The Makefile contains recipes (i.e. 'hello_world') that are shortcuts for executing code.
# For instance, all you have to do is type `make hello_world` into your terminal
# and it will execute the command: echo "hello world!"
# more about makefiles here: https://opensource.com/article/18/8/what-how-makefile
hello_world:
	echo "hello world!"

# the `make environment` command sets up a venv (virtual environment) that we will use for this repo.
# We use virtual environments to manage dependencies - libraries of code written by other folks on the internet
# that are useful to us. All dependencies and versions are listed in requirements.txt.
# Virtual environments keep the dependencies of this project separate from any other python projects you may
# execute on your computer.
# venv isn't the only way to create virtual environments, but it's nice because venv is built into python.
# more about venv here: https://docs.python.org/3/tutorial/venv.html
environment:
	python3 -m venv venv
	. venv/bin/activate && \
	pip install -r requirements.txt

# use the `make notebook` command to start the jupyter notebook interface
# more about jupyter here: https://docs.jupyter.org/
notebook:
	. venv/bin/activate && \
	jupyter notebook
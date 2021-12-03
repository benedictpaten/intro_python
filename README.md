# These are lecture notes for the [UCSC CSE20: Beginning Programming in Python](https://courses.soe.ucsc.edu/courses/cse20) course

Each lecture is composed of a [Jupyter](https://jupyter.org/) notebook.

The lecture syllabus is here: https://bit.ly/intro_python_01

## You can view each of these notebooks using [Google Colab](https://colab.research.google.com/).
  
Just paste https://github.com/benedictpaten/intro_python into the Github tab and pick the notebook you want.

## To install and use these notebooks on your computer with [Jupyter](https://jupyter.org/)

If you prefer to have these notebooks installed on your computer and to use Jupyter to edit them
follow the following instructions. These instructions should work on
Linux or Mac OS. 

First, make sure you have [python3](https://www.python.org/) installed on your computer. 

Next make a directory to hold the notebooks:

```
mkdir cse20 && cd cse20
```

To avoid problems with conflicting versions of dependencies on your system, we strongly recommend installing 
these notebooks inside a Python 3 [virtual environment](https://virtualenv.pypa.io/en/stable/). To install the `virtualenv` command, if you don't have it already, run:

```
python3 -m pip install virtualenv
```

To set up a virtual environment in the directory `python_intro_env`, run:
```
python3 -m virtualenv -p python3.9 python_intro_env
```

Then, to enter the virtualenv, run:
```
source python_intro_env/bin/activate
```

You can always exit out of the virtualenv by running `deactivate`.


To install these notebooks in Python, clone the repo:  
```
git clone https://github.com/benedictpaten/intro_python.git
cd intro_python
```

Now install Jupyter and some Python packages we'll use:

```
pip install jupyter
pip install rise
pip install numpy
pip install pandas
pip install matplotlib
```

Now you're ready to run the notebooks:

```
jupyter notebook
```

When you're finished with these notebooks you
just need to delete the parent directory and
everything we've installed (except for Python3) will be removed.

```
rm -rf cse20
```

### Building html versions of the notebooks as slides

If you've followed the above instructions to download and the notebooks on your computer
you can build html formatted versions of the slides by running in the 
intro_python subdirectory:

```
./make_slides.sh
```

However, you may prefer to use [RISE](https://rise.readthedocs.io/en/stable/) to view
the slides (it is installed with the above instructions).

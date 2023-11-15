# These are lecture notes for the [UCSC CSE20: Beginning Programming in Python](https://courses.soe.ucsc.edu/courses/cse20) course

Each lecture is composed of a [Jupyter](https://jupyter.org/) notebook.

The lecture syllabus is here: https://bit.ly/intro_python_00

## You can view each of these notebooks using [Google Colab](https://colab.research.google.com/).
  
[Google Colab](https://colab.research.google.com/) provides a notebook environment
you can run from your web browser without installing any software.

Step 1: open [Google Colab](https://colab.research.google.com/).

Step 2: paste https://github.com/benedictpaten/intro_python into the
Github URL search box under the Github tab (hit return).

Step 3: pick the notebook for the lecture you want.

For an introduction to using Google Colab (and Juptyer Notebooks in general) 
see the following [tutorial](https://colab.research.google.com/notebooks/intro.ipynb).

## To install and use these notebooks on your computer with [Jupyter](https://jupyter.org/)

If you prefer to have these notebooks installed on your computer and to use Jupyter to edit them
follow the following instructions. 

**These instructions should work on
Linux or Mac OS and require you to be familiar with using unix shell commands (e.g. with a terminal app).
It is not necessary to install these notebooks on your computer to take this course.**

First, make sure you have [python3](https://www.python.org/) and [Jupyter](https://jupyter.org/) installed on your computer.

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
Note that here I am using Python 3.9, but you may wish to choose a different version, which you can change by 
specifying a different number string, i.e. python3.11

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
pip install scikit-learn
```

Now make this virtual environment accessible to Jupyter:

```
ipython kernel install --user --name=intro_python_env
```

Now you're ready to run the notebooks:

```
jupyter notebook
```

A browser should then open showing you the running Juptyer notebook launch page. Simply
navigate to the desired notebook and select it to open. To use the virtual environment
click on the Kernel menu and then click "Change kernel" and selecting the "intro_python_env"
option. That's it, you should be set use all the features of these notebooks.

Later, after following the above steps, if you want to start the notebook server again (e.g. after
shutting down the computer) simply navigate to the cse20 directory in the terminal and then 
execute the following two commands:

```
source python_intro_env/bin/activate
jupyter notebook
```

When you're finished with these notebooks you
just need to delete the parent directory (cse20) and
everything we've installed (including all the notebooks, Jupyter and Python packages, 
but not including Python3) will be removed.

```
rm -rf cse20
```

### Building html versions of the notebooks as slides

If you've followed the above instructions to download and run the notebooks on your computer
you can build html formatted versions of the slides by running the make_slides.sh script in the 
intro_python subdirectory:

```
./make_slides.sh
```

However, you may prefer to use [RISE](https://rise.readthedocs.io/en/stable/) to view
the slides (it is installed with the above instructions). RISE allows
you to interactively edit and run the notebook and toggle back and forth into
a slide viewer.

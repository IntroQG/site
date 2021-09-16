Introduction to NumPy
=====================

Downloading and extracting the data
-----------------------------------

1. You can start by downloading `this week's volcano data zip file <../../_static/data/L8/volcano-data.zip>`__, which we will be using for this lesson.

   - The Firefox browser will likely download the file to the ``Downloads`` directory in the home directory.
     If so, you should move the file into the home directory using the file browser.

2. Once you have moved the ``volcano-data.zip`` file into your home directory, you can unzip the file using the ``unzip`` command in the Terminal window.
   In Linux or on a Mac, you can do:

   .. code:: bash

       $ cd $HOME
       $ unzip volcano-data.zip
       $ ls volcano-data
       GVP-Volcano-Lat-Lon-Elev.csv GVP-Volcano-List.csv GVP_Volcano_List.xls

   You should now have a directory titled ``volcano-data`` in your home directory.
   It contains three files from `version 4.5.1 of the Smithsonian Institution's Holocene volcano database (updated 23.9.2016) <http://volcano.si.edu/list_volcano_holocene.cfm>`__.
   The three files are:

   - ``GVP-Volcano-List.csv``: The complete Holocene volcano database file in ``.csv`` format and with header lines.
     **Note**: Values are separated by semicolons (``;``) in this version of the file rather than the commas (``,``).
   - ``GVP-Volcano-List.xls``: The Excel version of the complete Holocene volcano database.
   - ``GVP-Volcano-Lat-Lon-Elev.csv``: The volcano ID, latitude, longitude and elevation for all volcanoes in the Holocene volcano database.
     There is no header in this file and values are separated by commas (``,``).

Introducing NumPy
-----------------

NumPy is a library for Python designed for efficient scientific (numerical) computing.
It is an essential library in Python that is used under the hood in many other modules (including `Pandas <http://pandas.pydata.org/>`__).
Here, we willl get a sense of a few things NumPy can do.

1. To start using the NumPy library we will need to ``import`` it.

   .. ipython:: python

    import numpy as np

   Note that we've imported NumPy shortening ``numpy`` to ``np``.

2. Now we'll import an example data file.

   .. ipython:: python
    :suppress:

    import os
    %ls
    fp = os.path.join(os.path.abspath('source'), '_static', 'data', 'L8', 'GVP-Volcano-Lat-Lon-Elev.csv')
    data = np.loadtxt(fname=fp, delimiter=',')

   .. ipython:: python

    @verbatim
    data = np.loadtxt(fname='GVP-Volcano-Lat-Lon-Elev.csv', delimiter=',')

    print(data)
   
   Again, the data above is probably not very clear at this point, but is an example of data from the Smithsonian Institution's Global Volcanism Program. Here, we have the ID number, latitude, longitude, and elevation of Holocene volcanoes in the database.
   Let's see what we can do with this information.

3. First off, you may notice we've used NumPy to read in the data.
   Reading data in NumPy is quite similar to how things are done in Pandas, but the data are stored in a different type data structure than a Pandas DataFrame.

   .. ipython:: python

    type(data)

   OK, so we have something new here.
   NumPy has its own data types that are part of the module.
   In this case, our data is stored in an NumPy *n*-dimensional array.

4. Like Pandas, we can also check to see how much data do we have in our ``data`` variable.

   .. ipython:: python
   
    print(data.shape)
    
   1520 rows of data, 4 columns.
   ``shape`` is a *member* or *attribute* of ``data``, and is part
   of any NumPy ``ndarray``. Printing ``data.shape`` tells us the size of the array.

5. We can also check the data type of our data-columns by calling ``data.dtype``, which is again similar to Pandas.

   .. ipython:: python

    print(data.dtype)

   OK, so it seems that all the data in our file is float data type, i.e., decimal numbers (stored with a precision of 64 bytes).

6. It is also possible to change the data type of the data which can be useful sometimes.
   Let's take a copy of our data and convert our dataset into integer numbers.

   .. ipython:: python

    # Take a copy of the data
    copy = data.copy()
    # Convert to integer values
    copy = copy.astype(int)
    print(copy)

   This is again quite similar to how things work in Pandas.

7. Within the array, we can find any value by using it's *index*.

   .. ipython:: python

    data[0,0]

   This gives us the value stored in the first row and first column of ``data``.
   Note that to refer to a location in an array you use the square brackets ``[ ]`` just like for lists.
   Remember, index values **start at zero, not one**, and the first row and column refers to the top left value in the array.
   What will happen if we try to find ``data[1520,0]``?
   Try it!

7. 1520 volcanoes is quite a few to deal with at the same time.
   We can explore our data more easily by using *index slicing* to extract part of the array.
   Let's start with just the latitude and longitude for the first five rows.

   .. ipython:: python
   
    data[0:5, 1:3]

   Nice!
   Note that in this case, the range of index values for the first 5 rows is 0-5.
   The data extracted will start at ``0`` and go up to, but not include ``5``.
   Be careful with this.
   We can also extract data for all columns without listing any index range at all.

   .. ipython:: python

    data[0:2, :]

   Obviously, this can be useful.

8. We can also use *index slicing* to separate our data into different variables to make it easier to work with.

   .. ipython:: python
   
    Latitude = data[:,1]
    print(Latitude)
    
   For many data files, this is a nice way to interact with only the data of your own interest.

.. attention::

    Create a list called ``dataStr`` where you append all of our ``data`` array columns one by one in string (``str``) format.
    Use a ``for`` loop for iterating over the columns.

Useful functions 
-----------------

1. It is common to need to create your own arrays not from a data file, but to make a variable that has a range from one value to another.
   If we wanted to calculate the ``sin()`` of a variable ``x`` at 10 points from :math:`0` to :math:`2\pi`\ , we could do the following.

   .. ipython:: python

    x = np.linspace(0., 2 * np.pi, 10)
    print(x)
    y = np.sin(x)
    print(y)

   In this case, ``x`` starts at zero and goes to :math:`2\pi` in 10 increments.
   Alternatively, if we wanted to specify the size of the increments for a new variable ``x2``, we could use the ``np.arange()`` function.

   .. ipython:: python

    x2 = np.arange(0.0, 2 * np.pi, 0.5)
    print(x2)

   In this case, ``x2`` starts at zero and goes to the largest value that is smaller than :math:`2\pi` by increments of 0.5.
   Both of these types of array options are useful in different situations.

10. Like normal variables, array variables can also be used for various mathematical operations.

    .. ipython:: python

        doublex = x * 2.0
        print(doublex)
    
11. In addition to the *attributes* we saw prevously for NumPy ``ndarray`` variables, there are also many *methods* that are part of the ``ndarray`` data type.

    .. ipython:: python

        print(x.mean())
        print(doublex.mean())

    No surprises here.
    If we think of *variables* as nouns, *methods* are verbs, actions for the variable values.

    .. note::

        When using methods, you always include the parentheses ``()`` to be clear we are referring to a *method* and not an *attribute*.
        There are many other useful ``ndarray`` methods, such as ``x.min()``, ``x.max()``, and ``x.std()`` (standard deviation).

12. *Methods* can also act on part of an array.

    .. ipython:: python

        print(x[0:5].mean())

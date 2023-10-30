Exercise 1
==========

.. attention::

    Please note that **we provide assignment feedback only for students enrolled in the course at the University of Helsinki**.

.. admonition:: Start your assignment

    You can start working on your copy of Exercise 1 by `accepting the GitHub Classroom assignment <https://classroom.github.com/a/tfPC1AvA>`__.

    **Exercise 1 is due by the start of class in week 2**.

You can also take a look at the open course copy of `Exercise 1 in the course GitHub repository <https://github.com/IntroQG-2023/Exercise-1>`__ (does not require logging in).
Note that you should not try to make changes to this copy of the exercise, but rather only to the copy available via GitHub Classroom.

General hints for Exercise 1
----------------------------

Sigma notation
~~~~~~~~~~~~~~

*Sigma notation* is used to indicate values that should be added together or summed.
It is a shorthand notation to indicate the sum of :math:`N` values, where each value in the set can be represented by the subscript :math:`i`.
The example below shows how sigma notation works,

.. math:: \sum_{i=1}^{N} x_{i} = \sum_{i} x_{i} = \sum x_{i} = x_{1} + x_{2} + ... + x_{N}

which is the sum of :math:`N` values, each indicated by :math:`x`.

As you can see, the complete form explicitly states the starting and ending values for the sum (:math:`i = 1` and :math:`N`), but often these values are not written as it can be assumed that all :math:`N` values will be summed.

Problem 1
---------

Function docstrings
~~~~~~~~~~~~~~~~~~~

Say what?
Yeah, a docstring.
*Docstrings* are short texts that describe a function, script, or other code component in Python.
They are generally given on the line below the ``def`` statement for a function or at the top of a script file, and start and end with triple quotes ``"""``.
The docstring is helpful because you can use the ``help()`` function to find out how a function works, for example.
Since we're using Jupyter notebooks, we can take advantage of a special ``?`` feature that can provide even a bit more information than the ``help()`` function.
To use the ``?``, you simply add it after the name of some function, variable, or other object.
Let's check out some examples.

.. ipython:: python

    def square(number):
        """Returns the supplied number squared"""
        return number * number
    
    number = 4
    print(number, "squared is", square(number))

.. ipython:: python

    help(square)

.. ipython:: python

    square?

Problem 2
---------

Skipping rows reading data with Pandas
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Remember that if you give a number to ``skiprows`` in the ``pd.read_csv()`` function (e.g., ``pd.read_csv(fp, skiprows = 0)``) the number you give is **the number of rows you want to skip** when reading the file.
Instead, if you give a list (e.g., ``pd.read_csv(fp, skiprows = [0])``), Pandas will skip the rows with that index (i.e., the first row).

Dropping NA values
~~~~~~~~~~~~~~~~~~

When using the Pandas ``.dropna()`` function there are two options to drop ``NaN`` values from a DataFrame.
Let's assume we have a DataFrame called ``df``. We could drop our ``NaN`` values from all rows where the column ``df['Column name']`` has a ``NaN`` value by typing either

.. code:: python

    df = df.dropna(subset='Column name'])

or

.. code:: python

    df.dropna(subset='Column name'], inplace=True)

In the first case we're assigning the output from the ``.dropna()`` function to the DataFrame ``df`` directly, whereas in the second case we include the ``inplace`` parameter to drop the ``NaN`` values and update the ``df`` DataFrame at the same time.
Both do the same thing, but the second option might produce warnings about the index values.

Volcanoes above sea level
~~~~~~~~~~~~~~~~~~~~~~~~~

Just a note: I assumed elevations above sea level were **greater than or equal to 0.0** in Part 2 of Problem 2, so you should use that same condition for selecting elevations to remove.

Column name in Part 5
~~~~~~~~~~~~~~~~~~~~~

Another note: I assumed that the column name for where you would store your mean elevations is ``'Mean elevation'``, so you should use that when creating your DataFrame.

Problem 3
---------

Plotting a horizontal line (for the bar plots)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

We haven't seen how to add a horizontal line to a plot, so I hope the explanation below will help.
Basically, we want to add a line that goes across the bar plot and shows the mean elevation of all volcanoes globally.
We can do this using the ``ax.plot()`` function and giving two pairs of points (x:sub:1, y:sub:1) and (x:sub:2, y:sub:2) - the end points of the line.
To do this in  ``ax.plot()`` we give two lists. The first is the list of x points ``[x1, x2]``, and the second the y points ``[y1, y2]``.
Putting this together you should do something like:

.. code:: python

    ax.plot([x1, x2], [y1, y2])

where you replace the ``x1``, ``x2``, ``y1``, and ``y2`` values with numbers for the end points of the line.
In this case, the x value should start at -1 and end at 20 (going across all the 19 bars), and the y values should both be the global mean elevation.
You calculated that earlier. For the formatting, you can refer to the earlier lesson on plotting with Pandas.

Creating arrays of numbers between two values
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

As you may recall from `this week's lesson on using NumPy <../../notebooks/L1/numpy.ipynb>`__, we can use NumPy to create NumPy arrays of values between a starting and ending value.
Consider the simple example below using the ``np.linspace()`` method:

.. ipython:: python

    import numpy as np

    number_array = np.linspace(0.0, 8000.0, 9)
    print(number_array)

Here you can see we start with ``0.0``, end with ``8000.0``, and produce an array of ``9`` equally spaced values that includes the starting and ending numbers.
This is probably the easiest way to create most arrays of this kind.

Gaussian troubles
~~~~~~~~~~~~~~~~~

For the Gaussian function there are a few things to keep in mind:

1. It should take a mean value, a standard deviation, and a list or array of values at which the Gaussian probability should be calculated.
   At each elevation the probability should be calculated and stored.

2. To be more clear about part 1, it would be a good suggestion to create an empty NumPy array where the probability values can be stored.
   It should be the same size as ``x_array`` within your ``gaussian()`` function, and one way to create such an array would be using the ``np.zeros()`` function. ``np.zeros()`` will create an array with values equal to zero of whatever size you like.
   For example, if we want 10 values, we could do the following:

    .. ipython:: python

        import numpy as np
        array = np.zeros(10)
        print(array)

   This would yield an array of 10 values equal to zero.
   If you use the length of ``x_array`` you could create a similar array in your function to ensure that for each value in ``x_array`` you will have a corresponding probability.
   Another possibility for doing the same kind of thing can be found in the hint below about adding values to a list.

3. If you create an array of zeros as suggested in 2, then you should also use a ``for`` loop to go over the length of your values in ``x_array`` and calculate the probability at each value in ``x_array``.
   This means using a ``for`` loop of the form below:

    .. code:: python

        for i in range(len(x_array)):
            prob[i] = 1 + 1 / x_array[i]

   where you should replace the equation above with the actual equation for calculating the normal distribution.
   The key thing is using the index value ``i`` to be able to calculate the probability at each value in ``x_array``.

Creating and appending to lists
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

This is mostly a reminder of something we had seen `back in Lesson 2 of the Geo-Python course <https://geo-python-site.readthedocs.io/en/latest/notebooks/L2/Python-basic-elements.html#lists-and-indices>`__.
When you are calculating the values for the normal distribution, one option is to create an empty list and append the calculated values to the list, calculating one value for each age in an age list/array from 0-8000m by 8 m.
In the example below we can do the same kind of thing with elevations from 0-8000m in steps of 1000m, assuming you have created the NumPy array ``number_array`` as shown the previous hint:

.. ipython:: python

    dummyList = []
    for i in range(len(number_array)):
        dummyList.append(number_array[i]**2.0)
    print(dummyList)

As you can see, ``dummyList`` ends up with the same number of values as ``number_array`` (see previous hint), with one calculated value in ``dummyList`` for each corresponding value in ``number_array``.

Adding columns to a DataFrame
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Just a reminder that you can add new values to a pandas DataFrame by assiging values to a new column name in the DataFrame.
If we consider the example below for a DataFrame called ``df`` you could add a new column called 'Column 2' by typing

.. code:: python

    df['Column 2'] = 1.0

This would create a new column called ``'Column 2'`` that has all of the rows equal to 1.0.

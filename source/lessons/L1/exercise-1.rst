Exercise 1
==========

.. warning::

    Please note that **we provide assignment feedback only for students enrolled in the course at the University of Helsinki**.

.. admonition:: Start your assignment

    You can start working on your copy of Exercise 1 by `accepting the GitHub Classroom assignment <https://classroom.github.com/a/sCW1JuDZ>`__.

    **Exercise 1 is due by the start of lecture in week 2**.

You can also take a look at the open course copy of `Exercise 1 in the course GitHub repository <https://github.com/IntroQG-2018/Exercise-1>`__ (does not require logging in).
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

Example plot for Problem 2
~~~~~~~~~~~~~~~~~~~~~~~~~~

Below is an example of the type of plot you should produce for Problem 2.

.. figure:: img/Gaussian-plot.png
    :width: 600 px
    :align: center
    :alt: Gaussian plot for Problem 2

    Example Gaussian plot for Problem 2.

Creating arrays of numbers between two values
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

As you may recall from `this week's lesson on using NumPy <intro-numpy.html#useful-functions>`__, we can use NumPy to create NumPy arrays of values between a starting and ending value.
Consider the simple example below using the `np.linspace()` method:

.. ipython:: python

    import numpy as np
    numberArray = np.linspace(0.0, 1.0, 11)
    print(numberArray)

Here you can see we start with ``0.0``, end with ``1.0``, and produce an array of ``11`` equally spaced values that includes the starting and ending numbers.
This is probably the easiest way to create most arrays of this kind.

Creating and appending to lists
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

This is mostly a reminder of something we had seen `back in Lesson 2 of the Geo-Python part of the course <https://geo-python.github.io/2017/lessons/L2/python-basic-elements.html#lists-and-indices>`__.
When you are calculating the values for the normal distribution, one option is to create an empty list and append the calculated values to the list, calculating one value for each age in an age list/array from 0-10 Ma by 0.1 Ma.
You can see an example below, which assumes you have created the NumPy array `numberArray` as shown the previous hint:

.. ipython:: python

    dummyList = []
    for i in range(len(numberArray)):
        dummyList.append(numberArray[i]**2.0)
    print(dummyList)

As you can see, ``dummyList`` ends up with the same number of values as ``numberArray`` (see previous hint), with one calculated value in ``dummyList`` for each corresponding value in ``numberArray``.

Plotting similar items using a for loop
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

One part of Problem 2 is to create a plot in which a line, some points, and an error bar should all be plotted for each sample and using the same color.
This is an excellent opportunity to use a ``for`` loop to create the plots, rather than listing similar pieces of code to create each set of plotted items.
The main reason for using a ``for`` loop is that it becomes easy to modify the format of all of the plots at the same time by making changes within the ``for`` loop, but it does take some preparation.
For example, it is a good idea to create a list for the sample names and for the plot item colors before the ``for`` loop so that you can use those values within the ``for`` loop.
Consider the example below.

.. ipython:: python
   :suppress:

    import matplotlib.pyplot as plt

.. ipython:: python

    # Make some useful lists
    sampleNames = ['sample1', 'sample2', 'sample3']
    colors = ['black', 'blue', 'red']
    for i in range(len(sampleNames)):
        x = np.random.random(10)   # Random data to plot
        y = np.sin(x)
        x2 = np.random.random(10)  # More random data to plot
        y2 = np.cos(x2)
        e = np.random.random(10)
        plt.plot(x, y, 'o', color = colors[i], label = sampleNames[i])   # Make plots
        plt.errorbar(x2, y2, xerr=e, fmt='s', color=colors[i])

As you can see, with a bit of planning you can use a ``for`` loop for your plotting in Problem 2, which is suggested if you're able to get it working.
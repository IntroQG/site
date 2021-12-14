Exercise 7
==========

.. warning::

Exercise 7 is not yet ready. A link to the exercise will be posted when it is.

.. 
    .. attention::

        Please note that **we provide assignment feedback only for students enrolled in the course at the University of Helsinki**.

    .. admonition:: Start your assignment

        You can start working on your copy of Exercise 7 by `accepting the GitHub Classroom assignment <https://classroom.github.com/a/h-6idxvo>`__.

        **Exercise 7 is due by the end of the day on Tuesday, December 17**.

    You can also take a look at the open course copy of `Exercise 7 in the course GitHub repository <https://github.com/IntroQG-2019/Exercise-7>`__ (does not require logging in).
    Note that you should not try to make changes to this copy of the exercise, but rather only to the copy available via GitHub Classroom.

Hints for Exercise 7
--------------------

Comparing a single predicted age to multiple measured ages
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

As mentioned in Part 2 of Problem 1, you need to calculate a goodness of fit for a set of measured ages and only a single predicted age.
One simple solution for this is to use the ``np.ones()`` function to create an array of ones of the same length as the number of measured ages and then multiply that array by the predicted age. This will produce an array of the same length as the measured age array with each item in the array equal to the predicted age.
See below for an example.

.. ipython:: python

    import numpy as np
    
    predicted_age = 5.1
    measured_ages = np.array([4.2, 4.3, 7.5, 3.5, 6.4, 6.5])
    
    # Create array of ones
    predicted_ages = np.ones(len(measured_ages)) * predicted_age
    
    print(predicted_ages)

Plotting predicted ages as horizontal lines
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

I suggest that you add horizontal lines to your plots of the thermochronometer data to show the predicted ages you calculate.
If you have the latitude values in your ``data`` DataFrame as ``data['Lat']`` you can plot a predicted age ``predicted_age`` as a black horizontal line as follows:

.. code-block:: python

    ax2.plot([data['Lat'].min(), data['Lat'].max()], [predicted_age, predicted_age], 'k-')

This will create a horizontal line from the minimum latitude to the maximum latitude with a vertical-axis value of ``predicted_age``.
The "trick" here is to put Python lists into the ``ax2.plot()`` command instead of list or array variables.
Lists are values separated by commas within square brackets (``[ ]``), and here we just give 2 values in each list for the *x* and *y* points that define the ends of the line.

.. 
    Problem 1, Part 3
    ~~~~~~~~~~~~~~~~~

    When calculating the misfit inside the ``age_predict`` function, notice that the values used as standard deviation should be filtered to have the same indices as the ``ahe_data`` data series, for example.
    If the ``ahe_data`` series looks something like this (left side is indices and right side is some data values):

    .. code-block:: none

        0 NaN
        1 20
        2 7
        3 NaN

    we would want to filter it to only have values and no ``NaN`` values:

    .. code-block:: none

        1 20
        2 7

    Correspondingly, the original error/standard deviation might look like this:

    .. code-block:: none

        0 100
        1 40
        2 9
        3 NaN

    If you now filter the error/standard deviation by dropping the ``NaN`` values (like you did with ``ahe_data``), the shape of ``ahe_data`` and the error/standard deviation will be different.
    This is because the error/standard deviation would also have a value at index 0 while the ``ahe_data`` does not.
    Thus, you have to filter the error/standard deviation to have the same indices as the filtered ``ahe_data``:

    .. code-block:: none

        1 40
        2 9

    We have done this kind of thing back in `Lesson 5 of the Geo-Python course <https://geo-python.github.io/site/notebooks/L5/processing-data-with-pandas.html>`_.

    Problem 1, Part 4 example plot
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

    Below is an example of a plot that is similar to what you should produce in Part 4 of Problem 1.

    .. figure:: img/Ex7-plot1.png
        :width: 500 px
        :align: center
        :alt: Example plot from Problem 1, Part 4

        Figure 1. An example plot similar to that you should produce in Problem 1, Part 4.

    Plotting predicted ages as horizontal lines
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

    I suggest that you add horizontal lines to your plots of the thermochronometer data to show the predicted ages you calculate.
    If you have read in the data file with the values for latitude stored in a variable ``latitude``, you can plot a predicted age ``predictedAge`` as a black horizontal line as follows:

    .. code-block:: python

        ax2.plot([data['Lat'].min(), data['Lat'].max()], [predicted_age, predicted_age], 'k-')

    This will create a horizontal line from the minimum latitude to the maximum latitude with a vertical-axis value of ``predicted_age``.
    The "trick" here is to put Python lists into the ``ax2.plot()`` command instead of list or array variables.
    Lists are values separated by commas within square brackets (``[ ]``), and here we just give 2 values in each list for the *x* and *y* points that define the ends of the line.
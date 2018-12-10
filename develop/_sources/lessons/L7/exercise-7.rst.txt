Exercise 7
==========

.. warning::

    Please note that **we provide assignment feedback only for students enrolled in the course at the University of Helsinki**.

.. admonition:: Start your assignment

    You can start working on your copy of Exercise 7 by `accepting the GitHub Classroom assignment <https://classroom.github.com/a/Ftu9pJXD>`__.

    **Exercise 7 is due by 12:00 on Monday 17.12**.

You can also take a look at the open course copy of `Exercise 7 in the course GitHub repository <https://github.com/IntroQG-2018/Exercise-7>`__ (does not require logging in).
Note that you should not try to make changes to this copy of the exercise, but rather only to the copy available via GitHub Classroom.

Hints for Exercise 7
--------------------

Removing ``-9999`` age values
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

As noted in Exercise 7, there are some missing data values for different thermochronometers where an age was not calculated for a given sample.
These values are indicated with ``-9999`` in the data file, and in order to calculate the reduced chi-squared misfit those ``-9999`` values need to be removed.
Below is an example of how to remove missing data values indicated with ``-9999``.

.. code-block:: ipython

    import numpy as np
    ages = np.array([1.0, 3.2, -9999, 4.2, -9999, -9999])
    errors = np.array([0.2, 0.9, 0.0, 0.3, 0.0, 0.0])

    ages_clean = ages[ages > 0.0]
    errors_clean = errors[ages > 0.0]
    print(ages_clean)
    print(errors_clean)

Plotting predicted ages as horizontal lines
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

I suggest that you add horizontal lines to your plots of the thermochronometer data to show the predicted ages you calculate.
If you have read in the data file with the values for latitude stored in a variable ``latitude``, you can plot a predicted age ``predictedAge`` as a black horizontal line as follows:

.. code:: python

    plt.plot([min(latitude), max(latitude)], [predictedAge, predictedAge], 'k-')
    plt.show()

This will create a horizontal line from the minimum ``latitude`` to the maximum ``latitude`` with a vertical value of ``predictedAge``.
The "trick" here is to put Python lists into the ``plt.plot()`` command instead of list or array variables.
Lists are values separated by commas within square brackets (``[ ]``), and here we just give 2 values in each list for the *x* and *y* points that define the ends of the line.
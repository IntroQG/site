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
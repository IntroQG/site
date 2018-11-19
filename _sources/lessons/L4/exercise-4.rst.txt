Exercise 4
==========

.. warning::

    Please note that **we provide assignment feedback only for students enrolled in the course at the University of Helsinki**.

.. admonition:: Start your assignment

    You can start working on your copy of Exercise 4 by `accepting the GitHub Classroom assignment <https://classroom.github.com/a/VC4rUjbW>`__.

    **Exercise 4 is due by the start of lecture in week 5**.

You can also take a look at the open course copy of `Exercise 4 in the course GitHub repository <https://github.com/IntroQG-2018/Exercise-4>`__ (does not require logging in).
Note that you should not try to make changes to this copy of the exercise, but rather only to the copy available via GitHub Classroom.

Hints for Exercise 4
--------------------

General hints
~~~~~~~~~~~~~

Calculating the topography slope
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

In order to be able to calculate stream-power erosion from a river channel profile we first need to estimate both the upstream drainage area and calculate the topographic slope.
You have hopefully already calculated the drainage area using your ``drainage_area`` function, and now we can turn our focus to the slope.
Calculating the slope is not necessarily a difficult thing with NumPy, but you do need to be careful how you do it.

The first thing to recognize is that the slope at any given point will simply be the difference in elevation between that point and a neighboring point divided by the horizontal distance between them.
In other words, slope is the change in elevation divided by the change in horizontal distance.
You could calculate this by hand, but NumPy has some useful functions for this, including ``np.diff``.
Below, you can see how to use ``np.diff`` to calculate the channel slope.

.. code-block:: python

    slope = np.diff(topography)/dx           # Calculate profile slopes; diff() calculates elevation difference between points
    slope = abs(slope)                       # Take the absolute value of the slope to avoid direction issues
    slope = np.append(slope, slope[-1])      # Append one extra slope value to be same size as the area array

Above, we use ``np.diff`` to calculate the slope, but since it calculates the difference between the elevation of points, it returns one less value than in ``topography``.
To account for this, we add one extra value back to the ``slope`` variable.

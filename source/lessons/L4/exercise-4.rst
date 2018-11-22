Exercise 4
==========

.. warning::

    Please note that **we provide assignment feedback only for students enrolled in the course at the University of Helsinki**.

.. admonition:: Start your assignment

    You can start working on your copy of Exercise 4 by `accepting the GitHub Classroom assignment <https://classroom.github.com/a/VC4rUjbW>`__.

    **Exercise 4 is due by the start of lecture in week 5**.

You can also take a look at the open course copy of `Exercise 4 in the course GitHub repository <https://github.com/IntroQG-2018/Exercise-4>`__ (does not require logging in).
Note that you should not try to make changes to this copy of the exercise, but rather only to the copy available via GitHub Classroom.

.. admonition:: Start your assignment

    You can start working on your copy of Exercise 4.1 by `accepting the GitHub Classroom assignment <https://classroom.github.com/a/3dMNDiZq>`__.

    **Exercise 4.1 is due by the start of lecture in week 5**.

You can also take a look at the open course copy of `Exercise 4.1 in the course GitHub repository <https://github.com/IntroQG-2018/Exercise-4.1>`__ (does not require logging in).
Note that you should not try to make changes to this copy of the exercise, but rather only to the copy available via GitHub Classroom.

Hints for Exercise 4
--------------------

P1: Calculating dh/dt (see also hint below)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

For the ``calculate_dhdt`` function, you should ensure the value you return is negative.
The stream-power itself can be positive, but returning a negative value ensures the stream-power equation acts to lower the topography.

.. math::

    \begin{equation}
      \Large
       \frac{dh}{dt} = -K A^{m} S^{n}
    \end{equation}

P1: Calculating the topography slope
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

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

P2: Passing/returning figure objects
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

When using functions with figures, it is necessary to pass the information about the figure as parameters when using any functions that update the figure.
In other words, the functions will need things related to the figure in order to update them.
For example, in the ``update_figure`` function you can see that ``ax1`` and ``plot1`` are given as values in the list of parameters used by the function.
This is because the ``ax1`` and ``plot1`` data are updated within the function (as are ``time_text`` and ``elev_text``).
Likewise, the updated ``plot1`` object is returned.

When you add the second subplot, you will need to be sure that any function that need the plot information has that information passed in and/or returned.
This means you need to modify not only the ``update_figure`` function, but also make sure you update the list of variables passed to that function where the matplotlib ``animation.FuncAnimation`` function is called near the end of the ``stream_power`` function.
Specifically, anything you pass into ``update_figure`` will need to be in the list of variables ``fargs`` in the call of ``animation.FuncAnimation``.
``fargs`` is the list of varaibles used by the function ``update_figure``.

P2: Units
~~~~~~~~~

Just as a reminder, the values for ``dhdt`` are m/a and the plot should have units of mm/a.
We also want the erosion rate to plot as a positive value, rather than the negative values that ``dhdt`` has in the code.
You can compensate for these differences when setting the *y* data to plot.

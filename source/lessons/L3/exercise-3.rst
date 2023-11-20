Exercise 3
==========

.. attention::

    Please note that **we provide assignment feedback only for students enrolled in the course at the University of Helsinki**.

.. admonition:: Start your assignment

    You can start working on your copy of Exercise 3 by `accepting the GitHub Classroom assignment <https://classroom.github.com/a/18g_tSii>`__.

    **Exercise 3 is due by 14:15 on Monday November 20th 2023**.

You can also take a look at the open course copy of `Exercise 3 in the course GitHub repository <https://github.com/introqg-2023/Exercise-3>`__ (does not require logging in).
Note that you should not try to make changes to this copy of the exercise, but rather only to the copy available via GitHub Classroom.

Hints for Exercise 3
--------------------

Using a log plot axis
~~~~~~~~~~~~~~~~~~~~~

In order to use log scaling on a Matplotlib plot, you need to specify that a given plot axis should have a log scale. You can do this for the x-axis, for example, by adding the following after the `ax.plot()` function call:

.. code:: python

    ax.set_xscale("log")

Some useful constants
~~~~~~~~~~~~~~~~~~~~~

In creating the ``dodson()`` function, you can assume the value for the gas constant is :math:`R = 8.314` and that the number of days in a year is 365.25.
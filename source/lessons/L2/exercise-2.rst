Exercise 2
==========

.. attention::

    Please note that **we provide assignment feedback only for students enrolled in the course at the University of Helsinki**.

.. admonition:: Start your assignment

    You can start working on your copy of Exercise 2 by `accepting the GitHub Classroom assignment <https://classroom.github.com/a/XW5JpwP_>`__.

    **Exercise 2 is due by the start of lecture in week 3**.

You can also take a look at the open course copy of `Exercise 2 in the course GitHub repository <https://github.com/IntroQG-2023/Exercise-2>`__ (does not require logging in).
Note that you should not try to make changes to this copy of the exercise, but rather only to the copy available via GitHub Classroom.

General hints for Exercise 2
----------------------------

Formatting numbers in Python
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

As you may have noticed, the numbers you add to your plot using the ``ax.text()`` command look kind of ugly with so many digits after the decimal place.
You can make them look a bit nicer by rounding them when you call the ``plt.text()`` command.
This is called *formatted output* in Python, and it is nice not only because it can make your text easier to read, but also because the formatting does not change the data values themselves, only their display.
In the Geo-Python course we `introduced using f-strings for formatting text and numbers <https://geo-python-site.readthedocs.io/en/latest/notebooks/L2/Python-basic-elements.html#working-with-text-and-numbers>`__.
We recommend that you use this approach with your plots to ensure the text formatting looks nice and the number of digits after the decimal place is limited to 1-3, depending on the formatted value.

You can find much more about string formatting on the `Python documentation site <https://docs.python.org/3/library/string.html#format-string-syntax>`__.

Hints for Problem 1
-------------------

Returning more than one value
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

In your ``linregress()`` function you are asked to calculate the *y*-intercept ``A`` and slope ``B`` for the best-fit line to your temperature data.
Ideally, this means you would have your function return more than just one value.
This is no problem, but perhaps an example of the syntax would be helpful.
Let's have a look.

.. ipython:: python

    def name_split(name):
        """Splits a full name into first and last names."""
        first = name.split()[0]
        last = name.split()[1]
        return first,last

    boatname = "Boaty McBoatface"
    firstname, lastname = name_split(boatname)
    print(f"The first name is {firstname} and the last name is {lastname}.")

Plotting your regression lines
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The ``plt.plot()`` function requires at least one pair of (*x*, *y*) values to be able to plot a line.
With your regression lines you have calculated the *y*-intercept ``A`` and slope ``B``, which can be used to plot a line as long as you have some range of values for ``x``.
If you use the range of years for the ``x`` values, you can then use your `A` and `B` values along with those ``x`` values in the equation of a line to be able to plot the line location for the age range in the plot.

Calculating summations
~~~~~~~~~~~~~~~~~~~~~~
There are several ways in which you can calculate a summation in Python, including using the ``sum()`` function.
However, it is often better to use a ``for`` loop for summing values, particularly if you are calculating values and don't want to store their results separately from the summation.
Perhaps an example will make this clear:

.. ipython:: python

    numbers = [1,2,3,4,5,6,7,8,9]
    squaredSum = 0       # Set sum equal to zero before starting for loop
    for i in range(len(numbers)):
        squaredSum = squaredSum + numbers[i]**2.0
    squaredSum
    sum(numbers)         # Sum of the list values
    sum(numbers)**2.0    # Square of the sum of the list values, not equal to squaredSum

The point here is that in order to calculate the sum of each value squared in a Python list, you need to calculate the square of each value in the list separately, then add those together.
You could save the squared values in a separate list and use the ``sum()`` function, but in this case it may be more clear and logical to use a ``for`` loop.
You may want to do something similar for calculating your chi squared values.

Shorthand Python notation for adding to a variable
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
It is extremely common to need to add to an existing variable in computer programs.
Because of this, there is a shorthand notation in Python for just this kind of operation.

.. ipython:: python

    number = 34
    number = number + 5
    print(number)
    number += 5
    print(number)

As you can see, ``number += 5`` is exactly the same as ``number = number + 5``, just written a bit more compactly.
As you might imagine, there are similar shortcuts for subtracting (``-=``), multiplying (``*=``), and dividing (``/=``).
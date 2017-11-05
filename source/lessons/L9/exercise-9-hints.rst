Hints for Exercise 9
====================

Problem 1
---------

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
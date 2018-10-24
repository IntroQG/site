Least squares regressions
=========================
*Least squares regressions* are a common way of determining whether two values are *linearly* related to one an other.
In other words, this is a method to determine whether a line is a good "fit" to some measured values.
Not all data should be expected to be fit well by a line, but linear regressions are a powerful method for determining cases when two variables are directly related to one another.
A common example might be the temperature at which magma erupts versus the SiO\ :sub:`2` content of the magma, as shown below in Figure 2.

.. figure:: img/magma-temps.png
    :width: 500 px
    :align: center
    :alt: Magma temperatures

    Figure 2. Eruption temperatures of magmas as a function of their SiO\ :sub:`2` content with a linear regression line.
    Source: Figure 16.1 from `McKillup and Dyar, 2010 <http://www.cambridge.org/fi/academic/subjects/earth-and-environmental-science/earth-science-general-interest/geostatistics-explained-introductory-guide-earth-scientists?format=HB&isbn=9780521763226>`__.

The general idea with calculating a *linear regression* is that we want to find the equation of a line that best fits some *x-y* data, such as temperature and SiO\ :sub:`2` content in the example above.
To do this, we first need to recall the equation for a line:

.. math::

    y = A + B x

where :math:`x` and :math:`y` are the coordinates of the data points, :math:`A` is the :math:`y`\ -intercept, and :math:`B` is the slope of the line.

Thus, in order to calculate a "best fit" line to some data, we will need to determine the values of the constants :math:`A` and :math:`B`.
Consider the example below in which :math:`A` and :math:`B` are known.
If we make the rather common assumption that the uncertainties for the values on the :math:`x` axis are negligible compared to the uncertainties along the :math:`y` axis, we can say:

.. math::

    (\mathrm{true~value~of~}y_{i}) = A + B x_{i}

Thus, it is possible to find the value of :math:`y` for two linearly related values when :math:`A` and :math:`B` are known.

Finding the values of :math:`A` and :math:`B` then for the case of a linear regression to some *x-y* data is fairly straightforward, though it does involve a bit of algebra.
For our purposes, I'll refer you to Chapter 8 of `Taylor, 1997 <http://www.uscibooks.com/taylornb.htm>`__ for a complete derivation of how to find :math:`A` and :math:`B`, and simply present the relevant equations below.
The value of the :math:`y` intercept can be found using:

.. math::

    A = \frac{\sum{x^{2}} \sum{y} - \sum{x} \sum{xy}}{\Delta}

:math:`x` is :math:`i`\ th data point plotted on the :math:`x`\ -axis, :math:`y` is the :math:`i`\ th data point plotted on the :math:`y`\ -axis, and :math:`\Delta` is defined below.

The line slope can be found using:

.. math::

    B = \frac{N \sum{xy} - \sum{x} \sum {y}}{\Delta}

where :math:`N` is the number of values in the regression.

And the value of :math:`\Delta` is:

.. math::

    \Delta = N \sum{x^{2}} - \left( \sum{x} \right)^{2}

With the equations above, you are now able to calculate *unweighted* regression lines, the best-fit lines to some *x-y* data in which the uncertainties in the measurements are not considered to influence the fit of the line.
It is also possible to fit regression lines that consider the variable uncertainties in the data, referred to as *weighted regressions*, but will will not consider that type of regression for the time being.
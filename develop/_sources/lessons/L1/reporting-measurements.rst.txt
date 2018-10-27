Reporting measurements
======================

How best to report a measured value may vary considerably depending on who you ask, their scientific field, and many other factors.
Here, we'll keep it simply and present how measured values should be reported in general, and how to calculate various important related values.

Reporting a measured value
--------------------------

In general, measured values should be reported as the best estimate of the true value plus/minus the uncertainty in the measurement.
Mathematically, this means we should state

.. math:: x_{\mathrm{best}} \pm \delta x.

which is the general form for reporting a measurement where :math:`x_{\mathrm{best}}` is the best estimate of the true value and :math:`\delta x` is the uncertainty.

For a given set of measurements, a common estimate of the true value is to take the *average* or *mean* value of the set of measurements.
The *mean* is simply the sum of the measured values divided by the number of measurements.
We can calculate the mean :math:`\bar{x}` as

.. math:: \bar{x} = \frac{\sum x_{i}}{N}

which is the mean value of a set of :math:`N` measurements, :math:`x_{i}`.
If you are unfamiliar with sigma notation, you may want to check out the :doc:`hints for this week's exercise <exercise-1>`.

How much each measurement differs from the mean can be found by determining the *deviation* or *residual* of each measurement.
The *deviation* :math:`d_{i}` for a given measurement is simply the signed difference between the measured and mean values, or

.. math:: d_{i} = x_{i} - \bar{x}.

A small *deviation* indicates precise measurments.
Given the calculation for the *mean*, it might be tempting to estimate the deviation for :math:`N` measurements by calculating its average.
The problem is that the average deviation is exactly zero, so another estimate is needed.
The *standard deviation* :math:`\sigma_{x}` is simply the square root of the sum of the deviations squared and divided by the number of measurements, or

.. math:: \sigma_{x} = \sqrt{\frac{1}{N} \sum \left(x_{i} - \bar{x} \right)^{2}}.

The *standard deviation* provides a good estimate of how much a given measurement might be expected to differ from the *mean*.
One issue with the equation listed above is that it does not work well in the extreme case of a single measurement.
In that case, the calculated standard deviation is exactly zero, suggesting we have no uncertainty for a single measurement.
As a result, the alternative form of the standard deviation given below is often used,

.. math:: \sigma_{x} = \sqrt{\frac{1}{N-1} \sum \left(x_{i} - \bar{x} \right)^{2}}.

In this version of the standard deviation equation, the standard deviation is undefined for a single measurement (due to dividing by zero).

An alternative measure of uncertainty that is sometimes used is the *standard deviation of the mean* or *standard error*.
The *standard error* :math:`\sigma_{\bar{x}}` is simply the standard deviation divided by the square root of the number of samples.

.. math:: \sigma_{\bar{x}} = \frac{\sigma_{x}}{\sqrt{N}}

As you can see, the standard error will decrease as the number of samples :math:`N` increases.

Standard deviation versus standard error
----------------------------------------

So, these two things both can be used to represent uncertainty in a measurement, but how do they differ?
The *standard deviation* measures how widely scattered measurements are from the *mean*.
The *standard error* measures the uncertainty in the estimate of the *mean*.
In general, it is preferable to report the *standard error*, but with two such similar terms it is important **no matter what** to be clear whether you are reporting the standard deviation or standard error.
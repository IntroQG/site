.. Introduction to Quantitative Geology documentation master file, created by
   sphinx-quickstart on Mon Oct 22 15:25:21 2018.

Introduction to Quantitative Geology 2019
=========================================

Welcome to the website for the Introduction to Quantitative Geology course at the University of Helsinki.
This course introduces students to how to study a handful of geoscientific problems using a bit of geology, math, and Python programming.
The course is aimed at advanced undergraduate students in geology or geophysics.
This course is designed to follow the `Geo-Python course <https://geo-python.github.io>`_, which focuses exclusively on programming in Python.
More info on this course can be found below.
Enjoy!

Course goals
------------

This course aims to:

1. Introduce students to applications of the Python programming language to modelling Earth science data/processes
2. Develop basic programming skills through analysis of fundamental equations used in the Earth sciences
3. Present some established techniques for comparing geologic data to numerical model predictions

Course format
-------------

The majority of this course will be spent in front of a computer working on exercises related to geological processes and data.
Physical class meetings will be mainly in traditional lecture classrooms, but you are expected to work on your own laptop or find a suitable substitute.
The lecture rooms will have power available.

Typical exercises will involve a brief introduction followed by topical computer-based tasks.
At the end of the exercises, you may be asked to submit answers to relevant questions, some related plots, and/or Python codes you have written or used.
You are encouraged to discuss and work together with other students on the laboratory exercises, however the laboratory summary write-ups that you submit must be completed individually and must clearly reflect your own work.

Schedule
--------

+--------+------------+-----------------------------------+
| Class  | Date       | Theme                             |
+========+============+===================================+
| **1**  | 28.10.2019 | Basic geostatistics               |
|        |            |                                   |
+--------+------------+-----------------------------------+
| **2**  |  4.11.2019 | Comparing predictions to          |
|        |            | observed values                   |
+--------+------------+-----------------------------------+
| **3**  | 11.11.2019 | The diffusion equation;           |
|        |            | Hillslope sediment transport      |
+--------+------------+-----------------------------------+
| **4**  | 18.11.2019 | Fluvial incision and rock uplift: |
|        |            | The advection/wave equation       |
+--------+------------+-----------------------------------+
| **5**  | 25.11.2019 | Viscous flow of rock and ice:     |
|        |            | (Non-)Newtonian flow equations    |
+--------+------------+-----------------------------------+
| **6**  |  2.12.2019 | Quantitative thermochronology:    |
|        |            | Linking ages to processes I       |
+--------+------------+-----------------------------------+
| **7**  |  9.12.2019 | Quantitative thermochronology:    |
|        |            | Linking ages to processes II      |
+--------+------------+-----------------------------------+

For the schedule in Period I, please check the `Geo-Python website <https://geo-python.github.io>`_.

|

.. admonition:: Open access!

    Materials for this course are **open to everyone**.
    In combination with the `Geo-Python course <https://geo-python.github.io>`_, we aim to share our knowledge and help people start doing reproducible science more efficiently using Python.

.. admonition:: Teachers: Use our stuff!

    If you would like to use these materials as part of your own teaching or develop them further, we strongly support that.
    Please have a look at :doc:`our licensing terms<general-info/licensing>` about how to do so.

.. toctree::
    :maxdepth: 2
    :caption: Course information
   
    general-info/course-details
    general-info/grading
    general-info/licensing

.. toctree::
    :maxdepth: 2
    :caption: Lesson 1

    lessons/L1/overview
    notebooks/L1/numpy.ipynb
    lessons/L1/basic-terms
    lessons/L1/uncertainty
    lessons/L1/reporting-measurements
    lessons/L1/normal-distribution
    lessons/L1/exercise-1

    .. toctree::
        :maxdepth: 2
        :caption: Lesson 2

        lessons/L2/overview
        lessons/L2/goodness-of-fit
        lessons/L2/least-squares
        lessons/L2/exercise-2

    .. toctree::
        :maxdepth: 2
        :caption: Lesson 3

        lessons/L3/overview
        lessons/L3/solving-diffusion
        lessons/L3/exercise-3

    .. toctree::
        :maxdepth: 2
        :caption: Lesson 4

        lessons/L4/overview
        lessons/L4/solving-advection
        lessons/L4/exercise-4

    .. toctree::
        :maxdepth: 2
        :caption: Lesson 5

        lessons/L5/overview
        lessons/L5/viscous-flows
        lessons/L5/exercise-5-theory
        lessons/L5/exercise-5

    .. toctree::
        :maxdepth: 2
        :caption: Lesson 6

        lessons/L6/overview
        lessons/L6/exercise-6

    .. toctree::
        :maxdepth: 2
        :caption: Lesson 7

        lessons/L7/overview
        lessons/L7/exercise-7

    .. toctree::
        :maxdepth: 2
        :caption: Final report

        final-paper/final-report
        final-paper/articles
        final-paper/template

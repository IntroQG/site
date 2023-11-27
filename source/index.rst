.. Introduction to Quantitative Geology documentation master file, created by
   sphinx-quickstart on Mon Oct 22 15:25:21 2018.

.. image:: img/banner/introqg-landing-page-2023.png
   :class: dark-light

Welcome to IntroQG 2023!
========================

Welcome to the website for the Introduction to Quantitative Geology course at the University of Helsinki.
This course introduces students to how to study a handful of geoscientific problems using a bit of geology, math, and Python programming.
The course is aimed at master's students in geology or geophysics.
This course is designed to build upon the `Geo-Python course <https://geo-python.github.io>`_, which focuses exclusively on programming in Python.
More info on this course can be found below.

Course goals
------------

This course aims to:

1. Introduce students to applications of the Python programming language to modelling Earth science data/processes
2. Develop basic programming skills through analysis of fundamental equations used in the Earth sciences
3. Present some common techniques for comparing geologic data to numerical model predictions

Course format
-------------

The majority of this course will be spent in front of a computer working on exercises related to geological processes and data.
Class meetings in 2023 will be on site and you will be expected to work on your own computer or find a suitable substitute.
Exercise support sessions will also be held on site.

Typical exercises will involve a brief introduction followed by topical computer-based tasks.
At the end of the exercises, you may be asked to submit answers to relevant questions, some related plots, and/or Python codes you have written or used.
You are encouraged to discuss and work together with other students on the laboratory exercises, however the laboratory summary write-ups that you submit must be completed individually and must clearly reflect your own work.

Schedule
--------

+--------+------------+-----------------------------------+
| Class  | Date       | Theme                             |
+========+============+===================================+
| **1**  | 30.10.2023 | Basic geostatistics               |
+--------+------------+-----------------------------------+
| **2**  |  6.11.2023 | Comparing predictions to          |
|        |            | observations                      |
+--------+------------+-----------------------------------+
| **3**  | 13.11.2023 | The diffusion equation            |
+--------+------------+-----------------------------------+
| **4**  | 20.11.2023 | The advection/wave equation       |
+--------+------------+-----------------------------------+
| **5**  | 27.11.2023 | Viscous flow equations            |
+--------+------------+-----------------------------------+
| **6**  |  4.12.2023 | Building a numerical model        |
+--------+------------+-----------------------------------+
| **7**  | 11.12.2023 | Quantitative thermochronology     |
+--------+------------+-----------------------------------+

For the details about what was covered in the Geo-Python course in Period I, please check the `Geo-Python website <https://geo-python.github.io>`_.

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
    general-info/ai-tools
    general-info/licensing

.. toctree::
    :maxdepth: 2
    :caption: Lesson 1

    lessons/L1/overview
    lessons/L1/course-environment
    notebooks/L1/numpy.ipynb
    notebooks/L1/basic-terms.ipynb
    notebooks/L1/uncertainty.ipynb
    notebooks/L1/reporting-measurements.ipynb
    notebooks/L1/normal-distribution.ipynb
    lessons/L1/exercise-1

.. toctree::
    :maxdepth: 2
    :caption: Lesson 2

    lessons/L2/overview
    notebooks/L2/least-squares.ipynb
    notebooks/L2/linear-correlation.ipynb
    notebooks/L2/goodness-of-fit.ipynb
    lessons/L2/exercise-2

.. toctree::
    :maxdepth: 2
    :caption: Lesson 3

    lessons/L3/overview
    lessons/L3/natural-diffusion
    lessons/L3/thermochron-basics
    notebooks/L3/python-concepts.ipynb
    lessons/L3/exercise-3

.. toctree::
    :maxdepth: 2
    :caption: Lesson 4

    lessons/L4/overview
    lessons/L4/geological-advection
    lessons/L4/solving-advection
    lessons/L4/advection-heat-transfer
    lessons/L4/exercise-4

.. toctree::
    :maxdepth: 2
    :caption: Lesson 5

    lessons/L5/overview
    lessons/L5/rocks-ice-viscous-fluids
    lessons/L5/viscous-flows
    lessons/L5/exercise-5-theory
    lessons/L5/exercise-5

.. 
    .. toctree::
        :maxdepth: 2
        :caption: Lesson 6

        lessons/L6/overview
        lessons/L6/low-t-thermochron
        lessons/L6/intro-to-exercises
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

.. toctree::
    :maxdepth: 2
    :caption: Resources

    general-info/glossary
    general-info/installing-miniconda

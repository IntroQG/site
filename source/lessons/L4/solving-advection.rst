Solving the advection-diffusion equation
========================================

Goals of these notes
--------------------

- Introduce the advection-diffusion equation for heat transfer
- Find solution for steady-state heat transfer with a constant surface heat flux
- Find solution for steady-state heat transfer with a constant basal temperature

Advection-diffusion equation in 1D
----------------------------------

To show how the advection equation can be solved, we're actually going to look at a combination of the advection and diffusion equations applied to heat transfer.
We're looking at heat transfer in part because many solutions exist to the heat transfer equations in 1D, with math that is fairly straightforward to follow.
Heat conduction is a diffusion process caused by interactions of atoms or molecules, which can be simulated using the diffusion equation we saw in last week's lesson.
Heat advection refers to the heat transferred by physical movement of materials, such rock displaced by slip on faults.
Fault movement, for instance, may bring relatively warm rocks up toward the surface where they can cool by heat conduction.
Advection and conduction are also commonly applied to simulate 1D heat transfer by geological processes such as sedimentation and erosion.

Mathematically, we'll start with our two equations: (1) The diffusion (heat conduction) equation without heat production and (2) the advection equation, then combine them.

.. math::

    \frac{\partial T}{\partial t} &= \kappa \frac{\partial^{2} T}{\partial z^{2}} && \hspace{2cm}\text{Diffusion}\\
    \frac{\partial T}{\partial t} &= v_{z}\frac{\partial T}{\partial z} && \hspace{2cm}\text{Advection}\\
    \frac{\partial T}{\partial t} &= \kappa \frac{\partial^{2} T}{\partial z^{2}} + v_{z}\frac{\partial T}{\partial z} && \hspace{2cm}\text{Diffusion & Advection}

In steady state, we can ignore the transient term :math:`\partial T/\partial t`\ , so

.. math::

    \require{cancel}
    \cancelto{0}{\frac{\partial T}{\partial t}} &= \kappa \frac{\partial^{2} T}{\partial z^{2}} + v_{z}\frac{\partial T}{\partial z} && \hspace{2cm}\text{ Steady-state advection-diffusion equation}\\
    \frac{\partial^{2} T}{\partial z^{2}} &= -\frac{v_{z}}{\kappa} \frac{\partial T}{\partial z} && \hspace{2cm}\text{ Rearranged}\\

Another way to write the previous equation is

.. math::

    \frac{\partial}{\partial z} \left(\frac{\partial T}{\partial z}\right) = -\frac{v_{z}}{\kappa} \frac{\partial T}{\partial z}

In this case, we can make some substitutions and find something quite useful.
Assume :math:`f = \partial T/\partial z` and :math:`c = v_{z}/\kappa`\ .
With this, we can say :math:`f'(z) = -c f(z)`\ .
This is a common form of differential equation with a solution :math:`f(z) = f(0) \mathrm{e}^{cz}`\ .
Thus, in terms of our equation we can say

.. math::

    \frac{\partial T}{\partial z} = \left. -\frac{\partial T}{\partial z} \right|_{(z = 0)} \mathrm{e}^{-(v_{z} z/\kappa)}

Solutions to the steady-state advection-diffusion equation
----------------------------------------------------------

Constant gradient :math:`g` at surface
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The simplest solution to the previous equation is to assume a constant temperature gradient :math:`g` at :math:`z=0`\ .

.. math::

    \frac{\partial T}{\partial z} &= \left. -\frac{\partial T}{\partial z} \right|_{(z = 0)} \mathrm{e}^{-(v_{z} z/\kappa)} = g \mathrm{e}^{-(v_{z} z/\kappa)}\\
    \int \frac{\partial T}{\partial z} &= g \int \mathrm{e}^{-(v_{z} z/\kappa)} && \hspace{2cm}\text{Integrate}\\
    T(z) &= -\frac{g \kappa}{v_{z}} \mathrm{e}^{-(v_{z} z/\kappa)} + c_{1}

Assume :math:`T(0) = 0`\ .

.. math::

    T(z) &= -\frac{g \kappa}{v_{z}} \mathrm{e}^{-(v_{z} z/\kappa)} + c_{1}\\
    0 &= -\frac{g \kappa}{v_{z}} \cancelto{1}{\mathrm{e}^{-(v_{z} 0/\kappa)}} + c_{1}\\
    c_{1} &= \frac{g \kappa}{v_{z}}

Thus, we find

.. math::

    T(z) &= -\frac{g \kappa}{v_{z}} \mathrm{e}^{-(v_{z} z/\kappa)} + \frac{g \kappa}{v_{z}}\\
    T(z) &= \frac{g \kappa}{v_{z}}\left(1 - \mathrm{e}^{-(v_{z} z/\kappa)} \right) && \hspace{2cm}\text{Rearranged}

.. admonition:: Question

    What should our temperature profile look like?

    At constant :math:`z`\ , what happens to :math:`T` if :math:`v_{z}` gets large?

Constant temperature :math:`T_{L}` at :math:`z=L`
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

A more useful boundary condition is to assume :math:`T(L) = T_{L}`\ .
We won't show the how to solve things with this boundary condition, but in this case

.. math::

    T(z) = T_{L} \left( \frac{1 - \mathrm{e}^{-(v_z z / \kappa})}{1 - \mathrm{e}^{-(v_z L / \kappa})} \right)

The Peclet number
-----------------

The Peclet number is a useful value for estimating the relative influence of advective versus diffusive heat transfer processes.

.. math::

    \mathrm{Pe} = \frac{v_{z}L}{\kappa}

Where :math:`\kappa` is a parameter known as the *thermal diffusivity*.
:math:`\kappa` is the rock thermal conductivity :math:`k` divided by the product of the density :math:`\rho` and heat capacity :math:`c_{\mathrm{p}}`\ , or :math:`\kappa = k / (\rho c_{\mathrm{p}})`\ .

.. admonition:: Question

    If a typical rock thermal diffusivity is :math:`\kappa = 10^{-6}` and typical continental crust is 35 km thick, how fast does it need to erode for advection exceed the effects of diffusion?

    How would this be different for erosion of the entire lithosphere?

Advection-diffusion equation take-home messages
-----------------------------------------------

- Math gets a bit more complex, even for the 'simplest' cases; Often need numerical methods for more complex geometries
- Behavior of the equation is strongly controlled by the boundary conditions
- Even these simple equations can be quite useful. Advection can be a significant influence on the thermal field and these simple calculations allow you to estimate when it is a factor and its magnitude of influence.

Caveats
-------

- Steady-state
- 1-D
- Constants assumed to be constant :)
- No heat production
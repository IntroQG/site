Solving the diffusion equation
==============================

Goals
-----

- Introduce the diffusion equation
- Find a solution for steady-state hillslope diffusion

General requirements - diffusion
--------------------------------
The diffusion equation has two general requirements: Transport/transfer proportional to gradient and conservation of mass/energy.
We expect some form of flux :math:`\propto` gradient.

Hillslope transport
-------------------
Consider a cross-section through a hillslope where the drainage divide (ridge crest) is at :math:`x=0` and the river that defines the minimum elevation is at :math:`x=L`.
Assume the elevation of the river is equal to zero with respect to the :math:`y` axis.

Transfer proportional to gradient
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
In lecture we saw that

.. math::

    q = -D \frac{\partial C_{\mathrm{A}}}{\partial x}

In our case, we can say

.. math::

    q = -\rho \kappa \frac{\partial h}{\partial x}

- :math:`q`\ : Sediment flux per unit length; mass flux [:math:`M/L/T`]
- :math:`\rho`\ : bulk sediment density
- :math:`\kappa`\ : Sediment diffusivity [:math:`L^{2}/T`]
- :math:`h`\ : Elevation
- :math:`x`\ : Distance from divide

Mass conservation
~~~~~~~~~~~~~~~~~
In our example in lecture we saw that

.. math::

    \frac{\partial C_{\mathrm{A}}}{\partial t} = -\frac{\partial q}{\partial x}

Here, we assume any change in flux results in a change in elevation.
Consider a simple example of more material entering than leaving.
Mathematically, change in elevation is equal to the change in flux per unit length divided by the bulk density.

.. math::

    \frac{\partial h}{\partial t} = -\frac{1}{\rho} \frac{\partial q}{\partial x}

An alternative is to move :math:`\rho` to the other side.

Diffusion equation for hillslope transport
------------------------------------------
We can now substitute the equations above into the other.
If we assume :math:`\rho` is constant, they cancel and we are left with the "classical" diffusion equation.

.. math::

    \frac{\partial h}{\partial t} = \kappa \frac{\partial^{2} h}{\partial x^{2}}

Solving the diffusion equation in steady state
----------------------------------------------

General scenario
~~~~~~~~~~~~~~~~
Assume a landscape is being uplifted at a rate :math:`U` and a river is incising at the same rate, but opposite direction at :math:`x=L`\ .

.. math::

    \frac{\partial h}{\partial t} = \kappa \frac{\partial^{2} h}{\partial x^{2}} + U

We assume we are at a steady state, so :math:`\partial h/\partial t = 0`\ .

.. math::

    0 = \kappa \frac{\partial^{2} h}{\partial x^{2}} + U

At this point, since we only have derivatives with respect to :math:`x` we can say

.. math::

    0 = \kappa \frac{d^{2} h}{d x^{2}} + U

Now, we can put the constants on one side:

.. math::

    \frac{d^{2} h}{d x^{2}} = -\frac{U}{\kappa }

At this point, we are ready to solve the equation for :math:`h(x)` by integrating twice.
First integration:

.. math::

    \int \frac{d^{2} h}{d x^{2}}dx &= -\frac{U}{\kappa} \int dx\\
    \frac{d h}{d x} &= -\frac{U}{\kappa}x + c_{1}

Now we simply integrate a second time:

.. math::

    \int \frac{d h}{d x}dx &= -\frac{U}{\kappa} \int x dx + c_{1} \int dx\\
    h(x) &= -\frac{U}{2 \kappa}x^{2} + c_{1}x + c_{2}

Applying the boundary conditions
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
At this point, we have a solution, but in order to use it we will need to apply boundary conditions.
The boundary conditions will allow us to solve for :math:`c_{1}` and :math:`c_{2}`\ , the two constants of integration.
Typically, this means that we have certain places in the solution domain where we know either the value of :math:`h(x)` or the value of its first derivative :math:`h'(x) = \frac{dh}{dx}`\ , the slope.

.. attention::

    For the hillslope cross-section, are there any places where we might claim to know :math:`h(x)` or :math:`h'(x)`\ ?

Finding integration constant 1
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
To get this, need value of :math:`d h/d x` at one end of the slope.
The divide is a good choice, slope there must be 0.

.. math::

    \left|\frac{d h}{d x}\right|_{x=0} = 0

Plug that value in to the earlier equation for :math:`d h / d x` and we find :math:`c_{1} = 0`.

Finding integration constant 2
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
We know that :math:`h(L) = 0`\ , so we plug that in.

.. math::

    h(x) &= -\frac{U}{2 \kappa}x^{2} + c_{2}\\
    0 &= -\frac{U}{2 \kappa}L^{2} + c_{2}\\
    c_{2} &= \frac{U}{2 \kappa}L^{2}

Plug the value for :math:`c_{2}` in and we find.

.. math::

    h(x) &= -\frac{U}{2 \kappa}x^{2} + \frac{U}{2 \kappa}L^{2}\\
    h(x) &= \frac{U}{2 \kappa}\left(L^{2} - x^{2} \right)

.. attention::

    - Looking at our equation for :math:`h(x)`, what should our hillslope look like?
    - How with the geometry of the hillslope change with the different variables?

Features of our predictive model
--------------------------------
Relief: :math:`R = \frac{U L^{2}}{2 \kappa}`\ .
Relief is the difference in the elevation at the drainage divide (:math:`h(0)`\ ) and the river (:math:`h(L)`\ ).

Max slope: :math:`|\frac{\partial h}{\partial x}|_{\mathrm{max}} = \frac{U L}{\kappa}` (slope at :math:`x = L`\ )

Time constant: :math:`\tau = L^{2}/\kappa` (time required for response to change)
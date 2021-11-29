Viscous flow down an incline
============================

Goals
-----

- Present the equations of linear viscous flow down an inclined plane

Linear viscous flow
-------------------

.. figure:: img/Allen_fig_4-12a.png
    :width: 600px
    :align: center
    :alt: Viscous flow down an incline

    Figure 1. Viscous flow down an incline

Shear stress in the fluid
~~~~~~~~~~~~~~~~~~~~~~~~~

For a fluid flowing down an inclined slope, the change in potential energy per unit area of the contact surface along some length of the slope :math:`\delta x` is

.. math::

    \begin{align}
        \Delta E_{\mathrm{P}} &= \rho g h \delta z\\
        &= \rho g h (\bar{u} S)
    \end{align}

where :math:`\Delta E_{\mathrm{P}}` is the change in potential energy,
:math:`\rho` is the fluid density,
:math:`g` is the acceleration due to gravity,
:math:`h` is the thickness of the flow,
:math:`\delta z` is the elevation change over the distance :math:`x`\ ,
:math:`\bar{u}` is the average flow velocity, and
:math:`S` is the slope of the incline.

.. figure:: img/Allen_fig_4-12b.png
    :width: 600px
    :align: center
    :alt: Viscous flow down an incline

    Figure 2. Viscous flow down an incline

The downslope component of the gravity force on the flow is thus :math:`\rho g h S`\ , which must be opposed by the drag force at the base of the flow :math:`\tau_{0}`\ .
Thus, we can say

.. math::

    \tau_{0} = \rho g h S

We can also calculate the shear stress for any position :math:`z` above the base of the flow, which is a function of the thickness of the overlying fluid :math:`(h - z)`

.. math::

    \begin{align}
        \tau_{z} &= \rho g S (h - z) && \text{Since we know that }\tau_{0} = \rho g h S\\
        \tau_{z} &= \tau_{0} \left( 1 - \frac{z}{h} \right)
    \end{align}

.. attention::

    What does this suggest about the shear strength as a function of depth in the fluid?

Linking to viscous flow
~~~~~~~~~~~~~~~~~~~~~~~

For a laminar flow, we know :math:`\tau = \eta du/dz`\ , so we can rewrite the resistance equation as

.. math::

    \begin{align}
        \tau_{z} &= \eta \frac{du}{dz}\\
        \tau_{z} &= \rho g S (h - z)\\
        \eta \frac{du}{dz} &= \rho g S (h - z)\\
        \frac{du}{dz} &= \frac{\rho g S (h - z)}{\eta}\\
        \frac{du}{dz} &= \frac{\rho g S}{\eta} (h - z)
    \end{align}

If we integrate this equation with respect to :math:`z`\ , we find

.. math::

    \begin{align}
        \int \frac{du}{dz} &= \frac{\rho g S}{\eta} \int (h - z)\\
        u &= \frac{\rho g S}{\eta} \left(zh - \frac{z^{2}}{2} \right) + c_{1}
    \end{align}

If we assume the flow velocity :math:`u = 0` at :math:`z = 0` (the base of the flow), the constant :math:`c_{1} = 0`\ , so we are left with

.. math::

    u = \frac{\rho g S}{\eta} \left(zh - \frac{z^{2}}{2} \right)

.. attention::

    - What would the velocity profile look like in this flow?
    - Where is the maximum velocity?
    - What happens if the viscosity decreases? Slope increases? Thickness increases?

Viscous flow take-home messages
-------------------------------

- The flow is a balance between the gravitational force on the fluid and resistance (drag) at the base
- The flow velocity increases following a parabolic geometry from :math:`u = 0` at the base to :math:`\frac{\rho g S}{\eta} \frac{z^{2}}{2}`

Caveats
-------

- Steady-state
- 1-D
- Laminar flow!
- Constants are constant
- No temperature dependence
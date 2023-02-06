%% For Sections A and B, provide a one-page maximum summary of the project,
%% including background and objectives and replace text here. For Section C, two
%% pages are allowed.

%% 
%% The NEAMS program is supporting the development of a novel system code (SAM)
%% and a computational fluid dynamics (Nek5000) tool. Nek5000 provides
%% capabilities for high resolution Direct Numerical Simulation (DNS), Large Eddy
%% Simulation (LES), Unsteady Reynolds Average Navier-Stokes (URANS) simulation,
%% and reduced order distributed resistance modeling. SAM is an advanced system
%% code that leverages the MOOSE framework to deliver advances in software
%% environment, and design, numerical methods, and physical models. It features
%% flexible multi-scale multi-physics integration with other high-fidelity tools,
%% including Nek5000.
%% 
%% To support the development of these tools, contributions are sought for
%% modeling the mixing and thermal stratification in large volumes (e.g., upper
%% plena) and its influence on natural circulation flow rates and decay heat
%% removal in a pool type LMRs. In fact, mixing and heat transfer in reactor
%% inlet/outlet plena can be modeled reasonably accurately using various CFD
%% techniques but the computational resource requirements make the use of such
%% high fidelity approaches prohibitively expensive within the context of system
%% analyses. With the system analysis codes, the reactor plena are typically
%% modeled as perfectly mixed 0-D volumes, often leading to inaccurate estimate of
%% the natural circulation flow rates for decay heat removal.  
%% 
%% This call seeks the development of Reduced-order modeling (ROM) approaches to
%% be implemented in the System Analysis Module (SAM) to support conceptual design
%% studies and license applications. In order to generate the ROM, simulations
%% performed with high fidelity tools are strongly encouraged to obtain the
%% necessary data to mine. Techniques to construct the reduced order model may
%% involve POD [1], other structure recognition methods or machine learning.
%% Experimental contributions will not be considered, but coordination with
%% existing experimental efforts is encouraged. High-fidelity simulations
%% performed with Nek5000 will be primarily considered. 
%% 

LMR system analysis depends critically on low-cost simulations of the upper
plenum response, which is frequently modeled as a perfectly-mixed 0-D volume.
Mixing and thermal stratification can be simulated reasonably well with current
high-fidelity approaches on DOE's leadership computing facilities but this
approach is generally too expensive for design and analysis purposes.  The
objective of this project is to develop reduced-order models (ROMs) that will
improve the accuracy of LMR system-level analysis with low overhead.  These new
models will systematically mine high-fidelity DNS, LES, or uRANS simulations to
constuct low-order dynamical systems that can be couple with a systems analysis
code such as the SAM code being developed under NEAMS.
  The ROM will be developed as a new software module in the NEAMS-supported
Nek5000 thermal-fluids code.

Novel contributions of the proposed ROM include a new constraint-based POD
formulation that keeps the dynamical system close to the originating attractor
and allows accurate tracking of the dynamics for relatively low-dimensional
(and, hence, low-cost) models; an $h$-greedy training strategy that also leads
to reduced model system sizes; and effective dual-norm-based error estimates
that {\em inexpensively} indicate errors in the reduced model.  The concepts
will be extended from their current state to nuclear-engineering-relevant
applications and will be integrated into the Nek5000 repository with a focus
on ease-of-use both in Nek5000 and in SAM.

Verification and validation are built into the project.  The development effort
follows systematically from 2D convective transport to 3D turbulence, 3D
convective transport, and culminates in buoyancy-driven 3D turbulent flow in an
upper plenum model.  At each stage, canonical fluid/thermal examples will be
explored to validate both the Nek5000 simulation and the success of the ROM in
reproducing quantities of interest.
   In parallel to the ROM development effort, a series of highly detailed LES 
simulations of flow in an upper plenum model will be performed and validated
so that useful and tractable quantities of interest may be identified early
in the project.   These simulations will provide useful data in their
own right and results will be made available to the scientific community.


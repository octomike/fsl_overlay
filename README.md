fsl_overlay
===========

torque related stuff for some FSL (FMRIB's Software Library) stuff


To use this we added a global directory /usr/share/fsl/overlay.
In the source dir you can then simply:

    make deploy

and then to set up FSL with the overlay:

    source /etc/fsl/fsl.sh
    export PATH=/usr/share/fsl/overlay:$PATH

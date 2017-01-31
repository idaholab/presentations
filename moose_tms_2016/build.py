#!/usr/bin/env python
import os, sys

# Determine the MOOSE Directory
MOOSE_PYTHON_DIR = None
if os.environ.has_key('MOOSE_DIR'):
  MOOSE_PYTHON_DIR = os.path.join(os.environ['MOOSE_DIR'], 'python')
else:
  MOOSE_PYTHON_DIR = os.path.join(os.environ['HOME'], 'projects', 'moose', 'python')

# Add moose/python to path
if os.path.exists(MOOSE_PYTHON_DIR):
  sys.path.append(MOOSE_PYTHON_DIR)
else:
  raise Exception('Unable to locate moose/python directory, please set MOOSE_DIR environment variable')

# Requires ~/projects/moose/python to be added to PYTHONPATH
from PresentationBuilder import base
import mooseutils

# Function for building MOOSE workshop
def workshop():

  # List of input files to compile into a single presentation
  files = ['input/cover.i',
           'input/overview.i',
           'input/example01.i',
           'input/moose_object.i',
           'input/input_parameters.i',
           'input/kernels.i',
           'input/example02.i',
           'input/mesh.i',
           'input/outputs.i',
           'input/bcs.i',
           'input/adapt.i',
           'input/coupling.i',
           'input/example03.i',
           'input/materials.i',
           'input/auxkernels.i',
           'input/auxvariables.i',
           'input/functions.i',
           'input/postprocessors.i',
           'input/executioners.i',
           'input/time_steppers.i',
           'input/ics.i',
           'input/multiapps.i',
           'input/transfers.i',
           'input/mesh_modifiers.i',
           'input/mooseapp.i',
           #'input/code_verification.i',
           #'input/preconditioning.i',
           #'input/debugging.i',
           #'input/vis_tools.i',
           #'input/testing.i',
           #'input/mesh_modifiers.i',
           'input/oversampling.i',
           'input/random.i',
           'input/action.i',
           'input/dirac.i',
           'input/scalar_kernels.i',
           'input/geom_search.i',
           'input/dampers.i',
           'input/dg.i',
           'input/user_objects.i',
           'input/restart.i'
           ]

  # Create the presentation containing the entire moose workshop
  print mooseutils.colorText('Building MOOSE Workshop', 'MAGENTA')
  merger = base.PresentationMerger('moose.i', files, style='inl', title="TMS2016 MOOSE/Phase-field Workshop")
  merger.write()


# MAIN
if __name__ == '__main__':
  workshop()

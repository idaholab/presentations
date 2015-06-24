#!/usr/bin/env python
import os, sys, argparse

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
import utils

# Function for building MOOSE workshop
def workshop(**kwargs):

  # List of input files to compile into a single presentation
  files = ['input/cover.i',
           'input/overview.i',
           'input/problem.i',
           'input/problem_details.i',
           'input/tutorial_summary.i',
           'input/step01.i', # Mesh, Outputs, Coordinate systems
           'input/fem.i',
           'input/step02.i', # MooseObject, validParams, MOOSE Types, Kernels
           'input/step03.i', # Materials
           'input/step04.i', # Aux Variables and Aux Kernels
           'input/step05.i', # Executioners, TimeSteppers, BoundaryConditions
           'input/step06.i', # Coupling, Functions
           'input/step07.i', # Adaptivity
           'input/step08.i', # Postprocessors
           'input/step09.i', # Solid Mechanics
           'input/mooseapp.i',
           'input/code_verification.i',
           'input/multiapps.i',
           'input/transfers.i',
           'input/preconditioning.i',
           'input/debugging.i',
           'input/vis_tools.i',
           'input/testing.i',
           'input/mesh_modifiers.i',
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

#           'input/ics.i',

  # Create the presentation containing the entire moose workshop
  print utils.colorText('Building MOOSE Workshop', 'MAGENTA')
  merger = base.PresentationMerger('moose.i', files, style='inl', title='MOOSE Workshop',
                                   format=kwargs.pop('format','remark'))
  merger.write()

# Function for building C++ slides
def cpp(**kwargs):
  print utils.colorText('Building C++ Presentation', 'MAGENTA')
  builder = base.PresentationBuilder('cpp.i', format=kwargs.pop('format','remark'))
  builder.write()


# MAIN
if __name__ == '__main__':

  # Create the argument parser
  parser = argparse.ArgumentParser(description='A wiki presentation builder')

  # Options for what presentation(s) to build
  parser.add_argument('--cpp', '-c', action='store_true', help='Build C++ presentation.')
  parser.add_argument('--workshop', '-w', action='store_true', help='Build MOOSE workshop presentation.')
  parser.parse_args('-cw'.split())

  # Select the output format
  parser.add_argument('--format', default='remark', type=str, help='Select the presentation format')
  args = parser.parse_args()

  # Set the presentation build flags, if no flags provided build both
  if not args.cpp and not args.workshop:
    args.cpp = True
    args.workshop = True

  # Build the presentations
  if args.workshop:
    workshop(form=args.format)
  if args.cpp:
    cpp(form=args.format)

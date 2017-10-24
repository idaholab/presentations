#!/usr/bin/python
import os, sys
import argparse

# Add the MOOSE python directory to the path
if os.environ.has_key('MOOSE_DIR'):
  MOOSE_PYTHON_DIR = os.path.join(os.environ['MOOSE_DIR'], 'python')
else:
  MOOSE_PYTHON_DIR = os.path.join(os.environ['HOME'], 'projects', 'moose', 'python')

if os.path.exists(MOOSE_PYTHON_DIR):
  sys.path.append(MOOSE_PYTHON_DIR)
else:
  raise Exception('Unable to locate moose/python directory, please set MOOSE_DIR environment variable.')

# Load the blaster package
BLASTER_DIR = os.path.abspath(os.path.join('..'))
if os.path.exists(BLASTER_DIR):
  sys.path.append(BLASTER_DIR)
else:
  raise Exception('Unable to locate presentation blaster package in', BLASTER_DIR, ', not sure how you did this.')

# Load the required moose/python packages
import blaster

if __name__ == '__main__':

  # Create the argument parser
  parser = argparse.ArgumentParser(description='A wiki presentation builder')
  parser.add_argument('input', type=str, help='Input file name')
  parser.add_argument('--format', '-f', type=str, default='remark', help='Select the presentation output format (remark | reveal)')
  args = parser.parse_args()

  # Build the presentation
  builder = blaster.base.PresentationBuilder(args.input, format=args.format)
  builder.write()

#!/usr/bin/python
from ..base import PresentationBuilder
import hit

##
# A class for merging presentation files into a single input file
class PresentationMerger(PresentationBuilder):
  def __init__(self, name, files, **kwargs):
    self._createMergedInputFile(name, files, **kwargs)
    PresentationBuilder.__init__(self, name, **kwargs)

  ##
  # Method for generating the merged input file (private)
  @staticmethod
  def _createMergedInputFile(name, files, **kwargs):
    style = kwargs.pop('style', 'inl')
    title = kwargs.pop('title', None)

    # Create the moose.i file for containing the entire moose workshop
    fid = open(name, 'w')

    # Add the root block
    fid.write('[presentation]\n')
    fid.write('  style = ' + style + '\n')

    if (title != None):
        fid.write('  title = "' + title + '"\n')

    # Add the blocks from the various input files
    for f in files:
      with open(f, "r") as input_file:
        root = hit.parse(f, input_file.read())
      presentation = root.find("presentation")
      for child in presentation.children(node_type=hit.NodeType.Section):
        fid.write(child.render(1) + '\n')

    # Close the block and file
    fid.write('[]\n')
    fid.close()

# Import the SlideSet base class
from CoverSet import CoverSet
from INLSetInterface import INLSetInterface

##
# A special set of slides for creating cover page and contents in INL presentation format
class INLCoverSet(CoverSet, INLSetInterface):

  ##
  # Valid parameters for the WikiSet class
  @staticmethod
  def validParams():
    params = CoverSet.validParams()
    params += INLSetInterface.validParams()
    return params

  ##
  # Performs INL slide parsing
  def _parseSlide(self, slide, raw):
    INLSetInterface.applySlideSettings(slide)
    CoverSet._parseSlide(self, slide, raw)

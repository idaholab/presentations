from DjangoWikiSet import DjangoWikiSet
from INLSetInterface import INLSetInterface

##
# A Django wiki set of slids formated in INL presentation style
class INLDjangoWikiSet(DjangoWikiSet, INLSetInterface):

  ##
  # Valid parameters for the WikiSet class
  @staticmethod
  def validParams():
    params = DjangoWikiSet.validParams()
    params += INLSetInterface.validParams()
    return params

  ##
  # Performs INL slide parsing
  def _parseSlide(self, slide, raw):
    INLSetInterface.applySlideSettings(slide)
    DjangoWikiSet._parseSlide(self, slide, raw)

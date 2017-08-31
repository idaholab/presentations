from FactorySystem import MooseObject

class PresentationObject(MooseObject):
    IS_PRESENTATION = True
    def __init__(self, *args, **kwargs):
        super(PresentationObject, self).__init__(*args, **kwargs)

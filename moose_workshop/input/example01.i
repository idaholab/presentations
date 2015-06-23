[presentation]
  style = 'inl'
  [./example01]
    type = INLDjangoWikiSet
    wiki = MooseExamples/Example_01
    contents = true
    contents_level = 2
    contents_title = 'Example 01 Contents'
    title = 'Example 1: As Simple As It Gets'

    [./Slides]
      [./moose]
        auto_title = False
        class = bottom
      [../]

      [./application-arch]
        auto_title = False
        class = bottom
      [../]
    [../]

    [./Images]
      align = 'center'
      [./12]
        width = '250px'
        show_caption = false
      [../]
      [./13]
        width = '375px'
        show_caption = false
      [../]
    [../]
  [../]
[]

[presentation]
  style = inl
  title = 'MOOSE C++'

  [./cpp_cover]
    title = 'C++ Fundamentals: What is needed for MOOSE'
    contents_title = 'C++ Fundamentals Contents'
    type = INLCoverSet
    contents = true
  [../]

  [./cpp_basics]
    type = INLDjangoWikiSet
    wiki = MooseTraining/CPP/Part1
    contents = true
  [../]

  [./cpp_scope]
    type = INLDjangoWikiSet
    wiki = MooseTraining/CPP/Part2
    contents = true
    contents_items_per_slide = 12
  [../]

  [./cpp_stl]
    type = INLDjangoWikiSet
    wiki = MooseTraining/CPP/Part3
    contents = true
  [../]

  [./cpp_classes]
    type = INLDjangoWikiSet
    wiki = MooseTraining/CPP/Part4
    contents = true
    contents_items_per_slide = 12
  [../]

  [./code_standards]
    type = INLDjangoWikiSet
    wiki = CodeStandards
    contents = true
  [../]
[]

[presentation]
  style = 'inl'
  title = 'Problem Overview'
  [./problem_cover]
    type = INLMergeCoverSet
    slide_sets = 'problem_overview problem_equations'
    title = 'Thermo-mechanical Darcy Flow: Problem Statement'
  [../]

  [./problem_overview]
    type = INLDjangoWikiSet
    wiki = 'MooseTutorials/DarcyThermoMechanical'
    active = 'overview-0 overview-1'
    use_wiki_title = False
  [../]

  [./problem_equations]
    type = INLDjangoWikiSet
    wiki = 'MooseTutorials/DarcyThermoMechanical/Problem'
    active = 'governing-equations'
    use_wiki_title = False
  [../]
[]

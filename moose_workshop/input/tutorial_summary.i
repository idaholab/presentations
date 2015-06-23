[presentation]
  style = 'inl'
  title = 'Overview of Tutorial Steps'

  [./tutorial_summary_cover]
    type = INLMergeCoverSet
    slide_sets = 'step01_summary step02_summary step03_summary
                  step04_summary step05_summary step06_summary
                  step07_summary step08_summary step09_summary
                  results_tease'
    title = 'Summary of Steps'
    contents = true
  [../]

  [./step01_summary]
    type = INLDjangoWikiSet
    wiki = 'MooseTutorials/DarcyThermoMechanical/Step01'
    use_wiki_title = False
    use_wiki_title_for_heading = True
    auto_insert_moose_wiki = False
    hide_wiki_link = True
    active = 'diffusion-0'
  [../]

  [./step02_summary]
    type = INLDjangoWikiSet
    wiki = 'MooseTutorials/DarcyThermoMechanical/Step02'
    use_wiki_title = False
    use_wiki_title_for_heading = True
    auto_insert_moose_wiki = False
    hide_wiki_link = True
    active = 'kernel-0'
  [../]

  [./step03_summary]
    type = INLDjangoWikiSet
    wiki = 'MooseTutorials/DarcyThermoMechanical/Step03'
    use_wiki_title = False
    use_wiki_title_for_heading = True
    auto_insert_moose_wiki = False
    hide_wiki_link = True
    active = 'material-0'
  [../]

  [./step04_summary]
    type = INLDjangoWikiSet
    wiki = 'MooseTutorials/DarcyThermoMechanical/Step04'
    use_wiki_title = False
    use_wiki_title_for_heading = True
    auto_insert_moose_wiki = False
    hide_wiki_link = True
    active = 'variable-0'
  [../]

  [./step05_summary]
    type = INLDjangoWikiSet
    wiki = 'MooseTutorials/DarcyThermoMechanical/Step05'
    use_wiki_title = False
    use_wiki_title_for_heading = True
    auto_insert_moose_wiki = False
    hide_wiki_link = True
    active = 'conduction-0'
  [../]

  [./step06_summary]
    type = INLDjangoWikiSet
    wiki = 'MooseTutorials/DarcyThermoMechanical/Step06'
    use_wiki_title = False
    use_wiki_title_for_heading = True
    auto_insert_moose_wiki = False
    hide_wiki_link = True
    active = 'coupling-0'
  [../]

  [./step07_summary]
    type = INLDjangoWikiSet
    wiki = 'MooseTutorials/DarcyThermoMechanical/Step07'
    use_wiki_title = False
    use_wiki_title_for_heading = True
    auto_insert_moose_wiki = False
    hide_wiki_link = True
    active = 'adaptivity-0'
  [../]

  [./step08_summary]
    type = INLDjangoWikiSet
    wiki = 'MooseTutorials/DarcyThermoMechanical/Step08'
    use_wiki_title = False
    use_wiki_title_for_heading = True
    auto_insert_moose_wiki = False
    hide_wiki_link = True
    active = 'postprocessors-0'
  [../]

  [./step09_summary]
    type = INLDjangoWikiSet
    wiki = 'MooseTutorials/DarcyThermoMechanical/Step09'
    use_wiki_title = False
    use_wiki_title_for_heading = True
    auto_insert_moose_wiki = False
    hide_wiki_link = True
    active = 'mechanics-0'
  [../]

  [./results_tease]
    type = INLFileSet
    file = input/results_tease.md
  [../]
[]

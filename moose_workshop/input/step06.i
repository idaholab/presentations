[presentation]
  style = inl
  title = 'Step06'
  [./step06]
    type = INLDjangoWikiSet
    wiki = MooseTutorials/DarcyThermoMechanical/Step06
    contents = true
    contents_level = 2
    insert_wiki_link = False
    use_wiki_title_for_heading = True
    contents_items_per_slide = 14
    inactive = 'example multiphysics-coupling-0 multiphysics-coupling-1 multiphysics-coupling-(steady-form)-0 example-13-output-0'
  [../]
  [./step06b]
    type = INLFileSet
    file = input/step06.md
  [../]
[]

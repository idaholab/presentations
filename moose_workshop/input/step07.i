[presentation]
  style = inl
  title = 'Step07'
  [./step07]
    type = INLDjangoWikiSet
    wiki = MooseTutorials/DarcyThermoMechanical/Step07
    contents = true
    contents_level = 2
    insert_wiki_link = False
    use_wiki_title_for_heading = True
    contents_items_per_slide = 14
    inactive = 'example-5'
  [../]

  [./step07c-d]
    type = INLFileSet
    file = input/step07.md
  [../]
[]

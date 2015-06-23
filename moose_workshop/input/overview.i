[presentation]
  style = 'inl'
  title = 'MOOSE Overview'
  [./overview_cover]
    title = 'MOOSE Overview'
    type = INLMergeCoverSet
    contents = true
    slide_sets = 'overview overview_papers'
  [../]

  [./overview]
    type = INLDjangoWikiSet
    wiki = MooseTraining/Overview
    non_ascii_warn = false
    inactive = 'solves-problems-that'
    use_wiki_title = False
  [../]

  [./overview_papers]
    type = INLDjangoWikiSet
    wiki = MoosePublications
    non_ascii_warn = false
    use_wiki_title = False
    use_wiki_title_for_heading = True
  [../]
[]

[presentation]
  style = inl
  title = MOOSE Workshop
  [./cover]
    type = 'INLCoverSet'
    title = 'MOOSE Workshop'
    contents = 'true'
  [../]
  [./overview_cover]
    title = 'MOOSE Overview'
    type = 'INLMergeCoverSet'
    contents = 'true'
    slide_sets = 'overview overview_papers'
  [../]
  [./overview]
    type = 'INLDjangoWikiSet'
    wiki = 'MooseTraining/Overview'
    non_ascii_warn = 'false'
    inactive = 'solves-problems-that'
    use_wiki_title = 'False'
  [../]
  [./overview_papers]
    type = 'INLDjangoWikiSet'
    wiki = 'MoosePublications'
    non_ascii_warn = 'false'
    use_wiki_title = 'False'
    use_wiki_title_for_heading = 'True'
  [../]
  [./problem_cover]
    type = 'INLMergeCoverSet'
    slide_sets = 'problem_overview problem_equations'
    title = 'Thermo-mechanical Darcy Flow: Problem Statement'
  [../]
  [./problem_overview]
    type = 'INLDjangoWikiSet'
    wiki = 'MooseTutorials/DarcyThermoMechanical'
    active = 'overview-0 overview-1'
    use_wiki_title = 'False'
  [../]
  [./problem_equations]
    type = 'INLDjangoWikiSet'
    wiki = 'MooseTutorials/DarcyThermoMechanical/Problem'
    active = 'governing-equations'
    use_wiki_title = 'False'
  [../]
  [./problem_details]
    type = 'INLDjangoWikiSet'
    wiki = 'MooseTutorials/DarcyThermoMechanical/Problem'
    inactive = 'governing-equations'
    title = 'Problem Details'
    contents = 'true'
    use_wiki_title = 'False'
  [../]
  [./tutorial_summary_cover]
    type = 'INLMergeCoverSet'
    slide_sets = 'step01_summary step02_summary step03_summary step04_summary step05_summary step06_summary step07_summary step08_summary step09_summary results_tease'
    title = 'Summary of Steps'
    contents = 'true'
  [../]
  [./step01_summary]
    type = 'INLDjangoWikiSet'
    wiki = 'MooseTutorials/DarcyThermoMechanical/Step01'
    use_wiki_title = 'False'
    use_wiki_title_for_heading = 'True'
    auto_insert_moose_wiki = 'False'
    hide_wiki_link = 'True'
    active = 'diffusion-0'
  [../]
  [./step02_summary]
    type = 'INLDjangoWikiSet'
    wiki = 'MooseTutorials/DarcyThermoMechanical/Step02'
    use_wiki_title = 'False'
    use_wiki_title_for_heading = 'True'
    auto_insert_moose_wiki = 'False'
    hide_wiki_link = 'True'
    active = 'kernel-0'
  [../]
  [./step03_summary]
    type = 'INLDjangoWikiSet'
    wiki = 'MooseTutorials/DarcyThermoMechanical/Step03'
    use_wiki_title = 'False'
    use_wiki_title_for_heading = 'True'
    auto_insert_moose_wiki = 'False'
    hide_wiki_link = 'True'
    active = 'material-0'
  [../]
  [./step04_summary]
    type = 'INLDjangoWikiSet'
    wiki = 'MooseTutorials/DarcyThermoMechanical/Step04'
    use_wiki_title = 'False'
    use_wiki_title_for_heading = 'True'
    auto_insert_moose_wiki = 'False'
    hide_wiki_link = 'True'
    active = 'variable-0'
  [../]
  [./step05_summary]
    type = 'INLDjangoWikiSet'
    wiki = 'MooseTutorials/DarcyThermoMechanical/Step05'
    use_wiki_title = 'False'
    use_wiki_title_for_heading = 'True'
    auto_insert_moose_wiki = 'False'
    hide_wiki_link = 'True'
    active = 'conduction-0'
  [../]
  [./step06_summary]
    type = 'INLDjangoWikiSet'
    wiki = 'MooseTutorials/DarcyThermoMechanical/Step06'
    use_wiki_title = 'False'
    use_wiki_title_for_heading = 'True'
    auto_insert_moose_wiki = 'False'
    hide_wiki_link = 'True'
    active = 'coupling-0'
  [../]
  [./step07_summary]
    type = 'INLDjangoWikiSet'
    wiki = 'MooseTutorials/DarcyThermoMechanical/Step07'
    use_wiki_title = 'False'
    use_wiki_title_for_heading = 'True'
    auto_insert_moose_wiki = 'False'
    hide_wiki_link = 'True'
    active = 'adaptivity-0'
  [../]
  [./step08_summary]
    type = 'INLDjangoWikiSet'
    wiki = 'MooseTutorials/DarcyThermoMechanical/Step08'
    use_wiki_title = 'False'
    use_wiki_title_for_heading = 'True'
    auto_insert_moose_wiki = 'False'
    hide_wiki_link = 'True'
    active = 'postprocessors-0'
  [../]
  [./step09_summary]
    type = 'INLDjangoWikiSet'
    wiki = 'MooseTutorials/DarcyThermoMechanical/Step09'
    use_wiki_title = 'False'
    use_wiki_title_for_heading = 'True'
    auto_insert_moose_wiki = 'False'
    hide_wiki_link = 'True'
    active = 'mechanics-0'
  [../]
  [./results_tease]
    type = 'INLFileSet'
    file = 'input/results_tease.md'
  [../]
  [./step01_diffusion]
    type = 'INLDjangoWikiSet'
    wiki = 'MooseTutorials/DarcyThermoMechanical/Step01'
    contents = 'true'
    contents_level = '2'
    contents_items_per_slide = '15'
    contents_title = 'Step 1 Contents'
    insert_wiki_link = 'False'
    use_wiki_title_for_heading = 'True'
    inactive = 'advanced-output-execution residual-output creating-custom-output basicoutput advancedoutput common output-names postprocessors'
    [./Images]
      [./177]
        show_caption = 'false'
      [../]
    [../]
  [../]
  [./fem_part1_principles]
    type = 'INLDjangoWikiSet'
    wiki = 'MooseTraining/FEM/Principles'
    contents = 'true'
  [../]
  [./fem_part2_shape]
    type = 'INLDjangoWikiSet'
    wiki = 'MooseTraining/FEM/ShapeFunctions'
    contents = 'true'
  [../]
  [./fem_part1_numerics]
    type = 'INLDjangoWikiSet'
    wiki = 'MooseTraining/FEM/NumericalImplementation'
    contents = 'true'
  [../]
  [./step02]
    type = 'INLDjangoWikiSet'
    wiki = 'MooseTutorials/DarcyThermoMechanical/Step02'
    contents = 'true'
    contents_level = '2'
    insert_wiki_link = 'False'
    use_wiki_title_for_heading = 'True'
    contents_items_per_slide = '14'
    inactive = 'adding-a-custom-kernel look-at-example-2 time-derivative'
  [../]
  [./step03]
    type = 'INLDjangoWikiSet'
    wiki = 'MooseTutorials/DarcyThermoMechanical/Step03'
    contents = 'true'
    contents_level = '2'
    insert_wiki_link = 'False'
    use_wiki_title_for_heading = 'True'
    contents_items_per_slide = '14'
    inactive = 'example-'
  [../]
  [./step04]
    type = 'INLDjangoWikiSet'
    wiki = 'MooseTutorials/DarcyThermoMechanical/Step04'
    contents = 'true'
    contents_level = '2'
    insert_wiki_link = 'False'
    use_wiki_title_for_heading = 'True'
    contents_items_per_slide = '14'
    inactive = 'example-'
  [../]
  [./step05]
    type = 'INLDjangoWikiSet'
    wiki = 'MooseTutorials/DarcyThermoMechanical/Step05'
    contents = 'true'
    contents_level = '2'
    insert_wiki_link = 'False'
    use_wiki_title_for_heading = 'True'
    contents_items_per_slide = '14'
    inactive = 'example eigenvalue coupleddirichletbc overview kernel-member-variables-(some) diffusion kernel-registration'
  [../]
  [./step06]
    type = 'INLDjangoWikiSet'
    wiki = 'MooseTutorials/DarcyThermoMechanical/Step06'
    contents = 'true'
    contents_level = '2'
    insert_wiki_link = 'False'
    use_wiki_title_for_heading = 'True'
    contents_items_per_slide = '14'
    inactive = 'example multiphysics-coupling-0 multiphysics-coupling-1 multiphysics-coupling-(steady-form)-0 example-13-output-0'
  [../]
  [./step06b]
    type = 'INLFileSet'
    file = 'input/step06.md'
  [../]
  [./step07]
    type = 'INLDjangoWikiSet'
    wiki = 'MooseTutorials/DarcyThermoMechanical/Step07'
    contents = 'true'
    contents_level = '2'
    insert_wiki_link = 'False'
    use_wiki_title_for_heading = 'True'
    contents_items_per_slide = '14'
    inactive = 'example-5'
  [../]
  [./step07_time_derivative]
    type = 'INLDjangoWikiSet'
    wiki = 'MooseSystems/Kernels'
    use_wiki_title = 'False'
    insert_wiki_link = 'False'
    active = 'time-derivative'
  [../]
  [./step07c-d]
    type = 'INLFileSet'
    file = 'input/step07.md'
  [../]
  [./step08]
    type = 'INLDjangoWikiSet'
    wiki = 'MooseTutorials/DarcyThermoMechanical/Step08'
    contents = 'true'
    contents_level = '2'
    insert_wiki_link = 'False'
    use_wiki_title_for_heading = 'True'
    contents_items_per_slide = '14'
    inactive = 'example'
  [../]
  [./step09]
    type = 'INLDjangoWikiSet'
    wiki = 'MooseTutorials/DarcyThermoMechanical/Step09'
    contents = 'true'
    contents_level = '2'
    insert_wiki_link = 'False'
    use_wiki_title_for_heading = 'True'
    contents_items_per_slide = '14'
    inactive = 'example'
  [../]
  [./step09_results]
    type = 'INLFileSet'
    file = 'input/step9.md'
  [../]
  [./mooseapp]
    type = 'INLDjangoWikiSet'
    wiki = 'MooseTraining/MooseApp'
    contents = 'true'
    contents_level = '2'
    title = 'MooseApp and main()'
  [../]
  [./multiapps]
    type = 'INLDjangoWikiSet'
    wiki = 'MooseSystems/MultiApps'
    contents = 'true'
    contents_level = '2'
    title = 'MultiApps (Advanced)'
    use_wiki_title_for_heading = 'true'
    insert_wiki_link = 'False'
  [../]
  [./transfers]
    type = 'INLDjangoWikiSet'
    wiki = 'MooseSystems/Transfers'
    contents = 'true'
    contents_level = '2'
    title = 'Transfers (Advanced)'
    use_wiki_title_for_heading = 'true'
    insert_wiki_link = 'False'
  [../]
  [./code_verification]
    type = 'INLDjangoWikiSet'
    wiki = 'MooseTraining/CodeVerification'
    contents = 'true'
    title = 'Code Verification using Method of Manufactured Solutions'
    [./Images]
      [./135]
        width = '250px'
      [../]
      [./136]
        width = '475px'
      [../]
    [../]
  [../]
  [./preconditioning]
    title = 'Preconditioning'
    type = 'INLDjangoWikiSet'
    wiki = 'MooseTraining/Preconditioning'
    contents = 'true'
    insert_wiki_link = 'False'
    use_wiki_title_for_heading = 'True'
  [../]
  [./debugging]
    type = 'INLDjangoWikiSet'
    wiki = 'MooseExamples/Example_21'
    contents = 'true'
    contents_level = '2'
    title = 'Debugging'
    use_wiki_title_for_heading = 'true'
    insert_wiki_link = 'False'
  [../]
  [./vistools]
    type = 'INLDjangoWikiSet'
    wiki = 'MooseTraining/VizTools'
    contents = 'true'
    contents_level = '2'
    title = 'Visualization Tools'
  [../]
  [./testing]
    type = 'INLDjangoWikiSet'
    wiki = 'MooseTraining/testing'
    contents = 'true'
    contents_level = '2'
    title = 'Testing'
    [./Images]
      [./152]
        width = '500px;'
        text-align = 'center'
        show_caption = 'false'
      [../]
    [../]
  [../]
  [./mesh_modifiers]
    type = 'INLDjangoWikiSet'
    wiki = 'MooseSystems/MeshModifiers'
    contents = 'true'
    title = 'Mesh Modifiers (Advanced)'
  [../]
  [./oversample]
    type = 'INLDjangoWikiSet'
    wiki = 'MooseSystems/Outputs/Oversample'
    contents = 'true'
    title = 'Output Oversampling (Advanced)'
  [../]
  [./random]
    type = 'INLDjangoWikiSet'
    wiki = 'MooseTraining/random'
    contents = 'true'
    contents_level = '2'
    title = 'Parallel-Agnostic Random Number Generation (Advanced)'
  [../]
  [./action]
    type = 'INLDjangoWikiSet'
    wiki = 'MooseSystems/ActionsSystem'
    contents = 'true'
    contents_level = '2'
    insert_wiki_link = 'False'
    title = 'The Actions System (Advanced)'
    inactive = 'actions-system-model'
  [../]
  [./dirac_kernels]
    type = 'INLDjangoWikiSet'
    wiki = 'MooseSystems/DiracKernels'
    contents = 'true'
    contents_level = '2'
    insert_wiki_link = 'False'
    title = 'Dirac Kernels (Advanced)'
  [../]
  [./scalar_kernels]
    type = 'INLDjangoWikiSet'
    wiki = 'MooseTraining/ScalarKernels'
    contents = 'true'
    contents_level = '2'
    title = 'Scalar Kernels (Advanced)'
    insert_wiki_link = 'False'
  [../]
  [./geom_search]
    type = 'INLDjangoWikiSet'
    wiki = 'MooseSystems/GeomSearch'
    contents = 'true'
    title = 'Geometric Search (Advanced)'
    insert_wiki_link = 'False'
    use_wiki_title_for_heading = 'true'
  [../]
  [./dampers]
    type = 'INLDjangoWikiSet'
    wiki = 'MooseSystems/Dampers'
    contents = 'true'
    contents_level = '2'
    title = 'Dampers (Advanced)'
    insert_wiki_link = 'False'
    use_wiki_title_for_heading = 'true'
  [../]
  [./dg]
    type = 'INLDjangoWikiSet'
    wiki = 'MooseSystems/DG'
    contents = 'false'
    contents_level = '2'
    title = 'Discontinous Galerkin (Advanced)'
    use_wiki_title_for_heading = 'true'
  [../]
  [./user_objects]
    type = 'INLDjangoWikiSet'
    wiki = 'MooseSystems/UserObjects'
    contents = 'true'
    contents_level = '2'
    title = 'UserObjects (Advanced)'
    use_wiki_title_for_heading = 'true'
    insert_wiki_link = 'False'
    inactive = 'built-in'
  [../]
  [./restart]
    type = 'INLDjangoWikiSet'
    wiki = 'Restart'
    contents = 'true'
    title = 'Restart and Recovery (Advanced)'
    contents_title = 'Restart and Recovery Contents'
  [../]
[]

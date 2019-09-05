cwlVersion: v1.0
class: Workflow

requirements:
  - class: ScatterFeatureRequirement
  - class: SubworkflowFeatureRequirement


inputs:
  - id: infile
    type: File
#  - id: infiles
#    type: File[]
#  - id: concatenatedFile-wf
#    type: string

outputs:
  - id: finalOutFile
    type: File
    outputSource: step-wf-2/finalOutFile-sbwf

steps:
  step-wf-1:
    run: scatter-wf.cwl
    in:
      infile: infile
      #infiles: infiles
      #concatenatedFile: concatenatedFile-wf
    out: [ finalOutFile ]

  step-wf-2:
    run: subworkflow.cwl
    in:
      input: step-wf-1/finalOutFile
    out: [ finalOutFile-sbwf ]

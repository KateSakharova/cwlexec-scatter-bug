cwlVersion: v1.0
class: Workflow

requirements:
  - class: ScatterFeatureRequirement
  - class: SubworkflowFeatureRequirement


inputs:
  - id: infiles
    type: File[]
  - id: concatenatedFile-wf
    type: string

outputs:
  - id: finalOutFile
    type: File
    outputSource: step-wf-2/outfile

steps:
  step-wf-1:
    run: scatter-wf.cwl
    in:
      infiles: infiles
      concatenatedFile: concatenatedFile-wf
    out: [ finalOutFile ]

  step-wf-2:
    run: step1-scatter.cwl
    in:
      infile: step-wf-1/finalOutFile
    out: [ outfile ]

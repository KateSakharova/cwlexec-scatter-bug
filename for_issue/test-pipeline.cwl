cwlVersion: v1.0
class: Workflow

requirements:
  - class: ScatterFeatureRequirement
  - class: SubworkflowFeatureRequirement


inputs:
  - id: infile
    type: File

outputs:
  - id: finalOutFile
    type: File
    outputSource: step-wf-2/out-sbwf-2

steps:
  step-wf-1:
    run: sub-wf-1.cwl
    in:
      input: infile
    out: [ out-sbwf ]

  step-wf-2:
    run: sub-wf-2.cwl
    in:
      input: step-wf-1/out-sbwf
    out: [ out-sbwf-2 ]
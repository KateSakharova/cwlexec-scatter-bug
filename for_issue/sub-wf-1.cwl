cwlVersion: v1.0
class: Workflow

inputs:
  - id: input
    type: File

outputs:
  - id: out-sbwf
    type: File
    outputSource: step-subwf-1/outfile

steps:
  step-subwf-1:
    run: cp.cwl
    in:
      infile: input
    out: [ outfile ]

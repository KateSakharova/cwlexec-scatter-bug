cwlVersion: v1.0
class: Workflow


inputs:
  - id: input
    type: File

outputs:
  - id: finalOutFile-sbwf
    type: File
    outputSource: step-subwf-2/grep2

steps:

  step-subwf-1:
    run: step1-scatter.cwl
    in:
      infile: input
    out: [ outfile ]

  step-subwf-2:
    run: grep.cwl
    in:
      input: step-subwf-1/outfile
    out: [ grep2 ]
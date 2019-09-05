cwlVersion: v1.0
class: Workflow


inputs:
  - id: input
    type: File

outputs:
  - id: finalOutFile-sbwf
    type: File
    outputSource: step-subwf-2/outfile

steps:
  step-subwf-1:
    run: grep.cwl
    in:
      input: input
    out: [ grep2 ]

  step-subwf-2:
    run: step1-scatter.cwl
    in:
      infile: step-subwf-1/grep2
    out: [ outfile ]


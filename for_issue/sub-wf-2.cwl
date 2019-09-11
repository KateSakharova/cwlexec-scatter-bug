cwlVersion: v1.0
class: Workflow

inputs:
  - id: input
    type: File

outputs:
  - id: out-sbwf-2
    type: File
    outputSource: step-subwf-2/outfile

steps:
  step-subwf-1:
    run: grep.cwl
    in:
      input: input
      pattern: {default: '2'}
    out: [ grep_out ]

  step-subwf-2:
    run: cp.cwl
    in:
      infile: step-subwf-1/grep_out
    out: [ outfile ]

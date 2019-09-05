cwlVersion: v1.0
class: Workflow

requirements:
  - class: ScatterFeatureRequirement

inputs:
   - id: infile
     type: File
#  - id: infiles
#    type: File[]
#  - id: concatenatedFile
#    type: string

outputs:
  - id: finalOutFile
    type: File
    outputSource: step3/outfile

steps:
#  step1:
#    run: step1-scatter.cwl
#    in:
#      infile: infiles
#    scatter: infile
#    out: [ outfile ]

#  step2:
#    run: step2-concat.cwl
#    in:
#      files: step1/outfile
#      outputFileName: concatenatedFile
#    out: [ result ]

  step3:
    run: step3-depend.cwl
    in:
      infile: infile #step2/result
    out: [ outfile ]

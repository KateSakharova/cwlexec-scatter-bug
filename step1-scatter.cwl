cwlVersion: v1.0
class: CommandLineTool

baseCommand:
  - cp

inputs:
  - id: infile
    type: File
    inputBinding:
      position: 1

arguments:
  - position: 2
    valueFrom: $(inputs.infile.basename).step1-out

outputs:
  - id: outfile
    type: File
    outputBinding:
      glob: $(inputs.infile.basename).step1-out

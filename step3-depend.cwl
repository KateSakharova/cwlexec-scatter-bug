cwlVersion: v1.0
class: CommandLineTool

baseCommand:
  - cp

inputs:
  - id: infile
    type: File
    inputBinding:
      position: 0

arguments:
  - position: 1
    valueFrom: $(inputs.infile.nameroot).step3-out

outputs:
  - id: outfile
    type: File
    outputBinding:
      glob: $(inputs.infile.nameroot).step3-out

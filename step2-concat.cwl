class: CommandLineTool
cwlVersion: v1.0

baseCommand:
  - cat
inputs:
  - id: files
    type: 'File[]'
    inputBinding:
      position: 1
    streamable: true
  - id: outputFileName
    type: string

stdout: $(inputs.outputFileName)

outputs:
  - id: result
    type: stdout

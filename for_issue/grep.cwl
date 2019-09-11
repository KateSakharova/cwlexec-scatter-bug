#!/usr/bin/env
cwlVersion: v1.0
class: CommandLineTool

inputs:
  input:
    type: File
    inputBinding:
      position: 2
  pattern:
    type: string
    inputBinding:
      position: 1

baseCommand: [ grep ]

stdout: 'grep_out'

outputs:
  grep_out:
    type: stdout
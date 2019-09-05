#!/usr/bin/env
cwlVersion: v1.0
class: CommandLineTool

inputs:
  input:
    type: File
    inputBinding:
      position: 0

baseCommand: [ 'grep', '2' ]

stdout: grep2

outputs: { grep2: { type: stdout } }
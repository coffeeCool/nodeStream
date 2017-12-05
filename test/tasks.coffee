import 'shelljs/make'
import dd from 'ddeyes'
import inputStream from  '../src/inputStream'
import outputStream from '../src/outputStream'
import groupStream from '../src/groupStream'
import compressStream from  '../src/compressStream'
import decompressStream from '../src/decompressStream'

target.all = ->
  dd 'hello world'

target.inputStream = ->
  inputStream()

target.outputStream = ->
  outputStream()

target.groupStream = ->
  groupStream()

target.compressStream = ->
  compressStream()

target.decompressStream = ->
  decompressStream()
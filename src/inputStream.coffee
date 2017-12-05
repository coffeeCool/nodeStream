import fs from 'fs'
import dd from 'ddeyes'

export default  ->
  data = ''
  # 创建可读流
  readerStream = fs.createReadStream '../input.txt'
  # 设置编码utf-8
  readerStream.setEncoding 'UTF8'
  # 处理流事件
  readerStream.on 'data', (chunk) ->
    data+=chunk

  readerStream.on 'end', ->
    dd data

  readerStream.on 'error', (err) ->
    dd err.stack

  dd '文件读取完毕!'
import fs from 'fs'
import dd from 'ddeyes'

export default ->
  data = '湖北和风和乐旅游发展有限公司'
  # 创建一个可以写入的流写入到文件 output.txt 中
  writerStream = fs.createWriteStream '../output.txt'
  # 使用 utf8 编码
  writerStream.write data, 'UTF8'
  # 标记文件末尾
  writerStream.end()
  # 处理流时间 --> data end error
  writerStream.on 'finish', ->
    dd '写入完成!'

  writerStream.on 'error', (err) ->
    dd err.stack

  dd '执行完毕!'
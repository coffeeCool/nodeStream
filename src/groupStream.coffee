import fs from 'fs'
import dd from 'ddeyes'

export default ->
  # 创建一个可读流
  readerStream = fs.createReadStream '../input.txt'
  # 创建一个可写流
  writerStream = fs.createWriteStream '../output.txt'
  # 将可读流输入到可写流中
  readerStream.pipe writerStream

  dd "OK"
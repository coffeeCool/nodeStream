import fs from 'fs'
import dd from 'ddeyes'
import zlib from 'zlib'

export default ->
  # 压缩 input.txt 文件为 input.txt.gz 或者 zip 等等
  fs.createReadStream '../input.txt'
    .pipe zlib.createGzip()
    .pipe fs.createWriteStream '../input.txt.gz'

  dd 'input.txt文件压缩完成!'
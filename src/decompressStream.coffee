import fs from 'fs'
import dd from 'ddeyes'
import zlib from 'zlib'

export default ->
  # 解压 input.txt.zip 文件为 input.txt
  fs.createReadStream '../input.txt.gz'
    .pipe zlib.createGunzip()
    .pipe fs.createWriteStream '../newInput.txt'

  dd '文件解压完成!'
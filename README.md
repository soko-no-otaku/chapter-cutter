# chapter-cutter
ffmpeg でチャプターを切り出せるようにする PowerShell スクリプト

## 前提条件
以下2つがインストールされていること：

- ffmpeg.exe
- ffprobe.exe

## 利用方法

```
./chapter-cutter.ps1 <input filename> <output filename> <chapter number>
```

| 引数            | 説明                         |
|-----------------|------------------------------|
| input filename  | 分割前のファイルの名前       |
| output filename | 分割後のファイルの名前       |
| chapter number  | 切り出したいチャプターの番号 |

### 例

```
./chapter-cutter.ps1 some-long-video.mp4 chapter-10.mp4 10
```

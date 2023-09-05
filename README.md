## Features
YUV格式图片转RGBA形式
支持：
yuv422 uyvy
yuv422 yuyv
yuv422 yvyu
yuv422 vyuy
yuv420 NV21
yuv420 NV12

## Getting started
import 'package:yuv_converter/yuv_converter.dart';

## Usage

eg: nv21 to rgba
```dart
Uint8List rgbga1 = YuvConverter.yuv422uyvyToRgba8888(yuvRawData, 512, 512) ;
```

## Additional information

import 'dart:typed_data';

class YuvConverter {

  static
  Uint8List yuv422uyvyToRgba8888(Uint8List uyvyData, int width, int height){
    final int uyvySize = width * height * 2;
    final int rgbaSize = width * height * 4;
    Uint8List rgbaData = Uint8List(rgbaSize);

    int y0, u, y1, v;
    int r, g, b;

    for (int i = 0, j = 0; i < uyvySize; i += 4, j += 8) {
      u = uyvyData[i];
      y0 = uyvyData[i + 1];
      v = uyvyData[i + 2];
      y1 = uyvyData[i + 3];

      // First pixel (UYVY)
      r = _clamp(y0 + 1.4075 * (v - 128));
      g = _clamp(y0 - 0.3455 * (u - 128) - 0.7169 * (v - 128));
      b = _clamp(y0 + 1.7790 * (u - 128));

      rgbaData[j + 0] = r;
      rgbaData[j + 1] = g;
      rgbaData[j + 2] = b;
      rgbaData[j + 3] = 255; // Alpha

      // Second pixel (UYVY)
      r = _clamp(y1 + 1.4075 * (v - 128));
      g = _clamp(y1 - 0.3455 * (u - 128) - 0.7169 * (v - 128));
      b = _clamp(y1 + 1.7790 * (u - 128));

      rgbaData[j + 4] = r;
      rgbaData[j + 5] = g;
      rgbaData[j + 6] = b;
      rgbaData[j + 7] = 255; // Alpha
    }

    return rgbaData;
  }


  static
  Uint8List yuv422yuyvToRgba8888(Uint8List uyvyData, int width, int height){
    final int uyvySize = width * height * 2;
    final int rgbaSize = width * height * 4;
    Uint8List rgbaData = Uint8List(rgbaSize);

    int y0, u, y1, v;
    int r, g, b;

    for (int i = 0, j = 0; i < uyvySize; i += 4, j += 8) {
      y0 = uyvyData[i];
      u = uyvyData[i + 1];
      y1 = uyvyData[i + 2];
      v = uyvyData[i + 3];


      // First pixel (UYVY)
      r = _clamp(y0 + 1.4075 * (v - 128));
      g = _clamp(y0 - 0.3455 * (u - 128) - 0.7169 * (v - 128));
      b = _clamp(y0 + 1.7790 * (u - 128));

      rgbaData[j + 0] = r;
      rgbaData[j + 1] = g;
      rgbaData[j + 2] = b;
      rgbaData[j + 3] = 255; // Alpha

      // Second pixel (UYVY)
      r = _clamp(y1 + 1.4075 * (v - 128));
      g = _clamp(y1 - 0.3455 * (u - 128) - 0.7169 * (v - 128));
      b = _clamp(y1 + 1.7790 * (u - 128));

      rgbaData[j + 4] = r;
      rgbaData[j + 5] = g;
      rgbaData[j + 6] = b;
      rgbaData[j + 7] = 255; // Alpha
    }

    return rgbaData;
  }

  static
  Uint8List yuv422yvyuToRgba8888(Uint8List uyvyData, int width, int height){
    final int uyvySize = width * height * 2;
    final int rgbaSize = width * height * 4;
    Uint8List rgbaData = Uint8List(rgbaSize);

    int y0, u, y1, v;
    int r, g, b;

    for (int i = 0, j = 0; i < uyvySize; i += 4, j += 8) {
      y0 = uyvyData[i];
      v = uyvyData[i + 1];
      y1 = uyvyData[i + 2];
      u = uyvyData[i + 3];

      // First pixel (UYVY)
      r = _clamp(y0 + 1.4075 * (v - 128));
      g = _clamp(y0 - 0.3455 * (u - 128) - 0.7169 * (v - 128));
      b = _clamp(y0 + 1.7790 * (u - 128));

      rgbaData[j + 0] = r;
      rgbaData[j + 1] = g;
      rgbaData[j + 2] = b;
      rgbaData[j + 3] = 255; // Alpha

      // Second pixel (UYVY)
      r = _clamp(y1 + 1.4075 * (v - 128));
      g = _clamp(y1 - 0.3455 * (u - 128) - 0.7169 * (v - 128));
      b = _clamp(y1 + 1.7790 * (u - 128));

      rgbaData[j + 4] = r;
      rgbaData[j + 5] = g;
      rgbaData[j + 6] = b;
      rgbaData[j + 7] = 255; // Alpha
    }

    return rgbaData;
  }

  static
  Uint8List yuv422vyuyToRgba8888(Uint8List uyvyData, int width, int height){
    final int uyvySize = width * height * 2;
    final int rgbaSize = width * height * 4;
    Uint8List rgbaData = Uint8List(rgbaSize);

    int y0, u, y1, v;
    int r, g, b;

    for (int i = 0, j = 0; i < uyvySize; i += 4, j += 8) {
      v = uyvyData[i];
      y0 = uyvyData[i + 1];
      u = uyvyData[i + 2];
      y1 = uyvyData[i + 3];


      // First pixel (UYVY)
      r = _clamp(y0 + 1.4075 * (v - 128));
      g = _clamp(y0 - 0.3455 * (u - 128) - 0.7169 * (v - 128));
      b = _clamp(y0 + 1.7790 * (u - 128));

      rgbaData[j + 0] = r;
      rgbaData[j + 1] = g;
      rgbaData[j + 2] = b;
      rgbaData[j + 3] = 255; // Alpha

      // Second pixel (UYVY)
      r = _clamp(y1 + 1.4075 * (v - 128));
      g = _clamp(y1 - 0.3455 * (u - 128) - 0.7169 * (v - 128));
      b = _clamp(y1 + 1.7790 * (u - 128));

      rgbaData[j + 4] = r;
      rgbaData[j + 5] = g;
      rgbaData[j + 6] = b;
      rgbaData[j + 7] = 255; // Alpha
    }

    return rgbaData;
  }

  static Uint8List yuv420NV21ToRgba8888(Uint8List src, int width, int height) {
    final rgba = Uint8List(width * height * 4);
    final nvStart = width * height;
    int index = 0, rgbaIndex = 0;
    int y, u, v;
    int r, g, b, a;
    int nvIndex = 0;

    for (int i = 0; i < height; i++) {
      for (int j = 0; j < width; j++) {
        nvIndex = (i ~/ 2 * width + j - j % 2).toInt();

        y = src[rgbaIndex];
        u = src[nvStart + nvIndex];
        v = src[nvStart + nvIndex + 1];

        // r = y + (140 * (v - 128)) ~/ 100; // r
        // g = y - (34 * (u - 128)) ~/ 100 - (71 * (v - 128)) ~/ 100; // g
        // b = y + (177 * (u - 128)) ~/ 100; // b
        // a = 255; // 设置透明度为255（不透明）
        r = y + (1.13983 * (v - 128)).toInt(); // r
        g = y - (0.39465 * (u - 128)).toInt() - (0.58060 * (v - 128)).toInt(); // g
        b = y + (2.03211 * (u - 128)).toInt(); // b
        a = 255; // 设置透明度为255（不透明）


        r = r.clamp(0, 255);
        g = g.clamp(0, 255);
        b = b.clamp(0, 255);

        // index = rgbaIndex % width + (height - i - 1) * width;
        index = rgbaIndex % width + i * width;
        rgba[index * 4 + 0] = b;
        rgba[index * 4 + 1] = g;
        rgba[index * 4 + 2] = r;
        rgba[index * 4 + 3] = a;
        rgbaIndex++;
      }
    }

    return rgba;
  }
  static Uint8List yuv420NV12ToRgba8888(Uint8List src, int width, int height) {
    final rgba = Uint8List(width * height * 4);
    final uvStart = width * height;
    int index = 0, rgbaIndex = 0;
    int y, u, v;
    int r, g, b, a;
    int uvIndex = 0;

    for (int i = 0; i < height; i++) {
      for (int j = 0; j < width; j++) {
        uvIndex = (i ~/ 2 * width + j - j % 2).toInt();

        y = src[rgbaIndex];
        u = src[uvStart + uvIndex];
        v = src[uvStart + uvIndex + 1];

        // 调整系数以改善颜色质量
        r = y + (1.164 * (v - 128)).toInt(); // r
        g = y - (0.392 * (u - 128)).toInt() - (0.813 * (v - 128)).toInt(); // g
        b = y + (2.017 * (u - 128)).toInt(); // b
        a = 255; // 设置透明度为255（不透明）

        // 颜色通道值限制在0到255之间
        r = r.clamp(0, 255);
        g = g.clamp(0, 255);
        b = b.clamp(0, 255);

        // 计算索引并填充RGBA通道值
        index = rgbaIndex % width + i * width;
        rgba[index * 4 + 0] = r;
        rgba[index * 4 + 1] = g;
        rgba[index * 4 + 2] = b;
        rgba[index * 4 + 3] = a;
        rgbaIndex++;
      }
    }

    return rgba;
  }





  static int _clamp(double value) {
    return (value.clamp(0, 255)).toInt();
  }

}
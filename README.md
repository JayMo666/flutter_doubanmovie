# flutter_doubanmovie

flutter 实现豆瓣电影应用

## 开发环境
- 配置 Flutter 中国镜像
> 设置两个环境变量：`PUB_HOSTED_URL:https://pub.flutter-io.cn` 和 `FLUTTER_STORAGE_BASE_URL:https://storage.flutter-io.cn`。

- Flutter SDK 
>下载地址：https://flutter.dev/docs/development/tools/sdk/archive?tab=windows
> `Path:E:\src\flutter\bin`(根据实际安装目录)

- 安装 Android Studio，安装成功后，会自带 Android SDK。
> 地址：https://developer.android.google.cn/studio/
> 环境变量： Path：(替换成 Android SDK 路径)/tools;(替换成 Android SDK 路径)/platform-tools`

- AVD Manager

最后，运行 flutter doctor检查是否安装成功

可能遇到 Flutter 的报错，请按照报错的提示修复，例如：

*   Some Android licenses not accepted（Android证书的问题）
运行 `flutter doctor --android-licenses` 修复

VSCode F5(调试运行)可热更新（某些情况下修改代码不生效，需要重启）
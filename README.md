# OCDemo
A summary of commonly used features in iOS.

## 说明
本项目整理了开发中常用的功能，方便日常开发中直接使用。

项目创建环境：macOS 10.14.2、Xcode 10.1、最低支持 iOS 9.0、Build System: New Build System

## 低于 iOS 9.0 时的错误修复
如果最低支持版本小于 iOS 9.0,会提示 error: Safe Area Layout Guide before iOS 9.0 [12]. 需要在 .storyboard 文件的 Show the File inspector 里面去掉 Use Safe Area Layout Guides 前面的对号。

![图片](./MDImage/1.pgn)

***

## 手动添加 PCH 文件 

Xcode 6 以后没有自带的pch文件，创建步骤:  
1. New File... --> iOS --> Other --> PCH File  
2. 设置pch文件的路径: Targets --> Build Settings --> Prefix Header->设置 $(SRCROOT)/文件在工程中的路  
3. 将Precompile Prefix Header 改为 YES，预编译后的pch文件会被缓存起来，可以提高编译速度

## 将 Single View Application 改成空模板的步骤

1. 把工程目录下的 Main.storyboard 删除，ViewController.h、ViewController.m 可以删除也可以保留。
2. 删除 Info.plist 中的 Main storyboard file base name  选项。~~打开工程项目属性文件，点击 Target 下面的第一项，再选择 General选项卡，向下找到 Deployment Info 选项下的 Main Interface 删除 Main。~~
3. Xcode7 以后 Window 上不能放控件，必须在视图上（设置根视图控制器,不然运行时会崩溃）。
4. 在AppDelegate中添加代码

```
self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
self.window.backgroundColor = [UIColor whiteColor];
[self.window makeKeyAndVisible];

self.window.rootViewController = [[UIViewController alloc]init];
```

## 添加 AppIcon 和 LaunchImage

1. 在 Assets.xcassets 中右键 App Icons & Launch Images 选择 New iOS Launch Image。
2. Targets --> General -->  Launch Images Source 改成 LaunchImage，Launch Screen File 改成空。
3. ~~将 LaunchScreen.storyboard 的设置中的 Use as Launch Screen 取消~~


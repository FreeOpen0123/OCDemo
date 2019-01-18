# OCDemo
A summary of commonly used features in iOS.

## 说明
本项目整理了开发中常用的功能，方便日常开发中直接使用。

项目创建环境：macOS 10.14.2、Xcode 10.1、最低支持 iOS 9.0、Build System: New Build System

## 低于 iOS 9.0 时的错误修复
如果最低支持版本小于 iOS 9.0,会提示 error: Safe Area Layout Guide before iOS 9.0 [12]. 需要在 .storyboard 文件的 Show the File inspector 里面去掉 Use Safe Area Layout Guides 前面的对号。

![图片](./MDImage/1.pgn)

***


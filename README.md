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
3. pch 能向以前一样正常使用
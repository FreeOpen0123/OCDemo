//
//  Header.h
//  OCDemo
//
//  Created by Admin on 2019/1/20.
//  Copyright © 2019 This is my code. All rights reserved.
//

#ifndef Header_h
#define Header_h


//消除 Release 模式的 NSLog
#ifdef DEBUG

#define NSLog(...) NSLog(__VA_ARGS__)

#else

#define NSLog(...)

#endif

// Base Class

// Category
#import "UIColor+Hex.h"


















#endif /* Header_h */

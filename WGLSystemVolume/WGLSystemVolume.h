//
//  WGLSystemVolume.h
//  WGLSystemVolume
//
//  Created by wugl on 2019/2/28.
//  Copyright © 2019年 WGLKit. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface WGLSystemVolume : NSObject

/*
 *获取系统音量大小
 */
+ (CGFloat)getSystemVolumValue;

/*
 *设置系统音量大小
 */
+ (void)setSystemVolumWithValue:(double)value;

@end

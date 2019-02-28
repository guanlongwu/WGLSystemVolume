//
//  WGLSystemVolume.m
//  WGLSystemVolume
//
//  Created by wugl on 2019/2/28.
//  Copyright © 2019年 WGLKit. All rights reserved.
//

#import "WGLSystemVolume.h"
#import <MediaPlayer/MediaPlayer.h>

@implementation WGLSystemVolume

/*
 *获取系统音量大小
 */
+ (CGFloat)getSystemVolumValue {
    return [[self getSystemVolumSlider] value];
}

/*
 *设置系统音量大小
 */
+ (void)setSystemVolumWithValue:(double)value {
    UISlider *sysVolumeSlider = [self getSystemVolumSlider];
    [sysVolumeSlider setValue:value animated:YES];
    
    if (value - sysVolumeSlider.value >= 0.1) {
        [sysVolumeSlider setValue:0.1 animated:NO];
        [sysVolumeSlider setValue:value animated:YES];
    }
}

/*
 *获取系统音量滑块
 */
+ (UISlider *)getSystemVolumSlider {
    static UISlider *volumeViewSlider = nil;
    if (volumeViewSlider == nil) {
        MPVolumeView *volumeView = [[MPVolumeView alloc] initWithFrame:CGRectMake(10, 50, 200, 4)];
        
        for (UIView *newView in volumeView.subviews) {
            if ([newView.class.description isEqualToString:@"MPVolumeSlider"]){
                volumeViewSlider = (UISlider*)newView;
                break;
            }
        }
    }
    return volumeViewSlider;
}

@end

//
//  HLDanMuManagerView.h
//  DanMuDemo
//
//  Created by 123456 on 2016/11/15.
//  Copyright © 2016年 KuXing. All rights reserved.
//管理弹幕的视图

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@class HLDanMuModel;
@class HLDanMuImage;

@interface HLDanMuManagerView : UIView

//添加弹幕
- (void)addDanMuImage:(HLDanMuImage *)image;

//根据模型构建一个弹幕
- (HLDanMuImage *)imageWithDanMuModel:(HLDanMuModel *)danMuModel;

@end

NS_ASSUME_NONNULL_END

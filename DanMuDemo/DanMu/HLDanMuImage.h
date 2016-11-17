//
//  HLDanMuImage.h
//  DanMuDemo
//
//  Created by 123456 on 2016/11/17.
//  Copyright © 2016年 KuXing. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface HLDanMuImage : UIImage

//每个弹幕的视图都需要一个自己的坐标
@property (nonatomic, assign) CGFloat x;
@property (nonatomic, assign) CGFloat y;

@end

NS_ASSUME_NONNULL_END

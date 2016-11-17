//
//  HLDanMuModel.h
//  DanMuDemo
//
//  Created by 123456 on 2016/11/15.
//  Copyright © 2016年 KuXing. All rights reserved.
//模型

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface HLDanMuModel : NSObject

@property (nonatomic, copy) NSString *text;//内容
@property (nonatomic, copy) NSString *username;//昵称

@property (nonatomic, strong) NSArray *enmotios;//表情

//0 :标示自己 1:标示他人
@property (nonatomic, assign,getter=isType) BOOL type;

//实例化
- (instancetype)initWithDic:(NSDictionary *)dict;

@end

NS_ASSUME_NONNULL_END

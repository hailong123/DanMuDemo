//
//  HLDanMuModel.m
//  DanMuDemo
//
//  Created by 123456 on 2016/11/15.
//  Copyright © 2016年 KuXing. All rights reserved.
//

#import "HLDanMuModel.h"

@implementation HLDanMuModel

//MARK:进行实例化
- (instancetype)initWithDic:(NSDictionary *)dict {
    
    if (self = [super init]) {
        
        //进行赋值
        [self setValuesForKeysWithDictionary:dict];
        
    }
    
    return self;
}

- (void)setValue:(id)value forUndefinedKey:(NSString *)key {
    
    //赋值错误
    
}

@end

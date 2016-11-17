//
//  ViewController.m
//  DanMuDemo
//
//  Created by 123456 on 2016/11/15.
//  Copyright © 2016年 KuXing. All rights reserved.
//

#import "ViewController.h"

#import "HLDanMuImage.h"

#import "HLDanMuModel.h"

#import "HLDanMuManagerView.h"

@interface ViewController ()

//弹幕视图
@property (nonatomic, weak) IBOutlet HLDanMuManagerView *danmuView;

@property (nonatomic, strong) NSMutableArray *danmuDataSources;

@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    _danmuDataSources   = [NSMutableArray array];
    
    //预加载数据
    NSString *path      = [[NSBundle mainBundle] pathForResource:@"danmu" ofType:@"plist"];
    NSArray *dataSource = [NSArray arrayWithContentsOfFile:path];
    
    //产生模型
    [dataSource enumerateObjectsUsingBlock:^(NSDictionary *  _Nonnull dict, NSUInteger idx, BOOL * _Nonnull stop) {
        
        HLDanMuModel *model = [[HLDanMuModel alloc] initWithDic:dict];
        
        [_danmuDataSources addObject:model];
        
    }];

}


#pragma mark - 发送弹幕

- (IBAction)sendDanMu:(UIButton *)sender {
    
     //随机获取一个模型
    NSInteger index = arc4random_uniform((UInt32)_danmuDataSources.count);
    
    //获取模型
    HLDanMuModel *danmuModel = _danmuDataSources[index];

    //返回实例
    HLDanMuImage *danmuImage = [_danmuView imageWithDanMuModel:danmuModel];
    
    danmuImage.x = [UIApplication sharedApplication].keyWindow.bounds.size.width;
    danmuImage.y = arc4random_uniform(345);
    
    //添加弹幕
    [_danmuView addDanMuImage:danmuImage];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

//
//  Message.h
//  AOAutoCellHeightDemo
//
//  Created by 敖然 on 15/6/8.
//  Copyright (c) 2015年 AT. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Message : NSObject

// 头像、名字、和描述文字我给固定了,所以没有弄属性处理
@property (nonatomic, copy) NSString *imageName;
@property (nonatomic, copy) NSString *content;
@property (nonatomic, assign, readonly) CGFloat cellHeight;
// 图片将要展示的frame
@property (nonatomic, assign) CGRect contentImageFrame;

+ (instancetype)messageWithDic:(NSDictionary *)dic;


@end

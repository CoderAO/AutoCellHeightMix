//
//  Message.h
//  AOAutoCellHeightDemo
//
//  Created by 敖然 on 15/6/8.
//  Copyright (c) 2015年 AT. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Message : NSObject

@property (nonatomic, copy) NSString *imageName;
@property (nonatomic, copy) NSString *content;
@property (nonatomic, assign, readonly) CGFloat cellHeight;

+ (instancetype)messageWithDic:(NSDictionary *)dic;

@property (nonatomic, assign) CGRect contentImageFrame;

@end

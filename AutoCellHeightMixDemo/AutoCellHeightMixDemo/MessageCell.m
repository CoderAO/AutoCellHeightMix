//
//  MessageCell.m
//  AOAutoCellHeightDemo
//
//  Created by 敖然 on 15/6/8.
//  Copyright (c) 2015年 AT. All rights reserved.
//

#import "MessageCell.h"
#import "Message.h"

@interface MessageCell()

@property (weak, nonatomic) IBOutlet UIImageView *headerImageView;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *descLabel;
@property (weak, nonatomic) IBOutlet UILabel *contentLabel;

@property (strong, nonatomic) UIImageView *contentImageView;

@end

@implementation MessageCell

- (UIImageView *)contentImageView {
    if (!_contentImageView) {
        _contentImageView = [[UIImageView alloc] init];
        [self.contentView addSubview:_contentImageView];
    }
    return _contentImageView;
}

- (void)setMessage:(Message *)message {
    _message = message;
    self.contentLabel.text = _message.content;
    if (message.imageName.length) {
        self.contentImageView.hidden = NO;
        self.contentImageView.image = [UIImage imageNamed:message.imageName];
        self.contentImageView.frame = _message.contentImageFrame;
    }
    else {
        self.contentImageView.hidden = YES;
    }
}


@end

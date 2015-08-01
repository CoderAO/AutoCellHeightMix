//
//  ViewController.m
//  AutoCellHeightMixDemo
//
//  Created by 敖然 on 15/8/1.
//  Copyright (c) 2015年 AT. All rights reserved.
//

#import "ViewController.h"
#import "Message.h"
#import "MessageCell.h"

@interface ViewController ()

@property (strong, nonatomic) NSArray *dataList;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.tableView registerNib:[UINib nibWithNibName:@"MessageCell" bundle:nil] forCellReuseIdentifier:@"MessageCell"];
}

- (NSArray *)dataList {
    if (!_dataList) {
        NSString *path = [[NSBundle mainBundle]pathForResource:@"messages" ofType:@"plist"];
        NSArray *originArray = [NSArray arrayWithContentsOfFile:path];
        NSMutableArray *mArry = [NSMutableArray array];
        for (NSDictionary *dic in originArray) {
            Message *model = [Message messageWithDic:dic];
            [mArry addObject:model];
        }
        [mArry addObjectsFromArray:mArry];

        _dataList = mArry;
    }
    return _dataList;
}

#pragma mark - UITableViewDataSource & UITableViewDelegate

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dataList.count;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    Message *message = self.dataList[indexPath.row];
    return message.cellHeight;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {;
    MessageCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MessageCell"];
    cell.message = self.dataList[indexPath.row];
    return cell;
}

@end

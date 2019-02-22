//
//  ATNoteListView.m
//  VIPERDemo
//
//  Created by SimonMiao on 2019/2/21.
//  Copyright © 2019 avatar. All rights reserved.
//

#import "ATNoteListView.h"
#import <Masonry/Masonry.h>

#import "ATNoteModel.h"

@interface ATNoteListView () <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, strong) UITableView *tableView;

@end

@implementation ATNoteListView

#pragma mark - lifecycle methods

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self addSubview:self.tableView];
        
        [self initConstraints];
    }
    return self;
}

#pragma mark - public methods

- (void)setItemList:(NSArray *)itemList {
    _itemList = itemList;
    
    [self.tableView reloadData];
}

#pragma mark - private methods

- (void)initConstraints {
    [self.tableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.mas_equalTo(self);
    }];
}

#pragma mark - UITableViewDataSource

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    ATNoteModel *model = self.itemList[indexPath.row];
    NSString *cellId = NSStringFromClass([UITableViewCell class]);
    UITableViewCell *cell =  [tableView dequeueReusableCellWithIdentifier:cellId];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellId];
    }
    cell.textLabel.text = model.title;
    cell.detailTextLabel.text = model.dueDay;
    
    return cell;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.itemList.count;
}

#pragma mark - UITableViewDelegate

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 50;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
}

#pragma mark - getter && setter

- (UITableView *)tableView {
    if (!_tableView) {
        _tableView = [[UITableView alloc] initWithFrame:CGRectZero style:UITableViewStyleGrouped];
        _tableView.dataSource = self;
        _tableView.delegate = self;
    }
    return _tableView;
}

@end

//
//  ATAddNoteView.m
//  VIPERDemo
//
//  Created by SimonMiao on 2019/2/22.
//  Copyright © 2019 avatar. All rights reserved.
//

#import "ATAddNoteView.h"
#import <Masonry/Masonry.h>

#import "ATAddNoteTextFieldCell.h"
#import "ATAddNoteTextFieldModel.h"
#import "ATAddNoteDateModel.h"

@interface ATAddNoteView () <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) UITableView *tableView;

@end

@implementation ATAddNoteView

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

- (void)setDataSource:(NSArray *)dataSource {
    _dataSource = dataSource;
    
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
    id model = self.dataSource[indexPath.row];
    if ([model isKindOfClass:[ATAddNoteTextFieldModel class]]) {
        ATAddNoteTextFieldCell *cell = [tableView dequeueReusableCellWithIdentifier:[ATAddNoteTextFieldCell cellReuseId]];
        cell.tfModel = model;
        
        return cell;
    }
    else if ([model isKindOfClass:[ATAddNoteDateModel class]]) {
        ATAddNoteDateModel *dModel = (ATAddNoteDateModel *)model;
        ATBaseTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:[ATBaseTableViewCell cellReuseId]];
        cell.textLabel.text = dModel.title;
        cell.detailTextLabel.text = dModel.noteDateStr;
        
        return cell;
    }
    else {
        ATBaseTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:[ATBaseTableViewCell cellReuseId]];
        
        return cell;
    }
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dataSource.count;
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
        
        [_tableView registerClass:[ATAddNoteTextFieldCell class] forCellReuseIdentifier:[ATAddNoteTextFieldCell cellReuseId]];
        [_tableView registerClass:[ATBaseTableViewCell class] forCellReuseIdentifier:[ATBaseTableViewCell cellReuseId]];
    }
    return _tableView;
}




@end

//
//  ATNoteListViewController.m
//  VIPERDemo
//
//  Created by SimonMiao on 2019/2/21.
//  Copyright © 2019 avatar. All rights reserved.
//

#import "ATNoteListViewController.h"
#import <Masonry/Masonry.h>

#import "ATNoteListView.h"

@interface ATNoteListViewController ()

@property (nonatomic, strong) ATNoteListView *listView;

@end

@implementation ATNoteListViewController

#pragma mark - lifecycle methods

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
//    NSAssert([self.eventHandler conformsToProtocol:@protocol(ATNoteListModuleInterface)], @"eventHandler 没有遵循协议");
    self.title = @"note list";
    [self.view addSubview:self.listView];
    [self initConstraints];
    [self createRightItem];
    
    [self.eventHandler updateView];
}

#pragma mark - public methods


#pragma mark - private methods

- (void)initConstraints {
    [self.listView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.mas_equalTo(self.view);
    }];
}

- (void)createRightItem {
    UIBarButtonItem *addNoteItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd
                                                                                 target:self
                                                                                 action:@selector(didTouchNavigationBarAddButton)];
    self.navigationItem.rightBarButtonItem = addNoteItem;
}

- (void)didTouchNavigationBarAddButton {
    NSLog(@"addButton 按钮点击了");
}

#pragma mark - ATNoteListViewInterface

- (void)showItemList:(NSArray *)itemList {
    self.listView.itemList = itemList;
}

#pragma mark - getter && setter

- (ATNoteListView *)listView {
    if (!_listView) {
        _listView = [[ATNoteListView alloc] init];
    }
    return _listView;
}

@end

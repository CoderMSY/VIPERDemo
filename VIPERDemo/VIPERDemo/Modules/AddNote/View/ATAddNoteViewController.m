//
//  ATAddNoteViewController.m
//  VIPERDemo
//
//  Created by SimonMiao on 2019/2/22.
//  Copyright © 2019 avatar. All rights reserved.
//

#import "ATAddNoteViewController.h"
#import <Masonry/Masonry.h>

#import "ATAddNoteView.h"

@interface ATAddNoteViewController ()

@property (nonatomic, strong) ATAddNoteView *addNoteView;

@end

@implementation ATAddNoteViewController

#pragma mark - lifecycle methods

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"add note";
    [self.view addSubview:self.addNoteView];
    [self initConstraints];
    [self createNavItem];
    
    [self.eventHandler getAddNoteLists];
}

#pragma mark - public methods


#pragma mark - private methods

- (void)initConstraints {
    [self.addNoteView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.mas_equalTo(self.view);
    }];
}

- (void)createNavItem {
    UIBarButtonItem *cancelItem = [[UIBarButtonItem alloc] initWithTitle:@"退出" style:UIBarButtonItemStylePlain target:self action:@selector(dismissController)];
    self.navigationItem.leftBarButtonItem = cancelItem;
    
    UIBarButtonItem *addItem = [[UIBarButtonItem alloc] initWithTitle:@"添加" style:UIBarButtonItemStylePlain target:self action:@selector(addItemClicked)];
    self.navigationItem.rightBarButtonItem = addItem;
}

- (void)dismissController {
    [self.eventHandler dismissAddNoteCtr];
}

- (void)addItemClicked {
    NSLog(@"添加数据");
    [self.eventHandler dismissAddNoteCtr];
}

#pragma mark - ATAddNoteViewInterface

- (void)showAddNoteList:(NSArray *)list {
    self.addNoteView.dataSource = list;
}

#pragma mark - getter && setter

- (ATAddNoteView *)addNoteView {
    if (!_addNoteView) {
        _addNoteView = [[ATAddNoteView alloc] init];
    }
    return _addNoteView;
}

@end

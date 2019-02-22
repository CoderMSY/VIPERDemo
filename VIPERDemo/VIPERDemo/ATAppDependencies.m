//
//  ATAppDependencies.m
//  VIPERDemo
//
//  Created by SimonMiao on 2019/2/21.
//  Copyright © 2019 avatar. All rights reserved.
//

#import "ATAppDependencies.h"
#import "ATRootRouter.h"
#import "ATNoteListRouter.h"
#import "ATNoteListPresenter.h"
#import "ATNoteListInteractor.h"

@interface ATAppDependencies ()

@property (nonatomic, strong) ATNoteListRouter *listRouter;

@end

@implementation ATAppDependencies

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self configureDependencies];
    }
    return self;
}

- (void)installRootViewControllerIntoWindow:(UIWindow *)window
{
    [self.listRouter presentListInterfaceFromWindow:window];
}

- (void)configureDependencies {
    // List Modules Classes
//    self.listRouter = [[ATNoteListRouter alloc] init];
//    self.listRouter.listPresenter = [[ATNoteListPresenter alloc] init];
//    self.listRouter.rootRouter = [[ATRootRouter alloc] init];
    
    
    ATNoteListPresenter *listPresenter = [[ATNoteListPresenter alloc] init];
    
    ATNoteListInteractor *listInteractor = [[ATNoteListInteractor alloc] init];
    listInteractor.output = listPresenter;
    listPresenter.listInteractor = listInteractor;
    
    ATNoteListRouter *listRouter = [[ATNoteListRouter alloc] init];
    listRouter.listPresenter = listPresenter;
    listRouter.rootRouter = [[ATRootRouter alloc] init];
    self.listRouter = listRouter;
    
}

@end

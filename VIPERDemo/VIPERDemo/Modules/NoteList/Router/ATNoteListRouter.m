//
//  ATNoteListRouter.m
//  VIPERDemo
//
//  Created by SimonMiao on 2019/2/21.
//  Copyright © 2019 avatar. All rights reserved.
//

#import "ATNoteListRouter.h"
#import "ATNoteListViewController.h"
#import "ATRootRouter.h"
#import "ATNoteListPresenter.h"

#import "ATAddNoteRouter.h"


@interface ATNoteListRouter ()

@property (nonatomic, strong) ATNoteListViewController *listViewController;

@end

@implementation ATNoteListRouter

- (void)presentListInterfaceFromWindow:(UIWindow *)window {
    ATNoteListViewController *ctr = [[ATNoteListViewController alloc] init];
    ctr.eventHandler = self.listPresenter;
    self.listPresenter.viewInterface = ctr;
    self.listViewController = ctr;
    
    [self.rootRouter showRootViewController:ctr inWindow:window];
}

- (void)presentAddInterface {
    [self.addNoteRouter presentAddInterfaceFromViewController:self.listViewController];
}
#pragma mark - lifecycle methods


#pragma mark - public methods


#pragma mark - private methods


#pragma mark - getter && setter

- (ATAddNoteRouter *)addNoteRouter {
    if (!_addNoteRouter) {
        _addNoteRouter = [[ATAddNoteRouter alloc] init];
    }
    return _addNoteRouter;
}

@end

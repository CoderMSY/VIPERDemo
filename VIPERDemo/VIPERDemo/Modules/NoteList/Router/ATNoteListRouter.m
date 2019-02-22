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

@implementation ATNoteListRouter

- (void)presentListInterfaceFromWindow:(UIWindow *)window {
    ATNoteListViewController *ctr = [[ATNoteListViewController alloc] init];
    ctr.eventHandler = self.listPresenter;
    self.listPresenter.viewInterface = ctr;
    
    [self.rootRouter showRootViewController:ctr inWindow:window];
}

@end

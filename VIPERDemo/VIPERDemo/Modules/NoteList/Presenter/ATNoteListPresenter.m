//
//  ATNoteListPresenter.m
//  VIPERDemo
//
//  Created by SimonMiao on 2019/2/21.
//  Copyright © 2019 avatar. All rights reserved.
//

#import "ATNoteListPresenter.h"
#import "ATNoteListRouter.h"

@interface ATNoteListPresenter ()

@end

@implementation ATNoteListPresenter

#pragma mark - ATNoteListModuleInterface

- (void)updateView {
    [self.listInteractor findListItems];
}

- (void)addNewNote {
    [self.listRouter presentAddInterface];
}

#pragma mark - ATNoteListInteractorOutput

- (void)foundListItems:(NSArray *)listItems {
    if (0 == listItems.count) {
        NSLog(@"显示没有内容");
    }
    else {
        [self.viewInterface showItemList:listItems];
    }
}

@end

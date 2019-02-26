//
//  ATAddNotePresenter.m
//  VIPERDemo
//
//  Created by SimonMiao on 2019/2/22.
//  Copyright © 2019 avatar. All rights reserved.
//

#import "ATAddNotePresenter.h"

@implementation ATAddNotePresenter

#pragma mark - ATAddNoteModuleInterface

- (void)getAddNoteLists {
    [self.addInteractor findAddNoteList];
}

- (void)dismissAddNoteCtr {
    [self.addRouter dismissAddInterface];
}

#pragma mark - ATAddNoteInteractorOutput

- (void)outputAddNoteList:(NSArray *)list {
    [self.viewInterface showAddNoteList:list];
}

@end

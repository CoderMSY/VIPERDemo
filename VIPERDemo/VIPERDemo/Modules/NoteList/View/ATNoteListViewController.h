//
//  ATNoteListViewController.h
//  VIPERDemo
//
//  Created by SimonMiao on 2019/2/21.
//  Copyright © 2019 avatar. All rights reserved.
//

#import "ATBaseViewController.h"
#import "ATNoteListModuleInterface.h"
#import "ATNoteListViewInterface.h"

NS_ASSUME_NONNULL_BEGIN

@interface ATNoteListViewController : ATBaseViewController <ATNoteListViewInterface>

@property (nonatomic, strong) id <ATNoteListModuleInterface> eventHandler;

@end

NS_ASSUME_NONNULL_END

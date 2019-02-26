//
//  ATAddNoteViewController.h
//  VIPERDemo
//
//  Created by SimonMiao on 2019/2/22.
//  Copyright © 2019 avatar. All rights reserved.
//

#import "ATBaseViewController.h"
#import "ATAddNoteModuleInterface.h"
#import "ATAddNoteViewInterface.h"

NS_ASSUME_NONNULL_BEGIN

@interface ATAddNoteViewController : ATBaseViewController <ATAddNoteViewInterface>

@property (nonatomic, strong) id <ATAddNoteModuleInterface> eventHandler;

@end

NS_ASSUME_NONNULL_END

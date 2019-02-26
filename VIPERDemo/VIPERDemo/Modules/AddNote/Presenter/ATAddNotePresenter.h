//
//  ATAddNotePresenter.h
//  VIPERDemo
//
//  Created by SimonMiao on 2019/2/22.
//  Copyright © 2019 avatar. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ATAddNoteModuleInterface.h"
#import "ATAddNoteInteractorIO.h"
#import "ATAddNoteViewInterface.h"
#import "ATAddNoteRouter.h"

NS_ASSUME_NONNULL_BEGIN

@interface ATAddNotePresenter : NSObject  <ATAddNoteModuleInterface, ATAddNoteInteractorOutput>

@property (nonatomic, strong) id<ATAddNoteInteractorInput> addInteractor;
@property (nonatomic, strong) id<ATAddNoteViewInterface> viewInterface;
@property (nonatomic, strong) ATAddNoteRouter *addRouter;

@end

NS_ASSUME_NONNULL_END

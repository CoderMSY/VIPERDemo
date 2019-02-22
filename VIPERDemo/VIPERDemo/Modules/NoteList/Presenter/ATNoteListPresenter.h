//
//  ATNoteListPresenter.h
//  VIPERDemo
//
//  Created by SimonMiao on 2019/2/21.
//  Copyright © 2019 avatar. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ATNoteListModuleInterface.h"
#import "ATNoteListInteractorIO.h"
#import "ATNoteListViewInterface.h"
NS_ASSUME_NONNULL_BEGIN

@interface ATNoteListPresenter : NSObject <ATNoteListModuleInterface, ATNoteListInteractorOutput>

@property (nonatomic, strong) id<ATNoteListInteractorInput> listInteractor;
@property (nonatomic, strong) id<ATNoteListViewInterface> viewInterface;

@end

NS_ASSUME_NONNULL_END

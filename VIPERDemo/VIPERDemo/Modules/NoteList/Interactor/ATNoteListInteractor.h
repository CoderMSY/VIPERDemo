//
//  ATNoteListInteractor.h
//  VIPERDemo
//
//  Created by SimonMiao on 2019/2/21.
//  Copyright © 2019 avatar. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ATNoteListInteractorIO.h"

//NS_ASSUME_NONNULL_BEGIN

@interface ATNoteListInteractor : NSObject <ATNoteListInteractorInput>

@property (nonatomic, weak) id<ATNoteListInteractorOutput>output;

@end

//NS_ASSUME_NONNULL_END

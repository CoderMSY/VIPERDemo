//
//  ATAddNoteInteractor.h
//  VIPERDemo
//
//  Created by SimonMiao on 2019/2/22.
//  Copyright © 2019 avatar. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ATAddNoteInteractorIO.h"

NS_ASSUME_NONNULL_BEGIN

@interface ATAddNoteInteractor : NSObject <ATAddNoteInteractorInput>

@property (nonatomic, weak) id<ATAddNoteInteractorOutput>output;

@end

NS_ASSUME_NONNULL_END

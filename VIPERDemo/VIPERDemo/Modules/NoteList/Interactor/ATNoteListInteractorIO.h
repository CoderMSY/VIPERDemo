//
//  ATNoteListInteractorIO.h
//  VIPERDemo
//
//  Created by SimonMiao on 2019/2/22.
//  Copyright © 2019 avatar. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol ATNoteListInteractorInput <NSObject>

- (void)findListItems;

@end

@protocol ATNoteListInteractorOutput <NSObject>

- (void)foundListItems:(NSArray *)listItems;

@end

NS_ASSUME_NONNULL_END

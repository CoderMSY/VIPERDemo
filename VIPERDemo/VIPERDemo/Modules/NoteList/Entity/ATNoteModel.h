//
//  ATNoteModel.h
//  VIPERDemo
//
//  Created by SimonMiao on 2019/2/21.
//  Copyright © 2019 avatar. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ATNoteModel : NSObject

//@property (nonatomic, readonly, copy) NSString *showId;
@property (nonatomic, readonly, copy) NSString *title;
@property (nonatomic, readonly, copy) NSString *dueDay;

+ (instancetype)noteModelWithTitle:(NSString *)title dueDay:(NSString *)dueDay;
- (instancetype)init NS_UNAVAILABLE;
- (instancetype)initWithTitle:(NSString *)title dueDay:(NSString *)dueDay;

@end

NS_ASSUME_NONNULL_END

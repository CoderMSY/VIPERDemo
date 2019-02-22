//
//  ATNoteModel.m
//  VIPERDemo
//
//  Created by SimonMiao on 2019/2/21.
//  Copyright © 2019 avatar. All rights reserved.
//

#import "ATNoteModel.h"

@interface ATNoteModel ()

@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *dueDay;

@end

@implementation ATNoteModel

+ (instancetype)noteModelWithTitle:(NSString *)title dueDay:(NSString *)dueDay {
    ATNoteModel *noteModel = [[ATNoteModel alloc] initWithTitle:title dueDay:dueDay];
    noteModel.title = title;
    noteModel.dueDay = dueDay;
    
    return noteModel;
}

- (instancetype)initWithTitle:(NSString *)title dueDay:(NSString *)dueDay {
    NSParameterAssert(title);
    NSParameterAssert(dueDay);
    self = [super init];
    if (self) {
        _title = title;
        _dueDay = dueDay;
    }
    return self;
}

@end

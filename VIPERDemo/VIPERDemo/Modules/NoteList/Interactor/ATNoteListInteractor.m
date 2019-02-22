//
//  ATNoteListInteractor.m
//  VIPERDemo
//
//  Created by SimonMiao on 2019/2/21.
//  Copyright © 2019 avatar. All rights reserved.
//

#import "ATNoteListInteractor.h"
#import "ATNoteModel.h"

@interface ATNoteListInteractor ()

@end

@implementation ATNoteListInteractor

#pragma mark - ATNoteListInteractorInput

- (void)findListItems {
    NSMutableArray *dataSource = [NSMutableArray arrayWithCapacity:0];
    for (NSInteger i = 0; i < 9; i ++) {
        NSString *title = [NSString stringWithFormat:@"%@%ld",@"标题", (long)i];
        NSString *dueDay = [NSString stringWithFormat:@"%@%ld",@"日期", (long)i];
        ATNoteModel *model = [[ATNoteModel alloc] initWithTitle:title dueDay:dueDay];
        [dataSource addObject:model];
    }
    [self.output foundListItems:dataSource];
}

@end

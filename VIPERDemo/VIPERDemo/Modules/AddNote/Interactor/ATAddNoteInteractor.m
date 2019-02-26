//
//  ATAddNoteInteractor.m
//  VIPERDemo
//
//  Created by SimonMiao on 2019/2/22.
//  Copyright © 2019 avatar. All rights reserved.
//

#import "ATAddNoteInteractor.h"
#import "ATAddNoteTextFieldModel.h"
#import "ATAddNoteDateModel.h"

@implementation ATAddNoteInteractor

#pragma mark - ATAddNoteInteractorInput

- (void)findAddNoteList {
    NSMutableArray *dataSource = [NSMutableArray arrayWithCapacity:0];
    
    ATAddNoteDateModel *dateModel = [[ATAddNoteDateModel alloc] init];
    dateModel.title = @"日期";
    dateModel.noteDate = [NSDate date];
    [dataSource addObject:dateModel];
    
    ATAddNoteTextFieldModel *tfModel = [[ATAddNoteTextFieldModel alloc] init];
    tfModel.title = @"内容";
    [dataSource addObject:tfModel];
    
    [self.output outputAddNoteList:dataSource];
}

@end

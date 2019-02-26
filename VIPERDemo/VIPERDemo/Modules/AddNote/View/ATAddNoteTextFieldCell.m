//
//  ATAddNoteTextFieldCell.m
//  VIPERDemo
//
//  Created by SimonMiao on 2019/2/22.
//  Copyright © 2019 avatar. All rights reserved.
//

#import "ATAddNoteTextFieldCell.h"
#import <Masonry/Masonry.h>

#import "ATAddNoteTextFieldModel.h"

@interface ATAddNoteTextFieldCell () <UITextFieldDelegate>

@property (nonatomic, strong) UILabel *titleLab;
@property (nonatomic, strong) UITextField *textField;

@end

@implementation ATAddNoteTextFieldCell

#pragma mark - lifecycle methods

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        [self.contentView addSubview:self.titleLab];
        [self.contentView addSubview:self.textField];
        
        [self initConstraints];
    }
    
    return self;
}

#pragma mark - public methods

- (void)setTfModel:(ATAddNoteTextFieldModel *)tfModel {
    _tfModel = tfModel;
    
    self.titleLab.text = tfModel.title;
    self.textField.text = tfModel.detail;
}

#pragma mark - private methods

- (void)initConstraints {
    [self.titleLab mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.mas_equalTo(self.contentView);
        make.left.mas_equalTo(self.contentView).offset(15);
//        make.width.mas_equalTo(20);
    }];
    [self.textField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self.contentView).offset(5);
        make.left.mas_equalTo(self.titleLab.mas_right).offset(15);
        make.bottom.mas_equalTo(self.contentView).offset(-5);
        make.right.mas_lessThanOrEqualTo(self.contentView).offset(-15);
    }];
}

#pragma mark - UITextFieldDelegate

//- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField {
//    return _rowData.isOperate;
//}

- (void)textFieldDidEndEditing:(UITextField *)textField {
    self.tfModel.detail = textField.text;
}

#pragma mark - getter && setter

- (UILabel *)titleLab {
    if (!_titleLab) {
        _titleLab = [[UILabel alloc] init];
        [_titleLab setContentCompressionResistancePriority:UILayoutPriorityRequired forAxis:UILayoutConstraintAxisHorizontal];
        _titleLab.text = @"note:";
    }
    return _titleLab;
}

- (UITextField *)textField {
    if (!_textField) {
        _textField = [[UITextField alloc] init];
        _textField.delegate = self;
        _textField.textColor = [UIColor blackColor];
        _textField.font = [UIFont systemFontOfSize:15];
        
        _textField.layer.cornerRadius = 4.0;
        _textField.layer.borderWidth = 0.5;
        _textField.layer.borderColor = [UIColor lightGrayColor].CGColor;
        _textField.layer.masksToBounds = YES;
        
        _textField.placeholder = @"请输入内容";
    }
    
    return _textField;
}

@end

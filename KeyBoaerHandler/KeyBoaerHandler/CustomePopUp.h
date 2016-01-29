//
//  CustomePopUp.h
//  KeyBoaerHandler
//
//  Created by GYAN on 28/01/16.
//  Copyright © 2016 edgesoft. All rights reserved.
//

#import "GPKeyboardAvoidingScrollView.h"
#import "CustomeBtnWithUnderLineText.h"
#import "CstmTxtFldWithLeftImage.h"

@protocol CustomePopUpDelegate <NSObject>

//for text field
- (BOOL)gpTextFieldShouldBeginEditing:(UITextField *)textField;
- (void)gpTextFieldDidBeginEditing:(UITextField *)textField;
- (BOOL)gpTextFieldShouldEndEditing:(UITextField *)textField;
- (void)gpTextFieldDidEndEditing:(UITextField *)textField;
- (BOOL)gpTextField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string;
- (BOOL)gpTextFieldShouldClear:(UITextField *)textField;
- (BOOL)gpTextFieldShouldReturn:(UITextField *)textField;

//for button action

-(void)clickedButtonAtIndexWithTag:(UIButton*)sender;

@end

@interface CustomePopUp : GPKeyboardAvoidingScrollView <GPKeyboardAvoidingScrollViewDelegate,UIScrollViewDelegate,UITextFieldDelegate>

@property (atomic) id <CustomePopUpDelegate>delegate;

@end

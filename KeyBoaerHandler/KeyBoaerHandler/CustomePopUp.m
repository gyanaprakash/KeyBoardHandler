//
//  CustomePopUp.m
//  KeyBoaerHandler
//
//  Created by GYAN on 28/01/16.
//  Copyright © 2016 edgesoft. All rights reserved.
//
#define HIGHT 35

#import "CustomePopUp.h"

@implementation CustomePopUp

- (id)init {
    if ((self = [super initWithFrame:[[UIScreen mainScreen] bounds]])) {
        [self baseClassInit];
    }
    return self;
}

// inthe time of initilaziation with frame

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self)
    {
        [self baseClassInit];
    }
    return self;
}

// inthe time of initilaziation with xib just set the class of the view on xib

- (id)initWithCoder:(NSCoder *)aDecoder {
    if ((self = [super initWithCoder:aDecoder])) {
        [self baseClassInit];
    }
    return self;
}


- (void)baseClassInit {
        
    self.backgroundColor = [UIColor whiteColor];
    self.layer.cornerRadius = 5.0f;
    self.clipsToBounds = YES;
    
    UIButton *deleteBtn=[UIButton buttonWithType:UIButtonTypeCustom];
    deleteBtn.tag = 1;
    deleteBtn.frame=CGRectMake(self.frame.size.width+5, 10, HIGHT , HIGHT);
    [deleteBtn setImage:[UIImage imageNamed:@"Delete.png"] forState:UIControlStateNormal];
    [deleteBtn addTarget:self action:@selector(aMethod:) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:deleteBtn];
    
    UITextView* toTextVw = [[UITextView alloc] initWithFrame:CGRectMake(30, 45, self.frame.size.width-15, 100.0)];
    toTextVw.text = @"CustomeLebelWithUnderLie * lbl = [[CustomeLebelWithUnderLie alloc]initWithFrame:CGRectMake(0, 20, 100, 30)];CustomeLebelWithUnderLie * lbl = [[CustomeLebelWithUnderLie alloc]initWithFrame:CGRectMake(0, 20, 100, 30)];CustomeLebelWithUnderLie * lbl = [[CustomeLebelWithUnderLie alloc]initWithFrame:CGRectMake(0, 20, 100, 30)];CustomeLebelWithUnderLie * lbl = [[CustomeLebelWithUnderLie alloc]initWithFrame:CGRectMake(0, 20, 100, 30)];CustomeLebelWithUnderLie * lbl = [[CustomeLebelWithUnderLie alloc]initWithFrame:CGRectMake(0, 20, 100, 30)];CustomeLebelWithUnderLie * lbl = [[CustomeLebelWithUnderLie alloc]initWithFrame:CGRectMake(0, 20, 100, 30)];CustomeLebelWithUnderLie * lbl = [[CustomeLebelWithUnderLie alloc]initWithFrame:CGRectMake(0, 20, 100, 30)];";
    [self addSubview:toTextVw];
    
    
    
    CstmTxtFldWithLeftImage* cmpnNameFld = [[CstmTxtFldWithLeftImage alloc] initWithFrame:CGRectMake(toTextVw.frame.origin.x, toTextVw.frame.origin.y + toTextVw.frame.size.height + 10, toTextVw.frame.size.width , HIGHT)];
    cmpnNameFld.placeholder = @"Name of the Compny";
    cmpnNameFld.delegate = self;
    [self addSubview:cmpnNameFld];
    
    CstmTxtFldWithLeftImage* countryNameFld = [[CstmTxtFldWithLeftImage alloc] initWithFrame:CGRectMake(cmpnNameFld.frame.origin.x, cmpnNameFld.frame.origin.y + cmpnNameFld.frame.size.height + 10, cmpnNameFld.frame.size.width , HIGHT)];
    countryNameFld.placeholder = @"Country";
    [self addSubview:countryNameFld];
    
    CstmTxtFldWithLeftImage* cityNameFld = [[CstmTxtFldWithLeftImage alloc] initWithFrame:CGRectMake(countryNameFld.frame.origin.x, countryNameFld.frame.origin.y + countryNameFld.frame.size.height + 10, countryNameFld.frame.size.width , HIGHT)];
    cityNameFld.placeholder = @"City";
    [self addSubview:cityNameFld];
    
    CstmTxtFldWithLeftImage* addCntryNameFld = [[CstmTxtFldWithLeftImage alloc] initWithFrame:CGRectMake(cityNameFld.frame.origin.x, cityNameFld.frame.origin.y + cityNameFld.frame.size.height + 10, cityNameFld.frame.size.width/2-5 , HIGHT)];
    addCntryNameFld.placeholder = @"Add Country";
    [self addSubview:addCntryNameFld];
    
    
    CstmTxtFldWithLeftImage* addIndustryNameFld = [[CstmTxtFldWithLeftImage alloc] initWithFrame:CGRectMake(addCntryNameFld.frame.origin.x+ addCntryNameFld.frame.size.width + 10, addCntryNameFld.frame.origin.y, addCntryNameFld.frame.size.width , HIGHT)];
    addIndustryNameFld.placeholder = @"Add Industry";
    [self addSubview:addIndustryNameFld];
    
    
    CustomeBtnWithUnderLineText * lstIndBtn = [[CustomeBtnWithUnderLineText alloc]initWithFrame:CGRectMake(addCntryNameFld.frame.origin.x, addCntryNameFld.frame.origin.y + addCntryNameFld.frame.size.height + 10, cityNameFld.frame.size.width , HIGHT)];    
    lstIndBtn.tag = 2;
    [lstIndBtn addTarget:self 
                  action:@selector(aMethod:)
        forControlEvents:UIControlEventTouchDown];
    lstIndBtn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
    [lstIndBtn setTitle:@"See the Full list of industryes" forState:UIControlStateNormal];
    [lstIndBtn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    lstIndBtn.frame = CGRectMake(addCntryNameFld.frame.origin.x, addCntryNameFld.frame.origin.y + addCntryNameFld.frame.size.height + 10, cityNameFld.frame.size.width , HIGHT);
    [self addSubview:lstIndBtn];
    
    CstmTxtFldWithLeftImage* vcCodeNameFld = [[CstmTxtFldWithLeftImage alloc] initWithFrame:CGRectMake(lstIndBtn.frame.origin.x, lstIndBtn.frame.origin.y + lstIndBtn.frame.size.height + 10, cityNameFld.frame.size.width , HIGHT)];
    vcCodeNameFld.placeholder = @"verification Code";
    [self addSubview:vcCodeNameFld];
    
    CustomeBtnWithUnderLineText * resendCodeBtn = [[CustomeBtnWithUnderLineText alloc]initWithFrame:CGRectMake(vcCodeNameFld.frame.origin.x, vcCodeNameFld.frame.origin.y + vcCodeNameFld.frame.size.height + 10, cityNameFld.frame.size.width , HIGHT)];    
    resendCodeBtn.tag = 3;
    [resendCodeBtn addTarget:self 
                      action:@selector(aMethod:)
            forControlEvents:UIControlEventTouchDown];
    resendCodeBtn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
    [resendCodeBtn setTitle:@"I have not receved verification code, resend" forState:UIControlStateNormal];
    [resendCodeBtn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];

    resendCodeBtn.frame = CGRectMake(vcCodeNameFld.frame.origin.x, vcCodeNameFld.frame.origin.y + vcCodeNameFld.frame.size.height + 10, cityNameFld.frame.size.width , HIGHT);
    [self addSubview:resendCodeBtn];
    
    UIButton *addCmpny=[UIButton buttonWithType:UIButtonTypeCustom];
    addCmpny.frame=CGRectMake(resendCodeBtn.frame.origin.x, resendCodeBtn.frame.origin.y + resendCodeBtn.frame.size.height + 15, cityNameFld.frame.size.width , HIGHT+5);
    [addCmpny setBackgroundImage:[UIImage imageNamed:@"Screen Shot 2016-01-28 at 3.35.40 PM.png"] forState:UIControlStateNormal];
    addCmpny.tag = 4;

//    [addCmpny setTitle:@"Add your Compny." forState:UIControlStateNormal];
//    addCmpny.titleLabel.font = [UIFont fontWithName:@"HelveticaNeue-Light" size: 16.0f];
//    addCmpny.titleLabel.textColor = [UIColor redColor];
    [addCmpny addTarget:self action:@selector(aMethod:) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:addCmpny];
    
}

- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField{
    [self.delegate gpTextFieldShouldBeginEditing:textField];
    return YES;
}
- (void)textFieldDidBeginEditing:(UITextField *)textField{
    [self.delegate gpTextFieldDidBeginEditing:textField];

}
- (BOOL)textFieldShouldEndEditing:(UITextField *)textField{
    [self.delegate gpTextFieldShouldEndEditing:textField];

    return YES;
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    [self.delegate gpTextFieldDidEndEditing:textField];

}
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    [self.delegate gpTextField:textField shouldChangeCharactersInRange:range replacementString:string];

    return YES;
}
- (BOOL)textFieldShouldClear:(UITextField *)textField{
    [self.delegate gpTextFieldShouldClear:textField];
    return YES;
}
- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    [self.delegate gpTextFieldShouldReturn:textField];
    return YES;
}

-(void)aMethod:(UIButton*)sender
{
    [self.delegate clickedButtonAtIndexWithTag:sender];
}



@end

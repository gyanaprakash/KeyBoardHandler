//
//  CstmTxtFldWithLeftImage.m
//  KeyBoaerHandler
//
//  Created by GYAN on 28/01/16.
//  Copyright © 2016 edgesoft. All rights reserved.
//

#import "CstmTxtFldWithLeftImage.h"

@implementation CstmTxtFldWithLeftImage

- (id)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {

        [self setDefaults];
    }
    return self;
}

- (void)setDefaults {
    [self setBorderStyle:UITextBorderStyleLine];
    UIView *paddingCntView = [[UIView alloc] initWithFrame:CGRectMake(8, 0, 40, 30)];

    UIImageView *paddingView = [[UIImageView alloc] initWithFrame:CGRectMake(3, 0, 30, 28)];
    paddingView.image = [UIImage imageNamed:@"Screen Shot 2016-01-28 at 2.22.28 PM.png"];
    [paddingCntView addSubview:paddingView];
    self.leftView = paddingCntView;
    self.leftViewMode = UITextFieldViewModeAlways;

}

@end

//
//  GPKeyboardAvoidingScrollView.h
//  KeyBoaerHandler
//
//  Created by GYAN on 28/01/16.
//  Copyright © 2016 edgesoft. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol GPKeyboardAvoidingScrollViewDelegate <UIScrollViewDelegate>

-(void)resignResponder;

@end

@interface GPKeyboardAvoidingScrollView : UIScrollView {
    CGRect priorFrame;
}

@property (assign, nonatomic) id <GPKeyboardAvoidingScrollViewDelegate,UIScrollViewDelegate>
delegate;


@end

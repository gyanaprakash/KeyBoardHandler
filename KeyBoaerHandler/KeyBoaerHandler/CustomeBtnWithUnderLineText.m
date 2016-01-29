//
//  CustomeBtnWithUnderLineText.m
//  KeyBoaerHandler
//
//  Created by GYAN on 28/01/16.
//  Copyright © 2016 edgesoft. All rights reserved.
//

#import "CustomeBtnWithUnderLineText.h"

@implementation CustomeBtnWithUnderLineText

- (id)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        [self setDefaults];
    }
    return self;
}

- (id) initWithCoder:(NSCoder *)aDecoder {
    if (self = [super initWithCoder:aDecoder]) {
        [self setDefaults];
    }
    return self;
}

- (void) setDefaults {
    self.titleLabel.textColor = [UIColor redColor];
    [self addTarget: self action: @selector(touchDown:) forControlEvents: UIControlEventTouchDown];
    [self addTarget: self action: @selector(touchDown:) forControlEvents: UIControlEventTouchDragEnter];
    
    [self addTarget: self action: @selector(touchUp:) forControlEvents: UIControlEventTouchUpInside];
    [self addTarget: self action: @selector(touchUp:) forControlEvents: UIControlEventTouchUpOutside];
    [self addTarget: self action: @selector(touchUp:) forControlEvents: UIControlEventTouchCancel];
    [self addTarget: self action: @selector(touchUp:) forControlEvents: UIControlEventTouchDragExit];
    self.underlinePosition = -2.0;
}

- (void)touchDown: (id)sender
{
    [self setNeedsDisplay];
}

- (void)touchUp: (id)sender
{
    [self setNeedsDisplay];
}

- (void)drawRect:(CGRect)rect {
    [super drawRect:rect];
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSetStrokeColorWithColor(context, self.currentTitleColor.CGColor);
    
    // Draw them with a 1.0 stroke width.
    CGContextSetLineWidth(context, 1.0);
    
    // Work out line width
    NSString *text = self.titleLabel.text;
    CGSize titleLabelSize = [text sizeWithFont:self.titleLabel.font forWidth:self.titleLabel.frame.size.width lineBreakMode:UILineBreakModeWordWrap];
    CGFloat width = titleLabelSize.width;
    
    // Work out starting point of the underline
    CGFloat xOffset = 0;
    if (self.contentHorizontalAlignment == UIControlContentHorizontalAlignmentCenter)
        xOffset = (rect.size.width - width) / 2;
    else if (self.contentHorizontalAlignment == UIControlContentHorizontalAlignmentRight)
        xOffset = rect.size.width - width;
    
    // If offset would be negative, we'll set it to 0
    xOffset = MAX(xOffset, 0);
    
    // If width would be more than our buttons width, we'll set it to the buttons width
    width = MIN(width, rect.size.width);
    
    // Work out our vertical baseline
    CGFloat textHeight = self.titleLabel.font.lineHeight;
    CGFloat yBaseline = 0 + textHeight; //roundf(rect.size.height + self.titleLabel.font.descender + self.underlinePosition);
    if (self.contentVerticalAlignment == UIControlContentVerticalAlignmentCenter)
        yBaseline = (rect.size.height + textHeight) / 2.0;
    if (self.contentVerticalAlignment == UIControlContentVerticalAlignmentBottom)
        yBaseline = rect.size.height - 1;
    
    // Round yBaseline, so its value has always that of a full pixel
    yBaseline = roundf(yBaseline);
    
    // Draw a single line from left to right
    CGContextMoveToPoint(context, xOffset, yBaseline);
    CGContextAddLineToPoint(context, xOffset + width, yBaseline);
    CGContextStrokePath(context);
}

-(void) setUnderlinePosition:(CGFloat)underlinePosition {
    _underlinePosition = underlinePosition;
    
    [self setNeedsDisplay];
}

@end
//
//  CHTCopyLabel.m
//  CHTGithub
//
//  Created by cht on 2017/2/20.
//  Copyright © 2017年 cht. All rights reserved.
//

#import "CHTCopyLabel.h"

@implementation CHTCopyLabel

- (void)dealloc{
    
    NSLog(@"====");
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        [self attachTapHandle];
        
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        [self attachTapHandle];
    }
    return self;
}
//gesture
- (void)attachTapHandle{
    
    self.userInteractionEnabled = YES;
    UILongPressGestureRecognizer *longPress = [[UILongPressGestureRecognizer alloc]initWithTarget:self action:@selector(longPressEvent:)];
    [self addGestureRecognizer:longPress];
}

- (void)longPressEvent:(UILongPressGestureRecognizer *)longPress{
    
    [self becomeFirstResponder];
    
    UIMenuController *menuCtl = [UIMenuController sharedMenuController];
    [menuCtl setMenuItems:nil];
    [menuCtl setTargetRect:self.frame inView:self.superview];
    [menuCtl setMenuVisible:YES animated:YES];
    
}
//copy method
- (BOOL)canBecomeFirstResponder{
    
    return YES;
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender{
    
    return (action == @selector(copy:));
}

- (void)copy:(id)sender{
    
    UIPasteboard *pBoard = [UIPasteboard generalPasteboard];
    pBoard.string = self.text;
}
@end

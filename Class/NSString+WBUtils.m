//
//  NSString+WBUtils.m
//  WBToolKit
//
//  Created by JasioWoo on 15/6/20.
//  Copyright (c) 2015年 JasioWoo. All rights reserved.
//

#import "NSString+WBUtils.h"
#import <CoreText/CoreText.h>

#if TARGET_OS_IPHONE
    #define GMFont UIFont
#else
    #define GMFont NSFont
#endif

@implementation NSString (WBUtils)


+ (NSMutableAttributedString *)generateAttributedStringFromString:(NSString *)string
                                                     withFontName:(NSString *)fontName
                                                         fontSize:(float)fontSize
                                                    textAlignment:(NSTextAlignment)alignment
                                                    lineBreakMode:(NSLineBreakMode)lineBreakMode {
    NSMutableAttributedString *mutableAttributedString = [[NSMutableAttributedString alloc]   initWithString:string];
    NSMutableParagraphStyle *style = [[NSMutableParagraphStyle alloc] init];
    style.lineSpacing = fontSize / 2;
    style.alignment = alignment;
    style.lineBreakMode = lineBreakMode;
    [mutableAttributedString addAttribute:(NSString*)kCTParagraphStyleAttributeName value:style range:NSMakeRange(0, [mutableAttributedString length])];
    [mutableAttributedString addAttribute:NSFontAttributeName value:[GMFont fontWithName:fontName size:fontSize] range:NSMakeRange(0, [mutableAttributedString length])];
    
    return mutableAttributedString;
}

@end

//
//  NSString+WBUtils.h
//  WBToolKit
//
//  Created by JasioWoo on 15/6/20.
//  Copyright (c) 2015年 JasioWoo. All rights reserved.
//

#import <Foundation/Foundation.h>
#if TARGET_OS_IPHONE
    #import <UIKit/UIKit.h>
#else
    #import <AppKit/AppKit.h>
#endif


@interface NSString (WBUtils)


+ (NSMutableAttributedString *)generateAttributedStringFromString:(NSString *)string
                                                     withFontName:(NSString *)fontName
                                                         fontSize:(float)fontSize
                                                    textAlignment:(NSTextAlignment)alignment
                                                    lineBreakMode:(NSLineBreakMode)lineBreakMode;


@end

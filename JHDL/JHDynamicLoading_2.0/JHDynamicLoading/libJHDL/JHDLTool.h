//
//  JHDLTool.h
//  JHDL
//
//  Created by HaoCold on 2023/12/22.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface JHDLTool : NSObject

@property (nonatomic,  strong) UIViewController *ctrl;

+ (instancetype)share;

- (void)buttonAction;

@end

NS_ASSUME_NONNULL_END

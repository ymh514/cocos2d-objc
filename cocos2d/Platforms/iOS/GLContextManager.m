//
//  GLContextManager.m
//  cocos2d
//
//  Created by Jesse on 2023/11/2.
//

#import "GLContextManager.h"

@implementation GLContextManager

+ (instancetype)sharedManager {
    static GLContextManager *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[self alloc] init];
        // Don't initialize the EAGLContext here anymore since it will be passed externally
    });
    return sharedInstance;
}

- (void)setSharedContext:(EAGLContext *)externalContext {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedContext = externalContext;
    });
}

@end

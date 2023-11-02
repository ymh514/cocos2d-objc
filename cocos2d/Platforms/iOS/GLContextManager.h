//
//  GLContextManager.h
//  cocos2d
//
//  Created by Jesse on 2023/11/2.
//

#ifndef GLContextManager_h
#define GLContextManager_h

#import <Foundation/Foundation.h>
#import <OpenGLES/EAGL.h>

@interface GLContextManager : NSObject

@property (nonatomic, strong) EAGLContext *sharedContext;

// This class method provides access to the singleton instance.
+ (instancetype)sharedManager;

// Method to set the shared context. It can only be set once.
- (void)setSharedContext:(EAGLContext *)externalContext;

@end


#endif /* GLContextManager_h */

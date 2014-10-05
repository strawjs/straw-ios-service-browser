#import <Foundation/Foundation.h>
#import <Straw/Straw.h>

/**
 StrawServiceBrowser class provides the functionality to open external apps (for example, Safari).
 */
@interface StrawServiceBrowser : NSObject <STWService>

/**
 The application to use for open url
 */
@property (nonatomic, assign) UIApplication *application;

/**
 Open URL using external app (typically Safari).

 - params
   - (NSString *) params[@"url"] The url to open

 - errors
   - 1: 'url' parameter is not String

 @param params Service call params
 @param context Service call context

 @background
 */
- (void)openURL:(NSDictionary *)params withContext:(id<STWServiceCallContext>)context;

/**
 Set UIApplication instance.

 This method is only for test.

 @param application The application to set

 @onlyForTest
 */
- (void)setSharedApplication:(UIApplication *)application;

@end

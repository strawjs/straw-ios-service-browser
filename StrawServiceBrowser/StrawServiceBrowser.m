#import "StrawServiceBrowser.h"

@implementation StrawServiceBrowser

- (id)init
{
    self = [super init];

    if (self) {
        [self setSharedApplication:[UIApplication sharedApplication]];
    }

    return self;
}

- (NSString *)name
{
    return @"browser";
}

- (BOOL)isBackgroundJob:(NSString *)method
{
    return YES;
}

- (void)openURL:(NSDictionary *)params withContext:(id<STWServiceCallContext>)context
{
    NSString *url = params[@"url"];

    if ([url isKindOfClass:[NSString class]]) {

        [self.application openURL:[NSURL URLWithString:url]];

        [context succeed];

        return;
    }

    [context failWithCode:1 withMessage:@"'url' parameter is not String"];
}

- (void)setSharedApplication:(UIApplication *)application
{
    self.application = application;
}
@end

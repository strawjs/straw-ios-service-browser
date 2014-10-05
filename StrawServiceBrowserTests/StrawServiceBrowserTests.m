#import <XCTest/XCTest.h>
#import "StrawServiceBrowser.h"

#define HC_SHORTHAND
#import <OCHamcrest/OCHamcrest.h>

#define MOCKITO_SHORTHAND
#import <OCMockito/OCMockito.h>
@interface StrawServiceBrowserTests : XCTestCase

@end

@implementation StrawServiceBrowserTests

- (void)testName
{
    id<STWService> service = [[StrawServiceBrowser alloc] init];

    XCTAssertEqual(@"browser", [service name], @"service name is browser");
}

- (void)testIsBackgroundJob
{
    id<STWService> service = [[StrawServiceBrowser alloc] init];

    XCTAssert([service isBackgroundJob:@"openURL"], @"openURL is background job");
}

- (void)testOpenURL
{
    StrawServiceBrowser *service = [[StrawServiceBrowser alloc] init];

    // mock UIApplication
    UIApplication *application = mock([UIApplication class]);

    [service setSharedApplication:application];

    // mock Context
    id<STWServiceCallContext> context = mockProtocol(@protocol(STWServiceCallContext));

    [service openURL:@{@"url": @"http://example.com/"} withContext:context];

    // verify interaction with UIApplication
    [verifyCount(application, times(1)) openURL:[NSURL URLWithString:@"http://example.com/"]];

    // context succeeds
    [verifyCount(context, times(1)) succeed];
}

- (void)testOpenURLWithError
{
    StrawServiceBrowser *service = [[StrawServiceBrowser alloc] init];

    // mock UIApplication
    UIApplication *application = mock([UIApplication class]);

    [service setSharedApplication:application];

    // mock Context
    id<STWServiceCallContext> context = mockProtocol(@protocol(STWServiceCallContext));

    [service openURL:@{} withContext:context];

    // application has no interaction
    [verifyCount(application, never()) openURL:anything()];

    // context fails
    [verifyCount(context, times(1)) failWithCode:1 withMessage:@"'url' parameter is not String"];
}

@end

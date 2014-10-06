# straw-ios-service-browser v0.1.0

> Arbitrary URL open service for Straw iOS

# Service Methods

```
/**
 Open URL using external app (typically Safari)

 - params
   - (NSString *) params[@"url"] The url to open

 @param params Service call params
 @param context Service call context

 @background
 */
- (void)openURL:(NSDictionary *)params withContext:(id<STWServiceCallContext>)context
```

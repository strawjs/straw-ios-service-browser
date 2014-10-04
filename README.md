# straw-ios-service-browser v0.0.0

> Arbitrary URL open service for Straw iOS

# Service Methods

```
/**
 Open URL using external app (typically Safari)

 @param params params[@"url"] The url to open
 @param context Service call context
 */
- (void)openURL:(NSDictionary *)params withContext:(id<STWServiceCallContext>)context
```

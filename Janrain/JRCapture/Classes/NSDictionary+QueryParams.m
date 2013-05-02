//
// Created by nathan on 3/11/13.
//
// To change the template use AppCode | Preferences | File Templates.
//


#import "NSDictionary+QueryParams.h"
#import "JRConnectionManager.h"


@implementation NSDictionary (QueryParams)
- (NSString *)asGetQueryParamString
{
    NSMutableString *retVal = [NSMutableString string];

    for (id key in [self allKeys])
    {
        if ([retVal length] > 0) [retVal appendString:@"&"];
        NSString *value = [self objectForKey:key];
        NSString *urlEncodedValue = [value stringByAddingUrlPercentEscapes];
        [retVal appendFormat:@"%@=%@", key, urlEncodedValue];
    }

    return retVal;
}
@end
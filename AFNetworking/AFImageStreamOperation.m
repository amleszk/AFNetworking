
#import "AFImageStreamOperation.h"

@interface AFImageStreamOperation() <NSStreamDelegate>
@end

@implementation AFImageStreamOperation

- (UIImage *)responseImage {
    if (self.imageResponseBlock) {
        return self.imageResponseBlock(self.responseData);
    }
    return [super responseImage];
}

- (void)connection:(NSURLConnection *) connection didReceiveResponse:(NSURLResponse *)response
{
    self.imageStreamPartialData = [NSMutableData data];
    [super connection:connection didReceiveResponse:response];
}

- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data
{
    [self.imageStreamPartialData  appendData:data];
    [super connection:connection didReceiveData:data];
}

@end

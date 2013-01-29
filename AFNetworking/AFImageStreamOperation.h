
#import "AFImageRequestOperation.h"

@interface AFImageStreamOperation : AFImageRequestOperation

@property (nonatomic) NSMutableData* imageStreamPartialData;

typedef UIImage* (^AFImageStreamOperationResponseBlock)(NSData* responseData);
@property (readwrite, nonatomic, copy) AFImageStreamOperationResponseBlock imageResponseBlock;

@end

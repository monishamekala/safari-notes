#import <Foundation/Foundation.h>

@interface Note : NSObject

@property (nonatomic, strong) NSString *url;
@property (nonatomic, strong) NSString *noteText;
@property (nonatomic, strong) NSDate *createdAt;

- (instancetype)initWithURL:(NSString *)url noteText:(NSString *)noteText;

@end

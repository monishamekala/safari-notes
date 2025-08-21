#import "Note.h"

@implementation Note

- (instancetype)initWithURL:(NSString *)url noteText:(NSString *)noteText {
    self = [super init];
    if (self) {
        _url = url;
        _noteText = noteText;
        _createdAt = [NSDate date];
    }
    return self;
}

@end

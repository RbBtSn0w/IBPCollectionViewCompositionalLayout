#import "IBPNSCollectionLayoutGroupCustomItem.h"

FOUNDATION_IMPORT BOOL const _IBPAvailable(void);
@interface IBPNSCollectionLayoutGroupCustomItem()

@property (nonatomic, readwrite) CGRect frame;
@property (nonatomic, readwrite) NSInteger zIndex;

@end

@implementation IBPNSCollectionLayoutGroupCustomItem

+ (instancetype)customItemWithFrame:(CGRect)frame {
    if (_IBPAvailable()) {
        return [NSClassFromString(@"NSCollectionLayoutGroupCustomItem") customItemWithFrame:frame];
    } else {
        return [self customItemWithFrame:frame zIndex:0];
    }
}

+ (instancetype)customItemWithFrame:(CGRect)frame zIndex:(NSInteger)zIndex {
    if (_IBPAvailable()) {
        return [NSClassFromString(@"NSCollectionLayoutGroupCustomItem") customItemWithFrame:frame zIndex:zIndex];
    } else {
        return [[self alloc] initWithFrame:frame zIndex:zIndex];
    }
}

- (instancetype)initWithFrame:(CGRect)frame zIndex:(NSInteger)zIndex {
    self = [super init];
    if (self) {
        self.frame = frame;
        self.zIndex = zIndex;
    }
    return self;
}

- (nonnull id)copyWithZone:(nullable NSZone *)zone {
    return [IBPNSCollectionLayoutGroupCustomItem customItemWithFrame:self.frame zIndex:self.zIndex];
}

@end

#import <UIKit/UIKit.h>

@interface CustomNoteCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *urlLabel;
@property (weak, nonatomic) IBOutlet UILabel *noteLabel;
@property (weak, nonatomic) IBOutlet UILabel *dateLabel;

@end

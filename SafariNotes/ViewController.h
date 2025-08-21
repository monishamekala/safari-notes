#import <UIKit/UIKit.h>
#import <WebKit/WebKit.h>

@interface ViewController : UIViewController

// IBOutlets are connected to storyboard UI elements
@property (weak, nonatomic) IBOutlet WKWebView *webView;
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (weak, nonatomic) IBOutlet UITextField *noteField;

// IBAction for the "Save Note" button
- (IBAction)saveNote:(id)sender;

@end

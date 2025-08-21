#import "Note.h"   // import model
...
@property (strong, nonatomic) NSMutableArray<Note *> *notes;
...
- (IBAction)saveNote:(id)sender {
    if (self.webView.URL == nil || self.noteField.text.length == 0) {
        return;
    }
    
    NSString *currentURL = self.webView.URL.absoluteString;
    NSString *note = self.noteField.text;
    
    Note *entry = [[Note alloc] initWithURL:currentURL noteText:note];
    [self.notes addObject:entry];
    
    self.noteField.text = @"";
    [self.tableView reloadData];
}
...
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"Cell"];
    }
    
    Note *entry = self.notes[indexPath.row];
    cell.textLabel.text = entry.url;
    cell.detailTextLabel.text = entry.noteText;
    
    return cell;
}

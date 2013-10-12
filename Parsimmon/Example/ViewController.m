//
//  ViewController.m
//  Example
//
//  Created by Ayaka Nonaka on 10/10/13.
//
//

#import "ViewController.h"
#import "ParsimmonTagger.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *inputTextField;
@property (weak, nonatomic) IBOutlet UITextView *outputTextView;

@property (strong, nonatomic) ParsimmonTagger *tagger;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.tagger = [[ParsimmonTagger alloc] init];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)parsimmonAction:(id)sender {
    NSArray *taggedTokens = [self.tagger tagWordsInText:self.inputTextField.text];
    [self.outputTextView setText:[NSString stringWithFormat:@"%@", taggedTokens]];
    [self.view endEditing:YES];
}

@end

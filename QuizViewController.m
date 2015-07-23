//
//  QuizViewController.m
//  Quiz
//
//  Created by dong yoon kang on 7/21/15.
//  Copyright (c) 2015 dong yoon kang. All rights reserved.
//

#import "QuizViewController.h"

@interface QuizViewController ()

@property (nonatomic) int currentIndex ;
@property (nonatomic,copy) NSArray *questions ;
@property (nonatomic, copy) NSArray *answers ;

@property (nonatomic, weak) IBOutlet UILabel *questionLabel ;
@property (nonatomic, weak) IBOutlet UILabel *answerLabel ;

@end

@implementation QuizViewController


- (instancetype) initWithNibName:(NSString *)nibNameOrNil
                          bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil] ;
    
    if(self) {
        self.questions = @[@"What type is Pikachu?",
                           @"What type is Bulbasaur?",
                           @"What type is Charizard?"] ;
        self.answers = @[@"Lightening duh",
                         @"Grass duh",
                         @"Fire duh"] ;
    }
    return self ;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidAppear:(BOOL)animated {
    
}

- (void)viewDidDisappear:(BOOL)animated {
    
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/


- (IBAction)showQuestions:(id)sender
{
    self.currentIndex++ ;
    if (self.currentIndex >= [self.questions count]) {
        self.currentIndex = 0 ;
    }
    NSString *question = self.questions[self.currentIndex] ;
    self.questionLabel.text = question ;
    
    self.answerLabel.text = @"hidden answer" ;
    
}

- (IBAction)showAnswer: (id)sender
{
    NSString *answer = self.answers[self.currentIndex] ;
    self.answerLabel.text = answer ;
}

@end

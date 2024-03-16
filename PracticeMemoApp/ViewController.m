
#import "ViewController.h"

@interface ViewController ()

@property (strong, nonatomic) UILabel *counterLabel; // 카운터 값을 표시할 UILabel의 참조를 보관
@property (nonatomic) NSInteger counterValue; // 카운터의 현재 값을 저장하는 정수형 변수

@end

@implementation ViewController

// ViewController가 로드될 때 시스템에 의해 호출되는 메소드
- (void)viewDidLoad {
    [super viewDidLoad];
    // 뷰 컨트롤러의 배경색을 흰색으로 설정
    self.view.backgroundColor = [UIColor whiteColor];
    
    // 카운터의 초기값을 0으로 설정
    self.counterValue = 0;

    // 카운터 레이블과 증가 버튼을 설정하는 helper 메소드를 호출
    [self setupCounterLabel];
    [self setupIncrementButton];
    
    self.practiceDictionary1;
}

// 카운터 레이블을 설정하고 뷰에 추가하는 메소드
- (void)setupCounterLabel {
    // UILabel 객체를 생성하고, 위치와 크기를 지정
    self.counterLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, 100, self.view.bounds.size.width - 40, 40)];
    // 텍스트 정렬을 중앙으로 설정
    self.counterLabel.textAlignment = NSTextAlignmentCenter;
    // 폰트 크기를 설정
    self.counterLabel.font = [UIFont systemFontOfSize:24];
    // 초기 카운터 값을 레이블에 표시
    self.counterLabel.text = [NSString stringWithFormat:@"%ld", (long)self.counterValue];
    // 설정된 레이블을 뷰의 서브뷰로 추가
    [self.view addSubview:self.counterLabel];
}

// 증가 버튼을 설정하고 뷰에 추가하는 메소드
- (void)setupIncrementButton {
    // UIButton 객체를 생성하고, 위치와 크기를 지정
    UIButton *incrementButton = [UIButton buttonWithType:UIButtonTypeSystem];
    incrementButton.frame = CGRectMake(20, 150, self.view.bounds.size.width - 40, 40);
    // 버튼의 타이틀을 "Increment"로 설정
    [incrementButton setTitle:@"Increment" forState:UIControlStateNormal];
    // 버튼이 탭될 때 호출될 메소드를 addTarget:action:forControlEvents: 메소드를 사용해 연결
    [incrementButton addTarget:self action:@selector(incrementCounter) forControlEvents:UIControlEventTouchUpInside];
    // 설정된 버튼을 뷰의 서브뷰로 추가
    [self.view addSubview:incrementButton];
}

// 증가 버튼이 탭될 때 호출되는 메소드
- (void)incrementCounter {
    // 카운터 값을 1 증가
    self.counterValue++;
    // 변경된 카운터 값을 레이블에 반영
    self.counterLabel.text = [NSString stringWithFormat:@"%ld", (long)self.counterValue];
}


- (void) practiceDictionary1 {
    
    /// NSDictionary 생성하기
    NSDictionary *testDictionary = @{@"key1": @"value1", @"key2": @"value2", @"key3": @"value3"};
    NSLog(@"Dictionary: %@", testDictionary);
    
    /// 딕셔너리 값 접근하기
    NSString *value = testDictionary[@"key2"];
    NSLog(@"value for key2: %@", value);

    /// 딕셔너리 순회하기
    for (NSString *key in testDictionary) {
        NSLog(@"Key: %@, Value: %@", key, testDictionary[key]);
    }
    
    /// NSMutableDictionary 생성하기
    NSMutableDictionary *mutableDictionary = [NSMutableDictionary dictionary];
    [mutableDictionary setObject: @"value1" forKey:@"key1"];
    [mutableDictionary setObject:@"value2" forKey:@"key2"];
    NSLog(@"Mutable Dictionary: %@", mutableDictionary);
    
    /// 딕셔너리 수정하기
    /// 키가 "key1"인 값을 수정
    [mutableDictionary setObject:@"newValue1" forKey:@"key1"];
    /// 새로운 키-밸류 추가
    [mutableDictionary setObject:@"value3" forKey:@"key3"];
    NSLog(@"Updated Mutable Dictionary: %@", mutableDictionary);
    
    /// 딕셔너리 제거하기
    [mutableDictionary removeObjectForKey:@"key2"];
    NSLog(@"Mutable Dictionary after removing key2: %@", mutableDictionary);
}


@end

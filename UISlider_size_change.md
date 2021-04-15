다양하게 테스트 해 보았으나 

결론은 Custom Class 를 만드는것으로

UISlider를 상속하는 클래스를 만들어 요 아래를 추가해본다

- (CGRect)trackRectForBounds:(CGRect)bounds { 
CGRect rect = CGRectMake(0, 0, 100, 30);//change it to any size you want 
return rect; 
}


그럼완스엉~!

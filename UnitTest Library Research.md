# yerinaGit
Unit Test Library

1. Nimble
Nimble: "재빠른"
Error document화

특징 및 장점
1. XCTAssert 와는 달리 매번 사용자 임의 실패 메시지를 지정할 필요가 없다 
 
XCTAssert에서 실패 메세지를 작성해주지 않으면,
'''
XCTAssertTrue(contains(sillyMonkeys, kiki))
'''
테스트 실패 결과 - XCTAssertTrue failed"

'''
XCTAssertTrue(contains(sillyMonkeys, kiki), "Expected sillyMonkeys to contain 'Kiki'")
'''
테스트 실패 결과 - "Expected sillyMonkeys to contain 'Kiki'"
 
'''
expect(sillyMonkeys).to(contain(kiki))
'''
테스트 실패 결과 - "expected to contain <Monkey(name: Kiki, sillines: ExtremelySilly)>, got <[Monkey(name: Jane, silliness: VerySilly)]>"

2. Description 사용 가능

'''
func testExample() throws {
    expect(1 + 1).to(equal(3), description: "failed - 덧셈 기능을 테스트")
}
'''

3. 다양한 assertion 제공

- toEventually, toEventuallyNot
  Async한 테스트 가능
- type / class 형에 관한 테스트
- true / false - nil 테스트
- timeout 테스트


2. Quick

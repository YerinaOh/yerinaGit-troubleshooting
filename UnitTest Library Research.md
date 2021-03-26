# Unit Test Library

## 1. Nimble
Nimble: "재빠른"
Error document화

### 특징 및 장점
1. XCTAssert 와는 달리 매번 사용자 임의 실패 메시지를 지정할 필요가 없다 
 
XCTAssert에서 실패 메세지를 작성해주지 않으면,

`
XCTAssertTrue(contains(sillyMonkeys, kiki))
`

테스트 실패 결과 - XCTAssertTrue failed"

`
XCTAssertTrue(contains(sillyMonkeys, kiki), "Expected sillyMonkeys to contain 'Kiki'")
`

테스트 실패 결과 - "Expected sillyMonkeys to contain 'Kiki'" 

`
expect(sillyMonkeys).to(contain(kiki))
`

테스트 실패 결과 - "expected to contain <Monkey(name: Kiki, sillines: ExtremelySilly)>, got <[Monkey(name: Jane, silliness: VerySilly)]>"

2. Description 사용 가능

`
func testExample() throws {
    expect(1 + 1).to(equal(3), description: "failed - 덧셈 기능을 테스트")
}
`

3. 다양한 assertion 제공

🚀 toEventually, toEventuallyNot - Async한 테스트 가능

🚀 type / class 형에 관한 테스트

🚀 true / false - nil 테스트

🚀 timeout 테스트

예시 참고- https://ios-development.tistory.com/m/338

## 2. Quick

Swift 프레임워크

개념: BDD (Behavior-Driven Development)를 위한 프레임워크

Quick은 desciription과 함께 클로저로 블럭단위 묶음으로 코딩하게끔 하여 가독성 상승을 위해 사용

given(시나리오 정의)-when(시나리오 조건)-then(시나리오를 완료했을 때 보장되는 결과 명시)
Quick 프레임워크 사용 방법

클로저 블록 단위 Given, When, Then 구성
- Given = describe
- When = context
- Then = it
- 초기화 블록: beforeEach

`
import Quick
`

class에는 QuickSpec 상속

`
class NimbleQuickTests: QuickSpec {
`

spec()이라는 함수 override

`
class NimbleQuickTests: QuickSpec {
    override func spec() {
    }
}
`

Given = describe

`
        describe("뷰가 로드되면") { // Given
            var myModule: Converter!
            beforeEach {
                myModule = Converter()
            }
 `

When - context

`
 context("텍스트필드에 입력되면, convert된다") { // When
 beforeEach {
   myModule.starPrint(number: 5)
  }
`

Then - it

`
 it("값이 잘 변환되었는지 테스트") { // Then
   expect(myModule.result).to(equal("****"))
  }
`

Quick& Nimble 예제-
https://medium.com/inloopx/tdd-using-quick-nimble-244b14b09e3d

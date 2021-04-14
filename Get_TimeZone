시계앱을 만드는데 너무 빡세다 
나와있는것도 없고,,
 
우선 timeZone 에서 제공하는 다양한 국가 identifire는 438개나된다
여기에 [String] 리스트가 담겨있음..
`
 for tz in TimeZone.knownTimeZoneIdentifiers {
 	print (tz)
 }
`

요놈들의 identiFire(tz)는 영어로 되어있기 때문에
 
처음에 서치할 때는 translate 하려면 별도의 XML 을 가져와서 compare 해야한다고 ,,
완전 멘붕이지만 분명 방법이있을거라고 생각하고 이것저것 시도해봄.,
결과 아래와같이 하면되더라
`
let timeZone = TimeZone(identifier: tz)
var translatedName : String = timeZone?.localizedName(for: NSTimeZone.NameStyle.shortGeneric, locale: Locale(identifier: "ko_KR")) ?? ""
`
머야 왜 매핑하라구했죵,, ㅜㅜ
 
저 name 에는 무조건 뒤에 "시간" 이 붙길래 삭제해서 깔끔하게 사용해줬다
 
그럼 저 나라의 시간!을 가져오려면 어떻게 해야할것인가
`
let date = DateFormatter()
            date.locale = Locale(identifier: "ko_KR")
            date.timeZone = timeZone
            date.dateFormat = "HH:mm"
`
`
print("time : " + date.string(from: Date()))
`
결국 이쁘게 잘담겼음!
`
time : 17:43
`

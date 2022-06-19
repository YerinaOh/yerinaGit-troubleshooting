CaseIterable protocol
-> 열거형 값을 배열처럼 해주는 역할

하드코딩으로 값 add 할 필요가 있는 부분에 사용

enum SettingMenu: String, CaseIterable, Identifiable {
    case service = "서비스"
    case info = "앱 정보"
    case terms = "약관"
    case call = "고객센터"

    var title: String { rawValue }
    var id: String { rawValue }

    var SettingMenu: [String] {
        switch self {
        case .service: return Service.allCases.map { $0.title }
        case .info: return Info.allCases.map { $0.title }
        case .terms: return Terms.allCases.map { $0.title }
        case .call: return Call.allCases.map { $0.title }
        }
    }
    

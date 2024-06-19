import Foundation

// Menu 클래스 정의
class Menu {
    var image: String
    var name: String
    var price: String
    var detail: String
    
    init(image: String, name: String, price: String, detail: String) {
        self.image = image
        self.name = name
        self.price = price
        self.detail = detail
    }
}
//테스트
var menu1: Menu = Menu(image: "sdfsdf", name: "name1", price: "3000", detail: "this is menu1")
var menu2: Menu = Menu(image: "sdfsdf", name: "name2", price: "2000", detail: "this is menu2")
// 메뉴를 저장할 배열
var menus: [Menu] = [menu1, menu2]
// 주문 숫자 카운터
var counter: Int = 4

// 메뉴 생성 로직
func createMenu() {
    print("메뉴 생성을 시작합니다.")
    
    // 이미지 선택 버튼과 연동
    print("이미지를 입력하세요: ")
    let image = readLine() ?? ""
    
    // 메뉴명 입력창과 연동
    print("메뉴명을 입력하세요: ")
    let name = readLine() ?? ""
    
    // 가격 입력창과 연동
    print("가격을 입력하세요: ")
    let price = readLine() ?? ""
    
    // 설명 입력창과 연동
    print("설명을 입력하세요: ")
    let detail = readLine() ?? ""
    
    // Menu 객체 생성
    let menu = Menu(image: image, name: name, price: price, detail: detail)
    
    // 배열에 추가
    menus.append(menu)
    // 팝업 또는 메세지
    print("메뉴가 추가되었습니다")
}

    
    // 메뉴 목록 출력
//func checkMenu() {
//    print("\n현재 메뉴 목록:")
//    for menu in menus {
//        print("이미지: \(menu.image), 이름: \(menu.name), 가격: \(menu.price)원, 설명: \(menu.detail)")
//    }
//}

// 메뉴 리스트(home) 메뉴 객체 뷰
func viewMenu() {
    for menu in menus {
        // 테이블 뷰랑 연동(?)
        print("\(menu.image)")
        print("\(menu.name)")
        print("\(menu.price)")
        print("==============")
    }
}

func menudetail() {
    for menu in menus {
        // 테이블 뷰랑 연동(?)
        print("\(menu.image)")
        print("\(menu.name)")
        print("\(menu.price)")
        print("==============")
    }
}

// 메뉴 삭제
func deleteMenu(_ abc: Int) {
    // 삭제 버튼을 눌렀을 경우, 메뉴 디테일 페이지에서 인덱스 연동을 할 방법이 필요함
    menus.remove(at: abc)
}
// 메뉴 세부사항 수정 로직
func modifyMenu(_ count: Int, _ bbb: String  ) {
    switch bbb {
    case "image":
        print("이미지 변경사항을 입력하세요")
        menus[count].image = readLine() ?? ""
    case "name":
        print("이름 변경사항을 입력하세요")
        menus[count].name = readLine() ?? ""
    case "price":
        print("가격 변경사항을 입력하세요")
        menus[count].price = readLine() ?? ""
    case "detail":
        print("설명 변경사항을 입력하세요")
        menus[count].detail = readLine() ?? ""
    default:
        return
    }
    
}
// 수량 체크
func count() {
    
    // + 버튼을 눌렀을 경우
    counter += 1
    // - 버튼을 눌렀을 경우
    counter -= 1
}

// 계산
func operation(_ selected: Int) {
    var price: Int = 0
    price = counter * Int(menus[selected].price)!
    print(price)
    counter = 1
}

// 선택된 메뉴 하나 생성
// 메뉴 리스트에서 선택했을 때, 해당 메뉴의 속성을 따로 뽑아서 배열에 저장
// 메뉴 디테일에서 정보 노출 및 계산에 활용하기 위한 가격 정보 캡쳐



//4주차
/* UIKit과 View

<UIKit>
 
IOS 또는 tvOS 앱을 위한 그래픽 기반의 UI를 구성하고 관리하는 프레임워크
 
제스처, 애니메이션, 그림그리기, 이미지 처리 등 사용자 이벤트들을 처리

화면을 구성하기 위해 필수적으로 상속해야함
 
<View>

IOS 어플 화면에서 보는 내용은 윈도우와 뷰를 사용하여 나타냄

UIView 클래스나 UIView의 하위클래스의 인스턴스로 윈도우의 한 영역에서 콘텐츠 표시
 
제스터 혹은 터치 이벤트 처리
ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ
 뷰의 계층구조와 서브뷰
 - 다른 뷰를 위한 컨테이너로써의 역할도 병행
 - 자식 뷰는 서브 뷰, 부모 뷰는 슈퍼 뷰로 불림
 - 슈퍼뷰와 서브뷰 관계에 있을 경우 슈퍼뷰가 서브뷰에 가려짐
 - 하나의 슈퍼뷰에 2개 이상의 서브뷰가 겹치게 된다면 나중에 추가된 서브뷰가 맨 위에 보여짐
 
 뷰 컨트롤러
 - UIKit을 사용하는 앱의 인터페이스를 관리하기 위한 도구
 
 - 뷰컨트롤러는 하나의 루트 뷰 만을 관리하고 해당루트 뷰가 여러개의 서브 뷰를 가지는 방식으로 구성
 
 종류 - 네비게이션 , 탭 바, 테이블 뷰, 그 외 여러 컨트롤러 존재
 ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ
 오토레이아웃
 
 - 안드로이드의 Constraint layout과 유사

 - 다양한 디바이스 크기에 대응하기 위해 사용

 - 뷰에 주어진 조건에 따라 동적으로 계산하여 크기 조절하여 내, 외부 변화에 동적으로 반응

 - 오토레이아웃 사용목적
 
 - 디바이스의 크기가 다양한 경우

 - 디바이스를 회전할 경우

 - 지역화(다국어)를 지원하는 경우

 - 콘텐츠가 동적으로 보여지는 경우

 - 상태표시줄에 녹음 시 나타나는 오디오바와 전화 중에 나타나는 액티브 콜이 보여지거나 사라질 경우
ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ
 Constant와 Multiplier
 
 Constant = 뷰와 레이아웃의 간격(값)
 
 Multiplier = 뷰와 레이아웃간의 비율(%)
 ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ
*/
// <오토레이아웃 코드>

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var stackView: UIStackView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        imageView.translatesAutoresizingMaskIntoConstraints = false
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            imageView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            imageView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
            imageView.widthAnchor.constraint(equalToConstant: 150),
            imageView.heightAnchor.constraint(equalToConstant: 150),
            
            stackView.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor, constant: -20),
            stackView.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            stackView.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor, constant: -20)
        ])
    }


}
//로그인 화면 - 이미지뷰, 에셋

/*
 
 <UIImageView>
 
 - 안드로이드의 ImageView와 같은 기능
 
 - 이미지를 넣기 위한 뷰
 
 <이미지 표시 방법>
 
 - Scale To Fill = 이미지 비율을 무시하고 그림을 넣음
 - Aspect Fit = 이미지 비율을 유지한 채로 이미지 삽입, 비율이 맞지 않을 경우 내부에 여백이 발생
 - Aspect Fill = 이미지 비율을 유지한 채로 이미지 삽입하지만 그림이 잘리게 됨,
                Clips to Bounds를 Yes로 하면 그림이 잘려서 나오지 않게 됨
                인물, 동물 사진에는 적합하지 않음
 - Redraw  = 설명없노~~~~
 
ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ
 
 <Assets (에셋)>
 - 안드로이드의 Drawable/Raw과 유사
 - 이미지 파일, mp3, json파일 등 다양한 파일을 삽입을 할 수 있음
 
 
 
 
 
 */

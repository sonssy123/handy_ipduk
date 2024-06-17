# handy_ipduk
Flutter, Dart, Firebase Authentication, Firebase Storage, FireStore를 활용해서
"엔터테인먼트" 모바일 애플리케이션의 프로토타입을 구현했습니다.

![alt text](img1.daumcdn-1.gif)

# 프로젝트 소개
- "엔터테인먼트의 소속된 아티스트 정보와 서비스를 제공"을 주제로 한 Flutter 애플리케이션입니다.

- 소통 및 팬 서비스 제공으로 팬돔 형성과 팬층 확보 및 아티스트의 굿즈를 판매하여 수익성 기대할 수 있으며,
추후 새로운 아티스트의 양성 및 컨텐츠와 이벤트를 통한 인지도 향상과 투자금 확보가 가능합니다.

- 소비자들이 선호하는 아티스트의 팬층을 유지하고 굿즈 판매를 통한 수익성 확보 및 추후 새로운 아티스트 양성까지 기대할 수 있는 플랫폼을 제작했습니다.

![alt text](img.gif)

# 개발 기간
- 2024.02.19(월) ~
- Flutter 공부
- 아이디어 및 방향 정하기
- 기획
- 설계
- 코딩
- 테스트
- 배포

![alt text](img1.daumcdn-2.gif)

# 개발환경
- Version : Dart 3.0.2
- IDE : Visual Studio Code
- Framework : Flutter 3.22.2
- ORM : FireStore

![alt text](img1.daumcdn-4.gif)

# 기술 스택
- Server : Firebase
- DataBase : FireStore
- OCR : Firebase Storage

![alt text](img1.daumcdn-3.gif)

# 프로젝트 아키텍처
- 클린 아키텍처

![alt text](189ed0fe43d581b7d.gif)

# 주요 기능
- 아티스트 정보 제공
  - 유저가 선호하는 아티스트를 선택한다.
  - 선택된 아티스트의 로고 이미지가 즐겨찾기에 등록되면서 로고 이미지를 터치하면 해당 아티스트의 정보를 제공해준다.

- 아티스트 굿즈 상품 판매
  - 선호하는 아티스트의 굿즈 상품을 PageVew를 사용해서 광고 이미지로 홍보하고, 선호하는 아티스트의 Best와 New 상품을 유저에게 추천해주며, 원하는 상품 이미지를 클릭하면 해당 상품 정보 페이지로 이동해서 장바구니 담기 및 상품을 구매 할 수 있다.

- 아티스트 일정 제공
  - 캘린더에서 선호하는 아티스트의 콘서트와 팬 싸인회 등 이벤트 일정 정보를 제공하며, 이벤트 참여 신청이 가능하고, 유저가 신청한 이벤트 신청내역 정보 확인이 가능하다.

- 유저 정보 제공
  - 유저 정보를 제공하면서 선택된 선호하는 아티스트 정보, 이벤트 신청 내역, 굿즈 상품 구매 내역, 장바구니 정보를 저장한다. 

  ![alt text](edd210b5476d0c1aa88ea7efcc6a837bd6349b29.gif)

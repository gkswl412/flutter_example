import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('버튼'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              onPressed: (){},
              child: Text(
                'Button Style',
              ),
              style: ButtonStyle(
                // Material State
                //
                //  hovered - 호버링 상태 (마우스 커서를 올려놓은상태)
                //  focused - 포커스 됐을때 (텍스트 필드 : 커서 깜빡일 때)
                //  pressed(o)_ - 눌렸을때
                //  dragged - 드래그 됐을때
                //  selected - 선택됐을때 (체크박스, 라디오 버튼)
                //  scrollUnder - 다른 컴포넌트 밑으로 스크롤링 됐을때
                //  disabled(o) - 비활성화 됐을때
                //  error - 에러상태
                backgroundColor: MaterialStateProperty.resolveWith(
                    (Set<MaterialState> states) {
                      if(states.contains(MaterialState.pressed)){
                        return Colors.green;
                      }
                      return Colors.black;
                    }
                ),
                foregroundColor: MaterialStateProperty.resolveWith(
                    (Set<MaterialState> states) {
                      if(states.contains(MaterialState.pressed)){
                        return Colors.white;
                      }

                      return Colors.red;
                    }
                ),
                padding: MaterialStateProperty.resolveWith(
                    (Set<MaterialState> states) {
                      if(states.contains(MaterialState.pressed)){
                        return EdgeInsets.all(100.0);
                      }
                      return EdgeInsets.all(15.0);
                    }
                )
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                // 메인 칼라
                backgroundColor: Colors.red,
                // 글자 및 애니메이션 색깔
                foregroundColor: Colors.black,
                // 그림자 색깔
                shadowColor: Colors.green,
                // 3D 입체감의 높이
                elevation: 10.0,
                textStyle: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 20.0,
                ),
                padding: EdgeInsets.all(32.0),
                side: BorderSide(
                  color: Colors.black,
                  width: 4.0,
                ),
              ),
              child: Text('Elevated Button'),
            ),
            OutlinedButton(
              onPressed: () {},
              child: Text('Outlined Button'),
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.green,
                backgroundColor: Colors.yellow,
                elevation: 10.0,
              ),
            ),
            TextButton(
                onPressed: () {},
                child: Text('Text Button'),
                style: TextButton.styleFrom(
                  foregroundColor: Colors.blue,
                  backgroundColor: Colors.white,
                )),
          ],
        ),
      ),
    );
  }
}

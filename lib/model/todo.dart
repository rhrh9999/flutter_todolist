//클래스 선언
//클래스명은 대문자로 시작해야함
//클래스는 멤버 변수와 멤버 함수를 가질 수 있다.
class ToDo{
  //클래스에서 정의한 아래 변수들을 '멤버변수'들이라고 한다.
  String? id;
  String? todoText;
  bool isDone;

  //생성자(constructor)
  //생성자는 인스턴스가 생성될 때, 딱 한번만 호출됨

  ToDo({
    //생성자의 body
    //this를 붙이면 dart에게 멤버변수임을 알리는 것
    required this.id,
    required this.todoText,
    this.isDone=false,
});

  //생성자로 리스트 값들을 만든다.
  static List<ToDo> todoList(){
    return[
      ToDo(id: '01', todoText: 'Morning Exercise', isDone: true),
      ToDo(id: '02', todoText: 'Buy Groceries', isDone: true),
      ToDo(id: '03', todoText: 'Check Emails', ),
      ToDo(id: '04', todoText: 'Team Meeting', ),
      ToDo(id: '05', todoText: 'Work on mobile apps for 2 hour',),
      ToDo(id: '06', todoText: 'Dinner with Jenny', ),
    ];
  }
}
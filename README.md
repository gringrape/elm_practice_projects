# elm_practice_projects
CodeSoom 과제를 Elm 으로 만들어보면서 함수형 프로그래밍과 친해지기



## Week 1 - 1. Simple counter

간단한 Counter 작성하기

### 비교

- 함수형 언어라 다 함수기 때문에, 선언부가 간단한 점이 마음에 든다.

- String interpolation 은 별도의 패키지를 써야 할 것 같다.
- Message, View, Model 의 형식에 따라 작성하다보니,  프레임워크를 사용하고 있는 느낌이 든다.

## Week 1 - 2. Simple calculator

간단한 계산기 만들기

- https://github.com/CodeSoom/week1-assignment-2

### 후기

자바스크립트와 달리 변수의 타입을 강제하는 언어이면서 함수형 언어라 구현이 매우 힘들었다. Nullable 을 자바스크립트에서와 같이 쓰고 싶었으나 Elm 에서는 Maybe , Just 라는 식으로 Nullable 개념을 활용하고 있기 때문에 어려웠다. |> 연산자의 활용도 아쉽다. 인라인 함수나 복잡한 함수를 미리 지정해 놓고 쭉 |> 처리하면 코드가 꽤 괜찮아 질것같은 생각이 든다.  결론적으로 쓰레기 같은 코드를 만들어냈지만 즐거웠다. 나아지면 된다. 

### 자바스크립트와 비교

- 타입 강제
-  Null 의 처리  null  vs Maybe, Just
- pipeline operator
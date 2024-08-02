@Entry
@Component
struct Index {
  @State message: string = 'Hello World';

  build() {
    Column() {
      Row(){

      }
      .width('100%')
      .height(50)
      .backgroundColor(Color.White)
    }
    .width("100%")
    .height("100%")
    .backgroundColor('#ccc')
  }
}
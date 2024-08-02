
@Extend(Text)
function textFn(bgColor: ResourceColor) {
  .fontColor('#f00')
  .fontSize(50)
  .backgroundColor(bgColor)
}

@Entry
@Component
struct Index {

  build() {
    Column() {
      Swiper(){
        Text('hello')
          .textFn(Color.Blue)
        Text('hello1')
          .textFn(Color.Green)
        Text('hello2')
          .textFn(Color.Yellow)
        Text('hello3')
          .textFn(Color.Pink)
      }
      .width('100%')
      .aspectRatio(2)
    }
    .width("100%")
  }
}

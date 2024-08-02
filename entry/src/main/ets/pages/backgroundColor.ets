@Entry
@Component
struct Index {
  @State message: string = 'Hello World';

  build() {
    Column({ space: 15 }) {
      Text('背景演示')
        .width(300)
        .height(200)
        .backgroundColor(Color.Pink)
        .backgroundImage($r('app.media.startIcon'), ImageRepeat.X) //重复

      Text('背景演示')
        .width(300)
        .height(200)
        .backgroundColor(Color.Pink)
        .backgroundImage($r('app.media.startIcon'))
        // .backgroundImagePosition({x: 50, y:50})
        .backgroundImagePosition(Alignment.Center)
        // .backgroundImageSize(ImageSize.Contain)
        .backgroundImageSize({ width: 150, height: 150 })
    }
    .width("100%")
    .height("100%")
    .padding(20)
    .justifyContent(FlexAlign.SpaceBetween)
  }
}


@Entry
@Component
struct Index {
  @State message: string = 'Hello World';

  build() {
    // RelativeContainer() {
    //   Text(this.message)
    //     .id('HelloWorld')
    //     .fontSize(50)
    //     .fontWeight(FontWeight.Bold)
    //     .fontColor(Color.Orange)
    //     .alignRules({
    //       center: { anchor: '__container__', align: VerticalAlign.Center },
    //       middle: { anchor: '__container__', align: HorizontalAlign.Center }
    //     })
    // }
    // .height('100%')
    // .width('100%')
    Column() {
      Text("小说简介3")
        .width("100%")
        .fontSize(20)
        .fontWeight(FontWeight.Bold)
      Row() {
        Text('都市')
          .padding(10)// .margin(5)
          .backgroundColor('#cccccc')
        Text('都市')
          .padding(10)
          .backgroundColor('#cccccc')
        Text('都市')
          .padding(10)
          .backgroundColor('#cccccc')
        Text('都市')
          .padding(10)
          .backgroundColor('#cccccc')
      }
      .width("100%")

      Text('好多好多字需要省略号，好多好多字需要省略号，好多好多字需要省略号，好多好多字需要省略号，好多好多字需要省略号')
        .lineHeight(25)
        .textOverflow({
          overflow: TextOverflow.Ellipsis
        })
        .maxLines(2)
      Row() {
        Image($r('app.media.background'))
          .width(200)
      }
      .width('100%')
    }
    .width("100%")
  }
}
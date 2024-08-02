interface ClassifyListType {
  text: string
  handle: () => void
}

@Component
struct HomeClassify {
  private scroller: Scroller = new Scroller()
  @State classifyList: ClassifyListType[] = [
    {text:'智慧办公', handle: () => {}},
    {text:'智慧家居', handle: () => {}},
    {text:'华为手机', handle: () => {}},
    {text:'音乐娱乐', handle: () => {}},
    {text:'运动健康', handle: () => {}},
    {text:'智慧办公', handle: () => {}},
    {text:'智慧办公', handle: () => {}},
    {text:'智慧办公', handle: () => {}},
    {text:'智慧办公', handle: () => {}},
    {text:'智慧办公', handle: () => {}},
    {text:'智慧办公', handle: () => {}},
    {text:'智慧办公', handle: () => {}},
    {text:'智慧办公', handle: () => {}},
    {text:'智慧办公', handle: () => {}},
    {text:'智慧办公', handle: () => {}},
    {text:'智慧办公', handle: () => {}},
    {text:'智慧办公', handle: () => {}},
    {text:'智慧办公', handle: () => {}},
    {text:'智慧办公', handle: () => {}},
    {text:'智慧办公', handle: () => {}},
  ]

  build() {
    Column() {
      Scroll(this.scroller) {
        Grid() {
          ForEach(this.classifyList, (item: ClassifyListType, index:number) => {
            GridItem() {
              Column() {
                Image($r(`app.media.classify0${index+1}`))
                  .width(50)
                Text(item.text)
                  .fontSize(12)
                  .fontColor('#fd262626')
              }
              .width('100%')
              .height('100%')
            }
          })
        }
        .columnsTemplate('1fr 1fr 1fr 1fr 1fr 1fr 1fr 1fr 1fr 1fr')
        .rowsTemplate('1fr 1fr')
        .height(150)
        .width('200%')
      }
      .scrollable(ScrollDirection.Horizontal)
      .scrollBar(BarState.Off)

      ScrollBar({ scroller: this.scroller, direction: ScrollBarDirection.Horizontal, state: BarState.On }) {
        Text()
          .width(15)
          .height(5)
          .borderRadius(10)
          .backgroundColor('#000')
      }
      .width(30)
      .borderRadius(5)
      .backgroundColor('#ededed')
    }
    .margin({
      left: 12,
      right: 12,
      top: 10
    })
    .padding({
      bottom: 5
    })
  }
}

export default HomeClassify
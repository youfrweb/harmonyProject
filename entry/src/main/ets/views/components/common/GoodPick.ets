@Component
struct GoodPick {
  build() {
    Column() {
      Text('好物精选')
        .fontSize(16)
        .fontWeight(600)
        .width('100%')
        .margin({
          bottom: 12
        })
      Flex({
        wrap: FlexWrap.Wrap,
        justifyContent: FlexAlign.SpaceBetween
      }) {
        ForEach(Array.from({ length: 20 }), () => {
          Column() {
            Image($r('app.media.classify01'))
              .width(120)
            Column(){
              Text('Mate 60 Pro')
                .fontSize(14)
              Text('6.88mm轻薄可靠|鸿蒙AI趣玩|后置5000万悬停自拍')
                .fontSize(12)
                .fontColor('#666')
                .margin({top: 6, bottom:6})
                .textOverflow({
                  overflow: TextOverflow.Ellipsis
                })
                .maxLines(1)

              Text('￥4599')
                .fontSize(14)
                .fontWeight(600)
            }
            .alignItems(HorizontalAlign.Start)
          }
          .width('49%')
          .backgroundColor('#fff')
          .margin({ bottom: 6 })
          .borderRadius(12)
          .padding(8)
        })
      }
    }
    .margin({
      top: 20,
      bottom: 20
    })
  }
}

export default GoodPick
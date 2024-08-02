@Component
export struct HomeSubarea {
  build() {
    Column() {
      Column() {
        Row() {
          Text('手机专区')
            .fontSize(18)
            .fontWeight(700)
          Blank()
          Row() {
            Text('更多')
              .fontSize(14)
              .fontColor('#ff9b9a9a')
            Image($r('app.media.ic_public_arrow_right'))
              .width(18)
              .fillColor('#ff9b9a9a')
          }
        }
        .width('100%')

        Flex({
          wrap: FlexWrap.Wrap
        }) {
          Column() {
            Image($r('app.media.classify01'))
              .width(120)
            Text('Mate 60 Pro')
              .fontSize(14)
              .fontWeight(600)
              .margin(6)

            Text('￥4599')
              .fontSize(14)
              .fontWeight(600)
          }
          .width('50%')

          Column() {
            Image($r('app.media.classify02'))
              .width(120)
            Text('Mate 60 Pro')
              .fontSize(14)
              .fontWeight(600)
              .margin(6)

            Text('￥4599')
              .fontSize(14)
              .fontWeight(600)
          }
          .width('50%')
        }
      }
      .width('100%')
      .backgroundColor('#fff')
      .borderRadius(15)
      .padding(15)
      .alignItems(HorizontalAlign.Start)
    }
    .width('100%')
    .padding({
      left: 12,
      right: 12
    })
    .margin({
      top: 8
    })
  }
}

export default HomeSubarea


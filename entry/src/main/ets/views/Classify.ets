import ClassifyList from './components/classify/ClassifyList'

@Component
struct Classify {
  build() {
    Column() {
      Row({ space: 10 }) {
        Row({ space: 5 }) {
          Image($r('app.media.ic_public_search'))
            .width(16)
            .fillColor('#5c5c5d')
          Text('请输入')
            .fontSize(16)
            .fontColor('#5c5c5d')
        }
        .backgroundColor('#fff')
        .borderRadius(20)
        .layoutWeight(1)
        .padding(10)

        Image($r('app.media.ic_public_comments'))
          .width(22)
      }
      .width('100%')
      .height(58)
      .padding({
        left: 10,
        right: 10
      })

    // 列表部分
      ClassifyList()
        .layoutWeight(1)
    }
    .height('100%')
    .backgroundColor('#f1f3f5')
  }
}

export default Classify
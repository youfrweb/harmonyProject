// top导航
import { router } from '@kit.ArkUI'

@Component
struct Drawer {
  @Link show: boolean
  @State widthSize: number = 0
  @BuilderParam ContentBuilder: () => void = this.defaultContentBuilder
  @BuilderParam FooterBuilder: () => void = this.defaultFooterBuilder

  @Builder
  defaultContentBuilder() {

  }

  @Builder
  defaultFooterBuilder() {

  }

  aboutToAppear(): void {
    setTimeout(() => {
      animateTo({ duration: 500 }, () => {
        this.widthSize = 260
      })
    })
  }

  build() {
    Stack({ alignContent: Alignment.End }) {
      Column()
        .width('100%')
        .height('100%')
        .backgroundColor(Color.Black)
        .align(Alignment.Top)
        .opacity(.5)
        .onClick(() => {
          this.show = false
        })

      Column() {
        Column() {
          this.ContentBuilder()
        }
        .width('100%')
        .flexGrow(1)

        Row() {
          this.FooterBuilder()
        }
        .width('100%')
      }
      .width(this.widthSize)
      .height('100%')
      .backgroundColor(Color.White)
      .align(Alignment.End)
      .borderRadius({
        topLeft: 20,
        bottomLeft: 20
      })
    }.width('100%').height('100%').position({ left: 0, top: 0 })
  }
}

export default Drawer

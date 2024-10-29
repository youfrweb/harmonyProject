// top导航
import { router } from '@kit.ArkUI'

@Component
struct Navigate {
  @BuilderParam ContentBuilder: () => void = this.defaultBuilder

  @Builder
  defaultBuilder() {
  }

  build() {
    Row() {
      Image($r('app.media.ic_public_back'))
        .width(26)
        .margin({ left: 15 })
        .onClick(() => {
          router.back()
        })
      this.ContentBuilder()
    }
    .margin({ right: 15, top: 10 })
  }
}

export default Navigate

export interface imageSwiperType {
  ImageUrl: string
}

// 图片全屏展示
@CustomDialog
struct CustomDialogExample {
  @Prop defaultSwiperIndex: number
  @Prop imageSwiper: imageSwiperType[]
  controller?: CustomDialogController

  build() {
    Column() {
      Column() {
        Swiper() {
          ForEach(this.imageSwiper, (item: imageSwiperType) => {
            Image(item.ImageUrl)
              .width('100%')
              .height('100%')
              .objectFit(ImageFit.Contain)
              .interpolation(ImageInterpolation.Medium)
          })
        }
        .width('100%')
        .height(360)
        .index(this.defaultSwiperIndex)
        .indicator(false)
        .onChange((index: number) => {
          this.defaultSwiperIndex = index
        })
      }
      .layoutWeight(1)
      .justifyContent(FlexAlign.Center)

      Row() {
        Text(`${this.defaultSwiperIndex + 1}/${this.imageSwiper.length}`)
          .fontSize(25)
          .margin({ top: 20 })
          .width('100%')
          .textAlign(TextAlign.Center)

        Text('返回')
          .fontFamily('sysFont')
          .fontSize(26)
          .position({ left: 20, top: 20 })
          .onClick(() => {
            if (this.controller != undefined) {
              this.controller.close()
            }
          })
      }.position({ left: 0, top: 0 })
    }
  }
}

@Component
export struct ImageSwiperPreview {
  @Prop imageSwiper: imageSwiperType[]
  @State swiperTip: string = `1/${this.imageSwiper.length}`
  @State swiperIndex: number = 0
  dialogController: CustomDialogController | null = new CustomDialogController({
    builder: CustomDialogExample({
      defaultSwiperIndex: this.swiperIndex,
      imageSwiper: this.imageSwiper
    }),
    autoCancel: true,
    onWillDismiss: (dismissDialogAction: DismissDialogAction) => {
      console.info("reason=" + JSON.stringify(dismissDialogAction.reason))
      console.log("dialog onWillDismiss")
      if (dismissDialogAction.reason == DismissReason.PRESS_BACK) {
        dismissDialogAction.dismiss()
      }
      if (dismissDialogAction.reason == DismissReason.TOUCH_OUTSIDE) {
        dismissDialogAction.dismiss()
      }
    },
    alignment: DialogAlignment.Center,
    offset: { dx: 0, dy: 0 },
    customStyle: false,
    cornerRadius: 0,
    width: '100%',
    height: '100%',
    borderWidth: 0,
  })

  build() {
    Column() {
      Swiper() {
        ForEach(this.imageSwiper, (item: imageSwiperType) => {
          Image(item.ImageUrl)
            .width('100%')
            .height('100%')
            .objectFit(ImageFit.Contain)
            .interpolation(ImageInterpolation.Medium)
        })
      }
      .width('100%')
      .height(360)
      .indicator(false)
      .onChange((index: number) => {
        this.swiperIndex = index
        this.swiperTip = `${index + 1}/${this.imageSwiper.length}`
      })
      .onClick(() => {
        if (this.dialogController != null) {
          this.dialogController.open()
        }
      })

      Text(this.swiperTip)
        .padding({
          left: 10,
          right: 10,
          top: 3,
          bottom: 3
        })
        .borderRadius(10)
        .backgroundColor('#eeebeb')
        .opacity(0.6)
        .fontSize(12)
        .position({ right: 10, bottom: 10 })
    }
  }
}
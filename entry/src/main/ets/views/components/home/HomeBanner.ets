@Component
export struct HomeBanner {

  build() {
    Swiper(){
      Image($r('app.media.banner01'))
        .objectFit(ImageFit.Contain)
        .width('100%')
      Image($r('app.media.banner02'))
        .objectFit(ImageFit.Contain)
        .width('100%')
      Image($r('app.media.banner03'))
        .objectFit(ImageFit.Contain)
        .width('100%')
    }
    .margin({
      left: 12,
      right: 12
    })
    .borderRadius(10)
    .autoPlay(true)
    .indicator(
      Indicator.dot()
        .selectedColor(Color.White)
    )
  }
}

export default HomeBanner


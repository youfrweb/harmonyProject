@Component
struct VideoModule {
  @State videoSrc: Resource = $rawfile('video1.mp4')
  @State previewUri: Resource = $r('app.media.classify02')
  @State curRate: PlaybackSpeed = PlaybackSpeed.Speed_Forward_1_00_X
  @State isAutoPlay: boolean = false
  @State showControls: boolean = false
  @State isPlay: boolean = false
  controller: VideoController = new VideoController()

  build() {
    Stack() {
      Video({
        src: this.videoSrc,
        previewUri: this.previewUri,
        currentProgressRate: this.curRate,
        controller: this.controller
      })
        .width('100%')
        .height('100%')
        .autoPlay(this.isAutoPlay)
        .controls(this.showControls)
        .onStart(() => {
          console.info('onStart')
        })
        .onPause(() => {
          console.info('onPause')
        })
        .onFinish(() => {
          console.info('onFinish')
        })
        .onError(() => {
          console.info('onError')
        })
        .onStop(() => {
          console.info('onStop')
        })
        .onPrepared((e?: DurationObject) => {
          if (e != undefined) {
            console.info('onPrepared is ' + e.duration)
          }
        })
        .onSeeking((e?: TimeObject) => {
          if (e != undefined) {
            console.info('onSeeking is ' + e.time)
          }
        })
        .onSeeked((e?: TimeObject) => {
          if (e != undefined) {
            console.info('onSeeked is ' + e.time)
          }
        })
        .onUpdate((e?: TimeObject) => {
          if (e != undefined) {
            console.info('onUpdate is ' + e.time)
          }
        })
        .onClick(() => {
          this.isPlay = false
          this.controller.pause() // 暂停播放
        })

      if (!this.isPlay) {
        Row() {
          Button() {
            Text('\ue717')
              .fontFamily('sysFont')
              .fontSize(26)
              .fontColor('#fff')
          }.onClick(() => {
            this.isPlay = true
            this.controller.start()
          }).type(ButtonType.Circle)
          .backgroundColor('#33484444')
          .padding(10)
        }
      }


      // Row() {
      //   Button('src').onClick(() => {
      //     this.videoSrc = $rawfile('video1.mp4') // 切换视频源
      //   }).margin(5)
      //   Button('previewUri').onClick(() => {
      //     this.previewUri = $r('app.media.classify03') // 切换视频预览海报
      //   }).margin(5)
      //   Button('controls').onClick(() => {
      //     this.showControls = !this.showControls // 切换是否显示视频控制栏
      //   }).margin(5)
      // }
      //
      // Row() {
      //   Button('start').onClick(() => {
      //     this.controller.start() // 开始播放
      //   }).margin(2)
      //   Button('pause').onClick(() => {
      //     this.controller.pause() // 暂停播放
      //   }).margin(2)
      //   Button('stop').onClick(() => {
      //     this.controller.stop() // 结束播放
      //   }).margin(2)
      //   Button('reset').onClick(() => {
      //     this.controller.reset() // 重置AVPlayer
      //   }).margin(2)
      //   Button('setTime').onClick(() => {
      //     this.controller.setCurrentTime(10, SeekMode.Accurate) // 精准跳转到视频的10s位置
      //   }).margin(2)
      // }
      //
      // Row() {
      //   Button('rate 0.75').onClick(() => {
      //     this.curRate = PlaybackSpeed.Speed_Forward_0_75_X // 0.75倍速播放
      //   }).margin(5)
      //   Button('rate 1').onClick(() => {
      //     this.curRate = PlaybackSpeed.Speed_Forward_1_00_X // 原倍速播放
      //   }).margin(5)
      //   Button('rate 2').onClick(() => {
      //     this.curRate = PlaybackSpeed.Speed_Forward_2_00_X // 2倍速播放
      //   }).margin(5)
      // }
    }
  }
}

interface DurationObject {
  duration: number;
}

interface TimeObject {
  time: number;
}

export default VideoModule
import HomeBanner from './components/home/HomeBanner';
import HomeClassify from './components/home/HomeClassify';
import HomeRecommend from './components/home/HomeRecommend';
import HomeSubarea from './components/home/HomeSubarea';
import HomeTab from './components/home/HomeTab';
import HomeWelfare from './components/home/HomeWelfare';
import HomeHeader from './components/home/HomeHeader';

@Component
struct Home {
  scroller: Scroller = new Scroller()
  @State message: string = 'Hello World';
  // 是否展示回到顶部按钮
  @State isShowGoTopButton: boolean = false

  aboutToAppear(): void {
    // this.scroller.scrollTo({ xOffset: 0, yOffset: 100 })
  }

  onPageShow(): void {
    // this.scroller.scrollTo({ xOffset: 0, yOffset: 800 })
  }

  build() {
    Column() {
      // 头部
      HomeHeader()

      // 内容主题
      Scroll(this.scroller) {
        Column() {
          // tab,这里我不用tab控件（点击直接切换页面），但是你可以用
          HomeTab()
          // banner滚动部分
          HomeBanner()
          // 分类菜单部分
          HomeClassify()
          // 活动图片
          // Image($r('app.media.huodong01'))
          //   .width('100%')
          // 新人有礼 福利专区
          HomeWelfare()
          // 甄选推荐
          HomeRecommend()
          // 专区1
          HomeSubarea()
          // 专区2
          HomeSubarea()
          // 专区3
          HomeSubarea()
        }
        .width('100%')
        .margin({ bottom: 15 })
      }
      .width('100%')
      .layoutWeight(1)
      .onWillScroll(() => {
        const scrollYOffset = this.scroller.currentOffset().yOffset
          this.isShowGoTopButton = scrollYOffset > 500 ? true : false
      })

      if(this.isShowGoTopButton) Button({ type: ButtonType.Circle, stateEffect: true }) {
        Image($r('app.media.ic_public_backtotop'))
          .width(20)
          .fillColor('#666')
      }
      .width(35)
      .height(35)
      .backgroundColor('#fff')
      .shadow({
        radius: 3,
        color: '#666',
        offsetX: 2,
        offsetY: 2
      })
      .position({
        bottom: 10,
        right: 10
      })
      .onClick(() => {
        this.scroller.scrollEdge(Edge.Top)
      })
    }
    .width('100%')
    .height('100%')
    .linearGradient({
      angle: 180, // 渐变角度，设置为180，即为从上往下渐变
      colors: [['#fefefe', 0], ['#f2f4f5', 1]]
    })

  }
}

export default Home
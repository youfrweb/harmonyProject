import NewProduct from './components/activity/NewProduct'

interface TabType {
  title: string
}

@Component
struct Activity {
  @State bars: TabType[] = [
    { title: '新品秀' },
    { title: '玩转VMALL' },
    { title: '玩转技巧' },
    { title: '推荐' },
  ]
  @State currentIndex: number = 0

  @Builder
  TabBarBuilder(item: TabType, index: number) {
    Column() {
      Text(item.title)
        .fontColor(index === this.currentIndex ? '#000' : '#666')
        .fontSize(15)
        .fontWeight(600)
      Row() {
      }
      .width(15)
      .height(2)
      .backgroundColor(index === this.currentIndex ? '#000' : Color.Transparent)
      .margin({
        top: 8
      })
    }
  }

  // 加载菜单对应的组件
  @Builder
  TabEachBuilder(index: number) {
    if (index === 0) {
      NewProduct()
    } else if (index === 1) {
      Text(index.toString())
    } else if (index === 2) {
      Text(index.toString())
    } else {
      Text(index.toString())
    }
  }

  build() {
    Tabs({ index: $$this.currentIndex }) {
      ForEach(this.bars, (item: TabType, index: number) => {
        TabContent() {
          this.TabEachBuilder(index)
        }.tabBar(this.TabBarBuilder(item, index))
        .padding({ left: 15, right: 15 })
      })
    }
    .animationDuration(0)
    .backgroundColor('#f1f3f5')
  }
}

export default Activity
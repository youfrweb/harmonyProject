
@Extend(Text)
function textFn(bgColor: ResourceColor) {
  .fontColor('#f00')
  .fontSize(50)
  .backgroundColor(bgColor)
}

// 泛型
function getLength<T>(list: T[]): number{
  console.log(list.length.toString())
  return list.length
}

getLength<string>(['a'])
getLength<number>([1,2,3])

// 泛型约束
interface ILength {
  length: number
}

function getLength2<T extends ILength>(data: T){
  console.log('', data.length)
}

getLength2<string>('123')

// 也可以使用类
class Desk {
  length = 2
}
let d = new Desk()
getLength2<Desk>(d)

@Entry
@Component
struct Index {
  @State currentBar: number = 0

  @Builder
  barBuilder(){
    Text('1212')
      .fontColor(this.currentBar === 0 ? Color.Blue : Color.Black)
  }

  build() {
    Tabs({barPosition: BarPosition.Start}){
      TabContent(){
        Text('第一页')
      }
      .tabBar(this.barBuilder())

      TabContent(){
        Text('第二页')
      }
      .tabBar('第二页')

      TabContent(){
        Text('第三页')
      }
      .tabBar('第三页')

      TabContent(){
        Text('第四页')
      }
      .tabBar('第四页')

      TabContent(){
        Text('第一页')
      }
      .tabBar('第一页')

      TabContent(){
        Text('第二页')
      }
      .tabBar('第二页')

      TabContent(){
        Text('第三页')
      }
      .tabBar('第三页')

      TabContent(){
        Text('第四页')
      }
      .tabBar('第四页')
    }
    // .vertical(true) 调整导航栏水平或者垂直
    .barMode(BarMode.Scrollable) // 导航栏滚动
    .onChange((index: number) => {
      this.currentBar = index
    })
  }
}

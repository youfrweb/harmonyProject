import Activity from '../views/Activity'
import Classify from '../views/Classify'
import Home from '../views/Home'
import ShoppingCart from '../views/ShoppingCart'
import UserCenter from '../views/UserCenter'

import { AxiosError, AxiosResponse } from '@ohos/axios';
import IndexApi from '../api/home';
import CommonCss from '../style/commonCss'

interface MenuItemType {
  icon: string,
  text: string
}

@Entry
@Component
struct Index {
  @State currentIndex: number = 0
  @State menus: MenuItemType[] = [
    { icon: 'ic_public_home_filled', text: '首页' },
    { icon: 'ic_public_view_grid', text: '分页' },
    { icon: 'ic_public_timer', text: '发现' },
    { icon: 'ic_public_appstore', text: '购物车' },
    { icon: 'ic_public_contacts', text: '我的' },
  ]

  aboutToAppear(): void {
    // 请求案例
    IndexApi.getList().then((res: AxiosResponse) => {
      console.log('list数据', res)
    }).catch((err: AxiosError)=>{
      console.log('err', err)
    })
  }

  // 菜单样式
  @Builder
  TabBarBuilder(item: MenuItemType, index: number) {
    Column({ space: 4 }) {
      Image($r(`app.media.${item.icon}`))
        .width(25)
        .fillColor(index === this.currentIndex ? '#ca141d' : '#808182')
      Text(item.text)
        .fontSize(12)
        .fontColor(index === this.currentIndex ? '#ca141d' : '#808182')
    }
  }

  // 加载菜单对应的组件
  @Builder
  TabEachBuilder(index: number) {
    if (index === 0) {
      Home()
    } else if (index === 1) {
      Classify()
    } else if (index === 2) {
      Activity()
    } else if (index === 3) {
      ShoppingCart()
    } else {
      UserCenter()
    }
  }

  build() {
    Column() {
      Tabs({ barPosition: BarPosition.End, index: this.currentIndex }) {
        ForEach(this.menus, (item: MenuItemType, index: number) => {
          TabContent() {
            this.TabEachBuilder(index)
          }
          .tabBar(this.TabBarBuilder(item, index))
        })
      }
      .animationDuration(0)
      .barBackgroundColor(CommonCss.BG_COLOR)
      .onChange((index: number) => {
        this.currentIndex = index
      })
      .divider({
        strokeWidth: 1,
        color: '#ffeaeaea'
      })
    }
    .height('100%')
  }
}

import Activity from './activity/Activity'
import Classify from './category/Classify'
import Home from './home/Home'
import ShoppingCart from './shoppingCart/ShoppingCart'
import UserCenter from './userCenter/UserCenter'

import { AxiosError, AxiosResponse } from '@ohos/axios';
import IndexApi from '../api/home';
import { font } from '@kit.ArkUI'

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
    // 页面加载就注册iconfont
    font.registerFont({
      familyName: 'sysFont',
      familySrc: '/utils/font/iconfont.ttf'
    })

    // 请求案例
    IndexApi.getList().then((res: AxiosResponse) => {
      console.log('list数据', JSON.stringify(res))
    }).catch((err: AxiosError) => {
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
      Activity() // 发现
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
      .barBackgroundColor($r('app.color.main_bg'))
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

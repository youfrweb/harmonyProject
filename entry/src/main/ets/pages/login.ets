@Entry
@Component
struct Index {
  @State message: string = 'Hello World';
  @State isShow: boolean = false
  @State list: string[] = [
    '111',
    '111',
    '111',
    '111',
    '111',
    '111',
  ]
  title: string = '登录页面1'



  build() {
    Column({ space: 15 }) {
      Image($r('app.media.startIcon'))
        .width(50)
        .margin({ top: 50 })
      if(this.isShow) Text(this.title)
      Text(this.message)
      TextInput({
        placeholder: '请输入用户名'
      })
      TextInput({
        placeholder: '请输入密码'
      }).type(InputType.Password)
      Button('登录')
        .width(200)
        .onClick(() => {
          // AlertDialog.show({
          //   message:'123'
          // })
          this.message = '你好世界'
          this.isShow = !this.isShow
          // this.list.some()
        })
      Row({ space: 15 }) {
        Text('前往注册').fontColor(Color.Gray)
        Text('忘记密码').fontColor(Color.Gray)
      }
      ForEach(this.list, (item: string, index) => {
        Text(item)
      })
    }
    .width("100%")
    .padding(20)
  }
}

@Entry
@Component
struct Index {
  @State message: string = 'Hello World';

  build() {
    Column({ space: 15 }) {
      Image($r('app.media.ic_contacts_business_cards_filled'))
        .width(50)
        .margin({ top: 50 }) // svg_icon
      TextInput({
        placeholder: '请输入用户名'
      })
      TextInput({
        placeholder: '请输入密码'
      }).type(InputType.Password)
      Button('登录').width(200)
      Row({ space: 15 }) {
        Text('前往注册').fontColor(Color.Gray)
          .padding(5)
          .borderRadius(5)
          .border({
          width: 1,
          color: Color.Red,
          style: BorderStyle.Dotted
        })
        Text('忘记密码').fontColor(Color.Gray)
          .border({
            width: {
              left: 1,
              right: 2
            },
            color: {
              left: Color.Red,
              right: Color.Blue
            },
            style: {
              left: BorderStyle.Dashed,
              right: BorderStyle.Dotted
            }
          })
      }
    }
    .width("100%")
    .padding(20)
  }
}
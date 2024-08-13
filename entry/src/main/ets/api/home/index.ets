import { AxiosResponse } from '@ohos/axios'
import httpRequest from '../httpRequest'

class IndexApi {
  static getList(): Promise<AxiosResponse> {
    return httpRequest({
      url: '/posts',
      method: 'get'
    })
  }
}
export default IndexApi
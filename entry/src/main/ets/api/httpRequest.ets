import axios, { AxiosError, AxiosResponse, InternalAxiosRequestConfig } from '@ohos/axios'

const baseURL = 'https://jsonplaceholder.typicode.com'

const service = axios.create({
  baseURL,
  timeout: 10 * 60 * 1000
})

interface codeMapType {
  '100': (msg: string) => void
  '120': (msg: string) => void
  '130': (msg: string) => void
  '401': (msg: string) => void
  '403': (msg: string) => void
}

const codeMap: codeMapType = {
  '401': (msg: string) => { // 处理token异常
  },
  '403': (msg: string) => { // 接口无权限
  },
  '120': (msg: string) => { // 单点登录：登录失效
  },
  '130': (msg: string) => { // 无权访问
  },
  '100': (msg: string) => { // 一般错误
  }
}

// 请求拦截器
service.interceptors.request.use(
  (config: InternalAxiosRequestConfig) => {
    // 获取token放入请求头
    // const token = Cookies.get(TOKEN)
    // token && (config.headers['token'] = token)
    return config
  },
  (error: AxiosError) => {
    return Promise.reject(error.response)
  }
)

// 响应拦截器
service.interceptors.response.use(
  (response: AxiosResponse): AxiosResponse => {
    // const code: string = response.data.code.toString()
    // const msg: string = response.data.msg
    // Object(codeMap)[code] && Object(codeMap)[code](msg)
    return response.data
  },
  (error: AxiosError) => {
    return Promise.reject(error.response)
  }
)

interface configType {
  params: object
}

interface RequestArgumentType {
  url: string,
  method: string,
  data?: object,
  config?: configType
}

interface AxiosConfigType {
  get: (url: string, params: object) => Promise<AxiosResponse>
  post: (url: string, data: object, config: configType) => Promise<AxiosResponse>
  put: (url: string, data: object, config: configType) => Promise<AxiosResponse>
  delete: (url: string, data: object) => Promise<AxiosResponse>
}

// 请求类型配置
const axiosConfig:AxiosConfigType = {
  get: (url: string, params: object) => {
    console.log('2222', service.get(url, { params }))
    return service.get(url, { params })
  },
  post: (url: string, data: object, config: configType) => {
    return service.post(url, data, {
      headers: {
        'Content-Type': 'application/json'
      },
      params: config?.params
    })
  },
  put: (url: string, data: object, config: configType) => {
    return service.put(url, data, {
      params: config?.params
    })
  },
  delete: (url: string, data: object) => {
    return service.delete(url, { params: data })
  }
}

// 请求入口
const httpRequest = (data: RequestArgumentType): Promise<AxiosResponse> => {

  return Object(axiosConfig)[data.method](data.url, data?.data || {}, data?.config || {})
}

export default httpRequest
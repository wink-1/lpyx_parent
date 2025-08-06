import request from '@/utils/request'

const baseURL = '/admin/product/productUnit'

// 获取全部信息
export const FindAllProductUnit = () => {
  return request({
    url: `${baseURL}/findAll`,
    method: 'get',
  })
}

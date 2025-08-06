import request from '@/utils/request'

const baseURL = '/admin/product/brand'

// 分页列表
export const GetBrandPageList = (page, limit) => {
  return request({
    url: `${baseURL}/findByPage/${page}/${limit}`,
    method: 'get',
  })
}

// 查询所有的品牌数据
export const FindAllBrand = () => {
  return request({
    url: `${baseURL}/findAll`,
    method: 'get',
  })
}

// 保存品牌
export const SaveBrand = brand => {
  return request({
    url: `${baseURL}/save`,
    method: 'post',
    data: brand,
  })
}

// 修改信息
export const UpdateBrandById = brand => {
  return request({
    url: `${baseURL}/update`,
    method: 'put',
    data: brand,
  })
}

// 根据id删除品牌
export const DeleteBrandById = id => {
  return request({
    url: `${baseURL}/deleteById/${id}`,
    method: 'delete',
  })
}

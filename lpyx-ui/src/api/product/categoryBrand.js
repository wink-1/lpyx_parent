import request from '@/utils/request'

const baseURL = '/admin/product/categoryBrand'

// 分页列表
export const GetCategoryBrandPageList = (page, limit, searchObj) => {
  return request({
    url: `${baseURL}/findByPage/${page}/${limit}`,
    method: 'get',
    params: searchObj,
  })
}

// 根据分类的id获取品牌数据
export const FindBrandByCategoryId = categoryId => {
  return request({
    url: `${baseURL}/findBrandByCategoryId/${categoryId}`,
    method: 'get',
  })
}

// 保存信息
export const SaveCategoryBrand = categoryBrand => {
  return request({
    url: `${baseURL}/save`,
    method: 'post',
    data: categoryBrand,
  })
}

// 修改信息
export const UpdateCategoryBrandById = categoryBrand => {
  return request({
    url: `${baseURL}/updateById`,
    method: 'put',
    data: categoryBrand,
  })
}

// 根据id删除数据
export const DeleteCategoryBrandById = id => {
  return request({
    url: `${baseURL}/deleteById/${id}`,
    method: 'delete',
  })
}

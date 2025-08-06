import request from '@/utils/request'
const baseURL = '/admin/system/sysUser'

// 用户列表接口
export const GetSysUserListByPage = (current, limit, queryDto) => {
  return request({
    url: `${baseURL}/findByPage/${current}/${limit}`, //路径
    method: 'post',
    data: queryDto, //其他参数
  })
}

// 添加用户请求方法
export const SaveSysUser = sysUser => {
  return request({
    url: `${baseURL}/saveSysUser`,
    method: 'post',
    data: sysUser,
  })
}

// 修改用户请求方法
export const UpdateSysUser = sysUser => {
  return request({
    url: `${baseURL}/updateSysUser`,
    method: 'put',
    data: sysUser,
  })
}

// 删除用户请求方法
export const DeleteSysUserById = UserId => {
  return request({
    url: `${baseURL}/removeById/${UserId}`,
    method: 'delete',
  })
}

// 给用户分配角色请求
export const DoAssignRoleToUser = assginRoleVo => {
  return request({
    url: '/admin/system/sysUser/doAssign',
    method: 'put',
    data: assginRoleVo,
  })
}

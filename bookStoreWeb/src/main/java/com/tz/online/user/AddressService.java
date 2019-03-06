package com.tz.online.user;

import java.util.List;

import com.tz.online.entity.Address;

public interface AddressService {

	 /**********
     * 保存地址
     * @param a
     */
    void save(Address address);
    /****
     * 获取指定用户id的所有地址
     * @return
     */
    List<Address> findByUserId(Long userId);
    /****
     * 根据删除某个地址
     * @param a
     */
    void delete(Long addressId);
    /*****
     * 依ID查询
     * @param id
     * @return
     */
    Address findById(Long id);
    /****
     * 更新地址
     * @param a
     */
    void update(Address address);
}

package com.tz.online.util;

public class DictUtils {
    /**
     * 获取性别的字典值
     */
    public static String getDictValue(String label,String defaultlabel) {
        
        if(label != null) {
            if("F".equals(label)){
                return "女";
            } else {
                return "男";  
            }
        }
        
        return defaultlabel;
    }
}

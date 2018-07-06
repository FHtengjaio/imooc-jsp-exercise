package com.imooc_exercise.db;

import com.imooc_exercise.Message.Message;
import com.imooc_exercise.user.User;

import java.util.HashMap;
import java.util.Map;

public class DBUtil {
    public static Map<String, User> userMap = new HashMap<>();
    public static Map<String, Message> messageMap = new HashMap<>();

    static {
        userMap.put("user123",new User("user123","小明","123"));
        userMap.put("user234",new User("user234","小红","234"));
        userMap.put("user345",new User("user345","小东","345"));

        messageMap.put("101",new Message("101","开学","请同学们于9月1日前来报道！"));
        messageMap.put("102",new Message("102","选课","选课开始啦~"));
        messageMap.put("103",new Message("103","竞选班委","将于近期竞选班干部~"));
        messageMap.put("104",new Message("104","评选奖学金","评选奖学金啦~"));
    }

    public static boolean judgeAccount(String account, String password){
        boolean flag = false;
        if(userMap.containsKey(account) &&
                password.equals(userMap.get(account).getPassword())){
            flag = true;
        }
        return flag;
    }
}

package com.brandspeak.loginreg;

import com.android.volley.Response;
import com.android.volley.toolbox.StringRequest;

import java.util.HashMap;
import java.util.Map;

/**
 * Created by KEITH on 4/20/2016.
 */
public class UserAreaActivityRequest extends StringRequest {
    private static final String USER_AREA_ACTIVITY_REQUEST_URL = "http://www.brandspeak.co.ke/tms/upload.php";
    private Map<String, String> params;

    public UserAreaActivityRequest(String location, String drink, int data,Response.Listener<String> listener) {
        super(Method.POST, USER_AREA_ACTIVITY_REQUEST_URL, listener, null);
        params = new HashMap<>();
        params.put("location", location);
        params.put("drink", drink);
        params.put("data", data + "");

    }

    @Override
    public Map<String, String> getParams() {
        return params;
    }
}
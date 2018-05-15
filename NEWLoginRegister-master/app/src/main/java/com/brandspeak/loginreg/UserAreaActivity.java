package com.brandspeak.loginreg;

import android.app.AlertDialog;
import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;

import com.android.volley.RequestQueue;
import com.android.volley.Response;
import com.android.volley.toolbox.Volley;

import org.json.JSONException;
import org.json.JSONObject;

public class UserAreaActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_user_area);

        final EditText etdrink = (EditText) findViewById(R.id.etdrink);
        final EditText etdata = (EditText) findViewById(R.id.etdata);
        final EditText etlocation = (EditText) findViewById(R.id.etlocation);

        final Button bupload = (Button) findViewById(R.id.bupload);

        bupload.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                final String location = etlocation.getText().toString();
                final String drink = etdrink.getText().toString();

                final int data = Integer.parseInt(etdata.getText().toString());


                Response.Listener<String> responseListener = new Response.Listener<String>() {
                    @Override
                    public void onResponse(String response) {
                        try {
                            JSONObject jsonResponse = new JSONObject(response);
                            boolean success = jsonResponse.getBoolean("success");
                            if (success) {
                                AlertDialog.Builder builder = new AlertDialog.Builder(UserAreaActivity.this);
                                builder.setMessage("Data Upload Success")
                                        .setNegativeButton("Enter Again", null)
                                        .create()
                                        .show();
                            } else {
                                AlertDialog.Builder builder = new AlertDialog.Builder(UserAreaActivity.this);
                                builder.setMessage("Data Upload Failed")
                                        .setNegativeButton("Retry", null)
                                        .create()
                                        .show();
                            }
                        } catch (JSONException e) {
                            e.printStackTrace();
                        }
                    }
                };

                UserAreaActivityRequest userAreaActivityRequest = new UserAreaActivityRequest(location,drink, data, responseListener);
                RequestQueue queue = Volley.newRequestQueue(UserAreaActivity.this);
                queue.add(userAreaActivityRequest);
            }
        });
    }
}

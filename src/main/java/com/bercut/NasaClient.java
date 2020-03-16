package com.bercut;


import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import org.json.*;

import java.io.IOException;

public class NasaClient {
    static OkHttpClient client = new OkHttpClient();
    static public String getPicture(String date) throws IOException {
        String token = null;
        String url = "https://api.nasa.gov/planetary/apod?api_key=vlRgp4acNz5hdUlJavQMqrwgH3oBmATekzMFRZtA" +
                "&date=" + date;
        Request request = new Request.Builder()
                .url(url)
                .build();
        Response response = client.newCall(request).execute();
        JSONObject result = new JSONObject(response.body().string()); //Convert String to JSON Object
        token = result.getString("url");
        return token;
    }

//    String uri = "https://api.nasa.gov/planetary/apod?api_key=vlRgp4acNz5hdUlJavQMqrwgH3oBmATekzMFRZtA&date=" + date;
//    HttpGet getNasa = new HttpGet(uri);
//    CloseableHttpClient httpclient = HttpClients.createDefault();
//    HttpResponse httpResponse = httpclient.execute(getNasa);
//    String token = null;
//        if(httpResponse !=null)
//
//    {
//        String retSrc = EntityUtils.toString(httpResponse.getEntity());
//        JSONObject result = new JSONObject(retSrc); //Convert String to JSON Object
//        token = result.getString("url");
//    }
//        return token;
//}

    static public String getDescription(String date) throws IOException {
        String token = null;
        String url = "https://api.nasa.gov/planetary/apod?api_key=vlRgp4acNz5hdUlJavQMqrwgH3oBmATekzMFRZtA" +
                "&date=" + date;
        Request request = new Request.Builder()
                .url(url)
                .build  ();
        Response response = client.newCall(request).execute();
        JSONObject result = new JSONObject(response.body().string()); //Convert String to JSON Object
        token = result.getString("explanation");
        return token;
    }
}

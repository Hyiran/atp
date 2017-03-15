package com.atp.utils;

import org.apache.http.HttpStatus;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.util.EntityUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;


/**
 * <p>Descript：</p>
 * Created by minglu on 2017/2/4.
 */
public class HttpRequest {

    public static final Logger logger = LoggerFactory.getLogger(HttpRequest.class);

    public static CloseableHttpClient httpClient = null;


    public static String addUrl(String head, String tail) {
        if (head.endsWith("/")) {
            if (tail.startsWith("/")) {
                return head.substring(0, head.length() - 1) + tail;
            } else {
                return head + tail;
            }
        } else {
            if (tail.startsWith("/")) {
                return head + tail;
            } else {
                return head + "/" + tail;
            }
        }
    }

    /**
     * 创建HttpClient对象
     *
     * @return httpClient
     */
    public static CloseableHttpClient getInstance() {
        if (httpClient == null) {
            httpClient = HttpClients.createDefault();
        }
        return httpClient;
    }

    public static void disconnect() {
        httpClient = null;
    }

    public static String doGet(String url) {
        return doGet(url, new ArrayList<BasicNameValuePair>());
    }

    /**
     * 创建GET请求方法的实例，并指定请求URL
     *
     * @param url
     * @param data
     * @return
     */
    public static String doGet(String url, List<BasicNameValuePair> data) {
        /*建立HTTP Get连接*/
        HttpGet httpGet = new HttpGet(url);

        try {
            //调用HttpClient对象的execute(HttpUriRequest request)发送请求，该方法返回一个HttpResponse
            CloseableHttpResponse httpResponse = HttpRequest.getInstance().execute(httpGet);
            if (httpResponse.getStatusLine().getStatusCode() == HttpStatus.SC_OK) {
                //调用HttpResponse的getEntity()方法可获取HttpEntity对象，该对象包装了服务器的响应内容
                return EntityUtils.toString(httpResponse.getEntity());
            } else {
                logger.error("doGet Error Response: {} ", httpResponse.getStatusLine().toString());
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            // 关闭连接,释放资源
            if (httpClient != null) {
                try {
                    httpClient.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
        return null;
    }

    public static String doPost(String url) {
        return doPost(url, new ArrayList<BasicNameValuePair>());
    }

    /**
     * 创建POST请求方法的实例，并指定请求URL
     *
     * @param url
     * @param data
     * @return
     */
    public static String doPost(String url, List<BasicNameValuePair> data) {
        /*建立HTTP Post连接*/
        HttpPost httpPost = new HttpPost(url);
        try {
            //发出HTTP request
            httpPost.setEntity(new UrlEncodedFormEntity(data, "UTF-8"));
            //取得HTTP response
            CloseableHttpResponse httpResponse = HttpRequest.getInstance().execute(httpPost);
            //若状态吗为 200 ok
            if (httpResponse.getStatusLine().getStatusCode() == HttpStatus.SC_OK) {
                //取出回应字串
                return EntityUtils.toString(httpResponse.getEntity());
            } else {
                logger.error("doPost Error Response: {}", httpResponse.getStatusLine().toString());
            }

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            // 关闭连接,释放资源
            if (httpClient != null) {
                try {
                    httpClient.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
        return null;
    }

}


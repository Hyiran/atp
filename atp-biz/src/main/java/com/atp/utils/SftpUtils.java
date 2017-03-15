package com.atp.utils;

import com.jcraft.jsch.*;
import com.jcraft.jsch.ChannelSftp.LsEntry;
import org.apache.commons.lang.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;

import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.rmi.AccessException;
import java.util.List;
import java.util.Vector;
import java.util.regex.Pattern;

/**
 * <p>@project: 	kael-biz </p>
 * <p>@file: 		SftpUtils.java </p>
 * <p>@package: 	com.uusoft.kael.ftp </p>
 * <p>@date: 		2016年1月6日 上午10:29:07 </p>
 * <p>@description: SFTP  </p>
 * <p>@company: 	上海投投金融信息服务有限公司 </p>
 *
 * @author zhengguo@66money.com
 * @version V1.0
 * @Copyright (c) 2016, www.66toutou.com All Rights Reserved.
 * @since JDK 1.8.0_45
 */

public class SftpUtils {

    private final static Logger log = LoggerFactory.getLogger(SftpUtils.class);

    @Value("${sftp_req_host}")
    private String ip;                    //ip 主机IP
    @Value("${sftp_req_port}")
    private Integer port;                //主机ssh2登陆端口，如果取默认值，传-1
    @Value("${sftp_req_username}")
    private String username;                //user 主机登陆用户名
    @Value("${sftp_req_pwd}")
    private String password;                //主机登陆密码
    @Value("${sftp_encoding}")
    private String encoding;                //编码格式
    @Value("${sftp_sessiontimeout}")
    private Integer sessiontimeout;        //登陆超时
    @Value("${sftp_connecttimeout}")
    private Integer connecttimeout;        //连接超时
    @Value("${sftp_path}")
    private String path;                    //sftp根目录

    private ChannelSftp sftp = null;

    public ChannelSftp getClient() throws JSchException {
        Session session = null;
        Channel channel = null;
        JSch jsch = new JSch();
        if (port <= 0)
            session = jsch.getSession(username, ip);
        else
            session = jsch.getSession(username, ip, port);
        //如果服务器连接不上，则抛出异常
        if (session == null) {
            throw new RuntimeException("************session is null");
        }
        session.setPassword(password);//设置密码
        //设置第一次登陆的时候提示，可选值：(ask | yes | no)
        session.setConfig("StrictHostKeyChecking", "no");
        //设置登陆超时时间
        session.connect(sessiontimeout);
        //创建sftp通信通道
        channel = (Channel) session.openChannel("sftp");
        channel.connect(connecttimeout);
        return (ChannelSftp) channel;

    }


    public void retrieve(String name, File target) {
        try {
            download(path, name, target.getPath());
        } catch (Exception e) {
            log.error("************retrieve(),Download SFTP file an Exception occur", e);
        } finally {
            disconnected();
        }
    }

    /**
     * <p>@description: 删除文件目录 </p>
     * <p>@author:		zhengguo@66money.com </p>
     * <p>@time:		2016年1月11日-下午3:05:48 </p>
     *
     * @param dir
     * @return
     */
    public boolean rmDir(String dir) {
        try {
            this.sftp = getClient();
            @SuppressWarnings("unchecked")
            Vector<LsEntry> v = this.sftp.ls(dir);
            if (2 == v.size()) {
                this.sftp.rmdir(dir);
                return true;
            } else {
                log.warn("************rmDir(),SFTP directory[" + dir + "] file size:" + v.size());
                for (LsEntry lsEntry : v) {
                    log.info("************rmDir(),SFTP directory[" + dir + "] file:" + lsEntry.getFilename());
                }
            }
        } catch (JSchException jse) {
            log.error("************SFTP connect exception:", jse);
        } catch (SftpException ste) {
            log.error("************SFTP download exception:", ste);
        } finally {
            disconnected();
        }
        return false;
    }


    public void delete(String rpath, String name) throws Exception {
        try {
            this.sftp = getClient();
            if (StringUtils.isNotBlank(rpath))
                this.sftp.cd(rpath);
            this.sftp.rm(name);
        } catch (Exception e) {
            throw new Exception(e);
        } finally {
            disconnected();
        }
    }

    /**
     * 下载文件
     *
     * @param rmdir    下载目录
     * @param filename 下载的文件
     * @param savedir  存在本地的路径
     * @throws SftpException the sftp exception
     */
    public void download(String rmdir, String filename, String savedir) throws SftpException {
        log.info("************download():rmdir={},filename={},savedir={}", rmdir, filename, savedir);

        this.sftp.cd(rmdir);
        //SftpATTRS attr = sftp.stat(filename);
        //long fileSize = attr.getSize();
        this.sftp.get(filename, savedir);
    }

    /**
     * 上传单个文件
     *
     * @param directory   上传的目录
     * @param uploadFiles 要上传的文件
     * @throws AccessException
     * @throws Exception
     */
    public void upload(String directory, List<String> uploadFiles) throws Exception {
        try {
            this.sftp = getClient();
            //		iterateMkDir(directory, sftp);
            this.sftp.cd(directory);
            for (int i = 0; i < uploadFiles.size(); i++) {
                String uploadFile = uploadFiles.get(i);
                File file = new File(uploadFile);
                this.sftp.put(new FileInputStream(file), file.getName());
            }
        } catch (Exception e) {
            throw new Exception("上传文件失败", e);
        } finally {
            disconnected();
        }
    }

    /**
     * <p>Description:上传文件</p>
     *
     * @param inputStream
     * @param fileName
     * @author 何剑
     * @date 2016年9月13日 下午5:50:10
     */
    public void uploadStream(InputStream inputStream, String fileName) {
        try {
            this.sftp = getClient();
            //		iterateMkDir(fileName.substring(0,fileName.lastIndexOf("/")), sftp);
            this.sftp.put(inputStream, fileName);
        } catch (Exception e) {
            throw new RuntimeException("上传文件失败", e);
        } finally {
            disconnected();
        }
    }

    /**
     * 查询path目录下是否存在文件名为file的文件。<br>
     * 返回值:0-不存在，1-存在，2-ftp没有连接上,3-不存在path路径
     *
     * @param path
     * @param file
     * @return
     */
    @SuppressWarnings("unchecked")
    public int exists(String path, String file) {
        try {
            this.sftp = getClient();
        } catch (JSchException e) {
            log.error("", e);
            return 2;
        }
        Vector<LsEntry> vs = null;
        try {
            vs = this.sftp.ls(path);
        } catch (SftpException e) {
            log.error("", e);
            return 3;
        }
        for (int i = 0; i < vs.size(); i++) {
            if (file.equals(vs.get(i).getFilename())) {
                return 1;
            }
        }
        return 0;
    }

    /**
     * 创建目录
     *
     * @param directory
     * @param sftp
     * @throws SftpException
     */
    @SuppressWarnings("unused")
    private void iterateMkDir(String directory, ChannelSftp sftp) throws SftpException {
        String[] paths = directory.split("/");
        String need = "/";
        for (int i = 0; i < paths.length; i++) {
            if ("".equals(paths[i])) {//
                continue;
            }
            need += paths[i];
            try {
                if (null == sftp.ls(need)) {
                    sftp.mkdir(need);
                }
            } catch (Exception e) {
                log.error("************mk dir error.", e);
                ;
                sftp.mkdir(need);
            }
            need += "/";
        }
    }

    /**
     * 释放连接
     */
    public void disconnected() {
        if (this.sftp != null) {
            try {
                if (this.sftp.isConnected()) {
                    this.sftp.getSession().disconnect();
                } else if (this.sftp.isClosed()) {
                    log.info("************disconnected(), sftp is closed already");
                }
            } catch (JSchException e) {
                log.error("************Release the SFTP connection an JSchException occur", e);
                ;
            }
            this.sftp.disconnect();
        }
    }

    /**
     * <p>@description: 判断是否是文件夹 </p>
     * <p>@author:		zhengguo@66money.com </p>
     * <p>@time:		2016年1月6日-下午6:20:49 </p>
     *
     * @param obj
     * @return
     */
    public boolean isFolder(LsEntry obj) {
        return obj.getAttrs().isDir();
    }

    public boolean isMatcher(String source, String target) {
        Pattern p = Pattern.compile(source, Pattern.CASE_INSENSITIVE);
        return p.matcher(target).matches();
    }

    public String getPath() {
        return this.path;
    }

    public String getEncoding() {
        return encoding;
    }

    public static void main(String[] args) throws Exception {
        SftpUtils sftpUtils = new SftpUtils();
        try {
            sftpUtils.ip = "192.168.10.109";
            sftpUtils.password = "toutou!fundbase@123";
            sftpUtils.username = "fundbase";
            sftpUtils.connecttimeout = 3000;
            sftpUtils.encoding = "GBK";
            sftpUtils.port = 22;
            sftpUtils.path = "/output";
            sftpUtils.sessiontimeout = 3000;
//			sftpUtils.downloadByDate("/output/0L/20150522/", "D:/sftp/0L/20150522",null);
//			sftpUtils.rmDir("/output/53/20160324");
//			List<String> up=new ArrayList<String>();
//			String a="D:\\kael-all.log";
//			up.add(a);
//			sftpUtils.upload("/output/test/1", up);
//			sftpUtils.exists("/output/test", "kael-all.log");
            String linedata = "asdsad\r\n13432";
            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(linedata.getBytes());
            sftpUtils.uploadStream(byteArrayInputStream, "/upload/test1/2.txt");
        } catch (Exception e) {
            throw e;
        }
    }
}

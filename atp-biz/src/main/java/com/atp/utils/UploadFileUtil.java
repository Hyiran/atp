/**
 * <p>Title: UploadFileutil.java</p>
 *
 * @Package com.uusoft.fundbase.web.util
 * <p>Description:文件上传 </p>
 * <p>Company:上海投投金融信息服务有限公司</p>
 * @author 陈姣姣
 * @version V1.0
 * @since 2016年7月28日 下午1:52:17
 */
package com.atp.utils;

import com.jcraft.jsch.Channel;
import com.jcraft.jsch.ChannelSftp;
import com.jcraft.jsch.JSch;
import com.jcraft.jsch.Session;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.io.InputStream;
import java.io.OutputStream;

/**
 * <p>
 * Description: 文件上传
 * </p>
 * <p>
 * Company:上海投投金融有限责任公司
 * </p>
 *
 * @author 陈姣姣
 * @version V1.0
 */
public class UploadFileUtil {
    private static Logger logger = LoggerFactory.getLogger(UploadFileUtil.class);

    public static String uploadFile(String ip, String username, String password, String sftp_port, String path,
                                    String filename, InputStream input) throws Exception {
        logger.info("文件上传:ip：{},username:{},password:{},sftp_port:{},path:{},filename:{}", ip, username, password, sftp_port, path, filename);
        Session session = null;
        Channel channel = null;
        JSch jsch = new JSch();
        int port = 0;
        try {
            if (CommonUtils.isNotEmpty(sftp_port)) {
                port = CastUtil.castInt(sftp_port);
            }
        } catch (Exception e) {
            logger.error("sftp文件port上传类型转换错误port：{}", sftp_port, e);
            return "error";
        }
        if (port <= 0) {
            session = jsch.getSession(username, ip);
        } else {
            session = jsch.getSession(username, ip, port);
        }
        OutputStream outstream = null;
        InputStream instream = null;
        try {
            if (session == null) {
                logger.error("文件上传...服务器连接不上 :ip{},username:{},password:{},sftp_port:{},path:{},filename:{}", ip, username, password, sftp_port, path, filename);
                return "error";
            } else {
                // 设置登陆主机的密码
                session.setPassword(password);// 设置密码
                // 设置第一次登陆的时候提示，可选值：(ask | yes | no)
                session.setConfig("StrictHostKeyChecking", "no");
                // 设置登陆超时时间
                session.connect(30000);
                // 创建sftp通信通道
                channel = (Channel) session.openChannel("sftp");
                channel.connect(1000);
                ChannelSftp sftp = (ChannelSftp) channel;
                sftp.cd(path);
                outstream = sftp.put(filename);
                instream = input;
                byte b[] = new byte[1024];
                int n;
                while ((n = instream.read(b)) != -1) {
                    outstream.write(b, 0, n);
                }
                logger.info("文件上传...成功 :ip{},username:{},password:{},sftp_port:{},path:{},filename:{}", ip, username, password, sftp_port, path, filename);
                return "";
            }
        } catch (Exception e) {
            logger.error("文件上传..报错:ip{},username:{},password:{},sftp_port:{},path:{},filename:{}", ip, username,
                    password, sftp_port, path, filename, e);
            return "error";
        } finally {
            outstream.flush();
            outstream.close();
            instream.close();
            channel.disconnect();
            session.disconnect();
        }

    }
}

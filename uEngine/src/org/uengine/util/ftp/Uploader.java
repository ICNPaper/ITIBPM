package org.uengine.util.ftp;

import sun.net.ftp.*; 
import sun.net.*; 

import java.io.*; 
import java.net.Proxy;
import java.net.SocketAddress;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

/**
 * @author Jinyoung Jang
 */

public class Uploader extends FtpClient{ 
	public Uploader(){
		super();
	}
	
	public void connect(String server, String user, String pass) throws Exception{
//      	openServer(server, 21);
//		login(user, pass); 
	}	
	
	public void uploadFile(String fileName, String directory) throws Exception{
		uploadFile(new File(fileName), directory);
	}
	
	public void uploadFile(File file, String directory) throws Exception{
		uploadFile(new FileInputStream(file), directory);
	}

	public void uploadFile(InputStream is, String directory) throws Exception{
//		binary();

		byte[] bytes = new byte[1024]; 
		int c; 
		int total_bytes=0; 
			
//		TelnetOutputStream tos = put(directory); 
			
		while((c=is.read(bytes)) !=-1) 
		{ 
				total_bytes +=c; 
//				tos.write(bytes,0,c); 
		} 
			
//		tos.close(); 
		is.close();
	} 
	
	public static void main(String args[]) throws Exception{ 
		Uploader uploader = new Uploader();
		
		uploader.connect("192.168.0.7", "seoyd", "s09043");
//		uploader.cd("..");
		uploader.uploadFile("c:/ISLOG.TXT", "abc.txt"); 
	}

	@Override
	public FtpClient abort() throws FtpProtocolException, IOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public FtpClient allocate(long arg0) throws FtpProtocolException,
			IOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public FtpClient appendFile(String arg0, InputStream arg1)
			throws FtpProtocolException, IOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public FtpClient changeDirectory(String arg0) throws FtpProtocolException,
			IOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public FtpClient changeToParentDirectory() throws FtpProtocolException,
			IOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void close() throws IOException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public FtpClient completePending() throws FtpProtocolException, IOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public FtpClient connect(SocketAddress arg0) throws FtpProtocolException,
			IOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public FtpClient connect(SocketAddress arg0, int arg1)
			throws FtpProtocolException, IOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public FtpClient deleteFile(String arg0) throws FtpProtocolException,
			IOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public FtpClient enablePassiveMode(boolean arg0) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public FtpClient endSecureSession() throws FtpProtocolException,
			IOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int getConnectTimeout() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<String> getFeatures() throws FtpProtocolException, IOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public FtpClient getFile(String arg0, OutputStream arg1)
			throws FtpProtocolException, IOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public InputStream getFileStream(String arg0) throws FtpProtocolException,
			IOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String getHelp(String arg0) throws FtpProtocolException, IOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String getLastFileName() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Date getLastModified(String arg0) throws FtpProtocolException,
			IOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public FtpReplyCode getLastReplyCode() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String getLastResponseString() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public long getLastTransferSize() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Proxy getProxy() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int getReadTimeout() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public SocketAddress getServerAddress() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public long getSize(String arg0) throws FtpProtocolException, IOException {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public String getStatus(String arg0) throws FtpProtocolException,
			IOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String getSystem() throws FtpProtocolException, IOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String getWelcomeMsg() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String getWorkingDirectory() throws FtpProtocolException,
			IOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean isConnected() {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean isLoggedIn() {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean isPassiveModeEnabled() {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public InputStream list(String arg0) throws FtpProtocolException,
			IOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Iterator<FtpDirEntry> listFiles(String arg0)
			throws FtpProtocolException, IOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public FtpClient login(String arg0, char[] arg1)
			throws FtpProtocolException, IOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public FtpClient login(String arg0, char[] arg1, String arg2)
			throws FtpProtocolException, IOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public FtpClient makeDirectory(String arg0) throws FtpProtocolException,
			IOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public InputStream nameList(String arg0) throws FtpProtocolException,
			IOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public FtpClient noop() throws FtpProtocolException, IOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public FtpClient putFile(String arg0, InputStream arg1, boolean arg2)
			throws FtpProtocolException, IOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public OutputStream putFileStream(String arg0, boolean arg1)
			throws FtpProtocolException, IOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public FtpClient reInit() throws FtpProtocolException, IOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public FtpClient removeDirectory(String arg0) throws FtpProtocolException,
			IOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public FtpClient rename(String arg0, String arg1)
			throws FtpProtocolException, IOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public FtpClient setConnectTimeout(int arg0) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public FtpClient setDirParser(FtpDirParser arg0) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public FtpClient setProxy(Proxy arg0) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public FtpClient setReadTimeout(int arg0) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public FtpClient setRestartOffset(long arg0) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public FtpClient setType(TransferType arg0) throws FtpProtocolException,
			IOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public FtpClient siteCmd(String arg0) throws FtpProtocolException,
			IOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public FtpClient startSecureSession() throws FtpProtocolException,
			IOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public FtpClient structureMount(String arg0) throws FtpProtocolException,
			IOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public FtpClient useKerberos() throws FtpProtocolException, IOException {
		// TODO Auto-generated method stub
		return null;
	} 
} 


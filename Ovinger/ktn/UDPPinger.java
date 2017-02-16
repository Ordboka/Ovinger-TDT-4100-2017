package ktn;

import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;
import java.net.SocketTimeoutException;
import java.util.Calendar;

public class UDPPinger {
	static String serverName = "192.168.0.196"
			+ "";
	static int serverPort = 31415;
	static int timeOut = 1000;
	public static void main(String[] args) throws Exception{
		Calendar cal = Calendar.getInstance();
		InetAddress IPAddress = InetAddress.getByName(serverName);
		byte[] sendData = new byte[1024];
	     byte[] receiveData = new byte[1024];
		//Setter opp en socket og binder den til porten
		DatagramSocket clientSocket = new DatagramSocket(serverPort);
		//Setter timeout
		clientSocket.setSoTimeout(timeOut);
		int pTime = 0;
		
		while(pTime<10){
			String data = "Ping" + pTime + cal.getTimeInMillis();
			sendData = data.getBytes();
			cal = Calendar.getInstance();
			long sentTime = cal.getTimeInMillis();
			DatagramPacket sendPacket = new DatagramPacket(sendData, sendData.length, IPAddress, 27182);
			clientSocket.send(sendPacket);
			try{
				DatagramPacket receivePacket = new DatagramPacket(receiveData, receiveData.length);
			    clientSocket.receive(receivePacket);
			    cal = Calendar.getInstance();
			    System.out.println("Ping is " + (cal.getTimeInMillis()-sentTime));
			}catch (SocketTimeoutException e){
				System.out.println("Timeout");
			}
			pTime++;
		}
		clientSocket.close();
		}
	
}

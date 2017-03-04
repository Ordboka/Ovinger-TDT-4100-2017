package ktn;
/*
@startuml
Class Client{
	+__init__(host, serverport)
	+run()
	+disconnect()
	+wait_for_input()
}
Class MessageReciever{
	+__init__(connection)
	+run()
}

Class MessageParser{
	+__init__()
	+parse(payload)
	+parse_error(payload)
	+parse_info(payload)
	+parse_message(payload)
	+parse_history(payload)
}
Class Server{
	List history
	List connectedClients
	+validUsername
	+sendMessage
}
Class ThreadedTCPServer{
	
}
Class ClientHandler{
	+handle()
	+handleClientMessage(message)
	String ip
	String port
	Connection connection
	String username
	boolean loggedIn
}

Client--|>MessageReciever
MessageReciever--|>MessageParser
Server--|>ThreadedTCPServer
ThreadedTCPServer--|>ClientHandler

@enduml
*/
/*
 @startuml
 Client1 -> Client1 : run()
 Client1->Server : connect(host, port)
 Server -> Server : new ClientHandler()
 Client1 -> Server : send("msg Hei")
 Server -> ClientHandler : handleClientMessage(message)
 ClientHandler -> Client1 : send("Must be logged in first")
 Client1 -> Client1: MessageReciever()
 Client1 -> Client1: MessageParser()
 Client1 -> Server : send("Login Username1")
 Server -> ClientHandler : handleClientMessage(message)
 ClientHandler -> Server: validUsername(username)
 Server -> ClientHandler : True
 ClientHandler -> Client1: send("Login Successful")
 Client1 -> Client1: MessageReciever(message)
 Client1 -> Client1: MessageParser(message)
 Client2->Server : connect(host,port)
 Client1 -> Server: send("msg Hei")
 Server -> ClientHandler : handleClientMessage(message)
 ClientHandler -> Client1: send("Username1 Hei")
 Client1 -> Client1: MessageReciever(message)
 Client1 -> Client1: MessageParser(message)
 Client2 -> Server : send("Login Username2")
 Server -> ClientHandler : handleClientMessage(message)
 ClientHandler -> Server: validUsername(username)
 Server -> ClientHandler : True
 ClientHandler -> Client2: send("Login Successful")
 Client2 -> Client2: MessageReciever(message)
 Client2 -> Client2: MessageParser(message)
 ClientHandler -> Client2: send("Username1 Hei")
 Client2 -> Client2: MessageReciever(message)
 Client2 -> Client2: MessageParser(message)
 Client2 -> Server: send("msg Hei")
 Server -> ClientHandler : handleClientMessage(message)
 ClientHandler -> Client1: send("Username2 Hei")
 Client1 -> Client1: MessageReciever(message)
 Client1 -> Client1: MessageParser(message)
 ClientHandler -> Client2: send("Username2 Hei")
 Client2 -> Client2: MessageReciever(message)
 Client2 -> Client2: MessageParser(message)
 Client2 -> Server: send("names")
 Server -> ClientHandler : handleClientMessage(message)
 ClientHandler -> Client2 : send("Username1, Username2")
 Client2 -> Client2: MessageReciever(message)
 Client2 -> Client2: MessageParser(message)
 Client1 -> Server: send("logout")
 Server -> ClientHandler : handleClientMessage(message)
 Client2 -> Server: send("names")
 Server -> ClientHandler : handleClientMessage(message)
 ClientHandler -> Client2 : send("Username2")
 Client2 -> Client2: MessageReciever(message)
 Client2 -> Client2: MessageParser(message)
 Client2 -> Server: send("logout")
 Server -> ClientHandler : handleClientMessage(message)
 @enduml
 */
public class UMLDiagramProject {
	
}

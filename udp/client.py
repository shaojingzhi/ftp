import socket
 
size = 8192
 
try:
  #msg = raw_input()
  sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
  for i in range(0,51):
  	s = "No."+str(i)+" message"
  	s = s.encode("utf-8")
  	sock.sendto(s, ('localhost', 9876))
  for i in range(0,51):
  	print(sock.recv(size)) 
  #sock.sendto(msg, ('localhost', 9876))
  #print sock.recv(size)
  sock.close()
 
except:
  print ("cannot reach the server") 
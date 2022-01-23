import socket

size = 8192

sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
sock.bind(('', 9876))
num = 0

try:
  while True:
    data, address = sock.recvfrom(size)
    #sock.sendto(data.upper(), address)
    sock.sendto(str(num) + " " + data, address)
    num += 1
finally:
  sock.close()
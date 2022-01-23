# -*- coding: utf-8 -*-

from PyQt5 import QtCore, QtGui, QtWidgets

class Ui_MainWindow(object):
    def setupUi(self, MainWindow):
        MainWindow.setObjectName("MainWindow")
        MainWindow.resize(758, 664)
        self.centralwidget = QtWidgets.QWidget(MainWindow)
        self.centralwidget.setObjectName("centralwidget")
        self.lb_username = QtWidgets.QLabel(self.centralwidget)
        self.lb_username.setGeometry(QtCore.QRect(140, 10, 47, 13))
        self.lb_username.setObjectName("lb_username")
        self.lb_password = QtWidgets.QLabel(self.centralwidget)
        self.lb_password.setGeometry(QtCore.QRect(290, 10, 47, 13))
        self.lb_password.setObjectName("lb_password")
        self.lb_ftp_server_address = QtWidgets.QLabel(self.centralwidget)
        self.lb_ftp_server_address.setGeometry(QtCore.QRect(10, 10, 101, 16))
        self.lb_ftp_server_address.setObjectName("lb_ftp_server_address")
        self.le_ftp_server_address = QtWidgets.QLineEdit(self.centralwidget)
        self.le_ftp_server_address.setGeometry(QtCore.QRect(40, 10, 91, 20))
        self.le_ftp_server_address.setText("")
        self.le_ftp_server_address.setObjectName("le_ftp_server_address")
        self.le_username = QtWidgets.QLineEdit(self.centralwidget)
        self.le_username.setGeometry(QtCore.QRect(190, 10, 91, 20))
        self.le_username.setObjectName("le_username")
        self.le_password = QtWidgets.QLineEdit(self.centralwidget)
        self.le_password.setGeometry(QtCore.QRect(340, 10, 91, 20))
        self.le_password.setObjectName("le_password")
        self.td_server_response = QtWidgets.QTextBrowser(self.centralwidget)
        self.td_server_response.setGeometry(QtCore.QRect(260, 90, 481, 531))
        self.td_server_response.setObjectName("td_server_response")
        self.lb_server_response = QtWidgets.QLabel(self.centralwidget)
        self.lb_server_response.setGeometry(QtCore.QRect(270, 70, 101, 16))
        self.lb_server_response.setObjectName("lb_server_response")
        self.btn_connect = QtWidgets.QPushButton(self.centralwidget)
        self.btn_connect.setGeometry(QtCore.QRect(440, 10, 75, 23))
        self.btn_connect.setObjectName("btn_connect")
        self.cb_show_password = QtWidgets.QCheckBox(self.centralwidget)
        self.cb_show_password.setGeometry(QtCore.QRect(340, 30, 101, 17))
        self.cb_show_password.setObjectName("cb_show_password")
        self.gb_upload = QtWidgets.QGroupBox(self.centralwidget)
        self.gb_upload.setGeometry(QtCore.QRect(20, 190, 221, 121))
        self.gb_upload.setObjectName("gb_upload")
        self.le_upload_path = QtWidgets.QLineEdit(self.gb_upload)
        self.le_upload_path.setGeometry(QtCore.QRect(10, 40, 113, 20))
        self.le_upload_path.setObjectName("le_upload_path")
        self.lb_upload_path = QtWidgets.QLabel(self.gb_upload)
        self.lb_upload_path.setGeometry(QtCore.QRect(10, 20, 81, 16))
        self.lb_upload_path.setObjectName("lb_upload_path")
        self.btn_loadfile = QtWidgets.QPushButton(self.gb_upload)
        self.btn_loadfile.setGeometry(QtCore.QRect(130, 40, 71, 23))
        self.btn_loadfile.setObjectName("btn_loadfile")
        self.btn_upload = QtWidgets.QPushButton(self.gb_upload)
        self.btn_upload.setGeometry(QtCore.QRect(10, 60, 91, 23))
        self.btn_upload.setObjectName("btn_upload")
        self.pb_upload = QtWidgets.QProgressBar(self.gb_upload)
        self.pb_upload.setGeometry(QtCore.QRect(10, 90, 121, 21))
        self.pb_upload.setProperty("value", 24)
        self.pb_upload.setObjectName("pb_upload")
        self.gb_move = QtWidgets.QGroupBox(self.centralwidget)
        self.gb_move.setGeometry(QtCore.QRect(20, 110, 221, 71))
        self.gb_move.setObjectName("gb_move")
        self.le_move = QtWidgets.QLineEdit(self.gb_move)
        self.le_move.setGeometry(QtCore.QRect(10, 40, 113, 20))
        self.le_move.setObjectName("le_move")
        self.btn_move = QtWidgets.QPushButton(self.gb_move)
        self.btn_move.setGeometry(QtCore.QRect(130, 40, 71, 23))
        self.btn_move.setObjectName("btn_move")
        self.lb_movepath = QtWidgets.QLabel(self.gb_move)
        self.lb_movepath.setGeometry(QtCore.QRect(10, 20, 47, 13))
        self.lb_movepath.setObjectName("lb_movepath")
        self.gb_download = QtWidgets.QGroupBox(self.centralwidget)
        self.gb_download.setGeometry(QtCore.QRect(20, 320, 221, 121))
        self.gb_download.setObjectName("gb_download")
        self.lb_filename = QtWidgets.QLabel(self.gb_download)
        self.lb_filename.setGeometry(QtCore.QRect(10, 20, 71, 16))
        self.lb_filename.setObjectName("lb_filename")
        self.le_download_path = QtWidgets.QLineEdit(self.gb_download)
        self.le_download_path.setGeometry(QtCore.QRect(10, 40, 113, 20))
        self.le_download_path.setObjectName("le_download_path")
        self.pb_download = QtWidgets.QProgressBar(self.gb_download)
        self.pb_download.setGeometry(QtCore.QRect(10, 90, 118, 23))
        self.pb_download.setProperty("value", 24)
        self.pb_download.setObjectName("pb_download")
        self.btn_download = QtWidgets.QPushButton(self.gb_download)
        self.btn_download.setGeometry(QtCore.QRect(10, 60, 75, 23))
        self.btn_download.setObjectName("btn_download")
        self.btn_saveto = QtWidgets.QPushButton(self.gb_download)
        self.btn_saveto.setGeometry(QtCore.QRect(130, 40, 75, 23))
        self.btn_saveto.setObjectName("btn_saveto")
        self.gb_create = QtWidgets.QGroupBox(self.centralwidget)
        self.gb_create.setGeometry(QtCore.QRect(20, 450, 221, 80))
        self.gb_create.setObjectName("gb_create")
        self.lb_create_file = QtWidgets.QLabel(self.gb_create)
        self.lb_create_file.setGeometry(QtCore.QRect(10, 20, 81, 16))
        self.lb_create_file.setObjectName("lb_create_file")
        self.btn_create = QtWidgets.QPushButton(self.gb_create)
        self.btn_create.setGeometry(QtCore.QRect(130, 40, 75, 23))
        self.btn_create.setObjectName("btn_create")
        self.le_create_file = QtWidgets.QLineEdit(self.gb_create)
        self.le_create_file.setGeometry(QtCore.QRect(10, 40, 113, 20))
        self.le_create_file.setObjectName("le_create_file")
        self.gb_delete = QtWidgets.QGroupBox(self.centralwidget)
        self.gb_delete.setGeometry(QtCore.QRect(20, 540, 221, 80))
        self.gb_delete.setObjectName("gb_delete")
        self.lb_delete_directory = QtWidgets.QLabel(self.gb_delete)
        self.lb_delete_directory.setGeometry(QtCore.QRect(10, 20, 81, 16))
        self.lb_delete_directory.setObjectName("lb_delete_directory")
        self.btn_delete = QtWidgets.QPushButton(self.gb_delete)
        self.btn_delete.setGeometry(QtCore.QRect(130, 40, 75, 23))
        self.btn_delete.setObjectName("btn_delete")
        self.le_delete_file = QtWidgets.QLineEdit(self.gb_delete)
        self.le_delete_file.setGeometry(QtCore.QRect(10, 40, 113, 20))
        self.le_delete_file.setObjectName("le_delete_file")
        self.line = QtWidgets.QFrame(self.centralwidget)
        self.line.setGeometry(QtCore.QRect(-40, 50, 841, 20))
        self.line.setFrameShape(QtWidgets.QFrame.HLine)
        self.line.setFrameShadow(QtWidgets.QFrame.Sunken)
        self.line.setObjectName("line")
        self.label_2 = QtWidgets.QLabel(self.centralwidget)
        self.label_2.setGeometry(QtCore.QRect(570, -10, 141, 71))
        font = QtGui.QFont()
        font.setFamily("Lucida Fax")
        font.setPointSize(35)
        self.label_2.setFont(font)
        self.label_2.setObjectName("label_2")
        self.line_2 = QtWidgets.QFrame(self.centralwidget)
        self.line_2.setGeometry(QtCore.QRect(0, 46, 761, 20))
        self.line_2.setFrameShape(QtWidgets.QFrame.HLine)
        self.line_2.setFrameShadow(QtWidgets.QFrame.Sunken)
        self.line_2.setObjectName("line_2")
        self.btn_list = QtWidgets.QPushButton(self.centralwidget)
        self.btn_list.setGeometry(QtCore.QRect(30, 70, 91, 23))
        self.btn_list.setObjectName("btn_list")
        MainWindow.setCentralWidget(self.centralwidget)
        self.statusbar = QtWidgets.QStatusBar(MainWindow)
        self.statusbar.setObjectName("statusbar")
        MainWindow.setStatusBar(self.statusbar)
        self.menubar = QtWidgets.QMenuBar(MainWindow)
        self.menubar.setGeometry(QtCore.QRect(0, 0, 758, 21))
        self.menubar.setObjectName("menubar")
        self.menuFTP_CLient = QtWidgets.QMenu(self.menubar)
        self.menuFTP_CLient.setObjectName("menuFTP_CLient")
        self.menuEdit = QtWidgets.QMenu(self.menubar)
        self.menuEdit.setObjectName("menuEdit")
        self.menuView = QtWidgets.QMenu(self.menubar)
        self.menuView.setObjectName("menuView")
        self.menuHelp = QtWidgets.QMenu(self.menubar)
        self.menuHelp.setObjectName("menuHelp")
        MainWindow.setMenuBar(self.menubar)
        self.menuFTP_CLient.addSeparator()
        self.menuFTP_CLient.addSeparator()
        self.menubar.addAction(self.menuFTP_CLient.menuAction())
        self.menubar.addAction(self.menuEdit.menuAction())
        self.menubar.addAction(self.menuView.menuAction())
        self.menubar.addAction(self.menuHelp.menuAction())

        self.retranslateUi(MainWindow)
        QtCore.QMetaObject.connectSlotsByName(MainWindow)

    def retranslateUi(self, MainWindow):
        _translate = QtCore.QCoreApplication.translate
        MainWindow.setWindowTitle(_translate("MainWindow", "FTP Client by sjz"))
        self.lb_username.setText(_translate("MainWindow", "Username"))
        self.lb_password.setText(_translate("MainWindow", "Password"))
        self.lb_ftp_server_address.setText(_translate("MainWindow", "host"))
        self.lb_server_response.setText(_translate("MainWindow", "Server Response"))
        self.btn_connect.setText(_translate("MainWindow", "Connect"))
        self.cb_show_password.setText(_translate("MainWindow", "Show Password"))
        self.gb_upload.setTitle(_translate("MainWindow", "Upload"))
        self.lb_upload_path.setText(_translate("MainWindow", "File Name"))
        self.btn_loadfile.setText(_translate("MainWindow", "Load File"))
        self.btn_upload.setText(_translate("MainWindow", "Upload"))
        self.gb_move.setTitle(_translate("MainWindow", "Move"))
        self.btn_move.setText(_translate("MainWindow", "Move to"))
        self.lb_movepath.setText(_translate("MainWindow", "Path"))
        self.gb_download.setTitle(_translate("MainWindow", "Download"))
        self.lb_filename.setText(_translate("MainWindow", "File Name"))
        self.btn_download.setText(_translate("MainWindow", "Download"))
        self.btn_saveto.setText(_translate("MainWindow", "Save to"))
        self.gb_create.setTitle(_translate("MainWindow", "Create a Directory"))
        self.lb_create_file.setText(_translate("MainWindow", "Directory Name"))
        self.btn_create.setText(_translate("MainWindow", "Create"))
        self.gb_delete.setTitle(_translate("MainWindow", "Delete Directory"))
        self.lb_delete_directory.setText(_translate("MainWindow", "Directory Name"))
        self.btn_delete.setText(_translate("MainWindow", "Delete"))
        self.label_2.setText(_translate("MainWindow", ""))
        self.btn_list.setText(_translate("MainWindow", "List Directories"))
        self.menuFTP_CLient.setTitle(_translate("MainWindow", "Files"))
        self.menuEdit.setTitle(_translate("MainWindow", "Edit"))
        self.menuView.setTitle(_translate("MainWindow", "View"))
        self.menuHelp.setTitle(_translate("MainWindow", "Help"))


from PyQt5.QtCore import *
from PyQt5.QtWidgets import *
from PyQt5.QtGui import *

import client
import os
from MainWindow import Ui_MainWindow

PASSWORD_MODE = 2
NORMAL_MODE = 0

POSSIBLE_CLIENT_OPERATIONS = ['', 'List', 'Upload', 'Download', 'Move', 'Create', 'Delete']
POSSIBLE_OPERATIONS_ACTION = {'': 0, 'List': 1, 'Upload': 2, 'Download': 3, 'Move': 4, 'Delete': 5}

class MainWindow(QMainWindow, Ui_MainWindow):
    def __init__(self, *args, **kwargs):
        super(MainWindow, self).__init__(*args, **kwargs)
        self.setupUi(self)
        self.show()
        self._server_message = ''
        self._ftp_client = client.FTPclient()
        self._userAction = ''
        self._download_path = ''
        self._uploadFile = ''
        self._loggedIn = False
        # Setting up check list
        self.cb_show_password.setChecked(False)
        self.pb_upload.setValue(0)
        self.pb_download.setValue(0)

        # Setting Up the labels
        f = self.lb_ftp_server_address.font()
        f.setPointSize(8)
        self.lb_password.setFont(f)
        self.lb_username.setFont(f)
        self.lb_ftp_server_address.setFont(f)
        self.lb_server_response.setFont(f)
        # self.lb_action.setFont(f)
        self.lb_movepath.setFont(f)
        self.lb_upload_path.setFont(f)
        self.lb_filename.setFont(f)
        self.lb_create_file.setFont(f)
        self.lb_delete_directory.setFont(f)

        # Setting up line edits (User Input textbox)
        self.le_ftp_server_address.setPlaceholderText('127.0.0.1')
        self.le_username.setPlaceholderText(' username')
        self.le_password.setPlaceholderText(' password')
        self.le_move.setPlaceholderText('/home/documents')
        self.le_password.setEchoMode(PASSWORD_MODE)  # Hides the text

        # Setting up Combo Box
        # self.comboBox_userAction.addItems(POSSIBLE_CLIENT_OPERATIONS)

        # Handling events
        self.btn_connect.pressed.connect(self.btn_connect_handler)
        # self.btn_disconnect.pressed.connect(self.btn_disconnect_handler)
        self.btn_list.pressed.connect(self.btn_list_handler)
        self.cb_show_password.stateChanged.connect(self.cb_show_password_handler)
        # self.comboBox_userAction.currentIndexChanged[str].connect(self.comboBox_userAction_handler)
        # self.btn_proceed.pressed.connect(self.btn_proceed_handler)
        self.btn_loadfile.pressed.connect(self.btn_loadfile_handler)
        self.btn_upload.pressed.connect(self.btn_upload_handler)
        self.btn_move.pressed.connect(self.btn_move_handler)
        # self.btn_upload.clicked.connect(self.uploadProgress)
        self.btn_download.pressed.connect(self.btn_download_handler)
        self.btn_saveto.pressed.connect(self.btn_saveto_handler)
        self.btn_create.pressed.connect(self.btn_create_handler)
        self.btn_delete.pressed.connect(self.btn_delete_handler)


    def btn_loadfile_handler(self):
        self.pb_upload.setValue(0)
        self._uploadFile, _ = QFileDialog.getOpenFileName(self, 'Open File', '', '', 'All files(*.*)')

    def btn_upload_handler(self):
        if self._loggedIn:
            path = self.le_upload_path.text()
            print("path:",path)
            print("file:",self._uploadFile)
            self._ftp_client.stor(str(path), self._uploadFile)
            self._server_message += self._ftp_client.getServerMessage()
            self.td_server_response.insertPlainText(self._server_message)
            # self._scrollBar.setValue(self._scrollBar.maxValue())

            progress = 0
            while progress <= 100:
                progress += 0.001
                self.pb_upload.setValue(progress)

        else:
            print("Cannot Upload \n PLEASE LOGIN TO A SERVER")

        self.td_server_response.moveCursor(QTextCursor.End)

        if self._loggedIn:
            file_to_download = self.le_download_path.text()
            self._ftp_client.retr(file_to_download, self._download_path)
            self._server_message += self._ftp_client.getServerMessage()

            progress = 0
            while progress <= 100:
                progress += 0.001
                self.pb_download.setValue(progress)

        else:
            self._server_message += 'Cannot Download \n PLEASE LOGIN TO A SERVER'
            self.td_server_response.setText(self._server_message)

        self._server_message += '\n'
        self.td_server_response.setText(self._server_message)
        self.td_server_response.moveCursor(QTextCursor.End)

    def btn_saveto_handler(self):
        self.pb_upload.setValue(0)
        self._download_path, _ = QFileDialog.getSaveFileName(self, 'Save File', '', '', 'All files(*.*)')

    def btn_connect_handler(self):
        if not self._loggedIn:
            ftp_server_address = self.le_ftp_server_address.text()
            username = self.le_username.text()
            password = self.le_password.text()
            if len(ftp_server_address) > 3:
                self._loggedIn = self._ftp_client.login(ftp_server_address, username, password)
                self._server_message = self._ftp_client.getServerMessage()
                self.td_server_response.setText(self._server_message)
                # print(self._server_message)
            else:
                pass
            # lock all the inputs for user name and servers.
            self.le_username.setReadOnly(True)
            self.le_password.setReadOnly(True)
            self.le_ftp_server_address.setReadOnly(True)
            self.btn_connect.setText('Disconnect')
        else:
            self._loggedIn = False
            self._ftp_client.quit()
            self._server_message += '\n'
            self._server_message += self._ftp_client.getServerMessage()
            self.td_server_response.setText(self._server_message)
            self.le_username.setReadOnly(False)
            self.le_password.setReadOnly(False)
            self.le_ftp_server_address.setReadOnly(False)
            self.btn_connect.setText('Connect')

        self._server_message += '\n'
        self.td_server_response.setText(self._server_message)
        self.td_server_response.moveCursor(QTextCursor.End)

    def btn_list_handler(self):
        if self._loggedIn:
            self._ftp_client.list()
            if len(self._server_message) > 1:
                self._server_message += '\n'
            self._server_message += self._ftp_client.getServerMessage()
            self._server_message += '\n'
            self.td_server_response.setText(self._server_message)
        else:
            self.td_server_response.setText('PLEASE LOGIN TO A SERVER')

        self.td_server_response.moveCursor(QTextCursor.End)

    def cb_show_password_handler(self, s):
        if s == Qt.Checked:
            self.le_password.setEchoMode(NORMAL_MODE)
        else:
            self.le_password.setEchoMode(PASSWORD_MODE)
    def btn_move_handler(self):
        if self._loggedIn:
            path = self.le_move.text()
            if path == '':
                self._ftp_client.cdup()
            else:
                self._ftp_client.cwd(path)

            self._server_message += self._ftp_client.getServerMessage()
            self.td_server_response.setText(self._server_message)
        else:
            print("Cannot Change Directories \n PLEASE LOGIN TO A SERVER")

        self.td_server_response.moveCursor(QTextCursor.End)


    def btn_create_handler(self):
        if self._loggedIn:
            filename = self.le_create_file.text()
            self._ftp_client.mkd(filename)
            self._server_message += self._ftp_client.getServerMessage()
        else:
            self._server_message += 'Cannot create a directory \n PLEASE LOGIN TO A SERVER\n'
            self.td_server_response.setText(self._server_message)

        self._server_message += '\n'
        self.td_server_response.setText(self._server_message)
        self.td_server_response.moveCursor(QTextCursor.End)

    def btn_delete_handler(self):
        if self._loggedIn:
            filename = self.le_delete_file.text()
            x = filename.find('.')
            if x > 0:
                self._ftp_client.dele(str(filename))
            else:
                self._ftp_client.rmd(str(filename))


        self._server_message += self._ftp_client.getServerMessage()
        self._server_message += '\n'
        self.td_server_response.setText(self._server_message)
        self.td_server_response.moveCursor(QTextCursor.End)


# =============================================================
# MAIN PROGRAM LOOP
if __name__ == '__main__':
    app = QApplication([])
    w = MainWindow()
    app.exec_()
# =============================================================

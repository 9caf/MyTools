#使用前说明


##技术
主要使用**python**与**shadowsocks**的技术，满足以下条件:
* 使用ubuntu系统
* 安装了python(2.7 or 3.5+)与pip
* 使用pip命令`pip install shadowsocks`
* 编辑shadowsocks.json
```javascript
{
    "server":"0.0.0.0",
    "local_port":1080,
    "port_password": {
	"port_id_1": "password_1",
	"port_id_2": "password_2"
    },
    "timeout":300, 
    "method":"rc4-md5"	//密码使用的加密函数
}
```
*使用命令`sudo ./start`启动Shadowsocks VPN服务
*使用命令`sudo ./stop`关闭Shadowsocks VPN服务

## my-neovim    

---
> `vimlsp`
![image.png](https://i.loli.net/2021/01/25/nWs7Jr64RQbUcYM.png)
> `c/c++`
![image.png](https://i.loli.net/2021/01/25/TALRiyaOSoBGmDW.png)

### 使用教程
#### Method of use    

#### `master`分支将不再更新
#### `main1` 从2021 1月 25日开始不支持低于5.0版本neovim  
*  更新日志
	* 2021 1-26
		* 删除neovim 启动的header
	* 2021 1-25
		* 使用 `onebuddy` 配色
		* 使用 `nvim-treesitter` 调整语法高亮
		* 删除 vim-one 
		* 删除 vim-c-xxx.vim
		* 需要依赖 code-minimap <u>如果不想安装可以去除init.vim end init.config.vim 中的 vim-minimap相关配置</u>
<br>  
<br>  
<br>  
<br>  
* 这是我的neovim配置，使用的coc.nvim 进行补全,拷贝到你的配置目录，执行`:source ~/.config/nvim/install.vim` or `:Init`   
<font size=1> 由于国内网络原因，可能一次无法执行成功，如果出现故障请使用`PlugInstall`重来</font>
* This is my neovim configuration, the use of the coc. Nvim for completion,Copy to your configuration file directory, open the neovim execution     


    
`:H 将调出帮助`
- 快捷键设置 下面`or`意思是或者  
- `<F5>` 启动调试 `详情查看 init.config.vim 中的 vimspector块` 
新项目需要先使用`<leader>vs`  添加调试文件
- `'s or <ALT>+` 打开终端 <font size=2 >`<ALT>+q` 退出终端的写入模式</font>
- `tr or er ` 打开文件管理器
- `<leader>wq` 关闭当前缓冲区
- `<leader>t or <leader>e or <leader>r`  翻译
- `<leader>o or <leader>n` 切换buf

# 各个文件的作用    
init.vim    
主要的配置文件 存放一个插件和一些基础配置    
init.config.vim  主要的配置文件    
其他文件    
其他文件大部分都是配色    
可以在init.vim修改启动的配色插件    


## 演示视频
 <a href="https://www.bilibili.com/video/BV16v4y1f7kV">  <span>  <img border="0" src="./src/b.png" height="450" width="100%"/>
  </a>


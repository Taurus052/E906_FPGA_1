### E906_vivado_files

1.本工程的系列约束基于Digilent Genesys 2 开发板，约束文件为“Genesys-2-Master.xdc：![](Readme_md_files/963c89e0-b4ba-11ed-88df-3b538b71e1d7.jpeg?v=1&type=image)
2.本工程基于Vivado 2021.2版本搭建,低版本Vivado可能会出现兼容性错误。同版本vivado可直接烧写比特流。
3.E906 _top.v为顶层top文件。

### 工程的时钟设置：
200MHz差分输入，输出时钟clk_out1为50MHz（超过75MHz可能会出现时序不通过的问题）
resetn为低电平有效
![](Readme_md_files/e20d0de0-b4b5-11ed-adce-75d5e70376b9.jpeg?v=1&type=image)
![](Readme_md_files/bd001ef0-b4b7-11ed-adce-75d5e70376b9.jpeg?v=1&type=image)
![](Readme_md_files/cac582f0-b4b7-11ed-adce-75d5e70376b9.jpeg?v=1&type=image)
### 关于JTAG
由于Genesys 2 开发板并没有标准jtag接口,工程将相关引脚定义到了开发板上的Pmod JA 上,具体引脚定义见约束文件。







 




# 关于iOS Modality View（模态视图）与 Alert 的层级测试

![](https://p.ipic.vip/rsxie1.gif)

开启 Model VC（模态视图）和 Alert 的 func 设置在 VC 1 上， 是从 VC 1 present 的，但是在 VC2 上点击按钮 触发 VC1 的 func 不会打乱 视图层级：

说明：

iOS 中的 模态视图 （Modality View）和 Alert 是不会因为弹出他们的视图是被覆盖的而改变现有的视图层级

启发：

所以我们在做设计时可以将Modality View 和 Alert 尝试放在 一个根视图上，来进行展示！且不会打乱视图层级！
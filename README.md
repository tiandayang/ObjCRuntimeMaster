# ObjCRuntimeMaster
## 内容
    demo中主要讲了 如何通过runtime提供的API来获取类的成员变量和方法，以及如何使用runtime的method Swizzling  去交换方法
## 知识点
* object_getClass(obj)  获取对象所属的类 如果传入的是 实例 那得到的就是实例的类 如果传入的是 类 那得到的就是元类
* class_copyIvarList(class, &count) 获取所有成员变量的集合（相近的有个获取所有属性集合的 class_copyPropertyList）
* ivar_getName(Ivar) 获取属性名称 （获取的都带 _）
* class_getMethodImplementation(class, selector) 这个是获取放法的实现  NSobject 也有提供方法去获取方法的实现 + (IMP)instanceMethodForSelector:(SEL)aSelector;
## 发现
    当我在某个类的类目里 添加属性并不会增加在这个类的属性列表里，但是对应涩set 和get方法却出现在了 方法列表里，也就是说category确实是不能够添加属性，本质也是因为添加了对应涩set和get方法 另外当生命的方法 类似于get方法的写法时，也可以通过打点的方式 直接调用该方法。如demo中的 allPropertyName...
## 应用场景
常见的应用场景有
* 模型赋值
* 本地数据库建表
* 。。。


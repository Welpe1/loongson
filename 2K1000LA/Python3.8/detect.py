import torch


class LinearModel(torch.nn.Module):
    #这里没有定义类属性

    #定义实例属性
    def __init__(self):
        super(LinearModel,self).__init__()
        self.linear=torch.nn.Linear(5,1)
        #torch.nn.Linear(in_features,out_features,bias=True),这个函数里面自动执行y=w*x+b的操作
        #in_features表示输入(x)的维度,out_features表示输出(y)的维度,bias决定是否需要偏置量
        #(1,1)是指输入x和输出y的特征维度，这里数据集中的x和y的特征都是1维的


    #定义方法
    def forward(self,x):
        y_pred=self.linear(x)
        return y_pred

#构造模型
model=LinearModel()

model.load_state_dict(torch.load('./model.pt'))
model.eval() 

with torch.no_grad():  
    x_test = torch.Tensor([[21.0, 22.1, 21.2,22.5,21.0]])  # 测试数据也应该有与训练数据相同的特征维度  
    y_test = model(x_test)  
    print("y=", y_test.item())  # 因为输出是单个值，所以可以使用 .item()
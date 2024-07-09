#include <stdio.h>
#include <string.h>
#include <pthread.h>
#include <unistd.h>

static char g_buf[1000];
static pthread_mutex_t g_tMutex = PTHREAD_MUTEX_INITIALIZER;
static pthread_cond_t g_tConVar= PTHREAD_COND_INITIALIZER;

static void* my_thread_func(void *data)
{
    while(1)
    {
        pthread_mutex_lock(&g_tMutex);
        pthread_cond_wait(&g_tConVar,&g_tMutex);        //等待条件成立

        printf("rev:%s\n",g_buf); 
        pthread_mutex_unlock(&g_tMutex);


    }
   

    return NULL;

}


int main(int argc,char **argv)
{
    pthread_t tid;
    int ret=0;
    char temp[1000];

    //创建接受线程
    ret=pthread_create(&tid,NULL,&my_thread_func,NULL); //pthread结构体,属性,函数,函数参数
    if(ret){
        printf("create thrtead fail\r\n");
        return -1;
    }

     //主线程将数据发给接收线程
    while(1)
    {
        fgets(temp,1000,stdin);
        pthread_mutex_lock(&g_tMutex);
        memcpy(g_buf,temp,1000);
        pthread_cond_signal(&g_tConVar);
        pthread_mutex_unlock(&g_tMutex);


    }

    return 0;
}



.class public Lcn/thinkingdata/android/TDQuitSafelyService;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/thinkingdata/android/TDQuitSafelyService$TDKeepAliveService;,
        Lcn/thinkingdata/android/TDQuitSafelyService$ExceptionHandler;,
        Lcn/thinkingdata/android/TDQuitSafelyService$ShutDownHooksThread;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "ThinkingAnalytics.Quit"

.field private static sInstance:Lcn/thinkingdata/android/TDQuitSafelyService;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mExceptionHandlerInitialed:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcn/thinkingdata/android/TDQuitSafelyService;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcn/thinkingdata/android/TDContextConfig;->getInstance(Landroid/content/Context;)Lcn/thinkingdata/android/TDContextConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcn/thinkingdata/android/TDContextConfig;->quitSafelyEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcn/thinkingdata/android/TDQuitSafelyService$ShutDownHooksThread;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcn/thinkingdata/android/TDQuitSafelyService$ShutDownHooksThread;-><init>(Lcn/thinkingdata/android/TDQuitSafelyService;Lcn/thinkingdata/android/TDQuitSafelyService$1;)V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Runtime;->addShutdownHook(Ljava/lang/Thread;)V

    invoke-virtual {p0}, Lcn/thinkingdata/android/TDQuitSafelyService;->initExceptionHandler()V

    :cond_0
    return-void
.end method

.method static synthetic access$100(Lcn/thinkingdata/android/TDQuitSafelyService;)V
    .locals 0

    invoke-direct {p0}, Lcn/thinkingdata/android/TDQuitSafelyService;->quit()V

    return-void
.end method

.method static synthetic access$200(Lcn/thinkingdata/android/TDQuitSafelyService;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcn/thinkingdata/android/TDQuitSafelyService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static getInstance(Landroid/content/Context;)Lcn/thinkingdata/android/TDQuitSafelyService;
    .locals 2

    sget-object v0, Lcn/thinkingdata/android/TDQuitSafelyService;->sInstance:Lcn/thinkingdata/android/TDQuitSafelyService;

    if-nez v0, :cond_2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-class v0, Lcn/thinkingdata/android/TDQuitSafelyService$ExceptionHandler;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcn/thinkingdata/android/TDQuitSafelyService;->sInstance:Lcn/thinkingdata/android/TDQuitSafelyService;

    if-nez v1, :cond_1

    new-instance v1, Lcn/thinkingdata/android/TDQuitSafelyService;

    invoke-direct {v1, p0}, Lcn/thinkingdata/android/TDQuitSafelyService;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcn/thinkingdata/android/TDQuitSafelyService;->sInstance:Lcn/thinkingdata/android/TDQuitSafelyService;

    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_0
    sget-object p0, Lcn/thinkingdata/android/TDQuitSafelyService;->sInstance:Lcn/thinkingdata/android/TDQuitSafelyService;

    return-object p0
.end method

.method private quit()V
    .locals 4

    iget-object v0, p0, Lcn/thinkingdata/android/TDQuitSafelyService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/thinkingdata/android/TDContextConfig;->getInstance(Landroid/content/Context;)Lcn/thinkingdata/android/TDContextConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcn/thinkingdata/android/TDContextConfig;->quitSafelyEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ThinkingAnalytics.Quit"

    const-string v1, "The App is quiting..."

    invoke-static {v0, v1}, Lcn/thinkingdata/android/utils/TDLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcn/thinkingdata/android/TDQuitSafelyService$1;

    invoke-direct {v0, p0}, Lcn/thinkingdata/android/TDQuitSafelyService$1;-><init>(Lcn/thinkingdata/android/TDQuitSafelyService;)V

    invoke-static {v0}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->allInstances(Lcn/thinkingdata/android/ThinkingAnalyticsSDK$InstanceProcessor;)V

    iget-object v0, p0, Lcn/thinkingdata/android/TDQuitSafelyService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/thinkingdata/android/TDContextConfig;->getInstance(Landroid/content/Context;)Lcn/thinkingdata/android/TDContextConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcn/thinkingdata/android/TDContextConfig;->getQuitSafelyTimeout()I

    move-result v0

    int-to-long v0, v0

    const-string/jumbo v2, "thinkingData.sdk.saveMessageWorker"

    invoke-direct {p0, v2, v0, v1}, Lcn/thinkingdata/android/TDQuitSafelyService;->quitSafely(Ljava/lang/String;J)V

    iget-object v0, p0, Lcn/thinkingdata/android/TDQuitSafelyService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/thinkingdata/android/TDContextConfig;->getInstance(Landroid/content/Context;)Lcn/thinkingdata/android/TDContextConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcn/thinkingdata/android/TDContextConfig;->getQuitSafelyTimeout()I

    move-result v0

    int-to-long v0, v0

    const-string/jumbo v2, "thinkingData.sdk.sendMessageWorker"

    invoke-direct {p0, v2, v0, v1}, Lcn/thinkingdata/android/TDQuitSafelyService;->quitSafely(Ljava/lang/String;J)V

    iget-object v0, p0, Lcn/thinkingdata/android/TDQuitSafelyService;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcn/thinkingdata/android/TDQuitSafelyService;->mContext:Landroid/content/Context;

    const-class v3, Lcn/thinkingdata/android/TDQuitSafelyService$TDKeepAliveService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    :cond_0
    return-void
.end method

.method private quitSafely(Ljava/lang/String;J)V
    .locals 7

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v2, :cond_0

    :try_start_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    const-wide/16 v4, 0x1f4

    if-lt v2, v3, :cond_2

    instance-of v2, v1, Landroid/os/HandlerThread;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/os/Looper;->quitSafely()V

    const-wide/16 v2, 0x0

    cmp-long v6, p2, v2

    if-lez v6, :cond_1

    invoke-virtual {v1, p2, p3}, Ljava/lang/Thread;->join(J)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v4, v5}, Ljava/lang/Thread;->join(J)V

    goto :goto_0

    :cond_2
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    return-void
.end method


# virtual methods
.method declared-synchronized initExceptionHandler()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcn/thinkingdata/android/TDQuitSafelyService;->mExceptionHandlerInitialed:Z

    if-nez v0, :cond_0

    new-instance v0, Lcn/thinkingdata/android/TDQuitSafelyService$ExceptionHandler;

    invoke-direct {v0, p0}, Lcn/thinkingdata/android/TDQuitSafelyService$ExceptionHandler;-><init>(Lcn/thinkingdata/android/TDQuitSafelyService;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/thinkingdata/android/TDQuitSafelyService;->mExceptionHandlerInitialed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method start()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcn/thinkingdata/android/TDQuitSafelyService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/thinkingdata/android/TDContextConfig;->getInstance(Landroid/content/Context;)Lcn/thinkingdata/android/TDContextConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcn/thinkingdata/android/TDContextConfig;->quitSafelyEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/thinkingdata/android/TDQuitSafelyService;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcn/thinkingdata/android/TDQuitSafelyService;->mContext:Landroid/content/Context;

    const-class v3, Lcn/thinkingdata/android/TDQuitSafelyService$TDKeepAliveService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected exception occurred: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ThinkingAnalytics.Quit"

    invoke-static {v1, v0}, Lcn/thinkingdata/android/utils/TDLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

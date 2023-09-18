.class public Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcher;
.super Ljava/lang/Object;
.source "YXCatcher.java"


# static fields
.field private static final CRASH_COMPONENT:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcher;->CRASH_COMPONENT:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static release(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sdkType"
        }
    .end annotation

    .line 55
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 59
    :cond_0
    sget-object v0, Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcher;->CRASH_COMPONENT:Ljava/util/HashMap;

    monitor-enter v0

    .line 60
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent;

    if-nez v1, :cond_1

    .line 62
    monitor-exit v0

    return-void

    .line 64
    :cond_1
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    invoke-static {p0}, Lcom/netease/yunxin/lite/util/catcher/extra/YXExceptionHandler;->release(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    .line 65
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static setup(Ljava/lang/String;Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sdkType",
            "crashComponent"
        }
    .end annotation

    .line 19
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    .line 21
    invoke-virtual {p1}, Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent;->getSdkType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 22
    invoke-virtual {p1}, Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent;->getCrashHandler()Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent$CrashHandler;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent;->getCrashCallback()Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent$CrashCallback;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 27
    :cond_0
    sget-object v0, Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcher;->CRASH_COMPONENT:Ljava/util/HashMap;

    monitor-enter v0

    .line 28
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent;

    if-eqz v1, :cond_1

    .line 30
    monitor-exit v0

    return-void

    .line 32
    :cond_1
    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    invoke-static {p1}, Lcom/netease/yunxin/lite/util/catcher/extra/YXExceptionHandler;->setup(Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent;)V

    return-void

    :catchall_0
    move-exception p0

    .line 33
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_2
    :goto_0
    return-void
.end method

.method public static updateCrashLogHeader(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sdkType",
            "crashLogHeaderMap"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 39
    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 42
    :cond_0
    sget-object v0, Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcher;->CRASH_COMPONENT:Ljava/util/HashMap;

    monitor-enter v0

    .line 43
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent;

    if-nez p0, :cond_1

    .line 45
    monitor-exit v0

    return-void

    .line 47
    :cond_1
    invoke-virtual {p0}, Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent;->getCrashLogHeader()Ljava/util/HashMap;

    move-result-object p0

    .line 48
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 49
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_0
    return-void
.end method

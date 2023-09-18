.class public Lcom/netease/yunxin/lite/util/LooperUtils;
.super Ljava/lang/Object;
.source "LooperUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static quit(Landroid/os/Handler;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "handler"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 17
    :try_start_0
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/netease/yunxin/lite/util/-$$Lambda$QbnKJUpxkZLwu4TfDsCHewv_Z1g;

    invoke-direct {v1, v0}, Lcom/netease/yunxin/lite/util/-$$Lambda$QbnKJUpxkZLwu4TfDsCHewv_Z1g;-><init>(Landroid/os/Looper;)V

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public static quitSafely(Landroid/os/Handler;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "handler"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 26
    invoke-static {}, Lcom/netease/yunxin/lite/util/Compatibility;->runningOnJellyBeanMR2OrHigher()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Looper;->quitSafely()V

    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Looper;->quit()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static quitSafely(Landroid/os/Looper;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "looper"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 36
    invoke-static {}, Lcom/netease/yunxin/lite/util/Compatibility;->runningOnJellyBeanMR2OrHigher()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    invoke-virtual {p0}, Landroid/os/Looper;->quitSafely()V

    goto :goto_0

    .line 39
    :cond_0
    invoke-virtual {p0}, Landroid/os/Looper;->quit()V

    :cond_1
    :goto_0
    return-void
.end method

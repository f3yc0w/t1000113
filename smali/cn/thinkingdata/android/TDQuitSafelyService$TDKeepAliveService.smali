.class public Lcn/thinkingdata/android/TDQuitSafelyService$TDKeepAliveService;
.super Landroid/app/Service;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/thinkingdata/android/TDQuitSafelyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TDKeepAliveService"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "ThinkingAnalytics.Quit"

    const-string v1, "KeepAliveService onDestroy"

    invoke-static {v0, v1}, Lcn/thinkingdata/android/utils/TDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onStartCommand: pid="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ThinkingAnalytics.Quit"

    invoke-static {p2, p1}, Lcn/thinkingdata/android/utils/TDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x2

    return p1
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Service;->onTaskRemoved(Landroid/content/Intent;)V

    invoke-static {p0}, Lcn/thinkingdata/android/TDQuitSafelyService;->getInstance(Landroid/content/Context;)Lcn/thinkingdata/android/TDQuitSafelyService;

    move-result-object p1

    invoke-static {p1}, Lcn/thinkingdata/android/TDQuitSafelyService;->access$100(Lcn/thinkingdata/android/TDQuitSafelyService;)V

    return-void
.end method

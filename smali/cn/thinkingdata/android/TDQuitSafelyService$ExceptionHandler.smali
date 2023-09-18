.class Lcn/thinkingdata/android/TDQuitSafelyService$ExceptionHandler;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/thinkingdata/android/TDQuitSafelyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExceptionHandler"
.end annotation


# static fields
.field private static final CRASH_REASON_LENGTH_LIMIT:I = 0x4000


# instance fields
.field private final mDefaultExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field final synthetic this$0:Lcn/thinkingdata/android/TDQuitSafelyService;


# direct methods
.method constructor <init>(Lcn/thinkingdata/android/TDQuitSafelyService;)V
    .locals 0

    iput-object p1, p0, Lcn/thinkingdata/android/TDQuitSafelyService$ExceptionHandler;->this$0:Lcn/thinkingdata/android/TDQuitSafelyService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object p1

    iput-object p1, p0, Lcn/thinkingdata/android/TDQuitSafelyService$ExceptionHandler;->mDefaultExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-void
.end method

.method private killProcessAndExit()V
    .locals 1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method private processException(Ljava/lang/Throwable;)V
    .locals 2

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    :goto_0
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "(\r\n|\n\r|\n|\r)"

    const-string v1, "<br>"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcn/thinkingdata/android/TDQuitSafelyService$ExceptionHandler$1;

    invoke-direct {v0, p0, p1}, Lcn/thinkingdata/android/TDQuitSafelyService$ExceptionHandler$1;-><init>(Lcn/thinkingdata/android/TDQuitSafelyService$ExceptionHandler;Ljava/lang/String;)V

    invoke-static {v0}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->allInstances(Lcn/thinkingdata/android/ThinkingAnalyticsSDK$InstanceProcessor;)V

    iget-object p1, p0, Lcn/thinkingdata/android/TDQuitSafelyService$ExceptionHandler;->this$0:Lcn/thinkingdata/android/TDQuitSafelyService;

    invoke-static {p1}, Lcn/thinkingdata/android/TDQuitSafelyService;->access$100(Lcn/thinkingdata/android/TDQuitSafelyService;)V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 4

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcn/thinkingdata/android/TDDebugException;

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    invoke-direct {p0, p2}, Lcn/thinkingdata/android/TDQuitSafelyService$ExceptionHandler;->processException(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcn/thinkingdata/android/TDQuitSafelyService$ExceptionHandler;->this$0:Lcn/thinkingdata/android/TDQuitSafelyService;

    invoke-static {v0}, Lcn/thinkingdata/android/TDQuitSafelyService;->access$200(Lcn/thinkingdata/android/TDQuitSafelyService;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcn/thinkingdata/android/TDQuitSafelyService$ExceptionHandler;->this$0:Lcn/thinkingdata/android/TDQuitSafelyService;

    invoke-static {v2}, Lcn/thinkingdata/android/TDQuitSafelyService;->access$200(Lcn/thinkingdata/android/TDQuitSafelyService;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcn/thinkingdata/android/TDQuitSafelyService$TDKeepAliveService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    :goto_2
    iget-object v0, p0, Lcn/thinkingdata/android/TDQuitSafelyService$ExceptionHandler;->mDefaultExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_3

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_3
    invoke-direct {p0}, Lcn/thinkingdata/android/TDQuitSafelyService$ExceptionHandler;->killProcessAndExit()V

    :goto_3
    return-void
.end method

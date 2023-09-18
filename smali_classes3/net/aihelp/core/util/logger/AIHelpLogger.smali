.class public final enum Lnet/aihelp/core/util/logger/AIHelpLogger;
.super Ljava/lang/Enum;
.source "AIHelpLogger.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/aihelp/core/util/logger/AIHelpLogger;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/aihelp/core/util/logger/AIHelpLogger;

.field public static final enum INSTANCE:Lnet/aihelp/core/util/logger/AIHelpLogger;

.field public static final LEVEL_ERROR:I = 0x2

.field public static final LEVEL_FATAL:I = 0x1

.field public static final LEVEL_WARN:I = 0x3


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final logStorage:Lnet/aihelp/core/util/logger/controller/LoggerDBController;

.field private threadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 34
    new-instance v0, Lnet/aihelp/core/util/logger/AIHelpLogger;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/aihelp/core/util/logger/AIHelpLogger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/aihelp/core/util/logger/AIHelpLogger;->INSTANCE:Lnet/aihelp/core/util/logger/AIHelpLogger;

    const/4 v1, 0x1

    new-array v1, v1, [Lnet/aihelp/core/util/logger/AIHelpLogger;

    aput-object v0, v1, v2

    .line 32
    sput-object v1, Lnet/aihelp/core/util/logger/AIHelpLogger;->$VALUES:[Lnet/aihelp/core/util/logger/AIHelpLogger;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 41
    const-class p1, Lnet/aihelp/core/util/logger/AIHelpLogger;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/aihelp/core/util/logger/AIHelpLogger;->TAG:Ljava/lang/String;

    .line 42
    invoke-static {}, Lnet/aihelp/core/util/logger/controller/LoggerDBController;->getInstance()Lnet/aihelp/core/util/logger/controller/LoggerDBController;

    move-result-object p1

    iput-object p1, p0, Lnet/aihelp/core/util/logger/AIHelpLogger;->logStorage:Lnet/aihelp/core/util/logger/controller/LoggerDBController;

    .line 44
    iget-object p1, p0, Lnet/aihelp/core/util/logger/AIHelpLogger;->threadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez p1, :cond_0

    .line 45
    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 46
    new-instance p1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x1

    const/4 v2, 0x1

    const-wide/16 v3, 0x3c

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Lnet/aihelp/core/util/logger/AIHelpLogger$1;

    invoke-direct {v7, p0}, Lnet/aihelp/core/util/logger/AIHelpLogger$1;-><init>(Lnet/aihelp/core/util/logger/AIHelpLogger;)V

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object p1, p0, Lnet/aihelp/core/util/logger/AIHelpLogger;->threadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lnet/aihelp/core/util/logger/AIHelpLogger;)Lnet/aihelp/core/util/logger/controller/LoggerDBController;
    .locals 0

    .line 32
    iget-object p0, p0, Lnet/aihelp/core/util/logger/AIHelpLogger;->logStorage:Lnet/aihelp/core/util/logger/controller/LoggerDBController;

    return-object p0
.end method

.method static synthetic access$100(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 0

    .line 32
    invoke-static {p0}, Lnet/aihelp/core/util/logger/AIHelpLogger;->getMessageObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public static error(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .line 105
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "from-api.json"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "(?<=//).*?(?=/)"

    .line 106
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 107
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    invoke-static {}, Lnet/aihelp/core/util/concurrent/ApiExecutorFactory;->getHandlerExecutor()Lnet/aihelp/core/util/concurrent/ApiExecutor;

    move-result-object v1

    new-instance v2, Lnet/aihelp/core/util/logger/AIHelpLogger$3;

    invoke-direct {v2, p0, v0, p1}, Lnet/aihelp/core/util/logger/AIHelpLogger$3;-><init>(Ljava/lang/String;Ljava/util/regex/Matcher;Ljava/lang/Throwable;)V

    invoke-interface {v1, v2}, Lnet/aihelp/core/util/concurrent/ApiExecutor;->runAsync(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 129
    :cond_0
    sget-object v0, Lnet/aihelp/core/util/logger/AIHelpLogger;->INSTANCE:Lnet/aihelp/core/util/logger/AIHelpLogger;

    const/4 v1, 0x2

    invoke-static {p0}, Lnet/aihelp/core/util/logger/AIHelpLogger;->getMessageObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0, p1}, Lnet/aihelp/core/util/logger/AIHelpLogger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static fatal(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 98
    sget-object v0, Lnet/aihelp/core/util/logger/AIHelpLogger;->INSTANCE:Lnet/aihelp/core/util/logger/AIHelpLogger;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0, p1}, Lnet/aihelp/core/util/logger/AIHelpLogger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 99
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p1

    if-ne p0, p1, :cond_0

    .line 100
    invoke-static {}, Lnet/aihelp/core/util/bus/EventBus;->getDefault()Lnet/aihelp/core/util/bus/EventBus;

    move-result-object p0

    new-instance p1, Lnet/aihelp/data/event/FatalErrorEvent;

    invoke-direct {p1}, Lnet/aihelp/data/event/FatalErrorEvent;-><init>()V

    invoke-virtual {p0, p1}, Lnet/aihelp/core/util/bus/EventBus;->post(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private static getMessageObject(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2

    .line 135
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "origin"

    .line 137
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "language"

    .line 138
    sget-object v1, Lnet/aihelp/common/Const;->ORIGINAL_LANGUAGE:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "OSVersion"

    .line 139
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "deviceModel"

    .line 140
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "networkType"

    .line 141
    invoke-static {}, Lnet/aihelp/utils/DeviceInfoUtil;->getInstance()Lnet/aihelp/utils/DeviceInfoUtil;

    move-result-object v1

    invoke-virtual {v1}, Lnet/aihelp/utils/DeviceInfoUtil;->getNetworkType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "carrier"

    .line 142
    invoke-static {}, Lnet/aihelp/utils/DeviceInfoUtil;->getInstance()Lnet/aihelp/utils/DeviceInfoUtil;

    move-result-object v1

    invoke-virtual {v1}, Lnet/aihelp/utils/DeviceInfoUtil;->getCarrierName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "countryCode"

    .line 143
    invoke-static {}, Lnet/aihelp/utils/DeviceInfoUtil;->getInstance()Lnet/aihelp/utils/DeviceInfoUtil;

    move-result-object v1

    invoke-virtual {v1}, Lnet/aihelp/utils/DeviceInfoUtil;->getSimCountryIso()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "proxyConfig"

    .line 144
    invoke-static {}, Lnet/aihelp/utils/DeviceInfoUtil;->getInstance()Lnet/aihelp/utils/DeviceInfoUtil;

    move-result-object v1

    invoke-virtual {v1}, Lnet/aihelp/utils/DeviceInfoUtil;->getProxyConfiguration()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 147
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method private static getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    .line 87
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method private logMessageToDatabase(ILjava/lang/String;Ljava/lang/String;J)V
    .locals 9

    .line 71
    :try_start_0
    iget-object v0, p0, Lnet/aihelp/core/util/logger/AIHelpLogger;->threadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v8, Lnet/aihelp/core/util/logger/AIHelpLogger$2;

    move-object v1, v8

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lnet/aihelp/core/util/logger/AIHelpLogger$2;-><init>(Lnet/aihelp/core/util/logger/AIHelpLogger;ILjava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v0, v8}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 78
    iget-object p3, p0, Lnet/aihelp/core/util/logger/AIHelpLogger;->TAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Rejected execution of log message : "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/aihelp/core/util/logger/AIHelpLogger;
    .locals 1

    .line 32
    const-class v0, Lnet/aihelp/core/util/logger/AIHelpLogger;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/aihelp/core/util/logger/AIHelpLogger;

    return-object p0
.end method

.method public static values()[Lnet/aihelp/core/util/logger/AIHelpLogger;
    .locals 1

    .line 32
    sget-object v0, Lnet/aihelp/core/util/logger/AIHelpLogger;->$VALUES:[Lnet/aihelp/core/util/logger/AIHelpLogger;

    invoke-virtual {v0}, [Lnet/aihelp/core/util/logger/AIHelpLogger;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/aihelp/core/util/logger/AIHelpLogger;

    return-object v0
.end method


# virtual methods
.method public deleteAllCachedLogs()V
    .locals 1

    .line 66
    iget-object v0, p0, Lnet/aihelp/core/util/logger/AIHelpLogger;->logStorage:Lnet/aihelp/core/util/logger/controller/LoggerDBController;

    invoke-virtual {v0}, Lnet/aihelp/core/util/logger/controller/LoggerDBController;->reset()V

    return-void
.end method

.method public getCachedLogs()Lorg/json/JSONArray;
    .locals 1

    .line 62
    iget-object v0, p0, Lnet/aihelp/core/util/logger/AIHelpLogger;->logStorage:Lnet/aihelp/core/util/logger/controller/LoggerDBController;

    invoke-virtual {v0}, Lnet/aihelp/core/util/logger/controller/LoggerDBController;->getCrashLog()Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public log(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 6

    .line 55
    invoke-static {p3}, Lnet/aihelp/core/util/logger/AIHelpLogger;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    .line 56
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lnet/aihelp/core/util/logger/AIHelpLogger;->logMessageToDatabase(ILjava/lang/String;Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

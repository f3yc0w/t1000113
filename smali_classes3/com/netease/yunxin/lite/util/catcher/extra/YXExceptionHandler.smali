.class public final Lcom/netease/yunxin/lite/util/catcher/extra/YXExceptionHandler;
.super Ljava/lang/Object;
.source "YXExceptionHandler.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static final CRASH_FILE_DIR_PREFIX:Ljava/lang/String; = "yx_catcher_log_"

.field private static final DIRTY_CRASH_LOG_INFIX:Ljava/lang/String; = "_yx_dirty_crash_"

.field private static final FRESH_CRASH_LOG_INFIX:Ljava/lang/String; = "_yx_fresh_crash_"

.field private static final LOG_FILE_PREFIX:Ljava/lang/String; = ".log"

.field private static final TAG:Ljava/lang/String; = "YXExceptionHandler"

.field private static instance:Lcom/netease/yunxin/lite/util/catcher/extra/YXExceptionHandler;


# instance fields
.field private backgroundHandler:Landroid/os/Handler;

.field private context:Landroid/content/Context;

.field private defaultUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private yxCrashComponentMap:Ljava/util/HashMap;
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
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netease/yunxin/lite/util/catcher/extra/YXExceptionHandler;->yxCrashComponentMap:Ljava/util/HashMap;

    .line 69
    iput-object p1, p0, Lcom/netease/yunxin/lite/util/catcher/extra/YXExceptionHandler;->context:Landroid/content/Context;

    .line 70
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/yunxin/lite/util/catcher/extra/YXExceptionHandler;->defaultUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 71
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-void
.end method

.method private addComponent(Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "catcherComponent"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/netease/yunxin/lite/util/catcher/extra/YXExceptionHandler;->yxCrashComponentMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent;->getSdkType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    new-instance v0, Lcom/netease/yunxin/lite/util/catcher/extra/-$$Lambda$YXExceptionHandler$uC6W0ZYQCvrIlEcnyMn23z4UMaA;

    invoke-direct {v0, p0, p1}, Lcom/netease/yunxin/lite/util/catcher/extra/-$$Lambda$YXExceptionHandler$uC6W0ZYQCvrIlEcnyMn23z4UMaA;-><init>(Lcom/netease/yunxin/lite/util/catcher/extra/YXExceptionHandler;Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent;)V

    invoke-direct {p0, v0}, Lcom/netease/yunxin/lite/util/catcher/extra/YXExceptionHandler;->runOnWorkThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private defaultUncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "thread",
            "ex"
        }
    .end annotation

    .line 315
    iget-object v0, p0, Lcom/netease/yunxin/lite/util/catcher/extra/YXExceptionHandler;->defaultUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_0

    .line 316
    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method private ensureHandler()V
    .locals 2

    .line 240
    iget-object v0, p0, Lcom/netease/yunxin/lite/util/catcher/extra/YXExceptionHandler;->backgroundHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    return-void

    .line 243
    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "yx_catcher_handler_thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 244
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 245
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/netease/yunxin/lite/util/catcher/extra/YXExceptionHandler;->backgroundHandler:Landroid/os/Handler;

    return-void
.end method

.method private findComponentsByTag(Ljava/lang/Throwable;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "throwable"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent;",
            ">;"
        }
    .end annotation

    .line 256
    iget-object v0, p0, Lcom/netease/yunxin/lite/util/catcher/extra/YXExceptionHandler;->yxCrashComponentMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 257
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 258
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    .line 260
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent;

    .line 261
    invoke-virtual {v2}, Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent;->getCrashTags()Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 262
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 267
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 268
    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 269
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 263
    :cond_3
    :goto_1
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    return-object v1
.end method

.method private getCrashDir(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sdkType"
        }
    .end annotation

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "yx_catcher_log_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 106
    iget-object v0, p0, Lcom/netease/yunxin/lite/util/catcher/extra/YXExceptionHandler;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    .line 107
    iget-object v2, p0, Lcom/netease/yunxin/lite/util/catcher/extra/YXExceptionHandler;->context:Landroid/content/Context;

    .line 108
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/yunxin/lite/util/catcher/extra/YXExceptionHandler;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v2, v4, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/netease/yunxin/lite/util/catcher/extra/YXExceptionHandler;->context:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 111
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 112
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private processException(Ljava/util/ArrayList;Ljava/lang/Throwable;)V
    .locals 18
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "hitComponents",
            "ex"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v1, :cond_6

    .line 279
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_3

    .line 282
    :cond_0
    invoke-static/range {p2 .. p2}, Lcom/netease/yunxin/lite/util/catcher/extra/CatcherUtil;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    .line 283
    invoke-static {v2}, Lcom/netease/yunxin/lite/util/catcher/extra/CatcherUtil;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 285
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-void

    .line 289
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 290
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_yx_fresh_crash_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ".log"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 291
    iget-object v3, v0, Lcom/netease/yunxin/lite/util/catcher/extra/YXExceptionHandler;->context:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/netease/yunxin/lite/util/catcher/extra/CatcherUtil;->createBaseLog(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v15, 0x0

    .line 292
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v15, v3, :cond_6

    .line 293
    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v16, v3

    check-cast v16, Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent;

    .line 294
    invoke-virtual/range {v16 .. v16}, Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent;->getSdkType()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/netease/yunxin/lite/util/catcher/extra/YXExceptionHandler;->getCrashDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 295
    invoke-virtual/range {v16 .. v16}, Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent;->getCrashLogHeader()Ljava/util/HashMap;

    move-result-object v4

    invoke-static {v3, v2, v14, v4}, Lcom/netease/yunxin/lite/util/catcher/extra/CatcherUtil;->createLogFileWithHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Ljava/io/File;

    move-result-object v10

    if-nez v10, :cond_2

    goto :goto_2

    .line 300
    :cond_2
    invoke-virtual/range {v16 .. v16}, Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent;->getCrashCallback()Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent$CrashCallback;

    move-result-object v3

    .line 301
    invoke-virtual/range {v16 .. v16}, Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent;->getCrashHandler()Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent$CrashHandler;

    move-result-object v4

    if-eqz v3, :cond_3

    .line 303
    invoke-virtual/range {v16 .. v16}, Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent;->getLogDir()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v16 .. v16}, Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent;->getCrashLogHeader()Ljava/util/HashMap;

    move-result-object v9

    const/16 v17, 0x0

    move-object v4, v11

    move-object v5, v10

    move-wide v7, v12

    move-object v0, v10

    move/from16 v10, v17

    invoke-interface/range {v3 .. v10}, Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent$CrashCallback;->onCrash(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;JLjava/util/HashMap;Z)V

    goto :goto_1

    :cond_3
    move-object v0, v10

    if-eqz v4, :cond_4

    .line 305
    invoke-virtual/range {v16 .. v16}, Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent;->getLogDir()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v11, v0, v3}, Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent$CrashHandler;->onCrash(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V

    .line 308
    :cond_4
    :goto_1
    invoke-virtual/range {v16 .. v16}, Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent;->isAutoDeleteCrashLog()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 309
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_5
    :goto_2
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    goto :goto_0

    :cond_6
    :goto_3
    return-void
.end method

.method public static declared-synchronized release(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sdkType"
        }
    .end annotation

    const-class v0, Lcom/netease/yunxin/lite/util/catcher/extra/YXExceptionHandler;

    monitor-enter v0

    .line 56
    :try_start_0
    sget-object v1, Lcom/netease/yunxin/lite/util/catcher/extra/YXExceptionHandler;->instance:Lcom/netease/yunxin/lite/util/catcher/extra/YXExceptionHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 57
    monitor-exit v0

    return-void

    .line 60
    :cond_0
    :try_start_1
    invoke-direct {v1, p0}, Lcom/netease/yunxin/lite/util/catcher/extra/YXExceptionHandler;->removeComponent(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 61
    sput-object v1, Lcom/netease/yunxin/lite/util/catcher/extra/YXExceptionHandler;->instance:Lcom/netease/yunxin/lite/util/catcher/extra/YXExceptionHandler;

    const-string v1, "YXExceptionHandler"

    const-string v2, "destroy instance"

    .line 62
    invoke-static {v1, v2}, Lcom/netease/yunxin/lite/util/catcher/extra/YXCatcherLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v1, "YXExceptionHandler"

    .line 64
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "release , sdkType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/netease/yunxin/lite/util/catcher/extra/YXCatcherLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private removeComponent(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sdkType"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/netease/yunxin/lite/util/catcher/extra/YXExceptionHandler;->yxCrashComponentMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget-object p1, p0, Lcom/netease/yunxin/lite/util/catcher/extra/YXExceptionHandler;->yxCrashComponentMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 87
    iget-object v0, p0, Lcom/netease/yunxin/lite/util/catcher/extra/YXExceptionHandler;->defaultUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_0

    .line 88
    sget-object v0, Lcom/netease/yunxin/lite/util/catcher/extra/YXExceptionHandler;->instance:Lcom/netease/yunxin/lite/util/catcher/extra/YXExceptionHandler;

    iget-object v0, v0, Lcom/netease/yunxin/lite/util/catcher/extra/YXExceptionHandler;->defaultUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/netease/yunxin/lite/util/catcher/extra/YXExceptionHandler;->backgroundHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 92
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_1

    .line 93
    iget-object v0, p0, Lcom/netease/yunxin/lite/util/catcher/extra/YXExceptionHandler;->backgroundHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    goto :goto_0

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/netease/yunxin/lite/util/catcher/extra/YXExceptionHandler;->backgroundHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    :goto_0
    const/4 v0, 0x0

    .line 97
    iput-object v0, p0, Lcom/netease/yunxin/lite/util/catcher/extra/YXExceptionHandler;->backgroundHandler:Landroid/os/Handler;

    :cond_2
    return p1
.end method

.method private runOnWorkThread(Ljava/lang/Runnable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "runnable"
        }
    .end annotation

    .line 249
    invoke-direct {p0}, Lcom/netease/yunxin/lite/util/catcher/extra/YXExceptionHandler;->ensureHandler()V

    .line 250
    iget-object v0, p0, Lcom/netease/yunxin/lite/util/catcher/extra/YXExceptionHandler;->backgroundHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static declared-synchronized setup(Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "catcherComponent"
        }
    .end annotation

    const-class v0, Lcom/netease/yunxin/lite/util/catcher/extra/YXExceptionHandler;

    monitor-enter v0

    .line 45
    :try_start_0
    sget-object v1, Lcom/netease/yunxin/lite/util/catcher/extra/YXExceptionHandler;->instance:Lcom/netease/yunxin/lite/util/catcher/extra/YXExceptionHandler;

    if-nez v1, :cond_0

    .line 46
    new-instance v1, Lcom/netease/yunxin/lite/util/catcher/extra/YXExceptionHandler;

    invoke-virtual {p0}, Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/netease/yunxin/lite/util/catcher/extra/YXExceptionHandler;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/netease/yunxin/lite/util/catcher/extra/YXExceptionHandler;->instance:Lcom/netease/yunxin/lite/util/catcher/extra/YXExceptionHandler;

    const-string v1, "YXExceptionHandler"

    const-string v2, "create instance"

    .line 47
    invoke-static {v1, v2}, Lcom/netease/yunxin/lite/util/catcher/extra/YXCatcherLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    :cond_0
    sget-object v1, Lcom/netease/yunxin/lite/util/catcher/extra/YXExceptionHandler;->instance:Lcom/netease/yunxin/lite/util/catcher/extra/YXExceptionHandler;

    invoke-direct {v1, p0}, Lcom/netease/yunxin/lite/util/catcher/extra/YXExceptionHandler;->addComponent(Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent;)V

    const-string v1, "YXExceptionHandler"

    .line 50
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setup , sdkType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent;->getSdkType()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/netease/yunxin/lite/util/catcher/extra/YXCatcherLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private uploadLastFail(Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent;)V
    .locals 17
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "catcherComponent"
        }
    .end annotation

    .line 117
    invoke-virtual/range {p1 .. p1}, Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent;->getSdkType()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p0

    invoke-direct {v1, v0}, Lcom/netease/yunxin/lite/util/catcher/extra/YXExceptionHandler;->getCrashDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 118
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 119
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 121
    array-length v2, v0

    if-nez v2, :cond_0

    goto/16 :goto_9

    .line 125
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 127
    array-length v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    const-string v6, "_yx_dirty_crash_"

    const-string v7, "_yx_fresh_crash_"

    if-ge v5, v3, :cond_4

    aget-object v8, v0, v5

    .line 128
    invoke-virtual {v8}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_1

    goto :goto_1

    .line 132
    :cond_1
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 133
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    :cond_2
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 138
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    :cond_3
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 142
    :cond_4
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    return-void

    .line 146
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 147
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 148
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    invoke-direct {v5, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 150
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 151
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 153
    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v14, v10, v12

    if-nez v14, :cond_7

    .line 154
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "uploadLastFail , but crash log len = 0 , path :  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v10, "YXExceptionHandler"

    invoke-static {v10, v8}, Lcom/netease/yunxin/lite/util/catcher/extra/YXCatcherLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    goto :goto_2

    .line 160
    :cond_7
    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    .line 162
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_6

    invoke-virtual {v8, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    if-gez v10, :cond_8

    goto :goto_2

    .line 165
    :cond_8
    invoke-virtual {v8, v4, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 166
    new-instance v12, Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v7, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-virtual {v9, v12}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    const-string v9, ".log"

    .line 169
    invoke-virtual {v8, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    if-gez v9, :cond_9

    goto :goto_2

    :cond_9
    add-int/lit8 v10, v10, 0x10

    .line 174
    invoke-virtual {v8, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 175
    invoke-static {v8}, Lcom/netease/yunxin/lite/util/catcher/extra/CatcherUtil;->parseStrToLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 176
    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    invoke-interface {v3, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 182
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent;->getCrashCallback()Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent$CrashCallback;

    move-result-object v2

    .line 183
    invoke-virtual/range {p1 .. p1}, Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent;->getCrashHandler()Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent$CrashHandler;

    move-result-object v6

    if-eqz v2, :cond_e

    const/4 v6, 0x0

    .line 186
    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_f

    .line 187
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    const/4 v7, 0x0

    .line 190
    :try_start_0
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/FileReader;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/io/File;

    invoke-direct {v9, v10}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v8, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 191
    :try_start_1
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .line 192
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 193
    invoke-virtual {v9}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v7

    .line 194
    :cond_b
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_d

    .line 195
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 196
    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v10, :cond_b

    if-nez v11, :cond_c

    goto :goto_4

    .line 200
    :cond_c
    invoke-virtual {v15, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    .line 204
    :cond_d
    invoke-static {v8}, Lcom/netease/yunxin/lite/util/catcher/extra/BaseUtil;->close(Ljava/io/Closeable;)V

    goto :goto_7

    :catchall_0
    move-exception v0

    move-object v7, v8

    goto :goto_5

    :catch_0
    move-object v7, v8

    goto :goto_6

    :catchall_1
    move-exception v0

    :goto_5
    invoke-static {v7}, Lcom/netease/yunxin/lite/util/catcher/extra/BaseUtil;->close(Ljava/io/Closeable;)V

    .line 205
    throw v0

    .line 204
    :catch_1
    :goto_6
    invoke-static {v7}, Lcom/netease/yunxin/lite/util/catcher/extra/BaseUtil;->close(Ljava/io/Closeable;)V

    .line 207
    :goto_7
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v10, v7

    check-cast v10, Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v11, v7

    check-cast v11, Ljava/io/File;

    invoke-virtual/range {p1 .. p1}, Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent;->getLogDir()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    const/16 v16, 0x1

    move-object v9, v2

    invoke-interface/range {v9 .. v16}, Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent$CrashCallback;->onCrash(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;JLjava/util/HashMap;Z)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_e
    if-eqz v6, :cond_f

    .line 211
    invoke-virtual/range {p1 .. p1}, Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent;->getLogDir()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v0, v3, v2}, Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent$CrashHandler;->onOldCrash(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    .line 214
    :cond_f
    invoke-virtual/range {p1 .. p1}, Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent;->isAutoDeleteCrashLog()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 215
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 216
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_8

    :cond_10
    :goto_9
    return-void
.end method


# virtual methods
.method public synthetic lambda$addComponent$0$YXExceptionHandler(Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "catcherComponent"
        }
    .end annotation

    .line 78
    invoke-direct {p0, p1}, Lcom/netease/yunxin/lite/util/catcher/extra/YXExceptionHandler;->uploadLastFail(Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent;)V

    return-void
.end method

.method public synthetic lambda$uncaughtException$1$YXExceptionHandler(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "ex"
        }
    .end annotation

    .line 227
    :try_start_0
    invoke-direct {p0, p1}, Lcom/netease/yunxin/lite/util/catcher/extra/YXExceptionHandler;->findComponentsByTag(Ljava/lang/Throwable;)Ljava/util/ArrayList;

    move-result-object v0

    .line 228
    invoke-direct {p0, v0, p1}, Lcom/netease/yunxin/lite/util/catcher/extra/YXExceptionHandler;->processException(Ljava/util/ArrayList;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 230
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "exception : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "YXExceptionHandler"

    invoke-static {v0, p1}, Lcom/netease/yunxin/lite/util/catcher/extra/YXCatcherLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "thread",
            "ex"
        }
    .end annotation

    .line 225
    new-instance v0, Lcom/netease/yunxin/lite/util/catcher/extra/-$$Lambda$YXExceptionHandler$K53QuHzKeBQ-jxMabV3WB17ZHH8;

    invoke-direct {v0, p0, p2}, Lcom/netease/yunxin/lite/util/catcher/extra/-$$Lambda$YXExceptionHandler$K53QuHzKeBQ-jxMabV3WB17ZHH8;-><init>(Lcom/netease/yunxin/lite/util/catcher/extra/YXExceptionHandler;Ljava/lang/Throwable;)V

    invoke-direct {p0, v0}, Lcom/netease/yunxin/lite/util/catcher/extra/YXExceptionHandler;->runOnWorkThread(Ljava/lang/Runnable;)V

    .line 235
    invoke-direct {p0, p1, p2}, Lcom/netease/yunxin/lite/util/catcher/extra/YXExceptionHandler;->defaultUncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 236
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "uncaught exception : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "YXExceptionHandler"

    invoke-static {p2, p1}, Lcom/netease/yunxin/lite/util/catcher/extra/YXCatcherLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

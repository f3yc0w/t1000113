.class Lnet/aihelp/core/util/crash/AIHelpCrashHandler$1;
.super Ljava/lang/Object;
.source "AIHelpCrashHandler.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/core/util/crash/AIHelpCrashHandler;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/core/util/crash/AIHelpCrashHandler;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$defaultUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method constructor <init>(Lnet/aihelp/core/util/crash/AIHelpCrashHandler;Landroid/content/Context;Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lnet/aihelp/core/util/crash/AIHelpCrashHandler$1;->this$0:Lnet/aihelp/core/util/crash/AIHelpCrashHandler;

    iput-object p2, p0, Lnet/aihelp/core/util/crash/AIHelpCrashHandler$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lnet/aihelp/core/util/crash/AIHelpCrashHandler$1;->val$defaultUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1

    .line 26
    invoke-static {p2}, Lnet/aihelp/core/util/crash/AIHelpCrashHandler;->access$000(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    iget-object p1, p0, Lnet/aihelp/core/util/crash/AIHelpCrashHandler$1;->this$0:Lnet/aihelp/core/util/crash/AIHelpCrashHandler;

    iget-object v0, p0, Lnet/aihelp/core/util/crash/AIHelpCrashHandler$1;->val$context:Landroid/content/Context;

    invoke-virtual {p1, v0, p2}, Lnet/aihelp/core/util/crash/AIHelpCrashHandler;->onExceptionCaught(Landroid/content/Context;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 29
    :cond_0
    iget-object v0, p0, Lnet/aihelp/core/util/crash/AIHelpCrashHandler$1;->val$defaultUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_1

    .line 30
    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.class public abstract Lcom/netease/yunxin/lite/util/CancelableTask;
.super Ljava/lang/Object;
.source "CancelableTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final TASK_ID_GENERATOR:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field private final cancel:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final taskId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 10
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/netease/yunxin/lite/util/CancelableTask;->TASK_ID_GENERATOR:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "customFlag"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/netease/yunxin/lite/util/CancelableTask;->cancel:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " # "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/netease/yunxin/lite/util/CancelableTask;->TASK_ID_GENERATOR:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/yunxin/lite/util/CancelableTask;->taskId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract action()V
.end method

.method public cancel()V
    .locals 2

    .line 29
    iget-object v0, p0, Lcom/netease/yunxin/lite/util/CancelableTask;->cancel:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public getTaskId()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/netease/yunxin/lite/util/CancelableTask;->taskId:Ljava/lang/String;

    return-object v0
.end method

.method public isCanceled()Z
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/netease/yunxin/lite/util/CancelableTask;->cancel:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public run()V
    .locals 2

    .line 21
    iget-object v0, p0, Lcom/netease/yunxin/lite/util/CancelableTask;->cancel:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/netease/yunxin/lite/util/CancelableTask;->taskId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " be canceled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CancelableTask"

    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 25
    :cond_0
    invoke-virtual {p0}, Lcom/netease/yunxin/lite/util/CancelableTask;->action()V

    return-void
.end method

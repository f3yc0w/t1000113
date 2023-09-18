.class Lnet/aihelp/core/net/mqtt/client/CallbackConnection$1;
.super Ljava/lang/Object;
.source "CallbackConnection.java"

# interfaces
.implements Lnet/aihelp/core/net/mqtt/client/ExtendedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/aihelp/core/net/mqtt/client/CallbackConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 0

    return-void
.end method

.method public onDisconnected()V
    .locals 0

    return-void
.end method

.method public onFailure(Ljava/lang/Throwable;)V
    .locals 2

    .line 87
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onPublish(Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;Ljava/lang/Runnable;)V
    .locals 0

    .line 79
    invoke-static {}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->access$000()Ljava/lang/IllegalStateException;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$1;->onFailure(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onPublish(Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;Lnet/aihelp/core/net/mqtt/client/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;",
            "Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;",
            "Lnet/aihelp/core/net/mqtt/client/Callback<",
            "Lnet/aihelp/core/net/mqtt/client/Callback<",
            "Ljava/lang/Void;",
            ">;>;)V"
        }
    .end annotation

    .line 83
    invoke-static {}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->access$000()Ljava/lang/IllegalStateException;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$1;->onFailure(Ljava/lang/Throwable;)V

    return-void
.end method

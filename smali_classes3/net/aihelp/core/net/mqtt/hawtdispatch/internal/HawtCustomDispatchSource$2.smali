.class Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource$2;
.super Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;
.source "HawtCustomDispatchSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource;->cancel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource;


# direct methods
.method constructor <init>(Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource$2;->this$0:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource;

    invoke-direct {p0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 140
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource$2;->this$0:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource;

    invoke-static {v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource;->access$400(Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource;)Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource$2;->this$0:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource;

    invoke-static {v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource;->access$400(Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtCustomDispatchSource;)Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;

    move-result-object v0

    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;->run()V

    :cond_0
    return-void
.end method

.class Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$1;
.super Ljava/lang/Object;
.source "ExoPlayerImplInternal.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/Renderer$WakeupListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->enableRenderer(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;


# direct methods
.method constructor <init>(Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;)V
    .locals 0

    .line 2470
    iput-object p1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$1;->this$0:Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSleep()V
    .locals 2

    .line 2473
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$1;->this$0:Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->access$602(Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;Z)Z

    return-void
.end method

.method public onWakeup()V
    .locals 2

    .line 2478
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$1;->this$0:Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->access$700(Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;)Lcom/google/android/exoplr2avp/util/HandlerWrapper;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/google/android/exoplr2avp/util/HandlerWrapper;->sendEmptyMessage(I)Z

    return-void
.end method

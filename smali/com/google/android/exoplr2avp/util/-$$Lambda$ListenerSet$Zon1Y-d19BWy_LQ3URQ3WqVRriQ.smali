.class public final synthetic Lcom/google/android/exoplr2avp/util/-$$Lambda$ListenerSet$Zon1Y-d19BWy_LQ3URQ3WqVRriQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplr2avp/util/ListenerSet;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplr2avp/util/ListenerSet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/util/-$$Lambda$ListenerSet$Zon1Y-d19BWy_LQ3URQ3WqVRriQ;->f$0:Lcom/google/android/exoplr2avp/util/ListenerSet;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplr2avp/util/-$$Lambda$ListenerSet$Zon1Y-d19BWy_LQ3URQ3WqVRriQ;->f$0:Lcom/google/android/exoplr2avp/util/ListenerSet;

    invoke-static {v0, p1}, Lcom/google/android/exoplr2avp/util/ListenerSet;->lambda$Zon1Y-d19BWy_LQ3URQ3WqVRriQ(Lcom/google/android/exoplr2avp/util/ListenerSet;Landroid/os/Message;)Z

    move-result p1

    return p1
.end method

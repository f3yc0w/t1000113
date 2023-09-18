.class final Lcom/google/android/exoplr2avp/StreamVolumeManager$VolumeChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "StreamVolumeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/StreamVolumeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "VolumeChangeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplr2avp/StreamVolumeManager;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplr2avp/StreamVolumeManager;)V
    .locals 0

    .line 210
    iput-object p1, p0, Lcom/google/android/exoplr2avp/StreamVolumeManager$VolumeChangeReceiver;->this$0:Lcom/google/android/exoplr2avp/StreamVolumeManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplr2avp/StreamVolumeManager;Lcom/google/android/exoplr2avp/StreamVolumeManager$1;)V
    .locals 0

    .line 210
    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/StreamVolumeManager$VolumeChangeReceiver;-><init>(Lcom/google/android/exoplr2avp/StreamVolumeManager;)V

    return-void
.end method

.method static synthetic lambda$onReceive$0(Lcom/google/android/exoplr2avp/StreamVolumeManager;)V
    .locals 0

    .line 214
    invoke-static {p0}, Lcom/google/android/exoplr2avp/StreamVolumeManager;->access$200(Lcom/google/android/exoplr2avp/StreamVolumeManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 214
    iget-object p1, p0, Lcom/google/android/exoplr2avp/StreamVolumeManager$VolumeChangeReceiver;->this$0:Lcom/google/android/exoplr2avp/StreamVolumeManager;

    invoke-static {p1}, Lcom/google/android/exoplr2avp/StreamVolumeManager;->access$100(Lcom/google/android/exoplr2avp/StreamVolumeManager;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/exoplr2avp/StreamVolumeManager$VolumeChangeReceiver;->this$0:Lcom/google/android/exoplr2avp/StreamVolumeManager;

    new-instance v0, Lcom/google/android/exoplr2avp/-$$Lambda$StreamVolumeManager$VolumeChangeReceiver$PUHYQxHHR6ZT0YBHXf5Jl42XIAU;

    invoke-direct {v0, p2}, Lcom/google/android/exoplr2avp/-$$Lambda$StreamVolumeManager$VolumeChangeReceiver$PUHYQxHHR6ZT0YBHXf5Jl42XIAU;-><init>(Lcom/google/android/exoplr2avp/StreamVolumeManager;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

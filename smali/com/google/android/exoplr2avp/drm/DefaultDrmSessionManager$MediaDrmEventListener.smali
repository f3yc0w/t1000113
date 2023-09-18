.class Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager$MediaDrmEventListener;
.super Ljava/lang/Object;
.source "DefaultDrmSessionManager.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/drm/ExoMediaDrm$OnEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaDrmEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;)V
    .locals 0

    .line 958
    iput-object p1, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager$MediaDrmEventListener;->this$0:Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager$1;)V
    .locals 0

    .line 958
    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager$MediaDrmEventListener;-><init>(Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;)V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/google/android/exoplr2avp/drm/ExoMediaDrm;[BII[B)V
    .locals 0

    .line 963
    iget-object p1, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager$MediaDrmEventListener;->this$0:Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;

    iget-object p1, p1, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;->mediaDrmHandler:Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager$MediaDrmHandler;

    invoke-static {p1}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager$MediaDrmHandler;

    invoke-virtual {p1, p3, p2}, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager$MediaDrmHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

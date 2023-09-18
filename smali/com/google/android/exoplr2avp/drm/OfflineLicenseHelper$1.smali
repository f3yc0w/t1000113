.class Lcom/google/android/exoplr2avp/drm/OfflineLicenseHelper$1;
.super Ljava/lang/Object;
.source "OfflineLicenseHelper.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplr2avp/drm/OfflineLicenseHelper;-><init>(Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplr2avp/drm/OfflineLicenseHelper;


# direct methods
.method constructor <init>(Lcom/google/android/exoplr2avp/drm/OfflineLicenseHelper;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/google/android/exoplr2avp/drm/OfflineLicenseHelper$1;->this$0:Lcom/google/android/exoplr2avp/drm/OfflineLicenseHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrmKeysLoaded(ILcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;)V
    .locals 0

    .line 160
    iget-object p1, p0, Lcom/google/android/exoplr2avp/drm/OfflineLicenseHelper$1;->this$0:Lcom/google/android/exoplr2avp/drm/OfflineLicenseHelper;

    invoke-static {p1}, Lcom/google/android/exoplr2avp/drm/OfflineLicenseHelper;->access$000(Lcom/google/android/exoplr2avp/drm/OfflineLicenseHelper;)Landroid/os/ConditionVariable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->open()V

    return-void
.end method

.method public onDrmKeysRemoved(ILcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;)V
    .locals 0

    .line 176
    iget-object p1, p0, Lcom/google/android/exoplr2avp/drm/OfflineLicenseHelper$1;->this$0:Lcom/google/android/exoplr2avp/drm/OfflineLicenseHelper;

    invoke-static {p1}, Lcom/google/android/exoplr2avp/drm/OfflineLicenseHelper;->access$000(Lcom/google/android/exoplr2avp/drm/OfflineLicenseHelper;)Landroid/os/ConditionVariable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->open()V

    return-void
.end method

.method public onDrmKeysRestored(ILcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;)V
    .locals 0

    .line 171
    iget-object p1, p0, Lcom/google/android/exoplr2avp/drm/OfflineLicenseHelper$1;->this$0:Lcom/google/android/exoplr2avp/drm/OfflineLicenseHelper;

    invoke-static {p1}, Lcom/google/android/exoplr2avp/drm/OfflineLicenseHelper;->access$000(Lcom/google/android/exoplr2avp/drm/OfflineLicenseHelper;)Landroid/os/ConditionVariable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->open()V

    return-void
.end method

.method public synthetic onDrmSessionAcquired(ILcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$-CC;->$default$onDrmSessionAcquired(Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener;ILcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;)V

    return-void
.end method

.method public synthetic onDrmSessionAcquired(ILcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$-CC;->$default$onDrmSessionAcquired(Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener;ILcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;I)V

    return-void
.end method

.method public onDrmSessionManagerError(ILcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;Ljava/lang/Exception;)V
    .locals 0

    .line 166
    iget-object p1, p0, Lcom/google/android/exoplr2avp/drm/OfflineLicenseHelper$1;->this$0:Lcom/google/android/exoplr2avp/drm/OfflineLicenseHelper;

    invoke-static {p1}, Lcom/google/android/exoplr2avp/drm/OfflineLicenseHelper;->access$000(Lcom/google/android/exoplr2avp/drm/OfflineLicenseHelper;)Landroid/os/ConditionVariable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->open()V

    return-void
.end method

.method public synthetic onDrmSessionReleased(ILcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$-CC;->$default$onDrmSessionReleased(Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener;ILcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;)V

    return-void
.end method

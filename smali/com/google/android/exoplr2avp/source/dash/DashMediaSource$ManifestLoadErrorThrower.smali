.class final Lcom/google/android/exoplr2avp/source/dash/DashMediaSource$ManifestLoadErrorThrower;
.super Ljava/lang/Object;
.source "DashMediaSource.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/upstream/LoaderErrorThrower;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ManifestLoadErrorThrower"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;


# direct methods
.method constructor <init>(Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;)V
    .locals 0

    .line 1405
    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource$ManifestLoadErrorThrower;->this$0:Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private maybeThrowManifestError()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1420
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource$ManifestLoadErrorThrower;->this$0:Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->access$800(Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;)Ljava/io/IOException;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1421
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource$ManifestLoadErrorThrower;->this$0:Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->access$800(Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public maybeThrowError()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1409
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource$ManifestLoadErrorThrower;->this$0:Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->access$700(Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;)Lcom/google/android/exoplr2avp/upstream/Loader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/upstream/Loader;->maybeThrowError()V

    .line 1410
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource$ManifestLoadErrorThrower;->maybeThrowManifestError()V

    return-void
.end method

.method public maybeThrowError(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1415
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource$ManifestLoadErrorThrower;->this$0:Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->access$700(Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;)Lcom/google/android/exoplr2avp/upstream/Loader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/upstream/Loader;->maybeThrowError(I)V

    .line 1416
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource$ManifestLoadErrorThrower;->maybeThrowManifestError()V

    return-void
.end method

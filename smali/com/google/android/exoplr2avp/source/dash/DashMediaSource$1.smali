.class Lcom/google/android/exoplr2avp/source/dash/DashMediaSource$1;
.super Ljava/lang/Object;
.source "DashMediaSource.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/util/SntpClient$InitializationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->loadNtpTimeOffset()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;


# direct methods
.method constructor <init>(Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;)V
    .locals 0

    .line 759
    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource$1;->this$0:Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializationFailed(Ljava/io/IOException;)V
    .locals 1

    .line 767
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource$1;->this$0:Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;

    invoke-static {v0, p1}, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->access$600(Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;Ljava/io/IOException;)V

    return-void
.end method

.method public onInitialized()V
    .locals 3

    .line 762
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource$1;->this$0:Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;

    invoke-static {}, Lcom/google/android/exoplr2avp/util/SntpClient;->getElapsedRealtimeOffsetMs()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->access$500(Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;J)V

    return-void
.end method

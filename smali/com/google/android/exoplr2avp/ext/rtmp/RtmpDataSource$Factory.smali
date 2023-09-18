.class public final Lcom/google/android/exoplr2avp/ext/rtmp/RtmpDataSource$Factory;
.super Ljava/lang/Object;
.source "RtmpDataSource.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/ext/rtmp/RtmpDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field private transferListener:Lcom/google/android/exoplr2avp/upstream/TransferListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createDataSource()Lcom/google/android/exoplr2avp/ext/rtmp/RtmpDataSource;
    .locals 2

    .line 61
    new-instance v0, Lcom/google/android/exoplr2avp/ext/rtmp/RtmpDataSource;

    invoke-direct {v0}, Lcom/google/android/exoplr2avp/ext/rtmp/RtmpDataSource;-><init>()V

    .line 62
    iget-object v1, p0, Lcom/google/android/exoplr2avp/ext/rtmp/RtmpDataSource$Factory;->transferListener:Lcom/google/android/exoplr2avp/upstream/TransferListener;

    if-eqz v1, :cond_0

    .line 63
    invoke-virtual {v0, v1}, Lcom/google/android/exoplr2avp/ext/rtmp/RtmpDataSource;->addTransferListener(Lcom/google/android/exoplr2avp/upstream/TransferListener;)V

    :cond_0
    return-object v0
.end method

.method public bridge synthetic createDataSource()Lcom/google/android/exoplr2avp/upstream/DataSource;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/ext/rtmp/RtmpDataSource$Factory;->createDataSource()Lcom/google/android/exoplr2avp/ext/rtmp/RtmpDataSource;

    move-result-object v0

    return-object v0
.end method

.method public setTransferListener(Lcom/google/android/exoplr2avp/upstream/TransferListener;)Lcom/google/android/exoplr2avp/ext/rtmp/RtmpDataSource$Factory;
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/google/android/exoplr2avp/ext/rtmp/RtmpDataSource$Factory;->transferListener:Lcom/google/android/exoplr2avp/upstream/TransferListener;

    return-object p0
.end method

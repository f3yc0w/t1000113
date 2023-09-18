.class public final Lcom/google/android/exoplr2avp/upstream/FileDataSource$Factory;
.super Ljava/lang/Object;
.source "FileDataSource.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/upstream/FileDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field private listener:Lcom/google/android/exoplr2avp/upstream/TransferListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createDataSource()Lcom/google/android/exoplr2avp/upstream/DataSource;
    .locals 1

    .line 73
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/upstream/FileDataSource$Factory;->createDataSource()Lcom/google/android/exoplr2avp/upstream/FileDataSource;

    move-result-object v0

    return-object v0
.end method

.method public createDataSource()Lcom/google/android/exoplr2avp/upstream/FileDataSource;
    .locals 2

    .line 90
    new-instance v0, Lcom/google/android/exoplr2avp/upstream/FileDataSource;

    invoke-direct {v0}, Lcom/google/android/exoplr2avp/upstream/FileDataSource;-><init>()V

    .line 91
    iget-object v1, p0, Lcom/google/android/exoplr2avp/upstream/FileDataSource$Factory;->listener:Lcom/google/android/exoplr2avp/upstream/TransferListener;

    if-eqz v1, :cond_0

    .line 92
    invoke-virtual {v0, v1}, Lcom/google/android/exoplr2avp/upstream/FileDataSource;->addTransferListener(Lcom/google/android/exoplr2avp/upstream/TransferListener;)V

    :cond_0
    return-object v0
.end method

.method public setListener(Lcom/google/android/exoplr2avp/upstream/TransferListener;)Lcom/google/android/exoplr2avp/upstream/FileDataSource$Factory;
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/google/android/exoplr2avp/upstream/FileDataSource$Factory;->listener:Lcom/google/android/exoplr2avp/upstream/TransferListener;

    return-object p0
.end method

.class public Lcom/renderheads/AVPro/Video/DataSourceFactory_File;
.super Ljava/lang/Object;
.source "DataSourceFactory_File.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;


# instance fields
.field private m_FileOffset:J


# direct methods
.method public constructor <init>(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fileOffset"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/renderheads/AVPro/Video/DataSourceFactory_File;->m_FileOffset:J

    return-void
.end method


# virtual methods
.method public createDataSource()Lcom/google/android/exoplr2avp/upstream/DataSource;
    .locals 3

    .line 1
    new-instance v0, Lcom/renderheads/AVPro/Video/DataSource_File;

    iget-wide v1, p0, Lcom/renderheads/AVPro/Video/DataSourceFactory_File;->m_FileOffset:J

    invoke-direct {v0, v1, v2}, Lcom/renderheads/AVPro/Video/DataSource_File;-><init>(J)V

    return-object v0
.end method

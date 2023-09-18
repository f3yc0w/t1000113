.class public Lcom/renderheads/AVPro/Video/DataSourceFactory_Asset;
.super Ljava/lang/Object;
.source "DataSourceFactory_Asset.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;


# instance fields
.field private m_Context:Landroid/content/Context;

.field private m_FileOffset:J

.field private m_FilePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLandroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fileOffset",
            "context"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/renderheads/AVPro/Video/DataSourceFactory_Asset;->m_FileOffset:J

    .line 3
    iput-object p3, p0, Lcom/renderheads/AVPro/Video/DataSourceFactory_Asset;->m_Context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public createDataSource()Lcom/google/android/exoplr2avp/upstream/DataSource;
    .locals 4

    .line 1
    new-instance v0, Lcom/renderheads/AVPro/Video/DataSource_Asset;

    iget-wide v1, p0, Lcom/renderheads/AVPro/Video/DataSourceFactory_Asset;->m_FileOffset:J

    iget-object v3, p0, Lcom/renderheads/AVPro/Video/DataSourceFactory_Asset;->m_Context:Landroid/content/Context;

    invoke-direct {v0, v1, v2, v3}, Lcom/renderheads/AVPro/Video/DataSource_Asset;-><init>(JLandroid/content/Context;)V

    return-object v0
.end method

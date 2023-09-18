.class public Lcom/renderheads/AVPro/Video/LimitedAdaptiveTrackSelection$VideoStreamLimiter;
.super Ljava/lang/Object;
.source "LimitedAdaptiveTrackSelection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/renderheads/AVPro/Video/LimitedAdaptiveTrackSelection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VideoStreamLimiter"
.end annotation


# instance fields
.field public m_bDirty:Z

.field public m_iMaxBitrate:I

.field public m_iMaxHeight:I

.field public m_iMaxWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/renderheads/AVPro/Video/LimitedAdaptiveTrackSelection$VideoStreamLimiter;->m_iMaxBitrate:I

    .line 3
    iput v0, p0, Lcom/renderheads/AVPro/Video/LimitedAdaptiveTrackSelection$VideoStreamLimiter;->m_iMaxWidth:I

    .line 4
    iput v0, p0, Lcom/renderheads/AVPro/Video/LimitedAdaptiveTrackSelection$VideoStreamLimiter;->m_iMaxHeight:I

    return-void
.end method

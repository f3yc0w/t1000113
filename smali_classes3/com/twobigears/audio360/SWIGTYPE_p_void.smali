.class public Lcom/twobigears/audio360/SWIGTYPE_p_void;
.super Ljava/lang/Object;
.source "SWIGTYPE_p_void.java"


# instance fields
.field private transient swigCPtr:J


# direct methods
.method protected constructor <init>()V
    .locals 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 21
    iput-wide v0, p0, Lcom/twobigears/audio360/SWIGTYPE_p_void;->swigCPtr:J

    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-wide p1, p0, Lcom/twobigears/audio360/SWIGTYPE_p_void;->swigCPtr:J

    return-void
.end method

.method protected static getCPtr(Lcom/twobigears/audio360/SWIGTYPE_p_void;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 25
    :cond_0
    iget-wide v0, p0, Lcom/twobigears/audio360/SWIGTYPE_p_void;->swigCPtr:J

    :goto_0
    return-wide v0
.end method

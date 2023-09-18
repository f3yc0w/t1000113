.class public Lcom/renderheads/AVPro/Video/Player_Base$VideoCommand;
.super Ljava/lang/Object;
.source "Player_Base.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/renderheads/AVPro/Video/Player_Base;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VideoCommand"
.end annotation


# instance fields
.field public _command:I

.field public _floatValue:F

.field public _longValue:J


# direct methods
.method public constructor <init>(Lcom/renderheads/AVPro/Video/Player_Base;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 3
    iput p1, p0, Lcom/renderheads/AVPro/Video/Player_Base$VideoCommand;->_command:I

    const-wide/16 v0, 0x0

    .line 5
    iput-wide v0, p0, Lcom/renderheads/AVPro/Video/Player_Base$VideoCommand;->_longValue:J

    const/4 p1, 0x0

    .line 6
    iput p1, p0, Lcom/renderheads/AVPro/Video/Player_Base$VideoCommand;->_floatValue:F

    return-void
.end method

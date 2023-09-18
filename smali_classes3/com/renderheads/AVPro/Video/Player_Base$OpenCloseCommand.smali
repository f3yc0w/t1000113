.class public Lcom/renderheads/AVPro/Video/Player_Base$OpenCloseCommand;
.super Ljava/lang/Object;
.source "Player_Base.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/renderheads/AVPro/Video/Player_Base;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OpenCloseCommand"
.end annotation


# instance fields
.field public _Audio360Channels:I

.field public _AudioSubsystem:I

.field public _FileOffset:J

.field public _FilePath:Ljava/lang/String;

.field public _ForcedFileFormat:I

.field public _Header:Ljava/lang/String;

.field public _command:I


# direct methods
.method public constructor <init>(Lcom/renderheads/AVPro/Video/Player_Base;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "command"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 5
    iput p1, p0, Lcom/renderheads/AVPro/Video/Player_Base$OpenCloseCommand;->_command:I

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lcom/renderheads/AVPro/Video/Player_Base$OpenCloseCommand;->_FilePath:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 7
    iput-wide v0, p0, Lcom/renderheads/AVPro/Video/Player_Base$OpenCloseCommand;->_FileOffset:J

    .line 8
    iput-object p1, p0, Lcom/renderheads/AVPro/Video/Player_Base$OpenCloseCommand;->_Header:Ljava/lang/String;

    const/4 p1, 0x0

    .line 9
    iput p1, p0, Lcom/renderheads/AVPro/Video/Player_Base$OpenCloseCommand;->_ForcedFileFormat:I

    .line 10
    iput p1, p0, Lcom/renderheads/AVPro/Video/Player_Base$OpenCloseCommand;->_AudioSubsystem:I

    .line 11
    iput p1, p0, Lcom/renderheads/AVPro/Video/Player_Base$OpenCloseCommand;->_Audio360Channels:I

    .line 12
    iput p2, p0, Lcom/renderheads/AVPro/Video/Player_Base$OpenCloseCommand;->_command:I

    return-void
.end method

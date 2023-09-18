.class public Lnet/aihelp/data/model/cs/ConversationMsg;
.super Ljava/lang/Object;
.source "ConversationMsg.java"


# static fields
.field public static final STATUS_FAILURE:I = 0x3ec

.field public static final STATUS_FAQ_HELPFUL:I = 0xc8

.field public static final STATUS_FAQ_NORMAL:I = 0x64

.field public static final STATUS_FAQ_UNHELPFUL:I = 0x12c

.field public static final STATUS_FAQ_UNHELPFUL_FEEDBACK_GIVEN:I = 0x190

.field public static final STATUS_RETRY:I = 0x3ea

.field public static final STATUS_SENDING:I = 0x3e9

.field public static final STATUS_SUCCESS:I = 0x3eb

.field public static final TYPE_ADMIN_FAQ:I = 0x33

.field public static final TYPE_ADMIN_IMAGE:I = 0x51

.field public static final TYPE_ADMIN_RICHTEXT:I = 0x65

.field public static final TYPE_ADMIN_TEXT:I = 0xb

.field public static final TYPE_ADMIN_TYPING:I = 0x6f

.field public static final TYPE_ADMIN_VIDEO:I = 0x5b

.field public static final TYPE_TIMESTAMP:I = 0x29

.field public static final TYPE_USER_IMAGE:I = 0x3d

.field public static final TYPE_USER_TEXT:I = 0x15

.field public static final TYPE_USER_TEXT_BOT:I = 0x1f

.field public static final TYPE_USER_VIDEO:I = 0x47


# instance fields
.field private faqTicketId:Ljava/lang/String;

.field private imageSize:[I

.field private isMessageFromServer:Z

.field private msgContent:Ljava/lang/String;

.field private msgStatus:I

.field private msgType:I

.field private nickname:Ljava/lang/String;

.field private timeStamp:J

.field private videoThumbnail:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lnet/aihelp/data/model/cs/ConversationMsg;->setTimeStamp(J)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lnet/aihelp/data/model/cs/ConversationMsg;-><init>()V

    .line 25
    iput p1, p0, Lnet/aihelp/data/model/cs/ConversationMsg;->msgType:I

    .line 26
    iput p2, p0, Lnet/aihelp/data/model/cs/ConversationMsg;->msgStatus:I

    return-void
.end method


# virtual methods
.method public getFaqTicketId()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lnet/aihelp/data/model/cs/ConversationMsg;->faqTicketId:Ljava/lang/String;

    return-object v0
.end method

.method public getImageSize()[I
    .locals 1

    .line 92
    iget-object v0, p0, Lnet/aihelp/data/model/cs/ConversationMsg;->imageSize:[I

    return-object v0
.end method

.method public getMsgContent()Ljava/lang/String;
    .locals 1

    .line 108
    iget-object v0, p0, Lnet/aihelp/data/model/cs/ConversationMsg;->msgContent:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgStatus()I
    .locals 1

    .line 124
    iget v0, p0, Lnet/aihelp/data/model/cs/ConversationMsg;->msgStatus:I

    return v0
.end method

.method public getMsgType()I
    .locals 1

    .line 116
    iget v0, p0, Lnet/aihelp/data/model/cs/ConversationMsg;->msgType:I

    return v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lnet/aihelp/data/model/cs/ConversationMsg;->nickname:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 75
    :cond_0
    iget-object v0, p0, Lnet/aihelp/data/model/cs/ConversationMsg;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeStamp()J
    .locals 2

    .line 132
    iget-wide v0, p0, Lnet/aihelp/data/model/cs/ConversationMsg;->timeStamp:J

    return-wide v0
.end method

.method public getVideoThumbnail()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lnet/aihelp/data/model/cs/ConversationMsg;->videoThumbnail:Ljava/lang/String;

    return-object v0
.end method

.method public isMessageFromServer()Z
    .locals 1

    .line 104
    iget-boolean v0, p0, Lnet/aihelp/data/model/cs/ConversationMsg;->isMessageFromServer:Z

    return v0
.end method

.method public isUserMessage()Z
    .locals 2

    .line 143
    iget v0, p0, Lnet/aihelp/data/model/cs/ConversationMsg;->msgType:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public prepareVideoThumbnail()V
    .locals 0

    return-void
.end method

.method public setFaqTicketId(Ljava/lang/String;)V
    .locals 1

    .line 66
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    iput-object p1, p0, Lnet/aihelp/data/model/cs/ConversationMsg;->faqTicketId:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setImageSize([I)V
    .locals 0

    .line 96
    iput-object p1, p0, Lnet/aihelp/data/model/cs/ConversationMsg;->imageSize:[I

    return-void
.end method

.method public setMessageFromServer(Z)V
    .locals 0

    .line 100
    iput-boolean p1, p0, Lnet/aihelp/data/model/cs/ConversationMsg;->isMessageFromServer:Z

    return-void
.end method

.method public setMsgContent(Ljava/lang/String;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lnet/aihelp/data/model/cs/ConversationMsg;->msgContent:Ljava/lang/String;

    return-void
.end method

.method public setMsgStatus(I)V
    .locals 0

    .line 128
    iput p1, p0, Lnet/aihelp/data/model/cs/ConversationMsg;->msgStatus:I

    return-void
.end method

.method public setMsgType(I)V
    .locals 0

    .line 120
    iput p1, p0, Lnet/aihelp/data/model/cs/ConversationMsg;->msgType:I

    return-void
.end method

.method public setNickname(Ljava/lang/String;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lnet/aihelp/data/model/cs/ConversationMsg;->nickname:Ljava/lang/String;

    return-void
.end method

.method public setTimeStamp(J)V
    .locals 0

    .line 136
    iput-wide p1, p0, Lnet/aihelp/data/model/cs/ConversationMsg;->timeStamp:J

    return-void
.end method

.method public setVideoThumbnail(Ljava/lang/String;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lnet/aihelp/data/model/cs/ConversationMsg;->videoThumbnail:Ljava/lang/String;

    .line 88
    invoke-static {p1}, Lnet/aihelp/ui/helper/BitmapHelper;->computeSize(Ljava/lang/String;)[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/aihelp/data/model/cs/ConversationMsg;->setImageSize([I)V

    return-void
.end method

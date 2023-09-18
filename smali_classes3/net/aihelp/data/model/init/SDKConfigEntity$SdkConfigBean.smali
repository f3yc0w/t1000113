.class public Lnet/aihelp/data/model/init/SDKConfigEntity$SdkConfigBean;
.super Ljava/lang/Object;
.source "SDKConfigEntity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/aihelp/data/model/init/SDKConfigEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SdkConfigBean"
.end annotation


# instance fields
.field private Avatar_Enable:I

.field private Is_Output_Nike:I

.field private Is_Player_Eval_Customer:I

.field private Is_Player_Eval_Faq:I

.field private Is_Psee_Chat_History:I

.field private PlayerEvalFaqDetail:I

.field private PlayerEvalFaqReply:I

.field private PlayerSeeChatTime:I

.field private isOpenOperationEvaluation:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 67
    iput v0, p0, Lnet/aihelp/data/model/init/SDKConfigEntity$SdkConfigBean;->PlayerEvalFaqDetail:I

    .line 68
    iput v0, p0, Lnet/aihelp/data/model/init/SDKConfigEntity$SdkConfigBean;->PlayerEvalFaqReply:I

    .line 69
    iput v0, p0, Lnet/aihelp/data/model/init/SDKConfigEntity$SdkConfigBean;->PlayerSeeChatTime:I

    .line 70
    iput v0, p0, Lnet/aihelp/data/model/init/SDKConfigEntity$SdkConfigBean;->isOpenOperationEvaluation:I

    return-void
.end method


# virtual methods
.method public getAvatar_Enable()Z
    .locals 2

    .line 97
    iget v0, p0, Lnet/aihelp/data/model/init/SDKConfigEntity$SdkConfigBean;->Avatar_Enable:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getIsOpenOperationEvaluation()Z
    .locals 2

    .line 137
    iget v0, p0, Lnet/aihelp/data/model/init/SDKConfigEntity$SdkConfigBean;->isOpenOperationEvaluation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getIs_Output_Nike()Z
    .locals 2

    .line 129
    iget v0, p0, Lnet/aihelp/data/model/init/SDKConfigEntity$SdkConfigBean;->Is_Output_Nike:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getIs_Player_Eval_Customer()Z
    .locals 2

    .line 105
    iget v0, p0, Lnet/aihelp/data/model/init/SDKConfigEntity$SdkConfigBean;->Is_Player_Eval_Customer:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getIs_Player_Eval_Faq()Z
    .locals 2

    .line 121
    iget v0, p0, Lnet/aihelp/data/model/init/SDKConfigEntity$SdkConfigBean;->Is_Player_Eval_Faq:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getIs_Psee_Chat_History()Z
    .locals 2

    .line 113
    iget v0, p0, Lnet/aihelp/data/model/init/SDKConfigEntity$SdkConfigBean;->Is_Psee_Chat_History:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getPlayerEvalFaqDetail()Z
    .locals 2

    .line 85
    iget v0, p0, Lnet/aihelp/data/model/init/SDKConfigEntity$SdkConfigBean;->PlayerEvalFaqDetail:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getPlayerEvalFaqReply()Z
    .locals 2

    .line 89
    iget v0, p0, Lnet/aihelp/data/model/init/SDKConfigEntity$SdkConfigBean;->PlayerEvalFaqReply:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getPlayerSeeChatTime()Z
    .locals 2

    .line 93
    iget v0, p0, Lnet/aihelp/data/model/init/SDKConfigEntity$SdkConfigBean;->PlayerSeeChatTime:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public setAvatar_Enable(I)V
    .locals 0

    .line 101
    iput p1, p0, Lnet/aihelp/data/model/init/SDKConfigEntity$SdkConfigBean;->Avatar_Enable:I

    return-void
.end method

.method public setIsOpenOperationEvaluation(I)V
    .locals 0

    .line 141
    iput p1, p0, Lnet/aihelp/data/model/init/SDKConfigEntity$SdkConfigBean;->isOpenOperationEvaluation:I

    return-void
.end method

.method public setIs_Output_Nike(I)V
    .locals 0

    .line 133
    iput p1, p0, Lnet/aihelp/data/model/init/SDKConfigEntity$SdkConfigBean;->Is_Output_Nike:I

    return-void
.end method

.method public setIs_Player_Eval_Customer(I)V
    .locals 0

    .line 109
    iput p1, p0, Lnet/aihelp/data/model/init/SDKConfigEntity$SdkConfigBean;->Is_Player_Eval_Customer:I

    return-void
.end method

.method public setIs_Player_Eval_Faq(I)V
    .locals 0

    .line 125
    iput p1, p0, Lnet/aihelp/data/model/init/SDKConfigEntity$SdkConfigBean;->Is_Player_Eval_Faq:I

    return-void
.end method

.method public setIs_Psee_Chat_History(I)V
    .locals 0

    .line 117
    iput p1, p0, Lnet/aihelp/data/model/init/SDKConfigEntity$SdkConfigBean;->Is_Psee_Chat_History:I

    return-void
.end method

.method public setPlayerEvalFaqDetail(I)V
    .locals 0

    .line 73
    iput p1, p0, Lnet/aihelp/data/model/init/SDKConfigEntity$SdkConfigBean;->PlayerEvalFaqDetail:I

    return-void
.end method

.method public setPlayerEvalFaqReply(I)V
    .locals 0

    .line 77
    iput p1, p0, Lnet/aihelp/data/model/init/SDKConfigEntity$SdkConfigBean;->PlayerEvalFaqReply:I

    return-void
.end method

.method public setPlayerSeeChatTime(I)V
    .locals 0

    .line 81
    iput p1, p0, Lnet/aihelp/data/model/init/SDKConfigEntity$SdkConfigBean;->PlayerSeeChatTime:I

    return-void
.end method

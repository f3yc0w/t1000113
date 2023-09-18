.class public Lnet/aihelp/data/model/config/BusinessLogicEntity$GeneralEntity$FaqEvaluationEntity;
.super Ljava/lang/Object;
.source "BusinessLogicEntity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/aihelp/data/model/config/BusinessLogicEntity$GeneralEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FaqEvaluationEntity"
.end annotation


# instance fields
.field private isFaqDetailValid:Z

.field private isOnlineValid:Z

.field private isOperateDetailValid:Z

.field private isSuggestionValid:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isFaqDetailValid()Z
    .locals 1

    .line 92
    iget-boolean v0, p0, Lnet/aihelp/data/model/config/BusinessLogicEntity$GeneralEntity$FaqEvaluationEntity;->isFaqDetailValid:Z

    return v0
.end method

.method public isOnlineValid()Z
    .locals 1

    .line 84
    iget-boolean v0, p0, Lnet/aihelp/data/model/config/BusinessLogicEntity$GeneralEntity$FaqEvaluationEntity;->isOnlineValid:Z

    return v0
.end method

.method public isOperateDetailValid()Z
    .locals 1

    .line 108
    iget-boolean v0, p0, Lnet/aihelp/data/model/config/BusinessLogicEntity$GeneralEntity$FaqEvaluationEntity;->isOperateDetailValid:Z

    return v0
.end method

.method public isSuggestionValid()Z
    .locals 1

    .line 100
    iget-boolean v0, p0, Lnet/aihelp/data/model/config/BusinessLogicEntity$GeneralEntity$FaqEvaluationEntity;->isSuggestionValid:Z

    return v0
.end method

.method public setFaqDetailValid(Z)V
    .locals 0

    .line 96
    iput-boolean p1, p0, Lnet/aihelp/data/model/config/BusinessLogicEntity$GeneralEntity$FaqEvaluationEntity;->isFaqDetailValid:Z

    return-void
.end method

.method public setOnlineValid(Z)V
    .locals 0

    .line 88
    iput-boolean p1, p0, Lnet/aihelp/data/model/config/BusinessLogicEntity$GeneralEntity$FaqEvaluationEntity;->isOnlineValid:Z

    return-void
.end method

.method public setOperateDetailValid(Z)V
    .locals 0

    .line 112
    iput-boolean p1, p0, Lnet/aihelp/data/model/config/BusinessLogicEntity$GeneralEntity$FaqEvaluationEntity;->isOperateDetailValid:Z

    return-void
.end method

.method public setSuggestionValid(Z)V
    .locals 0

    .line 104
    iput-boolean p1, p0, Lnet/aihelp/data/model/config/BusinessLogicEntity$GeneralEntity$FaqEvaluationEntity;->isSuggestionValid:Z

    return-void
.end method

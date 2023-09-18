.class public Lnet/aihelp/data/model/config/BusinessLogicEntity;
.super Ljava/lang/Object;
.source "BusinessLogicEntity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/aihelp/data/model/config/BusinessLogicEntity$OnLineEntity;,
        Lnet/aihelp/data/model/config/BusinessLogicEntity$HelpEntity;,
        Lnet/aihelp/data/model/config/BusinessLogicEntity$GeneralEntity;
    }
.end annotation


# instance fields
.field private general:Lnet/aihelp/data/model/config/BusinessLogicEntity$GeneralEntity;

.field private help:Lnet/aihelp/data/model/config/BusinessLogicEntity$HelpEntity;

.field private onLine:Lnet/aihelp/data/model/config/BusinessLogicEntity$OnLineEntity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGeneral()Lnet/aihelp/data/model/config/BusinessLogicEntity$GeneralEntity;
    .locals 1

    .line 12
    iget-object v0, p0, Lnet/aihelp/data/model/config/BusinessLogicEntity;->general:Lnet/aihelp/data/model/config/BusinessLogicEntity$GeneralEntity;

    return-object v0
.end method

.method public getHelp()Lnet/aihelp/data/model/config/BusinessLogicEntity$HelpEntity;
    .locals 1

    .line 20
    iget-object v0, p0, Lnet/aihelp/data/model/config/BusinessLogicEntity;->help:Lnet/aihelp/data/model/config/BusinessLogicEntity$HelpEntity;

    return-object v0
.end method

.method public getOnLine()Lnet/aihelp/data/model/config/BusinessLogicEntity$OnLineEntity;
    .locals 1

    .line 28
    iget-object v0, p0, Lnet/aihelp/data/model/config/BusinessLogicEntity;->onLine:Lnet/aihelp/data/model/config/BusinessLogicEntity$OnLineEntity;

    return-object v0
.end method

.method public setGeneral(Lnet/aihelp/data/model/config/BusinessLogicEntity$GeneralEntity;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lnet/aihelp/data/model/config/BusinessLogicEntity;->general:Lnet/aihelp/data/model/config/BusinessLogicEntity$GeneralEntity;

    return-void
.end method

.method public setHelp(Lnet/aihelp/data/model/config/BusinessLogicEntity$HelpEntity;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lnet/aihelp/data/model/config/BusinessLogicEntity;->help:Lnet/aihelp/data/model/config/BusinessLogicEntity$HelpEntity;

    return-void
.end method

.method public setOnLine(Lnet/aihelp/data/model/config/BusinessLogicEntity$OnLineEntity;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lnet/aihelp/data/model/config/BusinessLogicEntity;->onLine:Lnet/aihelp/data/model/config/BusinessLogicEntity$OnLineEntity;

    return-void
.end method

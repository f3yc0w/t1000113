.class public Lnet/aihelp/data/model/config/StyleSheetEntity$GeneralEntity$FrontColorEntity;
.super Ljava/lang/Object;
.source "StyleSheetEntity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/aihelp/data/model/config/StyleSheetEntity$GeneralEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FrontColorEntity"
.end annotation


# instance fields
.field private color:Ljava/lang/String;

.field private transparency:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getColor()Ljava/lang/String;
    .locals 1

    .line 151
    iget-object v0, p0, Lnet/aihelp/data/model/config/StyleSheetEntity$GeneralEntity$FrontColorEntity;->color:Ljava/lang/String;

    return-object v0
.end method

.method public getTransparency()D
    .locals 2

    .line 159
    iget-wide v0, p0, Lnet/aihelp/data/model/config/StyleSheetEntity$GeneralEntity$FrontColorEntity;->transparency:D

    return-wide v0
.end method

.method public setColor(Ljava/lang/String;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lnet/aihelp/data/model/config/StyleSheetEntity$GeneralEntity$FrontColorEntity;->color:Ljava/lang/String;

    return-void
.end method

.method public setTransparency(D)V
    .locals 0

    .line 163
    iput-wide p1, p0, Lnet/aihelp/data/model/config/StyleSheetEntity$GeneralEntity$FrontColorEntity;->transparency:D

    return-void
.end method

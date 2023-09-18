.class public Lnet/aihelp/data/model/config/IntentEntity;
.super Ljava/lang/Object;
.source "IntentEntity.java"


# instance fields
.field private intentId:I

.field private intentList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/aihelp/data/model/config/IntentEntity;",
            ">;"
        }
    .end annotation
.end field

.field private intentName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIntentId()I
    .locals 1

    .line 12
    iget v0, p0, Lnet/aihelp/data/model/config/IntentEntity;->intentId:I

    return v0
.end method

.method public getIntentList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnet/aihelp/data/model/config/IntentEntity;",
            ">;"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lnet/aihelp/data/model/config/IntentEntity;->intentList:Ljava/util/List;

    return-object v0
.end method

.method public getIntentName()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lnet/aihelp/data/model/config/IntentEntity;->intentName:Ljava/lang/String;

    return-object v0
.end method

.method public setIntentId(I)V
    .locals 0

    .line 16
    iput p1, p0, Lnet/aihelp/data/model/config/IntentEntity;->intentId:I

    return-void
.end method

.method public setIntentList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/aihelp/data/model/config/IntentEntity;",
            ">;)V"
        }
    .end annotation

    .line 32
    iput-object p1, p0, Lnet/aihelp/data/model/config/IntentEntity;->intentList:Ljava/util/List;

    return-void
.end method

.method public setIntentName(Ljava/lang/String;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lnet/aihelp/data/model/config/IntentEntity;->intentName:Ljava/lang/String;

    return-void
.end method

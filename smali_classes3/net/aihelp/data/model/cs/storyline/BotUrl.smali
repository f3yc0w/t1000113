.class public Lnet/aihelp/data/model/cs/storyline/BotUrl;
.super Ljava/lang/Object;
.source "BotUrl.java"


# instance fields
.field private urlAddress:Ljava/lang/String;

.field private urlTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lnet/aihelp/data/model/cs/storyline/BotUrl;->urlTitle:Ljava/lang/String;

    .line 11
    iput-object p2, p0, Lnet/aihelp/data/model/cs/storyline/BotUrl;->urlAddress:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getUrlAddress()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lnet/aihelp/data/model/cs/storyline/BotUrl;->urlAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getUrlTitle()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lnet/aihelp/data/model/cs/storyline/BotUrl;->urlTitle:Ljava/lang/String;

    return-object v0
.end method

.method public setUrlAddress(Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lnet/aihelp/data/model/cs/storyline/BotUrl;->urlAddress:Ljava/lang/String;

    return-void
.end method

.method public setUrlTitle(Ljava/lang/String;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lnet/aihelp/data/model/cs/storyline/BotUrl;->urlTitle:Ljava/lang/String;

    return-void
.end method

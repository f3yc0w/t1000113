.class public Lnet/aihelp/data/model/cs/storyline/BotTag;
.super Ljava/lang/Object;
.source "BotTag.java"

# interfaces
.implements Lnet/aihelp/core/net/json/Jsonable;


# instance fields
.field private tagId:I

.field private tagName:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, Lnet/aihelp/data/model/cs/storyline/BotTag;->tagId:I

    .line 13
    iput-object p2, p0, Lnet/aihelp/data/model/cs/storyline/BotTag;->tagName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getTagId()I
    .locals 1

    .line 17
    iget v0, p0, Lnet/aihelp/data/model/cs/storyline/BotTag;->tagId:I

    return v0
.end method

.method public getTagName()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lnet/aihelp/data/model/cs/storyline/BotTag;->tagName:Ljava/lang/String;

    return-object v0
.end method

.method public setTagId(I)V
    .locals 0

    .line 21
    iput p1, p0, Lnet/aihelp/data/model/cs/storyline/BotTag;->tagId:I

    return-void
.end method

.method public setTagName(Ljava/lang/String;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lnet/aihelp/data/model/cs/storyline/BotTag;->tagName:Ljava/lang/String;

    return-void
.end method

.method public toJsonObject()Lorg/json/JSONObject;
    .locals 3

    .line 34
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "id"

    .line 36
    iget v2, p0, Lnet/aihelp/data/model/cs/storyline/BotTag;->tagId:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "name"

    .line 37
    iget-object v2, p0, Lnet/aihelp/data/model/cs/storyline/BotTag;->tagName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 39
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object v0
.end method

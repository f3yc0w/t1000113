.class public Lnet/aihelp/data/model/rpa/UserMessage;
.super Lnet/aihelp/data/model/rpa/RPAMessage;
.source "UserMessage.java"


# static fields
.field public static final INPUT_FORMAT_ATTACHMENT:I = 0x4

.field public static final INPUT_FORMAT_BUTTON:I = 0x2

.field public static final INPUT_FORMAT_DATE:I = 0x3

.field public static final INPUT_FORMAT_INTENT:I = 0x5

.field public static final INPUT_FORMAT_TEXT:I = 0x1

.field private static final REGEX_IMAGE:Ljava/lang/String; = "(http:|https:)(//)((?!\").)*?.(PNG|png|JPG|jpg|JPEG|jpeg)"

.field private static final REGEX_VIDEO:Ljava/lang/String; = "(http:|https:)(//)((?!\").)*?.(mp4|MP4)"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lnet/aihelp/data/model/rpa/RPAMessage;-><init>()V

    return-void
.end method

.method public static getRequestParams(Ljava/lang/String;I)Lorg/json/JSONObject;
    .locals 2

    const/4 v0, 0x0

    const-string v1, ""

    .line 59
    invoke-static {p0, v0, p1, v1}, Lnet/aihelp/data/model/rpa/UserMessage;->getRequestParams(Ljava/lang/String;ZILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public static getRequestParams(Ljava/lang/String;ZILjava/lang/String;)Lorg/json/JSONObject;
    .locals 2

    .line 64
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "input"

    .line 65
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "skip"

    .line 66
    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p0, "inputFormat"

    .line 67
    invoke-virtual {v0, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "inputData"

    .line 68
    invoke-virtual {v0, p0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "eventId"

    .line 69
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "-"

    const-string p3, ""

    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 72
    :catch_0
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    return-object p0
.end method


# virtual methods
.method public setContent(Ljava/lang/String;)V
    .locals 4

    const-string v0, ":aihelp-faq-helpful:"

    .line 24
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, ":aihelp-faq-unhelpful:"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    const-string v0, "(http:|https:)(//)((?!\").)*?.(PNG|png|JPG|jpg|JPEG|jpeg)"

    .line 28
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, "(http:|https:)(//)((?!\").)*?.(mp4|MP4)"

    .line 29
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 30
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_3

    .line 34
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    const-string v3, ""

    if-eqz v2, :cond_1

    .line 35
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 38
    :cond_1
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 39
    :goto_1
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 40
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    const-string v0, ";"

    .line 42
    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1}, Lnet/aihelp/data/model/rpa/RPAMessage;->setContent(Ljava/lang/String;)V

    :cond_3
    const/16 p1, 0x9

    .line 44
    invoke-virtual {p0, p1}, Lnet/aihelp/data/model/rpa/UserMessage;->setMsgType(I)V

    const/4 p1, 0x1

    .line 45
    invoke-virtual {p0, p1}, Lnet/aihelp/data/model/rpa/UserMessage;->setMsgStatus(I)V

    goto :goto_3

    .line 25
    :cond_4
    :goto_2
    invoke-super {p0, p1}, Lnet/aihelp/data/model/rpa/RPAMessage;->setContent(Ljava/lang/String;)V

    const/16 p1, 0xc

    .line 26
    invoke-virtual {p0, p1}, Lnet/aihelp/data/model/rpa/UserMessage;->setMsgType(I)V

    :goto_3
    return-void
.end method

.method public setRequestParams(Ljava/lang/String;I)V
    .locals 0

    .line 50
    invoke-static {p1, p2}, Lnet/aihelp/data/model/rpa/UserMessage;->getRequestParams(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p1

    invoke-super {p0, p1}, Lnet/aihelp/data/model/rpa/RPAMessage;->setRequestParams(Lorg/json/JSONObject;)V

    return-void
.end method

.method public setRequestParams(Ljava/lang/String;ZILjava/lang/String;)V
    .locals 0

    .line 54
    invoke-static {p1, p2, p3, p4}, Lnet/aihelp/data/model/rpa/UserMessage;->getRequestParams(Ljava/lang/String;ZILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-super {p0, p1}, Lnet/aihelp/data/model/rpa/RPAMessage;->setRequestParams(Lorg/json/JSONObject;)V

    return-void
.end method

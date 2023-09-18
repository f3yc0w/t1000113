.class public Lnet/aihelp/data/model/rpa/AgentMessage;
.super Lnet/aihelp/data/model/rpa/RPAMessage;
.source "AgentMessage.java"


# static fields
.field public static final REGEX_IMAGE:Ljava/lang/String; = "(http:|https:)(//)((?!\").)*?.(PNG|png|JPG|jpg|JPEG|jpeg)"

.field public static final REGEX_RICH_TEXT:Ljava/lang/String; = "https?://\\S*?((?=\\s+http)|\\.(PNG|png|JPG|jpg|JPEG|jpeg|mp4|MP4))|https?://((?!\").)*"

.field public static final REGEX_VIDEO:Ljava/lang/String; = "(http:|https:)(//)((?!\").)*?.(mp4|MP4)"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lnet/aihelp/data/model/rpa/RPAMessage;-><init>()V

    .line 14
    invoke-virtual {p0, p1}, Lnet/aihelp/data/model/rpa/AgentMessage;->setNickname(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public setContent(Ljava/lang/String;)V
    .locals 2

    .line 21
    invoke-super {p0, p1}, Lnet/aihelp/data/model/rpa/RPAMessage;->setContent(Ljava/lang/String;)V

    .line 22
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x3

    const-string v1, "(http:|https:)(//)((?!\").)*?.(PNG|png|JPG|jpg|JPEG|jpeg)"

    .line 24
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    :cond_0
    const-string v1, "(http:|https:)(//)((?!\").)*?.(mp4|MP4)"

    .line 26
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x7

    goto :goto_0

    :cond_1
    const-string v1, "https?://\\S*?((?=\\s+http)|\\.(PNG|png|JPG|jpg|JPEG|jpeg|mp4|MP4))|https?://((?!\").)*"

    .line 28
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    if-eqz p1, :cond_2

    const/16 v0, 0x8

    .line 31
    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Lnet/aihelp/data/model/rpa/AgentMessage;->setMsgType(I)V

    const/4 p1, 0x1

    .line 32
    invoke-virtual {p0, p1}, Lnet/aihelp/data/model/rpa/AgentMessage;->setMsgStatus(I)V

    :cond_3
    return-void
.end method

.class public Lnet/aihelp/data/localize/LocalizeHelper;
.super Ljava/lang/Object;
.source "LocalizeHelper.java"


# static fields
.field public static final FLAG_BUSINESS_LOGIC:I = 0x3ef

.field public static final FLAG_FAQ_HOT_TOPIC:I = 0x3f1

.field public static final FLAG_FAQ_SECTION:I = 0x3e9

.field public static final FLAG_FEEDBACK_OPINION:I = 0x3f0

.field public static final FLAG_LOCALE:I = 0x3ed

.field public static final FLAG_OP:I = 0x3ea

.field public static final FLAG_PROCESS:I = 0x3f2

.field public static final FLAG_STORY:I = 0x3eb

.field public static final FLAG_STYLE_SHEET:I = 0x3ee

.field public static final FLAG_TEXT:I = 0x3f3


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()V
    .locals 0

    .line 27
    invoke-static {}, Lnet/aihelp/data/localize/LocalizeHelper;->getDataAfterLocalizeFailed()V

    return-void
.end method

.method private static getDataAfterLocalizeFailed()V
    .locals 4

    .line 109
    invoke-static {}, Lnet/aihelp/core/net/http/AIHelpRequest;->getInstance()Lnet/aihelp/core/net/http/AIHelpRequest;

    move-result-object v0

    sget-object v1, Lnet/aihelp/common/API;->FAQ_URL:Ljava/lang/String;

    new-instance v2, Lnet/aihelp/data/localize/LocalizeHelper$2;

    invoke-direct {v2}, Lnet/aihelp/data/localize/LocalizeHelper$2;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lnet/aihelp/core/net/http/AIHelpRequest;->requestGetByAsync(Ljava/lang/String;Lorg/json/JSONObject;Lnet/aihelp/core/net/http/callback/BaseCallback;)V

    return-void
.end method

.method public static getLocalizeDataFromUrl(I)V
    .locals 2

    const/16 v0, 0x3e9

    if-ne p0, v0, :cond_0

    .line 68
    invoke-static {}, Lnet/aihelp/data/localize/data/FaqHelper;->isFaqDataAlreadyPrepared()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 71
    :cond_0
    invoke-static {}, Lnet/aihelp/core/net/http/AIHelpRequest;->getInstance()Lnet/aihelp/core/net/http/AIHelpRequest;

    move-result-object v0

    new-instance v1, Lnet/aihelp/data/localize/LocalizeHelper$1;

    invoke-direct {v1, p0}, Lnet/aihelp/data/localize/LocalizeHelper$1;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Lnet/aihelp/core/net/http/AIHelpRequest;->requestDownloadFile(ILnet/aihelp/core/net/http/callback/BaseCallback;)V

    return-void
.end method

.method public static goFetchLocalizeData(Landroid/content/Context;)V
    .locals 1

    .line 49
    sget-boolean p0, Lnet/aihelp/common/Const;->TOGGLE_LOCALIZE_VIA_INIT:Z

    const/16 v0, 0x3e9

    if-eqz p0, :cond_0

    .line 51
    invoke-static {v0}, Lnet/aihelp/data/localize/LocalizeHelper;->getLocalizeDataFromUrl(I)V

    goto :goto_0

    .line 52
    :cond_0
    invoke-static {v0}, Lnet/aihelp/data/localize/util/LocalizeUtil;->isAlreadyLocalized(I)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 55
    invoke-static {v0}, Lnet/aihelp/data/localize/util/LocalizeUtil;->getUrl(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lnet/aihelp/data/localize/util/LocalizeUtil;->isFallbackUrl(ILjava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 56
    sget-object p0, Lnet/aihelp/data/localize/data/FaqHelper;->INSTANCE:Lnet/aihelp/data/localize/data/FaqHelper;

    invoke-virtual {p0}, Lnet/aihelp/data/localize/data/FaqHelper;->prepareDataSource()V

    :cond_1
    :goto_0
    const/16 p0, 0x3ed

    .line 59
    invoke-static {p0}, Lnet/aihelp/data/localize/LocalizeHelper;->getLocalizeDataFromUrl(I)V

    const/16 p0, 0x3ee

    .line 60
    invoke-static {p0}, Lnet/aihelp/data/localize/LocalizeHelper;->getLocalizeDataFromUrl(I)V

    const/16 p0, 0x3ef

    .line 61
    invoke-static {p0}, Lnet/aihelp/data/localize/LocalizeHelper;->getLocalizeDataFromUrl(I)V

    const/16 p0, 0x3f1

    .line 62
    invoke-static {p0}, Lnet/aihelp/data/localize/LocalizeHelper;->getLocalizeDataFromUrl(I)V

    const/16 p0, 0x3f2

    .line 63
    invoke-static {p0}, Lnet/aihelp/data/localize/LocalizeHelper;->getLocalizeDataFromUrl(I)V

    const/16 p0, 0x3f3

    .line 64
    invoke-static {p0}, Lnet/aihelp/data/localize/LocalizeHelper;->getLocalizeDataFromUrl(I)V

    return-void
.end method

.method public static resetLocalizeData()V
    .locals 1

    .line 42
    sget-object v0, Lnet/aihelp/data/localize/data/FaqHelper;->INSTANCE:Lnet/aihelp/data/localize/data/FaqHelper;

    invoke-virtual {v0}, Lnet/aihelp/data/localize/data/FaqHelper;->reset()V

    .line 43
    sget-object v0, Lnet/aihelp/data/localize/data/LocaleStringHelper;->INSTANCE:Lnet/aihelp/data/localize/data/LocaleStringHelper;

    invoke-virtual {v0}, Lnet/aihelp/data/localize/data/LocaleStringHelper;->reset()V

    .line 44
    sget-object v0, Lnet/aihelp/data/localize/config/TextHelper;->INSTANCE:Lnet/aihelp/data/localize/config/TextHelper;

    invoke-virtual {v0}, Lnet/aihelp/data/localize/config/TextHelper;->reset()V

    .line 45
    sget-object v0, Lnet/aihelp/data/localize/config/ProcessEntranceHelper;->INSTANCE:Lnet/aihelp/data/localize/config/ProcessEntranceHelper;

    invoke-virtual {v0}, Lnet/aihelp/data/localize/config/ProcessEntranceHelper;->reset()V

    return-void
.end method

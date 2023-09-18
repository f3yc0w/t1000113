.class public Lnet/aihelp/data/model/rpa/bot/Faq;
.super Ljava/lang/Object;
.source "Faq.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/aihelp/data/model/rpa/bot/Faq$FaqData;
    }
.end annotation


# instance fields
.field private final faqDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/aihelp/data/model/rpa/bot/Faq$FaqData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ZLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Lnet/aihelp/data/model/rpa/bot/Faq$FaqData;",
            ">;)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p2, p0, Lnet/aihelp/data/model/rpa/bot/Faq;->faqDataList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 11
    invoke-static {p0}, Lnet/aihelp/data/model/rpa/bot/Faq;->getFormattedFormUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getFormattedFormUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 103
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    .line 104
    sget-object v2, Lnet/aihelp/common/Const;->APP_ID:Ljava/lang/String;

    aput-object v2, v0, p0

    sget-object p0, Lnet/aihelp/common/UserProfile;->USER_ID:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object p0, v0, v2

    const/4 p0, 0x3

    sget-object v3, Lnet/aihelp/common/UserProfile;->SERVER_ID:Ljava/lang/String;

    aput-object v3, v0, p0

    const/4 p0, 0x4

    .line 109
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, p0

    const/4 p0, 0x5

    const-string v2, "4.1.9"

    aput-object v2, v0, p0

    const/4 p0, 0x6

    .line 111
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, p0

    const-string p0, "%s&appId=%s&userId=%s&serverId=%s&platform=%s&sdkVersion=%s&isTicket=1&hasPermission=%s&fromSdk=1&isCustom=1"

    .line 104
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method


# virtual methods
.method public getFaqDataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnet/aihelp/data/model/rpa/bot/Faq$FaqData;",
            ">;"
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lnet/aihelp/data/model/rpa/bot/Faq;->faqDataList:Ljava/util/List;

    return-object v0
.end method

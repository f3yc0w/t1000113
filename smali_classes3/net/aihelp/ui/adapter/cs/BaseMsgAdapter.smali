.class public abstract Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter;
.super Ljava/lang/Object;
.source "BaseMsgAdapter.java"

# interfaces
.implements Lnet/aihelp/core/ui/adapter/ItemViewDelegate;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/aihelp/core/ui/adapter/ItemViewDelegate<",
        "Lnet/aihelp/data/model/rpa/RPAMessage;",
        ">;"
    }
.end annotation


# instance fields
.field protected dataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/aihelp/data/model/rpa/RPAMessage;",
            ">;"
        }
    .end annotation
.end field

.field protected isCurrentRtl:Z

.field protected final mContext:Landroid/content/Context;

.field protected mWrapper:Lnet/aihelp/ui/adapter/MessageListAdapter$OnClickedListenerWrapper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter;->dataList:Ljava/util/List;

    .line 45
    iput-object p1, p0, Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter;->mContext:Landroid/content/Context;

    .line 46
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_1

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 48
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter;->isCurrentRtl:Z

    :cond_1
    return-void
.end method


# virtual methods
.method protected dip2px(Landroid/content/Context;D)I
    .locals 2

    .line 179
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    float-to-double v0, p1

    mul-double p2, p2, v0

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    add-double/2addr p2, v0

    double-to-int p1, p2

    return p1
.end method

.method protected getAdminBackgroundDrawable(Z)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 67
    sget-object v0, Lnet/aihelp/common/CustomConfig$CommonSetting;->upperBackgroundColor:Ljava/lang/String;

    sget-wide v1, Lnet/aihelp/common/CustomConfig$CommonSetting;->upperBackgroundAlpha:D

    invoke-static {v0, v1, v2}, Lnet/aihelp/utils/Styles;->getColorWithAlpha(Ljava/lang/String;D)I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0xf

    if-eqz p1, :cond_0

    .line 69
    invoke-static {v0, v2, v1, v2, v2}, Lnet/aihelp/utils/Styles;->getDrawableWithCorner(IIIII)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    .line 70
    :cond_0
    invoke-static {v0, v1, v2, v2, v2}, Lnet/aihelp/utils/Styles;->getDrawableWithCorner(IIIII)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method protected getHighlightedClickableTextView(Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/TextView;
    .locals 4

    .line 123
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 124
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 p1, 0x41600000    # 14.0f

    .line 125
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 p1, 0x1

    .line 126
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 127
    sget-object p1, Lnet/aihelp/common/CustomConfig$CommonSetting;->interactElementTextColor:Ljava/lang/String;

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 128
    iget-object p1, p0, Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter;->mContext:Landroid/content/Context;

    const-wide/high16 v1, 0x4014000000000000L    # 5.0

    invoke-virtual {p0, p1, v1, v2}, Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter;->dip2px(Landroid/content/Context;D)I

    move-result p1

    iget-object v3, p0, Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v3, v1, v2}, Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter;->dip2px(Landroid/content/Context;D)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p1, v2, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 129
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method protected getMsg(Ljava/lang/String;Z)Landroid/widget/TextView;
    .locals 5

    .line 78
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "&formUrlTitle="

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "(http:|https:)(//)((?!\").)*?(&formUrlTitle=)*?"

    .line 79
    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    .line 80
    invoke-virtual {p2}, Ljava/util/regex/Matcher;->matches()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 81
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&fromSdk=1&isCustom=1"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "(?<=(formUrlTitle=)).*(?=(&fromSdk=1&isCustom=1))"

    .line 82
    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    .line 84
    invoke-virtual {p2}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {p2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lnet/aihelp/utils/URLEncodeUtil;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, p1

    .line 87
    :goto_0
    new-instance v0, Lnet/aihelp/data/model/rpa/bot/FormUrl;

    invoke-direct {v0, p2, p1}, Lnet/aihelp/data/model/rpa/bot/FormUrl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-virtual {v0}, Lnet/aihelp/data/model/rpa/bot/FormUrl;->getTitle()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter$2;

    invoke-direct {p2, p0, v0}, Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter$2;-><init>(Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter;Lnet/aihelp/data/model/rpa/bot/FormUrl;)V

    invoke-virtual {p0, p1, p2}, Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter;->getHighlightedClickableTextView(Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/TextView;

    move-result-object p1

    return-object p1

    .line 102
    :cond_1
    new-instance p2, Landroid/widget/TextView;

    iget-object v0, p0, Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v0, 0x41700000    # 15.0f

    .line 103
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 104
    iget-object v0, p0, Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter;->mContext:Landroid/content/Context;

    const-wide/high16 v1, 0x4008000000000000L    # 3.0

    invoke-virtual {p0, v0, v1, v2}, Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter;->dip2px(Landroid/content/Context;D)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p2, v0, v1}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 105
    sget-object v0, Lnet/aihelp/common/CustomConfig$CommonSetting;->textColor:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v0, 0x1

    .line 106
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    .line 108
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v2, "XiaoMi"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v3, "RedMi"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1e

    if-gt v1, v3, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    .line 110
    :goto_1
    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v4, "samsung"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-gt v3, v4, :cond_4

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_2
    if-nez v1, :cond_6

    if-eqz v0, :cond_5

    goto :goto_3

    .line 115
    :cond_5
    invoke-virtual {p0, p1}, Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter;->getUrlSupportedText(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto :goto_4

    .line 113
    :cond_6
    :goto_3
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_4
    return-object p2
.end method

.method protected getRetryListener(ILnet/aihelp/data/model/rpa/RPAMessage;)Landroid/view/View$OnClickListener;
    .locals 1

    .line 53
    new-instance v0, Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter$1;

    invoke-direct {v0, p0, p2, p1}, Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter$1;-><init>(Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter;Lnet/aihelp/data/model/rpa/RPAMessage;I)V

    return-object v0
.end method

.method protected getUrlSupportedText(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;
    .locals 1

    .line 138
    sget-object v0, Lnet/aihelp/common/CustomConfig$CommonSetting;->interactElementTextColor:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter;->getUrlSupportedText(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method protected getUrlSupportedText(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;
    .locals 5

    .line 142
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Landroid/text/SpannableStringBuilder;

    const-string p2, ""

    invoke-direct {p1, p2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    return-object p1

    .line 144
    :cond_0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const-string p1, "\\S+(://)\\S+"

    .line 147
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 148
    :goto_0
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 149
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    .line 150
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    .line 151
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v3

    .line 153
    new-instance v4, Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter$3;

    invoke-direct {v4, p0, v3, p2}, Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter$3;-><init>(Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x22

    .line 168
    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 169
    new-instance v4, Landroid/text/style/UnderlineSpan;

    invoke-direct {v4}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method protected getViewId(Ljava/lang/String;)I
    .locals 0

    .line 175
    invoke-static {p1}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public onDataSourceUpdated(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/aihelp/data/model/rpa/RPAMessage;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public setOnClickedListenerWrapper(Lnet/aihelp/ui/adapter/MessageListAdapter$OnClickedListenerWrapper;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter;->mWrapper:Lnet/aihelp/ui/adapter/MessageListAdapter$OnClickedListenerWrapper;

    return-void
.end method

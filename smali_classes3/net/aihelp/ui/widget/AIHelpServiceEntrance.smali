.class public Lnet/aihelp/ui/widget/AIHelpServiceEntrance;
.super Landroid/widget/RelativeLayout;
.source "AIHelpServiceEntrance.java"


# instance fields
.field vNotification:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1, v0}, Lnet/aihelp/ui/widget/AIHelpServiceEntrance;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, p2, v0}, Lnet/aihelp/ui/widget/AIHelpServiceEntrance;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p2, "aihelp_layout_service_entrance"

    .line 46
    invoke-static {p2}, Lnet/aihelp/utils/ResResolver;->getLayoutId(Ljava/lang/String;)I

    move-result p2

    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const-string p1, "aihelp_tv_entrance"

    .line 48
    invoke-static {p1}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lnet/aihelp/ui/widget/AIHelpServiceEntrance;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 49
    sget-object p2, Lnet/aihelp/common/CustomConfig$HelpCenter;->faqCSEntranceText:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    sget-object p2, Lnet/aihelp/common/CustomConfig$CommonSetting;->interactElementTextColor:Ljava/lang/String;

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    const/16 p3, 0x8

    invoke-static {p2, p3}, Lnet/aihelp/utils/Styles;->getDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const-string p1, "aihelp_v_unread_status"

    .line 52
    invoke-static {p1}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lnet/aihelp/ui/widget/AIHelpServiceEntrance;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lnet/aihelp/ui/widget/AIHelpServiceEntrance;->vNotification:Landroid/view/View;

    const-string p2, "#FF4747"

    .line 53
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    const/16 v0, 0x3e7

    invoke-static {p2, v0}, Lnet/aihelp/utils/Styles;->getDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 54
    iget-object p1, p0, Lnet/aihelp/ui/widget/AIHelpServiceEntrance;->vNotification:Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    const/4 p1, 0x0

    .line 56
    invoke-direct {p0, p1, p1}, Lnet/aihelp/ui/widget/AIHelpServiceEntrance;->updateEntranceStatus(ZZ)V

    return-void
.end method

.method static synthetic access$000(Lnet/aihelp/ui/widget/AIHelpServiceEntrance;ZZ)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Lnet/aihelp/ui/widget/AIHelpServiceEntrance;->updateEntranceStatus(ZZ)V

    return-void
.end method

.method private updateEntranceStatus(ZZ)V
    .locals 2

    const/16 v0, 0x8

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 84
    invoke-virtual {p0, p1}, Lnet/aihelp/ui/widget/AIHelpServiceEntrance;->setVisibility(I)V

    .line 85
    iget-object v1, p0, Lnet/aihelp/ui/widget/AIHelpServiceEntrance;->vNotification:Landroid/view/View;

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 87
    :cond_1
    invoke-virtual {p0, v0}, Lnet/aihelp/ui/widget/AIHelpServiceEntrance;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private updateViewClickEvent(Landroid/os/Bundle;Lnet/aihelp/ui/faq/IFaqEventListener;)V
    .locals 1

    .line 92
    new-instance v0, Lnet/aihelp/ui/widget/AIHelpServiceEntrance$1;

    invoke-direct {v0, p0, p2, p1}, Lnet/aihelp/ui/widget/AIHelpServiceEntrance$1;-><init>(Lnet/aihelp/ui/widget/AIHelpServiceEntrance;Lnet/aihelp/ui/faq/IFaqEventListener;Landroid/os/Bundle;)V

    invoke-virtual {p0, v0}, Lnet/aihelp/ui/widget/AIHelpServiceEntrance;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .line 103
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 104
    invoke-static {}, Lnet/aihelp/core/util/bus/EventBus;->getDefault()Lnet/aihelp/core/util/bus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnet/aihelp/core/util/bus/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 109
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 110
    invoke-static {}, Lnet/aihelp/core/util/bus/EventBus;->getDefault()Lnet/aihelp/core/util/bus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnet/aihelp/core/util/bus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onEventComing(Lnet/aihelp/core/util/bus/event/EventCenter;)V
    .locals 0
    .annotation runtime Lnet/aihelp/core/util/bus/Subscribe;
        threadMode = .enum Lnet/aihelp/core/util/bus/ThreadMode;->MAIN:Lnet/aihelp/core/util/bus/ThreadMode;
    .end annotation

    .line 115
    instance-of p1, p1, Lnet/aihelp/data/event/NewMessageArrivedEvent;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 116
    invoke-virtual {p0, p1, p1}, Lnet/aihelp/ui/widget/AIHelpServiceEntrance;->updateViewVisibility(Landroid/os/Bundle;Lnet/aihelp/ui/faq/BaseFaqFragment;)V

    :cond_0
    return-void
.end method

.method public setup(Landroid/os/Bundle;Lnet/aihelp/ui/faq/IFaqEventListener;Lnet/aihelp/ui/faq/BaseFaqFragment;)V
    .locals 0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 61
    invoke-virtual {p0, p1, p3}, Lnet/aihelp/ui/widget/AIHelpServiceEntrance;->updateViewVisibility(Landroid/os/Bundle;Lnet/aihelp/ui/faq/BaseFaqFragment;)V

    .line 62
    invoke-direct {p0, p1, p2}, Lnet/aihelp/ui/widget/AIHelpServiceEntrance;->updateViewClickEvent(Landroid/os/Bundle;Lnet/aihelp/ui/faq/IFaqEventListener;)V

    :cond_0
    return-void
.end method

.method public updateViewVisibility(Landroid/os/Bundle;Lnet/aihelp/ui/faq/BaseFaqFragment;)V
    .locals 4

    .line 67
    sget-boolean v0, Lnet/aihelp/ui/cs/util/TicketStatusTracker;->hasUnreadMsg:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 68
    invoke-direct {p0, v1, v1}, Lnet/aihelp/ui/widget/AIHelpServiceEntrance;->updateEntranceStatus(ZZ)V

    goto :goto_4

    .line 69
    :cond_0
    sget-boolean v0, Lnet/aihelp/ui/cs/util/TicketStatusTracker;->isTicketActive:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 70
    invoke-direct {p0, v1, v2}, Lnet/aihelp/ui/widget/AIHelpServiceEntrance;->updateEntranceStatus(ZZ)V

    goto :goto_4

    :cond_1
    if-eqz p1, :cond_7

    if-eqz p2, :cond_7

    const-string v0, "faq_support_moment"

    const-string v3, ""

    .line 73
    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 74
    instance-of v0, p2, Lnet/aihelp/ui/faq/FaqHomeFragment;

    if-eqz v0, :cond_2

    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 75
    :goto_0
    instance-of v3, p2, Lnet/aihelp/ui/faq/FaqListFragment;

    if-eqz v3, :cond_3

    const-string v3, "2"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    .line 76
    :goto_1
    instance-of p2, p2, Lnet/aihelp/ui/faq/FaqContentFragment;

    if-eqz p2, :cond_4

    const-string p2, "3"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    :goto_2
    if-nez v0, :cond_6

    if-nez v3, :cond_6

    if-eqz p1, :cond_5

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    .line 77
    :cond_6
    :goto_3
    invoke-direct {p0, v1, v2}, Lnet/aihelp/ui/widget/AIHelpServiceEntrance;->updateEntranceStatus(ZZ)V

    :cond_7
    :goto_4
    return-void
.end method

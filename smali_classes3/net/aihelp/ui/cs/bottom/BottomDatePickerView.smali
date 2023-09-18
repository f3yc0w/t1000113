.class public Lnet/aihelp/ui/cs/bottom/BottomDatePickerView;
.super Lnet/aihelp/ui/cs/bottom/BottomBaseView;
.source "BottomDatePickerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private btnSend:Landroidx/appcompat/widget/AppCompatImageButton;

.field private currentDayOfMonth:I

.field private currentMonth:I

.field private currentYear:I

.field private llDatePicker:Landroid/widget/LinearLayout;

.field private pickerDialog:Landroid/app/DatePickerDialog;

.field private tvDate:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, v0}, Lnet/aihelp/ui/cs/bottom/BottomDatePickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, p2, v0}, Lnet/aihelp/ui/cs/bottom/BottomDatePickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 52
    invoke-direct {p0, p1, p2, p3}, Lnet/aihelp/ui/cs/bottom/BottomBaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p2, "aihelp_bottom_date_picker"

    .line 53
    invoke-static {p2}, Lnet/aihelp/utils/ResResolver;->getLayoutId(Ljava/lang/String;)I

    move-result p2

    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const-string p1, "aihelp_ll_date"

    .line 55
    invoke-static {p1}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lnet/aihelp/ui/cs/bottom/BottomDatePickerView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lnet/aihelp/ui/cs/bottom/BottomDatePickerView;->llDatePicker:Landroid/widget/LinearLayout;

    const-string p1, "aihelp_tv_date"

    .line 56
    invoke-static {p1}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lnet/aihelp/ui/cs/bottom/BottomDatePickerView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lnet/aihelp/ui/cs/bottom/BottomDatePickerView;->tvDate:Landroid/widget/TextView;

    const-string p1, "aihelp_btn_send"

    .line 57
    invoke-static {p1}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lnet/aihelp/ui/cs/bottom/BottomDatePickerView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatImageButton;

    iput-object p1, p0, Lnet/aihelp/ui/cs/bottom/BottomDatePickerView;->btnSend:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 59
    iget-object p1, p0, Lnet/aihelp/ui/cs/bottom/BottomDatePickerView;->llDatePicker:Landroid/widget/LinearLayout;

    sget-object p2, Lnet/aihelp/common/CustomConfig$CommonSetting;->textColor:Ljava/lang/String;

    const-wide v0, 0x3fb99999a0000000L    # 0.10000000149011612

    invoke-static {p2, v0, v1}, Lnet/aihelp/utils/Styles;->getColorWithAlpha(Ljava/lang/String;D)I

    move-result p2

    const/16 p3, 0x8

    invoke-static {p2, p3}, Lnet/aihelp/utils/Styles;->getDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 60
    iget-object p1, p0, Lnet/aihelp/ui/cs/bottom/BottomDatePickerView;->llDatePicker:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    iget-object p1, p0, Lnet/aihelp/ui/cs/bottom/BottomDatePickerView;->tvDate:Landroid/widget/TextView;

    const-string p2, "aihelp_select_date"

    invoke-static {p2}, Lnet/aihelp/utils/ResResolver;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/high16 p3, 0x3f000000    # 0.5f

    invoke-static {p1, p2, p3}, Lnet/aihelp/utils/Styles;->reRenderTextView(Landroid/widget/TextView;Ljava/lang/String;F)V

    .line 64
    iget-object p1, p0, Lnet/aihelp/ui/cs/bottom/BottomDatePickerView;->btnSend:Landroidx/appcompat/widget/AppCompatImageButton;

    invoke-virtual {p1, p0}, Landroidx/appcompat/widget/AppCompatImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    iget-object p1, p0, Lnet/aihelp/ui/cs/bottom/BottomDatePickerView;->btnSend:Landroidx/appcompat/widget/AppCompatImageButton;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/AppCompatImageButton;->setEnabled(Z)V

    .line 67
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    const/4 p2, 0x1

    .line 68
    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    move-result p2

    iput p2, p0, Lnet/aihelp/ui/cs/bottom/BottomDatePickerView;->currentYear:I

    const/4 p2, 0x2

    .line 69
    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    move-result p2

    iput p2, p0, Lnet/aihelp/ui/cs/bottom/BottomDatePickerView;->currentMonth:I

    const/4 p2, 0x5

    .line 70
    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iput p1, p0, Lnet/aihelp/ui/cs/bottom/BottomDatePickerView;->currentDayOfMonth:I

    return-void
.end method

.method static synthetic access$000(Lnet/aihelp/ui/cs/bottom/BottomDatePickerView;)I
    .locals 0

    .line 32
    iget p0, p0, Lnet/aihelp/ui/cs/bottom/BottomDatePickerView;->currentYear:I

    return p0
.end method

.method static synthetic access$002(Lnet/aihelp/ui/cs/bottom/BottomDatePickerView;I)I
    .locals 0

    .line 32
    iput p1, p0, Lnet/aihelp/ui/cs/bottom/BottomDatePickerView;->currentYear:I

    return p1
.end method

.method static synthetic access$100(Lnet/aihelp/ui/cs/bottom/BottomDatePickerView;)I
    .locals 0

    .line 32
    iget p0, p0, Lnet/aihelp/ui/cs/bottom/BottomDatePickerView;->currentMonth:I

    return p0
.end method

.method static synthetic access$102(Lnet/aihelp/ui/cs/bottom/BottomDatePickerView;I)I
    .locals 0

    .line 32
    iput p1, p0, Lnet/aihelp/ui/cs/bottom/BottomDatePickerView;->currentMonth:I

    return p1
.end method

.method static synthetic access$200(Lnet/aihelp/ui/cs/bottom/BottomDatePickerView;)I
    .locals 0

    .line 32
    iget p0, p0, Lnet/aihelp/ui/cs/bottom/BottomDatePickerView;->currentDayOfMonth:I

    return p0
.end method

.method static synthetic access$202(Lnet/aihelp/ui/cs/bottom/BottomDatePickerView;I)I
    .locals 0

    .line 32
    iput p1, p0, Lnet/aihelp/ui/cs/bottom/BottomDatePickerView;->currentDayOfMonth:I

    return p1
.end method

.method static synthetic access$300(Lnet/aihelp/ui/cs/bottom/BottomDatePickerView;)Landroid/widget/TextView;
    .locals 0

    .line 32
    iget-object p0, p0, Lnet/aihelp/ui/cs/bottom/BottomDatePickerView;->tvDate:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$400(Lnet/aihelp/ui/cs/bottom/BottomDatePickerView;Ljava/lang/CharSequence;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lnet/aihelp/ui/cs/bottom/BottomDatePickerView;->updateSendButtonStatus(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private showDatePicker(III)V
    .locals 7

    .line 137
    new-instance v6, Landroid/app/DatePickerDialog;

    invoke-virtual {p0}, Lnet/aihelp/ui/cs/bottom/BottomDatePickerView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lnet/aihelp/ui/cs/bottom/BottomDatePickerView$1;

    invoke-direct {v2, p0}, Lnet/aihelp/ui/cs/bottom/BottomDatePickerView$1;-><init>(Lnet/aihelp/ui/cs/bottom/BottomDatePickerView;)V

    move-object v0, v6

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    iput-object v6, p0, Lnet/aihelp/ui/cs/bottom/BottomDatePickerView;->pickerDialog:Landroid/app/DatePickerDialog;

    .line 150
    invoke-virtual {v6}, Landroid/app/DatePickerDialog;->show()V

    return-void
.end method

.method private updateSendButtonStatus(Ljava/lang/CharSequence;)V
    .locals 3

    .line 97
    :try_start_0
    invoke-virtual {p0}, Lnet/aihelp/ui/cs/bottom/BottomDatePickerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "aihelp_svg_ic_send_msg"

    .line 98
    invoke-static {v1}, Lnet/aihelp/utils/ResResolver;->getDrawableId(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    .line 97
    invoke-static {v0, v1, v2}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->create(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "#C6C9D7"

    .line 100
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    .line 101
    sget-object v2, Lnet/aihelp/common/CustomConfig$CommonSetting;->interactElementTextColor:Ljava/lang/String;

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    .line 102
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 103
    iget-object p1, p0, Lnet/aihelp/ui/cs/bottom/BottomDatePickerView;->btnSend:Landroidx/appcompat/widget/AppCompatImageButton;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/AppCompatImageButton;->setEnabled(Z)V

    .line 104
    invoke-static {v0}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {p1, v2}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    goto :goto_0

    .line 106
    :cond_0
    iget-object p1, p0, Lnet/aihelp/ui/cs/bottom/BottomDatePickerView;->btnSend:Landroidx/appcompat/widget/AppCompatImageButton;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroidx/appcompat/widget/AppCompatImageButton;->setEnabled(Z)V

    .line 107
    invoke-static {v0}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {p1, v1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 109
    :goto_0
    iget-object p1, p0, Lnet/aihelp/ui/cs/bottom/BottomDatePickerView;->btnSend:Landroidx/appcompat/widget/AppCompatImageButton;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 112
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .line 118
    invoke-super {p0}, Lnet/aihelp/ui/cs/bottom/BottomBaseView;->onAttachedToWindow()V

    .line 119
    invoke-static {}, Lnet/aihelp/core/util/bus/EventBus;->getDefault()Lnet/aihelp/core/util/bus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnet/aihelp/core/util/bus/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 76
    invoke-super {p0, p1}, Lnet/aihelp/ui/cs/bottom/BottomBaseView;->onClick(Landroid/view/View;)V

    .line 78
    invoke-virtual {p0}, Lnet/aihelp/ui/cs/bottom/BottomDatePickerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lnet/aihelp/utils/AppInfoUtil;->validateNetwork(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "aihelp_ll_date"

    invoke-static {v1}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 79
    iget v0, p0, Lnet/aihelp/ui/cs/bottom/BottomDatePickerView;->currentYear:I

    iget v1, p0, Lnet/aihelp/ui/cs/bottom/BottomDatePickerView;->currentMonth:I

    iget v2, p0, Lnet/aihelp/ui/cs/bottom/BottomDatePickerView;->currentDayOfMonth:I

    invoke-direct {p0, v0, v1, v2}, Lnet/aihelp/ui/cs/bottom/BottomDatePickerView;->showDatePicker(III)V

    .line 82
    :cond_0
    invoke-virtual {p0}, Lnet/aihelp/ui/cs/bottom/BottomDatePickerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lnet/aihelp/utils/AppInfoUtil;->validateNetwork(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const-string v0, "aihelp_btn_send"

    invoke-static {v0}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 83
    invoke-virtual {p0}, Lnet/aihelp/ui/cs/bottom/BottomDatePickerView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lnet/aihelp/utils/AppInfoUtil;->validateNetwork(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 84
    iget-object p1, p0, Lnet/aihelp/ui/cs/bottom/BottomDatePickerView;->mListener:Lnet/aihelp/ui/cs/bottom/IBottomViewEventListener;

    if-eqz p1, :cond_1

    .line 85
    invoke-static {}, Lnet/aihelp/ui/helper/StatisticHelper;->whenSendButtonClicked()V

    .line 86
    iget-object p1, p0, Lnet/aihelp/ui/cs/bottom/BottomDatePickerView;->tvDate:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 87
    invoke-static {p1}, Lnet/aihelp/data/model/rpa/RPAMessage;->getUserTextMsg(Ljava/lang/String;)Lnet/aihelp/data/model/rpa/UserMessage;

    move-result-object v0

    const/4 v1, 0x1

    .line 88
    invoke-virtual {v0, p1, v1}, Lnet/aihelp/data/model/rpa/UserMessage;->setRequestParams(Ljava/lang/String;I)V

    .line 89
    iget-object p1, p0, Lnet/aihelp/ui/cs/bottom/BottomDatePickerView;->mListener:Lnet/aihelp/ui/cs/bottom/IBottomViewEventListener;

    invoke-interface {p1, v0}, Lnet/aihelp/ui/cs/bottom/IBottomViewEventListener;->onUserAction(Lnet/aihelp/data/model/rpa/RPAMessage;)V

    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 124
    invoke-super {p0}, Lnet/aihelp/ui/cs/bottom/BottomBaseView;->onDetachedFromWindow()V

    .line 125
    invoke-static {}, Lnet/aihelp/core/util/bus/EventBus;->getDefault()Lnet/aihelp/core/util/bus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnet/aihelp/core/util/bus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onEventComing(Lnet/aihelp/data/event/OrientationChangeEvent;)V
    .locals 2
    .annotation runtime Lnet/aihelp/core/util/bus/Subscribe;
        threadMode = .enum Lnet/aihelp/core/util/bus/ThreadMode;->MAIN:Lnet/aihelp/core/util/bus/ThreadMode;
    .end annotation

    .line 130
    iget-object p1, p0, Lnet/aihelp/ui/cs/bottom/BottomDatePickerView;->pickerDialog:Landroid/app/DatePickerDialog;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/DatePickerDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 131
    iget-object p1, p0, Lnet/aihelp/ui/cs/bottom/BottomDatePickerView;->pickerDialog:Landroid/app/DatePickerDialog;

    invoke-virtual {p1}, Landroid/app/DatePickerDialog;->dismiss()V

    .line 132
    iget p1, p0, Lnet/aihelp/ui/cs/bottom/BottomDatePickerView;->currentYear:I

    iget v0, p0, Lnet/aihelp/ui/cs/bottom/BottomDatePickerView;->currentMonth:I

    iget v1, p0, Lnet/aihelp/ui/cs/bottom/BottomDatePickerView;->currentDayOfMonth:I

    invoke-direct {p0, p1, v0, v1}, Lnet/aihelp/ui/cs/bottom/BottomDatePickerView;->showDatePicker(III)V

    :cond_0
    return-void
.end method

.class public final enum Lnet/aihelp/utils/ToastUtil;
.super Ljava/lang/Enum;
.source "ToastUtil.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/aihelp/utils/ToastUtil;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/aihelp/utils/ToastUtil;

.field public static final enum INSTANCE:Lnet/aihelp/utils/ToastUtil;


# instance fields
.field private snackbar:Lnet/aihelp/ui/widget/snackbar/Snackbar;

.field private toast:Landroid/widget/Toast;

.field private final viewToSnackBarMapping:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Lnet/aihelp/ui/widget/snackbar/Snackbar;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 24
    new-instance v0, Lnet/aihelp/utils/ToastUtil;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/aihelp/utils/ToastUtil;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/aihelp/utils/ToastUtil;->INSTANCE:Lnet/aihelp/utils/ToastUtil;

    const/4 v1, 0x1

    new-array v1, v1, [Lnet/aihelp/utils/ToastUtil;

    aput-object v0, v1, v2

    .line 21
    sput-object v1, Lnet/aihelp/utils/ToastUtil;->$VALUES:[Lnet/aihelp/utils/ToastUtil;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 62
    new-instance p1, Ljava/util/WeakHashMap;

    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p1, p0, Lnet/aihelp/utils/ToastUtil;->viewToSnackBarMapping:Ljava/util/WeakHashMap;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/aihelp/utils/ToastUtil;
    .locals 1

    .line 21
    const-class v0, Lnet/aihelp/utils/ToastUtil;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/aihelp/utils/ToastUtil;

    return-object p0
.end method

.method public static values()[Lnet/aihelp/utils/ToastUtil;
    .locals 1

    .line 21
    sget-object v0, Lnet/aihelp/utils/ToastUtil;->$VALUES:[Lnet/aihelp/utils/ToastUtil;

    invoke-virtual {v0}, [Lnet/aihelp/utils/ToastUtil;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/aihelp/utils/ToastUtil;

    return-object v0
.end method


# virtual methods
.method public hideSnackBar(Landroid/view/View;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 84
    :try_start_0
    iget-object v0, p0, Lnet/aihelp/utils/ToastUtil;->viewToSnackBarMapping:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/aihelp/ui/widget/snackbar/Snackbar;

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {v0}, Lnet/aihelp/ui/widget/snackbar/Snackbar;->isShown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    invoke-virtual {v0}, Lnet/aihelp/ui/widget/snackbar/Snackbar;->dismiss()V

    .line 88
    :cond_0
    iget-object v0, p0, Lnet/aihelp/utils/ToastUtil;->viewToSnackBarMapping:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public makeRawToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 31
    :try_start_0
    iget-object v0, p0, Lnet/aihelp/utils/ToastUtil;->toast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 32
    invoke-virtual {v0, p2}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    iput-object p1, p0, Lnet/aihelp/utils/ToastUtil;->toast:Landroid/widget/Toast;

    .line 36
    :goto_0
    iget-object p1, p0, Lnet/aihelp/utils/ToastUtil;->toast:Landroid/widget/Toast;

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public makeText(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 4

    .line 44
    :try_start_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "aihelp_toast_center_view"

    invoke-static {v1}, Lnet/aihelp/utils/ResResolver;->getLayoutId(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const-string v1, "aihelp_toast_txt"

    .line 45
    invoke-static {v1}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 46
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    iget-object v2, p0, Lnet/aihelp/utils/ToastUtil;->toast:Landroid/widget/Toast;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 49
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 51
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p3, :cond_1

    const/4 p3, 0x1

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    :goto_0
    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    iput-object p1, p0, Lnet/aihelp/utils/ToastUtil;->toast:Landroid/widget/Toast;

    .line 54
    :goto_1
    iget-object p1, p0, Lnet/aihelp/utils/ToastUtil;->toast:Landroid/widget/Toast;

    invoke-virtual {p1, v0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 55
    iget-object p1, p0, Lnet/aihelp/utils/ToastUtil;->toast:Landroid/widget/Toast;

    const/16 p2, 0x11

    invoke-virtual {p1, p2, v3, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 56
    iget-object p1, p0, Lnet/aihelp/utils/ToastUtil;->toast:Landroid/widget/Toast;

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public showRawSnackBar(Landroid/app/Activity;Ljava/lang/String;I)V
    .locals 1

    if-eqz p2, :cond_1

    .line 130
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 132
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const v0, 0x1020002

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 133
    invoke-static {p1, p2, p3}, Lnet/aihelp/ui/widget/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lnet/aihelp/ui/widget/snackbar/Snackbar;

    move-result-object p1

    invoke-virtual {p1}, Lnet/aihelp/ui/widget/snackbar/Snackbar;->show()V

    goto :goto_0

    .line 135
    :cond_0
    invoke-static {}, Lnet/aihelp/config/AIHelpContext;->getInstance()Lnet/aihelp/config/AIHelpContext;

    move-result-object p1

    invoke-virtual {p1}, Lnet/aihelp/config/AIHelpContext;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lnet/aihelp/utils/ToastUtil;->makeText(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method public showRawSnackBar(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILandroid/view/View$OnClickListener;)V
    .locals 3

    const-string v0, "snackbar_action"

    const-string v1, "snackbar_text"

    if-eqz p2, :cond_3

    .line 145
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3

    if-eqz p1, :cond_2

    .line 147
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const v2, 0x1020002

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, p2, p4}, Lnet/aihelp/ui/widget/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lnet/aihelp/ui/widget/snackbar/Snackbar;

    move-result-object p1

    .line 148
    invoke-virtual {p1, p3, p5}, Lnet/aihelp/ui/widget/snackbar/Snackbar;->setAction(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lnet/aihelp/ui/widget/snackbar/Snackbar;

    move-result-object p1

    .line 149
    invoke-virtual {p1}, Lnet/aihelp/ui/widget/snackbar/Snackbar;->getView()Landroid/view/View;

    move-result-object p2

    invoke-static {v1}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 150
    instance-of p2, p2, Landroid/widget/TextView;

    if-eqz p2, :cond_0

    .line 151
    invoke-virtual {p1}, Lnet/aihelp/ui/widget/snackbar/Snackbar;->getView()Landroid/view/View;

    move-result-object p2

    invoke-static {v1}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const/4 p3, 0x4

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 153
    :cond_0
    invoke-virtual {p1}, Lnet/aihelp/ui/widget/snackbar/Snackbar;->getView()Landroid/view/View;

    move-result-object p2

    invoke-static {v0}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 154
    instance-of p2, p2, Landroid/widget/TextView;

    if-eqz p2, :cond_1

    .line 155
    invoke-virtual {p1}, Lnet/aihelp/ui/widget/snackbar/Snackbar;->getView()Landroid/view/View;

    move-result-object p2

    invoke-static {v0}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const-string p3, "#5C7EFF"

    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 157
    :cond_1
    invoke-virtual {p1}, Lnet/aihelp/ui/widget/snackbar/Snackbar;->show()V

    goto :goto_0

    .line 159
    :cond_2
    invoke-static {}, Lnet/aihelp/config/AIHelpContext;->getInstance()Lnet/aihelp/config/AIHelpContext;

    move-result-object p1

    invoke-virtual {p1}, Lnet/aihelp/config/AIHelpContext;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lnet/aihelp/utils/ToastUtil;->makeText(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    :goto_0
    return-void
.end method

.method public showSnackBar(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 2

    const-string v0, "#1B8AFA"

    if-eqz p2, :cond_0

    .line 114
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const v1, 0x1020002

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {p1, p2, v1}, Lnet/aihelp/ui/widget/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lnet/aihelp/ui/widget/snackbar/Snackbar;

    move-result-object p1

    .line 116
    invoke-virtual {p1, p3, p4}, Lnet/aihelp/ui/widget/snackbar/Snackbar;->setAction(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lnet/aihelp/ui/widget/snackbar/Snackbar;

    move-result-object p1

    iput-object p1, p0, Lnet/aihelp/utils/ToastUtil;->snackbar:Lnet/aihelp/ui/widget/snackbar/Snackbar;

    .line 117
    invoke-virtual {p1}, Lnet/aihelp/ui/widget/snackbar/Snackbar;->getView()Landroid/view/View;

    move-result-object p1

    const-string p2, "#EFF1F6"

    .line 118
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    const-string p2, "snackbar_text"

    .line 119
    invoke-static {p2}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 120
    iget-object p1, p0, Lnet/aihelp/utils/ToastUtil;->snackbar:Lnet/aihelp/ui/widget/snackbar/Snackbar;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lnet/aihelp/ui/widget/snackbar/Snackbar;->setActionTextColor(I)Lnet/aihelp/ui/widget/snackbar/Snackbar;

    .line 121
    iget-object p1, p0, Lnet/aihelp/utils/ToastUtil;->snackbar:Lnet/aihelp/ui/widget/snackbar/Snackbar;

    invoke-virtual {p1}, Lnet/aihelp/ui/widget/snackbar/Snackbar;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public showSnackBar(Landroid/app/Activity;Ljava/lang/String;Z)V
    .locals 2

    const-string v0, "#1B8AFA"

    .line 97
    :try_start_0
    iget-object v1, p0, Lnet/aihelp/utils/ToastUtil;->snackbar:Lnet/aihelp/ui/widget/snackbar/Snackbar;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lnet/aihelp/ui/widget/snackbar/Snackbar;->isShown()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_2

    .line 98
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    .line 99
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const v1, 0x1020002

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v1, -0x1

    if-eqz p3, :cond_1

    const/4 p3, 0x0

    goto :goto_0

    :cond_1
    const/4 p3, -0x1

    :goto_0
    invoke-static {p1, p2, p3}, Lnet/aihelp/ui/widget/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lnet/aihelp/ui/widget/snackbar/Snackbar;

    move-result-object p1

    .line 101
    invoke-virtual {p1}, Lnet/aihelp/ui/widget/snackbar/Snackbar;->getView()Landroid/view/View;

    move-result-object p2

    .line 102
    invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundColor(I)V

    const-string p3, "snackbar_text"

    .line 103
    invoke-static {p3}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 104
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lnet/aihelp/ui/widget/snackbar/Snackbar;->setActionTextColor(I)Lnet/aihelp/ui/widget/snackbar/Snackbar;

    .line 105
    invoke-virtual {p1}, Lnet/aihelp/ui/widget/snackbar/Snackbar;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-void
.end method

.method public showSnackBar(Landroid/view/View;Ljava/lang/String;Z)V
    .locals 1

    if-eqz p2, :cond_2

    .line 66
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 68
    :goto_0
    invoke-static {p1, p2, v0}, Lnet/aihelp/ui/widget/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lnet/aihelp/ui/widget/snackbar/Snackbar;

    move-result-object p2

    iput-object p2, p0, Lnet/aihelp/utils/ToastUtil;->snackbar:Lnet/aihelp/ui/widget/snackbar/Snackbar;

    .line 69
    invoke-virtual {p2}, Lnet/aihelp/ui/widget/snackbar/Snackbar;->show()V

    .line 71
    iget-object p2, p0, Lnet/aihelp/utils/ToastUtil;->viewToSnackBarMapping:Ljava/util/WeakHashMap;

    iget-object p3, p0, Lnet/aihelp/utils/ToastUtil;->snackbar:Lnet/aihelp/ui/widget/snackbar/Snackbar;

    invoke-virtual {p2, p1, p3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 73
    :cond_1
    invoke-static {}, Lnet/aihelp/config/AIHelpContext;->getInstance()Lnet/aihelp/config/AIHelpContext;

    move-result-object p1

    invoke-virtual {p1}, Lnet/aihelp/config/AIHelpContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v0}, Lnet/aihelp/utils/ToastUtil;->makeText(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    :goto_1
    return-void
.end method

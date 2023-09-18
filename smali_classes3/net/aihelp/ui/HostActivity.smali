.class public Lnet/aihelp/ui/HostActivity;
.super Lnet/aihelp/core/ui/BaseActivity;
.source "HostActivity.java"


# static fields
.field private static sPhoneWindow:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/Window;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field fragmentManager:Landroidx/fragment/app/FragmentManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Lnet/aihelp/core/ui/BaseActivity;-><init>()V

    return-void
.end method

.method public static getHostWindow()Landroid/view/Window;
    .locals 1

    .line 52
    sget-object v0, Lnet/aihelp/ui/HostActivity;->sPhoneWindow:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 53
    sget-object v0, Lnet/aihelp/ui/HostActivity;->sPhoneWindow:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Window;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private updateWindowBackgroundImage()V
    .locals 2

    .line 138
    invoke-static {}, Lnet/aihelp/utils/Styles;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    sget-object v0, Lnet/aihelp/common/CustomConfig$CommonSetting;->backgroundImageForLandscape:Ljava/lang/String;

    goto :goto_0

    .line 141
    :cond_0
    sget-object v0, Lnet/aihelp/common/CustomConfig$CommonSetting;->backgroundImageForPortrait:Ljava/lang/String;

    .line 143
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 144
    invoke-static {}, Lnet/aihelp/core/ui/image/Picasso;->get()Lnet/aihelp/core/ui/image/Picasso;

    move-result-object v1

    invoke-virtual {v1, v0}, Lnet/aihelp/core/ui/image/Picasso;->load(Ljava/lang/String;)Lnet/aihelp/core/ui/image/RequestCreator;

    move-result-object v0

    new-instance v1, Lnet/aihelp/ui/HostActivity$1;

    invoke-direct {v1, p0}, Lnet/aihelp/ui/HostActivity$1;-><init>(Lnet/aihelp/ui/HostActivity;)V

    invoke-virtual {v0, v1}, Lnet/aihelp/core/ui/image/RequestCreator;->into(Lnet/aihelp/core/ui/image/Target;)V

    :cond_1
    return-void
.end method

.method private watchLeakCanary()V
    .locals 0

    return-void
.end method


# virtual methods
.method public finishFormPage()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 174
    invoke-static {}, Lnet/aihelp/core/util/concurrent/ApiExecutorFactory;->getHandlerExecutor()Lnet/aihelp/core/util/concurrent/ApiExecutor;

    move-result-object v0

    new-instance v1, Lnet/aihelp/ui/HostActivity$2;

    invoke-direct {v1, p0}, Lnet/aihelp/ui/HostActivity$2;-><init>(Lnet/aihelp/ui/HostActivity;)V

    invoke-interface {v0, v1}, Lnet/aihelp/core/util/concurrent/ApiExecutor;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getLayoutId()I
    .locals 1

    const-string v0, "aihelp_act_host"

    .line 62
    invoke-static {v0}, Lnet/aihelp/utils/ResResolver;->getLayoutId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public initView()V
    .locals 3

    .line 164
    invoke-virtual {p0}, Lnet/aihelp/ui/HostActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lnet/aihelp/ui/HostActivity;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 165
    invoke-virtual {p0}, Lnet/aihelp/ui/HostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    .line 166
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 167
    :cond_0
    iget-object v1, p0, Lnet/aihelp/ui/HostActivity;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    const-string v2, "aihelp_root_container"

    .line 168
    invoke-static {v2}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result v2

    invoke-static {v0}, Lnet/aihelp/ui/SupportFragment;->getInstance(Landroid/os/Bundle;)Lnet/aihelp/ui/SupportFragment;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 169
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 223
    invoke-super {p0, p1, p2, p3}, Lnet/aihelp/core/ui/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .line 202
    iget-object v0, p0, Lnet/aihelp/ui/HostActivity;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    .line 204
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_0

    .line 205
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    instance-of v2, v1, Lnet/aihelp/ui/SupportFragment;

    if-eqz v2, :cond_0

    .line 206
    move-object v2, v1

    check-cast v2, Lnet/aihelp/ui/SupportFragment;

    invoke-virtual {v2}, Lnet/aihelp/ui/SupportFragment;->onBackPressed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 207
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    .line 208
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 209
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->popBackStack()V

    :cond_1
    return-void

    .line 218
    :cond_2
    invoke-super {p0}, Lnet/aihelp/core/ui/BaseActivity;->onBackPressed()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 124
    invoke-super {p0, p1}, Lnet/aihelp/core/ui/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 127
    sget v0, Lnet/aihelp/common/CustomConfig$CommonSetting;->screenOrientation:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 128
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lnet/aihelp/common/CustomConfig$CommonSetting;->isLandscape:Z

    .line 129
    invoke-static {}, Lnet/aihelp/core/util/bus/EventBus;->getDefault()Lnet/aihelp/core/util/bus/EventBus;

    move-result-object v0

    new-instance v1, Lnet/aihelp/data/event/OrientationChangeEvent;

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v1, p1}, Lnet/aihelp/data/event/OrientationChangeEvent;-><init>(Ljava/lang/Integer;)V

    invoke-virtual {v0, v1}, Lnet/aihelp/core/util/bus/EventBus;->post(Ljava/lang/Object;)V

    .line 130
    sget-boolean p1, Lnet/aihelp/common/CustomConfig$CommonSetting;->isBackgroundRenderedWithImage:Z

    if-eqz p1, :cond_1

    .line 131
    invoke-direct {p0}, Lnet/aihelp/ui/HostActivity;->updateWindowBackgroundImage()V

    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 69
    invoke-direct {p0}, Lnet/aihelp/ui/HostActivity;->watchLeakCanary()V

    .line 71
    new-instance v0, Lnet/aihelp/core/ui/image/Picasso$Builder;

    invoke-direct {v0, p0}, Lnet/aihelp/core/ui/image/Picasso$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lnet/aihelp/core/ui/image/Picasso$Builder;->build()Lnet/aihelp/core/ui/image/Picasso;

    move-result-object v0

    invoke-static {v0}, Lnet/aihelp/core/ui/image/Picasso;->setSingletonInstance(Lnet/aihelp/core/ui/image/Picasso;)V

    .line 73
    sget-object v0, Lnet/aihelp/common/Const;->sSessionOpenListener:Lnet/aihelp/ui/listener/OnAIHelpSessionOpenCallback;

    if-eqz v0, :cond_0

    .line 74
    sget-object v0, Lnet/aihelp/common/Const;->sSessionOpenListener:Lnet/aihelp/ui/listener/OnAIHelpSessionOpenCallback;

    invoke-interface {v0}, Lnet/aihelp/ui/listener/OnAIHelpSessionOpenCallback;->onAIHelpSessionOpened()V

    .line 76
    :cond_0
    invoke-static {}, Lnet/aihelp/ui/helper/StatisticHelper;->whenAIHelpCreated()V

    .line 78
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Lnet/aihelp/ui/HostActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lnet/aihelp/ui/HostActivity;->sPhoneWindow:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x1

    .line 80
    sput-boolean v0, Lnet/aihelp/common/Const;->IS_SDK_SHOWING:Z

    .line 81
    invoke-virtual {p0}, Lnet/aihelp/ui/HostActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x1000000

    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 84
    sget v1, Lnet/aihelp/common/CustomConfig$CommonSetting;->screenOrientation:I

    const/4 v2, 0x0

    if-eq v1, v0, :cond_4

    const/4 v3, 0x2

    if-eq v1, v3, :cond_3

    const/4 v4, 0x3

    if-eq v1, v4, :cond_1

    goto :goto_1

    .line 94
    :cond_1
    invoke-virtual {p0}, Lnet/aihelp/ui/HostActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lnet/aihelp/common/CustomConfig$CommonSetting;->isLandscape:Z

    const/4 v0, -0x1

    .line 95
    invoke-virtual {p0, v0}, Lnet/aihelp/ui/HostActivity;->setRequestedOrientation(I)V

    goto :goto_1

    .line 90
    :cond_3
    sput-boolean v2, Lnet/aihelp/common/CustomConfig$CommonSetting;->isLandscape:Z

    .line 91
    invoke-virtual {p0, v0}, Lnet/aihelp/ui/HostActivity;->setRequestedOrientation(I)V

    goto :goto_1

    .line 86
    :cond_4
    sput-boolean v0, Lnet/aihelp/common/CustomConfig$CommonSetting;->isLandscape:Z

    const/4 v0, 0x6

    .line 87
    invoke-virtual {p0, v0}, Lnet/aihelp/ui/HostActivity;->setRequestedOrientation(I)V

    .line 99
    :goto_1
    sget-boolean v0, Lnet/aihelp/common/CustomConfig$CommonSetting;->isBackgroundRenderedWithImage:Z

    if-eqz v0, :cond_5

    .line 100
    invoke-direct {p0}, Lnet/aihelp/ui/HostActivity;->updateWindowBackgroundImage()V

    goto :goto_2

    .line 102
    :cond_5
    invoke-virtual {p0}, Lnet/aihelp/ui/HostActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    sget-object v3, Lnet/aihelp/common/CustomConfig$CommonSetting;->backgroundColorForAll:Ljava/lang/String;

    invoke-static {v3}, Lnet/aihelp/utils/Styles;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v1, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 105
    :goto_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_7

    .line 106
    invoke-virtual {p0}, Lnet/aihelp/ui/HostActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 107
    invoke-virtual {p0}, Lnet/aihelp/ui/HostActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 108
    invoke-virtual {p0}, Lnet/aihelp/ui/HostActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget-object v1, Lnet/aihelp/common/CustomConfig$CommonSetting;->navigationBarBackground:Ljava/lang/String;

    sget-wide v3, Lnet/aihelp/common/CustomConfig$CommonSetting;->navigationBarAlpha:D

    invoke-static {v1, v3, v4}, Lnet/aihelp/utils/Styles;->getColorWithAlpha(Ljava/lang/String;D)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 110
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_7

    .line 111
    invoke-virtual {p0}, Lnet/aihelp/ui/HostActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 113
    sget-object v1, Lnet/aihelp/common/CustomConfig$CommonSetting;->textColor:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lnet/aihelp/utils/Styles;->isLightColor(I)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    const/16 v2, 0x2000

    .line 111
    :goto_3
    invoke-virtual {v0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 119
    :cond_7
    invoke-super {p0, p1}, Lnet/aihelp/core/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 228
    invoke-super {p0}, Lnet/aihelp/core/ui/BaseActivity;->onDestroy()V

    .line 229
    invoke-static {}, Lnet/aihelp/core/ui/image/Picasso;->get()Lnet/aihelp/core/ui/image/Picasso;

    move-result-object v0

    invoke-virtual {v0}, Lnet/aihelp/core/ui/image/Picasso;->shutdown()V

    const/4 v0, 0x0

    .line 230
    sput-boolean v0, Lnet/aihelp/common/Const;->IS_SDK_SHOWING:Z

    .line 231
    sget-object v0, Lnet/aihelp/common/Const;->sSessionCloseListener:Lnet/aihelp/ui/listener/OnAIHelpSessionCloseCallback;

    if-eqz v0, :cond_0

    .line 232
    sget-object v0, Lnet/aihelp/common/Const;->sSessionCloseListener:Lnet/aihelp/ui/listener/OnAIHelpSessionCloseCallback;

    invoke-interface {v0}, Lnet/aihelp/ui/listener/OnAIHelpSessionCloseCallback;->onAIHelpSessionClosed()V

    .line 234
    :cond_0
    invoke-static {}, Lnet/aihelp/ui/helper/StatisticHelper;->whenAIHelpDestroyed()V

    const/4 v0, 0x0

    .line 235
    sput-object v0, Lnet/aihelp/ui/HostActivity;->sPhoneWindow:Ljava/lang/ref/WeakReference;

    return-void
.end method

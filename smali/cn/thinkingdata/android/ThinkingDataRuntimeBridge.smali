.class public Lcn/thinkingdata/android/ThinkingDataRuntimeBridge;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "ThinkingAnalytics.ThinkingDataRuntimeBridge"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcn/thinkingdata/android/ThinkingAnalyticsSDK;Landroid/view/View;)Z
    .locals 0

    invoke-static {p0, p1}, Lcn/thinkingdata/android/ThinkingDataRuntimeBridge;->isViewIgnored(Lcn/thinkingdata/android/ThinkingAnalyticsSDK;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcn/thinkingdata/android/ThinkingAnalyticsSDK;Ljava/lang/Class;)Z
    .locals 0

    invoke-static {p0, p1}, Lcn/thinkingdata/android/ThinkingDataRuntimeBridge;->isViewIgnored(Lcn/thinkingdata/android/ThinkingAnalyticsSDK;Ljava/lang/Class;)Z

    move-result p0

    return p0
.end method

.method private static fragmentGetUserVisibleHint(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "getUserVisibleHint"

    :try_start_1
    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_0

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return p0

    :catch_0
    :cond_0
    return v0
.end method

.method private static fragmentIsNotHidden(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "isHidden"

    const/4 v3, 0x0

    :try_start_1
    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_0

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    xor-int/2addr p0, v0

    return p0

    :catch_0
    :cond_0
    return v0
.end method

.method private static fragmentIsResumed(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "isResumed"

    :try_start_1
    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_0

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return p0

    :catch_0
    :cond_0
    return v0
.end method

.method private static isNotFragment(Ljava/lang/Object;)Z
    .locals 3

    const-string v0, "androidx.fragment.app.Fragment"

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v2, v1

    :goto_0
    :try_start_1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    nop

    :goto_1
    const/4 v0, 0x1

    if-nez v2, :cond_0

    if-nez v1, :cond_0

    return v0

    :cond_0
    if-eqz v2, :cond_1

    :try_start_2
    invoke-virtual {v2, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    if-eqz v1, :cond_3

    invoke-virtual {v1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz p0, :cond_3

    :cond_2
    const/4 p0, 0x0

    return p0

    :catch_2
    :cond_3
    return v0
.end method

.method private static isViewIgnored(Lcn/thinkingdata/android/ThinkingAnalyticsSDK;Landroid/view/View;)Z
    .locals 4

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->getIgnoredViewTypeList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_1

    return v0

    :cond_2
    const-string v1, "1"

    :try_start_1
    invoke-virtual {p0}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->getToken()Ljava/lang/String;

    move-result-object p0

    sget v2, Lcn/thinkingdata/android/R$id;->thinking_analytics_tag_view_ignored:I

    invoke-static {p0, p1, v2}, Lcn/thinkingdata/android/utils/TDUtils;->getTag(Ljava/lang/String;Landroid/view/View;I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz p0, :cond_3

    return v0

    :cond_3
    const/4 p0, 0x0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method private static isViewIgnored(Lcn/thinkingdata/android/ThinkingAnalyticsSDK;Ljava/lang/Class;)Z
    .locals 2

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->getIgnoredViewTypeList()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_1

    return v0

    :cond_2
    const/4 p0, 0x0

    return p0

    :catch_0
    return v0
.end method

.method public static onAdapterViewItemClick(Landroid/view/View;Landroid/view/View;I)V
    .locals 1

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Landroid/widget/AdapterView;

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Lcn/thinkingdata/android/ThinkingDataRuntimeBridge$6;

    invoke-direct {v0, p1, p0, p2}, Lcn/thinkingdata/android/ThinkingDataRuntimeBridge$6;-><init>(Landroid/view/View;Landroid/view/View;I)V

    invoke-static {v0}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->allInstances(Lcn/thinkingdata/android/ThinkingAnalyticsSDK$InstanceProcessor;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static onDialogClick(Ljava/lang/Object;I)V
    .locals 1

    instance-of v0, p0, Landroid/app/Dialog;

    if-nez v0, :cond_0

    return-void

    :cond_0
    check-cast p0, Landroid/app/Dialog;

    new-instance v0, Lcn/thinkingdata/android/ThinkingDataRuntimeBridge$5;

    invoke-direct {v0, p0, p1}, Lcn/thinkingdata/android/ThinkingDataRuntimeBridge$5;-><init>(Landroid/app/Dialog;I)V

    invoke-static {v0}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->allInstances(Lcn/thinkingdata/android/ThinkingAnalyticsSDK$InstanceProcessor;)V

    return-void
.end method

.method public static onExpandableListViewOnChildClick(Landroid/view/View;Landroid/view/View;II)V
    .locals 7

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    new-instance v6, Lcn/thinkingdata/android/ThinkingDataRuntimeBridge$4;

    move-object v0, v6

    move-object v2, p0

    move-object v3, p1

    move v4, p3

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcn/thinkingdata/android/ThinkingDataRuntimeBridge$4;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/view/View;II)V

    invoke-static {v6}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->allInstances(Lcn/thinkingdata/android/ThinkingAnalyticsSDK$InstanceProcessor;)V

    return-void
.end method

.method public static onExpandableListViewOnGroupClick(Landroid/view/View;Landroid/view/View;I)V
    .locals 1

    const/4 v0, -0x1

    invoke-static {p0, p1, p2, v0}, Lcn/thinkingdata/android/ThinkingDataRuntimeBridge;->onExpandableListViewOnChildClick(Landroid/view/View;Landroid/view/View;II)V

    return-void
.end method

.method public static onFragmentCreateView(Ljava/lang/Object;Landroid/view/View;)V
    .locals 1

    :try_start_0
    invoke-static {p0}, Lcn/thinkingdata/android/ThinkingDataRuntimeBridge;->isNotFragment(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    sget v0, Lcn/thinkingdata/android/R$id;->thinking_analytics_tag_view_fragment_name:I

    invoke-virtual {p1, v0, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-static {p0, p1}, Lcn/thinkingdata/android/ThinkingDataRuntimeBridge;->traverseView(Ljava/lang/String;Landroid/view/ViewGroup;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static onFragmentHiddenChanged(Ljava/lang/Object;Z)V
    .locals 5

    invoke-static {p0}, Lcn/thinkingdata/android/ThinkingDataRuntimeBridge;->isNotFragment(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "getParentFragment"

    const/4 v3, 0x0

    :try_start_1
    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    nop

    :cond_1
    :goto_0
    if-nez p1, :cond_3

    if-nez v0, :cond_2

    invoke-static {p0}, Lcn/thinkingdata/android/ThinkingDataRuntimeBridge;->fragmentIsResumed(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {p0}, Lcn/thinkingdata/android/ThinkingDataRuntimeBridge;->fragmentIsNotHidden(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {p0}, Lcn/thinkingdata/android/ThinkingDataRuntimeBridge;->fragmentIsResumed(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {p0}, Lcn/thinkingdata/android/ThinkingDataRuntimeBridge;->fragmentIsNotHidden(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {p0}, Lcn/thinkingdata/android/ThinkingDataRuntimeBridge;->fragmentGetUserVisibleHint(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    :goto_1
    invoke-static {p0}, Lcn/thinkingdata/android/ThinkingDataRuntimeBridge;->trackFragmentViewScreen(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public static onFragmentOnResume(Ljava/lang/Object;)V
    .locals 5

    invoke-static {p0}, Lcn/thinkingdata/android/ThinkingDataRuntimeBridge;->isNotFragment(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "getParentFragment"

    const/4 v3, 0x0

    :try_start_1
    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    nop

    :cond_1
    :goto_0
    if-nez v0, :cond_2

    invoke-static {p0}, Lcn/thinkingdata/android/ThinkingDataRuntimeBridge;->fragmentIsNotHidden(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p0}, Lcn/thinkingdata/android/ThinkingDataRuntimeBridge;->fragmentGetUserVisibleHint(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_2
    invoke-static {p0}, Lcn/thinkingdata/android/ThinkingDataRuntimeBridge;->fragmentIsNotHidden(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p0}, Lcn/thinkingdata/android/ThinkingDataRuntimeBridge;->fragmentGetUserVisibleHint(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v0}, Lcn/thinkingdata/android/ThinkingDataRuntimeBridge;->fragmentIsNotHidden(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v0}, Lcn/thinkingdata/android/ThinkingDataRuntimeBridge;->fragmentGetUserVisibleHint(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_1
    invoke-static {p0}, Lcn/thinkingdata/android/ThinkingDataRuntimeBridge;->trackFragmentViewScreen(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public static onFragmentSetUserVisibleHint(Ljava/lang/Object;Z)V
    .locals 5

    invoke-static {p0}, Lcn/thinkingdata/android/ThinkingDataRuntimeBridge;->isNotFragment(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "getParentFragment"

    const/4 v3, 0x0

    :try_start_1
    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    nop

    :cond_1
    :goto_0
    if-eqz p1, :cond_3

    if-nez v0, :cond_2

    invoke-static {p0}, Lcn/thinkingdata/android/ThinkingDataRuntimeBridge;->fragmentIsResumed(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {p0}, Lcn/thinkingdata/android/ThinkingDataRuntimeBridge;->fragmentIsNotHidden(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {p0}, Lcn/thinkingdata/android/ThinkingDataRuntimeBridge;->fragmentIsResumed(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {p0}, Lcn/thinkingdata/android/ThinkingDataRuntimeBridge;->fragmentIsNotHidden(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {p0}, Lcn/thinkingdata/android/ThinkingDataRuntimeBridge;->fragmentGetUserVisibleHint(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    :goto_1
    invoke-static {p0}, Lcn/thinkingdata/android/ThinkingDataRuntimeBridge;->trackFragmentViewScreen(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public static onMenuItemSelected(Ljava/lang/Object;Landroid/view/MenuItem;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcn/thinkingdata/android/ThinkingDataRuntimeBridge$7;

    invoke-direct {v0, p0, p1}, Lcn/thinkingdata/android/ThinkingDataRuntimeBridge$7;-><init>(Ljava/lang/Object;Landroid/view/MenuItem;)V

    invoke-static {v0}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->allInstances(Lcn/thinkingdata/android/ThinkingAnalyticsSDK$InstanceProcessor;)V

    return-void
.end method

.method public static onTabHostChanged(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcn/thinkingdata/android/ThinkingDataRuntimeBridge$8;

    invoke-direct {v0, p0}, Lcn/thinkingdata/android/ThinkingDataRuntimeBridge$8;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->allInstances(Lcn/thinkingdata/android/ThinkingAnalyticsSDK$InstanceProcessor;)V

    return-void
.end method

.method public static onViewOnClick(Landroid/view/View;Ljava/lang/Object;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcn/thinkingdata/android/ThinkingDataRuntimeBridge$3;

    invoke-direct {v0, p1, p0}, Lcn/thinkingdata/android/ThinkingDataRuntimeBridge$3;-><init>(Ljava/lang/Object;Landroid/view/View;)V

    invoke-static {v0}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->allInstances(Lcn/thinkingdata/android/ThinkingAnalyticsSDK$InstanceProcessor;)V

    return-void
.end method

.method public static trackEvent(Ljava/lang/Object;)V
    .locals 5

    instance-of v0, p0, Lcn/thinkingdata/android/ThinkingDataTrackEvent;

    if-nez v0, :cond_0

    return-void

    :cond_0
    check-cast p0, Lcn/thinkingdata/android/ThinkingDataTrackEvent;

    invoke-interface {p0}, Lcn/thinkingdata/android/ThinkingDataTrackEvent;->eventName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Lcn/thinkingdata/android/ThinkingDataTrackEvent;->properties()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0}, Lcn/thinkingdata/android/ThinkingDataTrackEvent;->appId()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    :cond_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {v3, v2, v1}, Lcn/thinkingdata/android/utils/TDUtils;->mergeJSONObject(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/util/TimeZone;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "ThinkingAnalytics.ThinkingDataRuntimeBridge"

    const-string v4, "Exception occurred in trackEvent"

    invoke-static {v3, v4}, Lcn/thinkingdata/android/utils/TDLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_2
    :goto_0
    new-instance v1, Lcn/thinkingdata/android/ThinkingDataRuntimeBridge$2;

    invoke-direct {v1, p0, v0, v2}, Lcn/thinkingdata/android/ThinkingDataRuntimeBridge$2;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-static {v1}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->allInstances(Lcn/thinkingdata/android/ThinkingAnalyticsSDK$InstanceProcessor;)V

    return-void
.end method

.method private static trackFragmentViewScreen(Ljava/lang/Object;)V
    .locals 1

    new-instance v0, Lcn/thinkingdata/android/ThinkingDataRuntimeBridge$1;

    invoke-direct {v0, p0}, Lcn/thinkingdata/android/ThinkingDataRuntimeBridge$1;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->allInstances(Lcn/thinkingdata/android/ThinkingAnalyticsSDK$InstanceProcessor;)V

    return-void
.end method

.method private static traverseView(Ljava/lang/String;Landroid/view/ViewGroup;)V
    .locals 4

    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    sget v3, Lcn/thinkingdata/android/R$id;->thinking_analytics_tag_view_fragment_name:I

    invoke-virtual {v2, v3, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-static {p0, v2}, Lcn/thinkingdata/android/ThinkingDataRuntimeBridge;->traverseView(Ljava/lang/String;Landroid/view/ViewGroup;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    return-void
.end method

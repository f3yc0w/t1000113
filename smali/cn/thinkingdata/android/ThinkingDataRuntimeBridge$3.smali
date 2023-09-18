.class final Lcn/thinkingdata/android/ThinkingDataRuntimeBridge$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcn/thinkingdata/android/ThinkingAnalyticsSDK$InstanceProcessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/thinkingdata/android/ThinkingDataRuntimeBridge;->onViewOnClick(Landroid/view/View;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$annotation:Ljava/lang/Object;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Ljava/lang/Object;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcn/thinkingdata/android/ThinkingDataRuntimeBridge$3;->val$annotation:Ljava/lang/Object;

    iput-object p2, p0, Lcn/thinkingdata/android/ThinkingDataRuntimeBridge$3;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Lcn/thinkingdata/android/ThinkingAnalyticsSDK;)V
    .locals 14

    const-string v0, "-"

    const-string v1, "androidx.viewpager.widget.ViewPager"

    const-string v2, "androidx.appcompat.widget.SwitchCompat"

    const-string v3, "ThinkingAnalytics.ThinkingDataRuntimeBridge"

    :try_start_0
    invoke-virtual {p1}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->isAutoTrackEnabled()Z

    move-result v4

    if-nez v4, :cond_0

    return-void

    :cond_0
    sget-object v4, Lcn/thinkingdata/android/ThinkingAnalyticsSDK$AutoTrackEventType;->APP_CLICK:Lcn/thinkingdata/android/ThinkingAnalyticsSDK$AutoTrackEventType;

    invoke-virtual {p1, v4}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->isAutoTrackEventTypeIgnored(Lcn/thinkingdata/android/ThinkingAnalyticsSDK$AutoTrackEventType;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-void

    :cond_1
    iget-object v4, p0, Lcn/thinkingdata/android/ThinkingDataRuntimeBridge$3;->val$annotation:Ljava/lang/Object;

    if-eqz v4, :cond_4

    instance-of v5, v4, Lcn/thinkingdata/android/ThinkingDataIgnoreTrackOnClick;

    if-eqz v5, :cond_3

    check-cast v4, Lcn/thinkingdata/android/ThinkingDataIgnoreTrackOnClick;

    invoke-interface {v4}, Lcn/thinkingdata/android/ThinkingDataIgnoreTrackOnClick;->appId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p1}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->getToken()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4}, Lcn/thinkingdata/android/ThinkingDataIgnoreTrackOnClick;->appId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_2
    return-void

    :cond_3
    instance-of v5, v4, Lcn/thinkingdata/android/ThinkingDataTrackViewOnClick;

    if-eqz v5, :cond_4

    check-cast v4, Lcn/thinkingdata/android/ThinkingDataTrackViewOnClick;

    invoke-interface {v4}, Lcn/thinkingdata/android/ThinkingDataTrackViewOnClick;->appId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {p1}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->getToken()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4}, Lcn/thinkingdata/android/ThinkingDataTrackViewOnClick;->appId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    return-void

    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p1}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->getToken()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcn/thinkingdata/android/ThinkingDataRuntimeBridge$3;->val$view:Landroid/view/View;

    sget v8, Lcn/thinkingdata/android/R$id;->thinking_analytics_tag_view_onclick_timestamp:I

    invoke-static {v6, v7, v8}, Lcn/thinkingdata/android/utils/TDUtils;->getTag(Ljava/lang/String;Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_9

    if-nez v7, :cond_5

    :try_start_1
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    sub-long v6, v4, v6

    const-wide/16 v8, 0x1f4

    cmp-long v10, v6, v8

    if-gez v10, :cond_5

    const-string v6, "This onClick maybe extends from super, IGNORE"

    invoke-static {v3, v6}, Lcn/thinkingdata/android/utils/TDLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v6

    :try_start_2
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    invoke-virtual {p1}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->getToken()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcn/thinkingdata/android/ThinkingDataRuntimeBridge$3;->val$view:Landroid/view/View;

    sget v8, Lcn/thinkingdata/android/R$id;->thinking_analytics_tag_view_onclick_timestamp:I

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v7, v8, v4}, Lcn/thinkingdata/android/utils/TDUtils;->setTag(Ljava/lang/String;Landroid/view/View;ILjava/lang/Object;)V

    iget-object v4, p0, Lcn/thinkingdata/android/ThinkingDataRuntimeBridge$3;->val$view:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcn/thinkingdata/android/utils/TDUtils;->getActivityFromContext(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->isActivityAutoTrackAppClickIgnored(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_6

    return-void

    :cond_6
    iget-object v5, p0, Lcn/thinkingdata/android/ThinkingDataRuntimeBridge$3;->val$view:Landroid/view/View;

    invoke-static {p1, v5}, Lcn/thinkingdata/android/ThinkingDataRuntimeBridge;->access$000(Lcn/thinkingdata/android/ThinkingAnalyticsSDK;Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_7

    return-void

    :cond_7
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    iget-object v6, p0, Lcn/thinkingdata/android/ThinkingDataRuntimeBridge$3;->val$view:Landroid/view/View;

    invoke-static {v4, v6, v5}, Lcn/thinkingdata/android/utils/TDUtils;->addViewPathProperties(Landroid/app/Activity;Landroid/view/View;Lorg/json/JSONObject;)V

    iget-object v6, p0, Lcn/thinkingdata/android/ThinkingDataRuntimeBridge$3;->val$view:Landroid/view/View;

    invoke-virtual {p1}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->getToken()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcn/thinkingdata/android/utils/TDUtils;->getViewId(Landroid/view/View;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_8

    const-string v7, "#element_id"

    invoke-virtual {v5, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_9

    :cond_8
    if-eqz v4, :cond_9

    const-string v6, "#screen_name"

    :try_start_3
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {v4}, Lcn/thinkingdata/android/utils/TDUtils;->getActivityTitle(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_9

    const-string v7, "#title"

    invoke-virtual {v5, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_9

    :cond_9
    const/4 v6, 0x0

    :try_start_4
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    :catch_1
    move-object v7, v6

    :goto_0
    if-nez v7, :cond_a

    :try_start_5
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    :cond_a
    :try_start_6
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_1

    :catch_3
    move-object v2, v6

    :goto_1
    if-nez v2, :cond_b

    :try_start_7
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    :catch_4
    :cond_b
    :try_start_8
    iget-object v1, p0, Lcn/thinkingdata/android/ThinkingDataRuntimeBridge$3;->val$view:Landroid/view/View;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    iget-object v8, p0, Lcn/thinkingdata/android/ThinkingDataRuntimeBridge$3;->val$view:Landroid/view/View;

    instance-of v9, v8, Landroid/widget/CheckBox;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_9

    const-string v10, "Spinner"

    if-eqz v9, :cond_c

    :try_start_9
    check-cast v8, Landroid/widget/CheckBox;

    invoke-virtual {v8}, Landroid/widget/CheckBox;->getText()Ljava/lang/CharSequence;

    move-result-object v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    const-string v1, "CheckBox"

    :goto_2
    move-object v6, v0

    goto/16 :goto_a

    :cond_c
    const/4 v9, 0x0

    if-eqz v7, :cond_e

    :try_start_a
    invoke-virtual {v7, v8}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    iget-object v0, p0, Lcn/thinkingdata/android/ThinkingDataRuntimeBridge$3;->val$view:Landroid/view/View;

    check-cast v0, Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcn/thinkingdata/android/ThinkingDataRuntimeBridge$3;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_9

    const-string v1, "getTextOn"

    :try_start_b
    new-array v2, v9, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    goto :goto_3

    :cond_d
    iget-object v0, p0, Lcn/thinkingdata/android/ThinkingDataRuntimeBridge$3;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_9

    const-string v1, "getTextOff"

    :try_start_c
    new-array v2, v9, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    :goto_3
    iget-object v1, p0, Lcn/thinkingdata/android/ThinkingDataRuntimeBridge$3;->val$view:Landroid/view/View;

    new-array v2, v9, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_9

    const-string v1, "SwitchCompat"

    goto :goto_2

    :cond_e
    const-string v7, "#element_position"

    const/4 v8, 0x1

    if-eqz v2, :cond_f

    :try_start_d
    iget-object v11, p0, Lcn/thinkingdata/android/ThinkingDataRuntimeBridge$3;->val$view:Landroid/view/View;

    invoke-virtual {v2, v11}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_9

    if-eqz v2, :cond_f

    const-string v1, "ViewPager"

    :try_start_e
    iget-object v0, p0, Lcn/thinkingdata/android/ThinkingDataRuntimeBridge$3;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_5

    const-string v2, "getAdapter"

    :try_start_f
    new-array v4, v9, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_22

    iget-object v2, p0, Lcn/thinkingdata/android/ThinkingDataRuntimeBridge$3;->val$view:Landroid/view/View;

    new-array v4, v9, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lcn/thinkingdata/android/ThinkingDataRuntimeBridge$3;->val$view:Landroid/view/View;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_5

    const-string v4, "getCurrentItem"

    :try_start_10
    new-array v10, v9, [Ljava/lang/Class;

    invoke-virtual {v2, v4, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    if-eqz v2, :cond_22

    iget-object v4, p0, Lcn/thinkingdata/android/ThinkingDataRuntimeBridge$3;->val$view:Landroid/view/View;

    new-array v10, v9, [Ljava/lang/Object;

    invoke-virtual {v2, v4, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget-object v4, Ljava/util/Locale;->CHINA:Ljava/util/Locale;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_5

    const-string v10, "%d"

    :try_start_11
    new-array v11, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v9

    invoke-static {v4, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v7, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_5

    const-string v7, "getPageTitle"

    :try_start_12
    new-array v10, v8, [Ljava/lang/Class;

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v10, v9

    invoke-virtual {v4, v7, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    if-eqz v4, :cond_22

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v9

    invoke-virtual {v4, v0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_5

    goto/16 :goto_2

    :catch_5
    move-exception v0

    :goto_4
    :try_start_13
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_a

    :cond_f
    iget-object v2, p0, Lcn/thinkingdata/android/ThinkingDataRuntimeBridge$3;->val$view:Landroid/view/View;

    instance-of v11, v2, Landroid/widget/Switch;

    if-eqz v11, :cond_12

    check-cast v2, Landroid/widget/Switch;

    invoke-virtual {v2}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {v2}, Landroid/widget/Switch;->getTextOn()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_5

    :cond_10
    invoke-virtual {v2}, Landroid/widget/Switch;->getTextOff()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual {v2}, Landroid/widget/Switch;->getText()Ljava/lang/CharSequence;

    move-result-object v0
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_9

    :cond_11
    move-object v6, v0

    const-string v1, "SwitchButton"

    goto/16 :goto_a

    :cond_12
    :try_start_14
    instance-of v11, v2, Landroid/widget/RadioGroup;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_9

    if-eqz v11, :cond_13

    const-string v1, "RadioGroup"

    :try_start_15
    check-cast v2, Landroid/widget/RadioGroup;

    invoke-virtual {v2}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_9

    if-eqz v4, :cond_22

    :try_start_16
    invoke-virtual {v4, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    if-eqz v0, :cond_22

    invoke-virtual {v0}, Landroid/widget/RadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_22

    invoke-virtual {v0}, Landroid/widget/RadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_6

    goto/16 :goto_2

    :catch_6
    move-exception v0

    goto :goto_4

    :cond_13
    :try_start_17
    instance-of v4, v2, Landroid/widget/RadioButton;

    if-eqz v4, :cond_14

    check-cast v2, Landroid/widget/RadioButton;

    invoke-virtual {v2}, Landroid/widget/RadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object v0
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_9

    const-string v1, "RadioButton"

    goto/16 :goto_2

    :cond_14
    :try_start_18
    instance-of v4, v2, Landroid/widget/ToggleButton;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_9

    const-string v11, "ToggleButton"

    if-eqz v4, :cond_16

    :try_start_19
    check-cast v2, Landroid/widget/ToggleButton;

    invoke-virtual {v2}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {v2}, Landroid/widget/ToggleButton;->getTextOn()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_6

    :cond_15
    invoke-virtual {v2}, Landroid/widget/ToggleButton;->getTextOff()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_6
    move-object v6, v0

    move-object v1, v11

    goto/16 :goto_a

    :cond_16
    instance-of v4, v2, Landroid/widget/Button;

    if-eqz v4, :cond_17

    check-cast v2, Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_9

    const-string v1, "Button"

    goto/16 :goto_2

    :cond_17
    :try_start_1a
    instance-of v4, v2, Landroid/widget/CheckedTextView;

    if-eqz v4, :cond_18

    check-cast v2, Landroid/widget/CheckedTextView;

    invoke-virtual {v2}, Landroid/widget/CheckedTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_9

    const-string v1, "CheckedTextView"

    goto/16 :goto_2

    :cond_18
    :try_start_1b
    instance-of v4, v2, Landroid/widget/TextView;

    if-eqz v4, :cond_19

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_9

    const-string v1, "TextView"

    goto/16 :goto_2

    :cond_19
    :try_start_1c
    instance-of v4, v2, Landroid/widget/ImageButton;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_9

    if-eqz v4, :cond_1a

    const-string v1, "ImageButton"

    :try_start_1d
    check-cast v2, Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_22

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_7

    :cond_1a
    instance-of v4, v2, Landroid/widget/ImageView;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_9

    if-eqz v4, :cond_1b

    const-string v1, "ImageView"

    :try_start_1e
    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_22

    invoke-virtual {v2}, Landroid/widget/ImageView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_1b
    instance-of v4, v2, Landroid/widget/RatingBar;

    if-eqz v4, :cond_1c

    check-cast v2, Landroid/widget/RatingBar;

    invoke-virtual {v2}, Landroid/widget/RatingBar;->getRating()F

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_9

    const-string v1, "RatingBar"

    goto/16 :goto_2

    :cond_1c
    :try_start_1f
    instance-of v4, v2, Landroid/widget/SeekBar;

    if-eqz v4, :cond_1d

    check-cast v2, Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_9

    const-string v1, "SeekBar"

    goto/16 :goto_2

    :cond_1d
    :try_start_20
    instance-of v4, v2, Landroid/widget/Spinner;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_9

    if-eqz v4, :cond_1f

    :try_start_21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/thinkingdata/android/ThinkingDataRuntimeBridge$3;->val$view:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-static {v0, v1}, Lcn/thinkingdata/android/utils/TDUtils;->traverseView(Ljava/lang/StringBuilder;Landroid/view/ViewGroup;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1e

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int/2addr v1, v8

    invoke-virtual {v0, v9, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    :cond_1e
    iget-object v0, p0, Lcn/thinkingdata/android/ThinkingDataRuntimeBridge$3;->val$view:Landroid/view/View;

    check-cast v0, Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    invoke-virtual {v5, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_7

    goto :goto_8

    :catch_7
    move-exception v0

    :try_start_22
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_8
    move-object v1, v10

    goto/16 :goto_a

    :cond_1f
    instance-of v4, v2, Landroid/widget/TimePicker;

    if-eqz v4, :cond_20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/thinkingdata/android/ThinkingDataRuntimeBridge$3;->val$view:Landroid/view/View;

    check-cast v1, Landroid/widget/TimePicker;

    invoke-virtual {v1}, Landroid/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/thinkingdata/android/ThinkingDataRuntimeBridge$3;->val$view:Landroid/view/View;

    check-cast v1, Landroid/widget/TimePicker;

    invoke-virtual {v1}, Landroid/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_9

    const-string v1, "TimePicker"

    goto :goto_9

    :cond_20
    :try_start_23
    instance-of v4, v2, Landroid/widget/DatePicker;

    if-eqz v4, :cond_21

    check-cast v2, Landroid/widget/DatePicker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/widget/DatePicker;->getYear()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/widget/DatePicker;->getMonth()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/widget/DatePicker;->getDayOfMonth()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_9

    const-string v0, "DatePicker"

    move-object v13, v1

    move-object v1, v0

    move-object v0, v13

    :goto_9
    :try_start_24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_21
    instance-of v0, v2, Landroid/view/ViewGroup;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_9

    if-eqz v0, :cond_22

    :try_start_25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/thinkingdata/android/ThinkingDataRuntimeBridge$3;->val$view:Landroid/view/View;

    check-cast v2, Landroid/view/ViewGroup;

    invoke-static {v0, v2}, Lcn/thinkingdata/android/utils/TDUtils;->traverseView(Ljava/lang/StringBuilder;Landroid/view/ViewGroup;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_22

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sub-int/2addr v2, v8

    invoke-virtual {v0, v9, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_8

    goto/16 :goto_2

    :catch_8
    move-exception v0

    goto/16 :goto_4

    :cond_22
    :goto_a
    :try_start_26
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_9

    if-nez v0, :cond_23

    const-string v0, "#element_content"

    :try_start_27
    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_23
    const-string v0, "#element_type"

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcn/thinkingdata/android/ThinkingDataRuntimeBridge$3;->val$view:Landroid/view/View;

    invoke-static {v0, v5}, Lcn/thinkingdata/android/utils/TDUtils;->getFragmentNameFromView(Landroid/view/View;Lorg/json/JSONObject;)V

    invoke-virtual {p1}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->getToken()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/thinkingdata/android/ThinkingDataRuntimeBridge$3;->val$view:Landroid/view/View;

    sget v2, Lcn/thinkingdata/android/R$id;->thinking_analytics_tag_view_properties:I

    invoke-static {v0, v1, v2}, Lcn/thinkingdata/android/utils/TDUtils;->getTag(Ljava/lang/String;Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    if-eqz v0, :cond_24

    iget-object v1, p1, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mConfig:Lcn/thinkingdata/android/TDConfig;

    invoke-virtual {v1}, Lcn/thinkingdata/android/TDConfig;->getDefaultTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v0, v5, v1}, Lcn/thinkingdata/android/utils/TDUtils;->mergeJSONObject(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/util/TimeZone;)V

    :cond_24
    const-string/jumbo v0, "ta_app_click"

    invoke-virtual {p1, v0, v5}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->autoTrack(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_9

    goto :goto_b

    :catch_9
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onViewClickMethod error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcn/thinkingdata/android/utils/TDLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_b
    return-void
.end method

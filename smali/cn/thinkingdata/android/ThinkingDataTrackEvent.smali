.class public interface abstract annotation Lcn/thinkingdata/android/ThinkingDataTrackEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcn/thinkingdata/android/ThinkingDataTrackEvent;
        appId = ""
        eventName = ""
        properties = "{}"
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract appId()Ljava/lang/String;
.end method

.method public abstract eventName()Ljava/lang/String;
.end method

.method public abstract properties()Ljava/lang/String;
.end method
.class public abstract Lrx/plugins/RxJavaCompletableExecutionHook;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lrx/annotations/Experimental;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Lrx/Completable$OnSubscribe;)Lrx/Completable$OnSubscribe;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 55
    return-object p1
.end method

.method public onLift(Lrx/Completable$Operator;)Lrx/Completable$Operator;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 106
    return-object p1
.end method

.method public onSubscribeError(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 89
    return-object p1
.end method

.method public onSubscribeStart(Lrx/Completable;Lrx/Completable$OnSubscribe;)Lrx/Completable$OnSubscribe;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 73
    return-object p2
.end method

.class public Lnet/hockeyapp/android/metrics/MetricsManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/hockeyapp/android/metrics/MetricsManager$a;
    }
.end annotation


# static fields
.field protected static final ACTIVITY_COUNT:Ljava/util/concurrent/atomic/AtomicInteger;

.field protected static final LAST_BACKGROUND:Ljava/util/concurrent/atomic/AtomicLong;

.field private static a:Z

.field private static final b:Ljava/lang/Integer;

.field private static final c:Ljava/lang/Object;

.field private static volatile d:Lnet/hockeyapp/android/metrics/MetricsManager;

.field private static e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Application;",
            ">;"
        }
    .end annotation
.end field

.field private static f:Lnet/hockeyapp/android/metrics/Sender;

.field private static g:Lnet/hockeyapp/android/metrics/a;

.field private static h:Lnet/hockeyapp/android/metrics/c;


# instance fields
.field private volatile i:Z

.field private j:Lnet/hockeyapp/android/metrics/MetricsManager$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 51
    const/4 v0, 0x1

    sput-boolean v0, Lnet/hockeyapp/android/metrics/MetricsManager;->a:Z

    .line 56
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lnet/hockeyapp/android/metrics/MetricsManager;->ACTIVITY_COUNT:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 61
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Lnet/hockeyapp/android/metrics/MetricsManager;->f()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lnet/hockeyapp/android/metrics/MetricsManager;->LAST_BACKGROUND:Ljava/util/concurrent/atomic/AtomicLong;

    .line 66
    const/16 v0, 0x4e20

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lnet/hockeyapp/android/metrics/MetricsManager;->b:Ljava/lang/Integer;

    .line 71
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lnet/hockeyapp/android/metrics/MetricsManager;->c:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lnet/hockeyapp/android/metrics/c;Lnet/hockeyapp/android/metrics/Sender;Lnet/hockeyapp/android/metrics/b;Lnet/hockeyapp/android/metrics/a;)V
    .locals 2

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    sput-object p2, Lnet/hockeyapp/android/metrics/MetricsManager;->h:Lnet/hockeyapp/android/metrics/c;

    .line 121
    if-nez p3, :cond_0

    .line 122
    new-instance p3, Lnet/hockeyapp/android/metrics/Sender;

    invoke-direct {p3}, Lnet/hockeyapp/android/metrics/Sender;-><init>()V

    .line 124
    :cond_0
    sput-object p3, Lnet/hockeyapp/android/metrics/MetricsManager;->f:Lnet/hockeyapp/android/metrics/Sender;

    .line 126
    if-nez p4, :cond_2

    .line 127
    new-instance p4, Lnet/hockeyapp/android/metrics/b;

    invoke-direct {p4, p1, p3}, Lnet/hockeyapp/android/metrics/b;-><init>(Landroid/content/Context;Lnet/hockeyapp/android/metrics/Sender;)V

    .line 133
    :goto_0
    sget-object v0, Lnet/hockeyapp/android/metrics/MetricsManager;->f:Lnet/hockeyapp/android/metrics/Sender;

    invoke-virtual {v0, p4}, Lnet/hockeyapp/android/metrics/Sender;->setPersistence(Lnet/hockeyapp/android/metrics/b;)V

    .line 136
    if-nez p5, :cond_3

    .line 137
    new-instance v0, Lnet/hockeyapp/android/metrics/a;

    sget-object v1, Lnet/hockeyapp/android/metrics/MetricsManager;->h:Lnet/hockeyapp/android/metrics/c;

    invoke-direct {v0, v1, p4}, Lnet/hockeyapp/android/metrics/a;-><init>(Lnet/hockeyapp/android/metrics/c;Lnet/hockeyapp/android/metrics/b;)V

    sput-object v0, Lnet/hockeyapp/android/metrics/MetricsManager;->g:Lnet/hockeyapp/android/metrics/a;

    .line 143
    :goto_1
    invoke-virtual {p4}, Lnet/hockeyapp/android/metrics/b;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 144
    invoke-virtual {p4}, Lnet/hockeyapp/android/metrics/b;->e()Lnet/hockeyapp/android/metrics/Sender;

    move-result-object v0

    invoke-virtual {v0}, Lnet/hockeyapp/android/metrics/Sender;->triggerSending()V

    .line 146
    :cond_1
    return-void

    .line 129
    :cond_2
    invoke-virtual {p4, p3}, Lnet/hockeyapp/android/metrics/b;->a(Lnet/hockeyapp/android/metrics/Sender;)V

    goto :goto_0

    .line 139
    :cond_3
    sput-object p5, Lnet/hockeyapp/android/metrics/MetricsManager;->g:Lnet/hockeyapp/android/metrics/a;

    goto :goto_1
.end method

.method static synthetic a()Lnet/hockeyapp/android/metrics/a;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lnet/hockeyapp/android/metrics/MetricsManager;->g:Lnet/hockeyapp/android/metrics/a;

    return-object v0
.end method

.method static synthetic a(Lnet/hockeyapp/android/metrics/MetricsManager;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lnet/hockeyapp/android/metrics/MetricsManager;->g()V

    return-void
.end method

.method private a(Lnet/hockeyapp/android/metrics/model/SessionState;)V
    .locals 2

    .prologue
    .line 429
    :try_start_0
    new-instance v0, Lnet/hockeyapp/android/metrics/MetricsManager$2;

    invoke-direct {v0, p0, p1}, Lnet/hockeyapp/android/metrics/MetricsManager$2;-><init>(Lnet/hockeyapp/android/metrics/MetricsManager;Lnet/hockeyapp/android/metrics/model/SessionState;)V

    invoke-static {v0}, Lnet/hockeyapp/android/utils/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 443
    :goto_0
    return-void

    .line 439
    :catch_0
    move-exception v0

    .line 440
    const-string v1, "Could not track session state. Executor rejected async task."

    invoke-static {v1, v0}, Lnet/hockeyapp/android/utils/HockeyLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static a(Z)V
    .locals 1

    .prologue
    .line 271
    sput-boolean p0, Lnet/hockeyapp/android/metrics/MetricsManager;->a:Z

    .line 272
    sget-boolean v0, Lnet/hockeyapp/android/metrics/MetricsManager;->a:Z

    if-eqz v0, :cond_0

    .line 273
    sget-object v0, Lnet/hockeyapp/android/metrics/MetricsManager;->d:Lnet/hockeyapp/android/metrics/MetricsManager;

    invoke-direct {v0}, Lnet/hockeyapp/android/metrics/MetricsManager;->c()V

    .line 277
    :goto_0
    return-void

    .line 275
    :cond_0
    sget-object v0, Lnet/hockeyapp/android/metrics/MetricsManager;->d:Lnet/hockeyapp/android/metrics/MetricsManager;

    invoke-direct {v0}, Lnet/hockeyapp/android/metrics/MetricsManager;->d()V

    goto :goto_0
.end method

.method static synthetic b()J
    .locals 2

    .prologue
    .line 42
    invoke-static {}, Lnet/hockeyapp/android/metrics/MetricsManager;->f()J

    move-result-wide v0

    return-wide v0
.end method

.method private c()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 315
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/MetricsManager;->j:Lnet/hockeyapp/android/metrics/MetricsManager$a;

    if-nez v0, :cond_0

    .line 316
    new-instance v0, Lnet/hockeyapp/android/metrics/MetricsManager$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lnet/hockeyapp/android/metrics/MetricsManager$a;-><init>(Lnet/hockeyapp/android/metrics/MetricsManager;Lnet/hockeyapp/android/metrics/MetricsManager$1;)V

    iput-object v0, p0, Lnet/hockeyapp/android/metrics/MetricsManager;->j:Lnet/hockeyapp/android/metrics/MetricsManager$a;

    .line 318
    :cond_0
    invoke-static {}, Lnet/hockeyapp/android/metrics/MetricsManager;->e()Landroid/app/Application;

    move-result-object v0

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/MetricsManager;->j:Lnet/hockeyapp/android/metrics/MetricsManager$a;

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 319
    return-void
.end method

.method protected static createData(Lnet/hockeyapp/android/metrics/model/TelemetryData;)Lnet/hockeyapp/android/metrics/model/Data;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/hockeyapp/android/metrics/model/TelemetryData;",
            ")",
            "Lnet/hockeyapp/android/metrics/model/Data",
            "<",
            "Lnet/hockeyapp/android/metrics/model/Domain;",
            ">;"
        }
    .end annotation

    .prologue
    .line 452
    new-instance v0, Lnet/hockeyapp/android/metrics/model/Data;

    invoke-direct {v0}, Lnet/hockeyapp/android/metrics/model/Data;-><init>()V

    .line 453
    invoke-virtual {v0, p0}, Lnet/hockeyapp/android/metrics/model/Data;->setBaseData(Lnet/hockeyapp/android/metrics/model/Domain;)V

    .line 454
    invoke-virtual {p0}, Lnet/hockeyapp/android/metrics/model/TelemetryData;->getBaseType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/hockeyapp/android/metrics/model/Data;->setBaseType(Ljava/lang/String;)V

    .line 455
    invoke-virtual {p0}, Lnet/hockeyapp/android/metrics/model/TelemetryData;->getEnvelopeName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnet/hockeyapp/android/metrics/model/Data;->QualifiedName:Ljava/lang/String;

    .line 457
    return-object v0
.end method

.method private d()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 323
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/MetricsManager;->j:Lnet/hockeyapp/android/metrics/MetricsManager$a;

    if-nez v0, :cond_0

    .line 328
    :goto_0
    return-void

    .line 326
    :cond_0
    invoke-static {}, Lnet/hockeyapp/android/metrics/MetricsManager;->e()Landroid/app/Application;

    move-result-object v0

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/MetricsManager;->j:Lnet/hockeyapp/android/metrics/MetricsManager$a;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 327
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/hockeyapp/android/metrics/MetricsManager;->j:Lnet/hockeyapp/android/metrics/MetricsManager$a;

    goto :goto_0
.end method

.method public static disableUserMetrics()V
    .locals 1

    .prologue
    .line 255
    const/4 v0, 0x0

    invoke-static {v0}, Lnet/hockeyapp/android/metrics/MetricsManager;->a(Z)V

    .line 256
    return-void
.end method

.method private static e()Landroid/app/Application;
    .locals 2

    .prologue
    .line 349
    const/4 v0, 0x0

    .line 350
    sget-object v1, Lnet/hockeyapp/android/metrics/MetricsManager;->e:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 351
    sget-object v0, Lnet/hockeyapp/android/metrics/MetricsManager;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    .line 354
    :cond_0
    return-object v0
.end method

.method public static enableUserMetrics()V
    .locals 1

    .prologue
    .line 263
    const/4 v0, 0x1

    invoke-static {v0}, Lnet/hockeyapp/android/metrics/MetricsManager;->a(Z)V

    .line 264
    return-void
.end method

.method private static f()J
    .locals 2

    .prologue
    .line 363
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    return-wide v0
.end method

.method private g()V
    .locals 8

    .prologue
    .line 393
    sget-object v0, Lnet/hockeyapp/android/metrics/MetricsManager;->ACTIVITY_COUNT:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    .line 394
    if-nez v0, :cond_2

    .line 395
    invoke-static {}, Lnet/hockeyapp/android/metrics/MetricsManager;->sessionTrackingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 396
    const-string v0, "HA-MetricsManager"

    const-string v1, "Starting & tracking session"

    invoke-static {v0, v1}, Lnet/hockeyapp/android/utils/HockeyLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    invoke-virtual {p0}, Lnet/hockeyapp/android/metrics/MetricsManager;->renewSession()V

    .line 414
    :cond_0
    :goto_0
    return-void

    .line 399
    :cond_1
    const-string v0, "HA-MetricsManager"

    const-string v1, "Session management disabled by the developer"

    invoke-static {v0, v1}, Lnet/hockeyapp/android/utils/HockeyLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 404
    :cond_2
    invoke-static {}, Lnet/hockeyapp/android/metrics/MetricsManager;->f()J

    move-result-wide v2

    .line 405
    sget-object v0, Lnet/hockeyapp/android/metrics/MetricsManager;->LAST_BACKGROUND:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Lnet/hockeyapp/android/metrics/MetricsManager;->f()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v4

    .line 406
    sub-long v0, v2, v4

    sget-object v6, Lnet/hockeyapp/android/metrics/MetricsManager;->b:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-long v6, v6

    cmp-long v0, v0, v6

    if-ltz v0, :cond_3

    const/4 v0, 0x1

    .line 407
    :goto_1
    const-string v1, "HA-MetricsManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Checking if we have to renew a session, time difference is: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long/2addr v2, v4

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/hockeyapp/android/utils/HockeyLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    if-eqz v0, :cond_0

    invoke-static {}, Lnet/hockeyapp/android/metrics/MetricsManager;->sessionTrackingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 410
    const-string v0, "HA-MetricsManager"

    const-string v1, "Renewing session"

    invoke-static {v0, v1}, Lnet/hockeyapp/android/utils/HockeyLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    invoke-virtual {p0}, Lnet/hockeyapp/android/metrics/MetricsManager;->renewSession()V

    goto :goto_0

    .line 406
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected static getChannel()Lnet/hockeyapp/android/metrics/a;
    .locals 1

    .prologue
    .line 367
    sget-object v0, Lnet/hockeyapp/android/metrics/MetricsManager;->g:Lnet/hockeyapp/android/metrics/a;

    return-object v0
.end method

.method protected static getInstance()Lnet/hockeyapp/android/metrics/MetricsManager;
    .locals 1

    .prologue
    .line 383
    sget-object v0, Lnet/hockeyapp/android/metrics/MetricsManager;->d:Lnet/hockeyapp/android/metrics/MetricsManager;

    return-object v0
.end method

.method protected static getSender()Lnet/hockeyapp/android/metrics/Sender;
    .locals 1

    .prologue
    .line 375
    sget-object v0, Lnet/hockeyapp/android/metrics/MetricsManager;->f:Lnet/hockeyapp/android/metrics/Sender;

    return-object v0
.end method

.method public static isUserMetricsEnabled()Z
    .locals 1

    .prologue
    .line 267
    sget-boolean v0, Lnet/hockeyapp/android/metrics/MetricsManager;->a:Z

    return v0
.end method

.method public static register(Landroid/app/Application;)V
    .locals 2

    .prologue
    .line 156
    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lnet/hockeyapp/android/utils/Util;->getAppIdentifier(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 157
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 158
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HockeyApp app identifier was not configured correctly in manifest or build configuration."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_1
    invoke-static {p0, v0}, Lnet/hockeyapp/android/metrics/MetricsManager;->register(Landroid/app/Application;Ljava/lang/String;)V

    .line 161
    return-void
.end method

.method public static register(Landroid/app/Application;Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 172
    invoke-static {p0, p1, v0, v0, v0}, Lnet/hockeyapp/android/metrics/MetricsManager;->register(Landroid/app/Application;Ljava/lang/String;Lnet/hockeyapp/android/metrics/Sender;Lnet/hockeyapp/android/metrics/b;Lnet/hockeyapp/android/metrics/a;)V

    .line 173
    return-void
.end method

.method protected static register(Landroid/app/Application;Ljava/lang/String;Lnet/hockeyapp/android/metrics/Sender;Lnet/hockeyapp/android/metrics/b;Lnet/hockeyapp/android/metrics/a;)V
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 221
    sget-object v0, Lnet/hockeyapp/android/metrics/MetricsManager;->d:Lnet/hockeyapp/android/metrics/MetricsManager;

    .line 222
    if-nez v0, :cond_1

    .line 223
    sget-object v7, Lnet/hockeyapp/android/metrics/MetricsManager;->c:Ljava/lang/Object;

    monitor-enter v7

    .line 224
    :try_start_0
    sget-object v0, Lnet/hockeyapp/android/metrics/MetricsManager;->d:Lnet/hockeyapp/android/metrics/MetricsManager;

    .line 225
    if-nez v0, :cond_3

    .line 226
    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lnet/hockeyapp/android/Constants;->loadFromContext(Landroid/content/Context;)V

    .line 227
    new-instance v0, Lnet/hockeyapp/android/metrics/MetricsManager;

    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lnet/hockeyapp/android/metrics/c;

    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, p1}, Lnet/hockeyapp/android/metrics/c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lnet/hockeyapp/android/metrics/MetricsManager;-><init>(Landroid/content/Context;Lnet/hockeyapp/android/metrics/c;Lnet/hockeyapp/android/metrics/Sender;Lnet/hockeyapp/android/metrics/b;Lnet/hockeyapp/android/metrics/a;)V

    .line 229
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lnet/hockeyapp/android/metrics/MetricsManager;->e:Ljava/lang/ref/WeakReference;

    move-object v1, v0

    .line 231
    :goto_0
    invoke-static {}, Lnet/hockeyapp/android/utils/Util;->sessionTrackingSupported()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, v1, Lnet/hockeyapp/android/metrics/MetricsManager;->i:Z

    .line 232
    sput-object v1, Lnet/hockeyapp/android/metrics/MetricsManager;->d:Lnet/hockeyapp/android/metrics/MetricsManager;

    .line 233
    iget-boolean v0, v1, Lnet/hockeyapp/android/metrics/MetricsManager;->i:Z

    if-nez v0, :cond_0

    .line 234
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lnet/hockeyapp/android/metrics/MetricsManager;->setSessionTrackingDisabled(Ljava/lang/Boolean;)V

    .line 237
    :cond_0
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    new-instance v0, Lnet/hockeyapp/android/metrics/MetricsManager$1;

    invoke-direct {v0}, Lnet/hockeyapp/android/metrics/MetricsManager$1;-><init>()V

    invoke-static {v0}, Lnet/hockeyapp/android/PrivateEventManager;->addEventListener(Lnet/hockeyapp/android/PrivateEventManager$HockeyEventListener;)V

    .line 248
    :cond_1
    return-void

    :cond_2
    move v0, v6

    .line 231
    goto :goto_1

    .line 237
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_3
    move-object v1, v0

    goto :goto_0
.end method

.method public static register(Landroid/content/Context;Landroid/app/Application;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 186
    invoke-static {p0}, Lnet/hockeyapp/android/utils/Util;->getAppIdentifier(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 187
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 188
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HockeyApp app identifier was not configured correctly in manifest or build configuration."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :cond_1
    invoke-static {p0, p1, v0}, Lnet/hockeyapp/android/metrics/MetricsManager;->register(Landroid/content/Context;Landroid/app/Application;Ljava/lang/String;)V

    .line 191
    return-void
.end method

.method public static register(Landroid/content/Context;Landroid/app/Application;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 205
    invoke-static {p1, p2, v0, v0, v0}, Lnet/hockeyapp/android/metrics/MetricsManager;->register(Landroid/app/Application;Ljava/lang/String;Lnet/hockeyapp/android/metrics/Sender;Lnet/hockeyapp/android/metrics/b;Lnet/hockeyapp/android/metrics/a;)V

    .line 206
    return-void
.end method

.method public static sessionTrackingEnabled()Z
    .locals 1

    .prologue
    .line 285
    invoke-static {}, Lnet/hockeyapp/android/metrics/MetricsManager;->isUserMetricsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lnet/hockeyapp/android/metrics/MetricsManager;->d:Lnet/hockeyapp/android/metrics/MetricsManager;

    iget-boolean v0, v0, Lnet/hockeyapp/android/metrics/MetricsManager;->i:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setCustomServerURL(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 336
    sget-object v0, Lnet/hockeyapp/android/metrics/MetricsManager;->f:Lnet/hockeyapp/android/metrics/Sender;

    if-eqz v0, :cond_0

    .line 337
    sget-object v0, Lnet/hockeyapp/android/metrics/MetricsManager;->f:Lnet/hockeyapp/android/metrics/Sender;

    invoke-virtual {v0, p0}, Lnet/hockeyapp/android/metrics/Sender;->setCustomServerURL(Ljava/lang/String;)V

    .line 341
    :goto_0
    return-void

    .line 339
    :cond_0
    const-string v0, "HA-MetricsManager"

    const-string v1, "HockeyApp couldn\'t set the custom server url. Please register(...) the MetricsManager before setting the server URL."

    invoke-static {v0, v1}, Lnet/hockeyapp/android/utils/HockeyLog;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected static setSender(Lnet/hockeyapp/android/metrics/Sender;)V
    .locals 0

    .prologue
    .line 379
    sput-object p0, Lnet/hockeyapp/android/metrics/MetricsManager;->f:Lnet/hockeyapp/android/metrics/Sender;

    .line 380
    return-void
.end method

.method public static setSessionTrackingDisabled(Ljava/lang/Boolean;)V
    .locals 3

    .prologue
    .line 294
    sget-object v0, Lnet/hockeyapp/android/metrics/MetricsManager;->d:Lnet/hockeyapp/android/metrics/MetricsManager;

    if-eqz v0, :cond_0

    invoke-static {}, Lnet/hockeyapp/android/metrics/MetricsManager;->isUserMetricsEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 295
    :cond_0
    const-string v0, "HA-MetricsManager"

    const-string v1, "MetricsManager hasn\'t been registered or User Metrics has been disabled. No User Metrics will be collected!"

    invoke-static {v0, v1}, Lnet/hockeyapp/android/utils/HockeyLog;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    :goto_0
    return-void

    .line 297
    :cond_1
    sget-object v1, Lnet/hockeyapp/android/metrics/MetricsManager;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 298
    :try_start_0
    invoke-static {}, Lnet/hockeyapp/android/utils/Util;->sessionTrackingSupported()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 299
    sget-object v0, Lnet/hockeyapp/android/metrics/MetricsManager;->d:Lnet/hockeyapp/android/metrics/MetricsManager;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v0, Lnet/hockeyapp/android/metrics/MetricsManager;->i:Z

    .line 302
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 303
    sget-object v0, Lnet/hockeyapp/android/metrics/MetricsManager;->d:Lnet/hockeyapp/android/metrics/MetricsManager;

    invoke-direct {v0}, Lnet/hockeyapp/android/metrics/MetricsManager;->c()V

    .line 309
    :cond_2
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 306
    :cond_3
    :try_start_1
    sget-object v0, Lnet/hockeyapp/android/metrics/MetricsManager;->d:Lnet/hockeyapp/android/metrics/MetricsManager;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lnet/hockeyapp/android/metrics/MetricsManager;->i:Z

    .line 307
    sget-object v0, Lnet/hockeyapp/android/metrics/MetricsManager;->d:Lnet/hockeyapp/android/metrics/MetricsManager;

    invoke-direct {v0}, Lnet/hockeyapp/android/metrics/MetricsManager;->d()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public static trackEvent(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 461
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lnet/hockeyapp/android/metrics/MetricsManager;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 462
    return-void
.end method

.method public static trackEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 465
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lnet/hockeyapp/android/metrics/MetricsManager;->trackEvent(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 466
    return-void
.end method

.method public static trackEvent(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 469
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 501
    :goto_0
    return-void

    .line 472
    :cond_0
    sget-object v0, Lnet/hockeyapp/android/metrics/MetricsManager;->d:Lnet/hockeyapp/android/metrics/MetricsManager;

    if-nez v0, :cond_1

    .line 473
    const-string v0, "HA-MetricsManager"

    const-string v1, "MetricsManager hasn\'t been registered or User Metrics has been disabled. No User Metrics will be collected!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 476
    :cond_1
    invoke-static {}, Lnet/hockeyapp/android/metrics/MetricsManager;->isUserMetricsEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 477
    const-string v0, "User Metrics is disabled. Will not track event."

    invoke-static {v0}, Lnet/hockeyapp/android/utils/HockeyLog;->warn(Ljava/lang/String;)V

    goto :goto_0

    .line 480
    :cond_2
    new-instance v0, Lnet/hockeyapp/android/metrics/model/EventData;

    invoke-direct {v0}, Lnet/hockeyapp/android/metrics/model/EventData;-><init>()V

    .line 481
    invoke-virtual {v0, p0}, Lnet/hockeyapp/android/metrics/model/EventData;->setName(Ljava/lang/String;)V

    .line 482
    if-eqz p1, :cond_3

    .line 483
    invoke-virtual {v0, p1}, Lnet/hockeyapp/android/metrics/model/EventData;->setProperties(Ljava/util/Map;)V

    .line 485
    :cond_3
    if-eqz p2, :cond_4

    .line 486
    invoke-virtual {v0, p2}, Lnet/hockeyapp/android/metrics/model/EventData;->setMeasurements(Ljava/util/Map;)V

    .line 489
    :cond_4
    :try_start_0
    new-instance v1, Lnet/hockeyapp/android/metrics/MetricsManager$3;

    invoke-direct {v1, v0}, Lnet/hockeyapp/android/metrics/MetricsManager$3;-><init>(Lnet/hockeyapp/android/metrics/model/EventData;)V

    invoke-static {v1}, Lnet/hockeyapp/android/utils/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 497
    :catch_0
    move-exception v0

    .line 498
    const-string v1, "Could not track custom event. Executor rejected async task."

    invoke-static {v1, v0}, Lnet/hockeyapp/android/utils/HockeyLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method protected renewSession()V
    .locals 2

    .prologue
    .line 417
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 418
    sget-object v1, Lnet/hockeyapp/android/metrics/MetricsManager;->h:Lnet/hockeyapp/android/metrics/c;

    invoke-virtual {v1, v0}, Lnet/hockeyapp/android/metrics/c;->a(Ljava/lang/String;)V

    .line 419
    sget-object v0, Lnet/hockeyapp/android/metrics/model/SessionState;->START:Lnet/hockeyapp/android/metrics/model/SessionState;

    invoke-direct {p0, v0}, Lnet/hockeyapp/android/metrics/MetricsManager;->a(Lnet/hockeyapp/android/metrics/model/SessionState;)V

    .line 420
    return-void
.end method

.method protected setChannel(Lnet/hockeyapp/android/metrics/a;)V
    .locals 0

    .prologue
    .line 371
    sput-object p1, Lnet/hockeyapp/android/metrics/MetricsManager;->g:Lnet/hockeyapp/android/metrics/a;

    .line 372
    return-void
.end method

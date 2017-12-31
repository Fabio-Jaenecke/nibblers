.class public Lnet/hockeyapp/android/objects/FeedbackMessage;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x79c0036a37b8b480L


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:I

.field private h:Ljava/lang/String;

.field private i:I

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/hockeyapp/android/objects/FeedbackAttachment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->m:Ljava/lang/String;

    return-object v0
.end method

.method public getCleanText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->k:Ljava/lang/String;

    return-object v0
.end method

.method public getCreatedAt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getFeedbackAttachments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnet/hockeyapp/android/objects/FeedbackAttachment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 156
    iget-object v0, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->n:Ljava/util/List;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->g:I

    return v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->l:Ljava/lang/String;

    return-object v0
.end method

.method public getOem()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getOsVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getSubjec()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 37
    iget-object v0, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getUserString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getVia()I
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->i:I

    return v0
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->m:Ljava/lang/String;

    .line 153
    return-void
.end method

.method public setCleanText(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->k:Ljava/lang/String;

    .line 137
    return-void
.end method

.method public setCreatedAt(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->f:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public setFeedbackAttachments(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnet/hockeyapp/android/objects/FeedbackAttachment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 160
    iput-object p1, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->n:Ljava/util/List;

    .line 161
    return-void
.end method

.method public setId(I)V
    .locals 0

    .prologue
    .line 104
    iput p1, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->g:I

    .line 105
    return-void
.end method

.method public setModel(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->d:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->l:Ljava/lang/String;

    .line 145
    return-void
.end method

.method public setOem(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->c:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setOsVersion(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->e:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setSubjec(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 47
    iput-object p1, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->a:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setSubject(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->a:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->b:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->h:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public setUserString(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->j:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public setVia(I)V
    .locals 0

    .prologue
    .line 120
    iput p1, p0, Lnet/hockeyapp/android/objects/FeedbackMessage;->i:I

    .line 121
    return-void
.end method

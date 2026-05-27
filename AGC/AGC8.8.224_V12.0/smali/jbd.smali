.class public final Ljbd;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljbc;

.field protected b:Z

.field public c:Ljava/util/ArrayList;

.field public d:Ljava/util/ArrayList;

.field public e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Lnxy;

.field public h:Lksw;

.field public final i:Lnwp;


# direct methods
.method public constructor <init>(Ljbf;Lnxy;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Loga;->i:Loga;

    invoke-virtual {v0}, Lnws;->O()Lnwn;

    move-result-object v0

    check-cast v0, Lnwp;

    iput-object v0, p0, Ljbd;->i:Lnwp;

    const/4 v1, 0x0

    iput-boolean v1, p0, Ljbd;->b:Z

    const/4 v1, 0x0

    iput-object v1, p0, Ljbd;->c:Ljava/util/ArrayList;

    iput-object v1, p0, Ljbd;->d:Ljava/util/ArrayList;

    iput-object p1, p0, Ljbd;->a:Ljbc;

    iget-object v2, p1, Ljbc;->f:Ljava/lang/String;

    iput-object v2, p0, Ljbd;->f:Ljava/lang/String;

    iput-object v1, p0, Ljbd;->e:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, v0, Lnwn;->b:Lnws;

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_0
    iget-object v3, v0, Lnwp;->b:Lnws;

    check-cast v3, Loga;

    iget v4, v3, Loga;->a:I

    const/4 v5, 0x1

    or-int/2addr v4, v5

    iput v4, v3, Loga;->a:I

    iput-wide v1, v3, Loga;->b:J

    iget-object v1, v0, Lnwp;->b:Lnws;

    check-cast v1, Loga;

    iget-wide v1, v1, Loga;->b:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v1

    iget-object v3, v0, Lnwn;->b:Lnws;

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_1
    iget-object v3, v0, Lnwp;->b:Lnws;

    check-cast v3, Loga;

    iget v4, v3, Loga;->a:I

    const/high16 v6, 0x20000

    or-int/2addr v4, v6

    iput v4, v3, Loga;->a:I

    iput-wide v1, v3, Loga;->f:J

    iget-object p1, p1, Ljbc;->d:Landroid/content/Context;

    invoke-static {p1}, Lktm;->c(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, v0, Lnwn;->b:Lnws;

    invoke-virtual {p1}, Lnws;->ac()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_2
    iget-object p1, v0, Lnwp;->b:Lnws;

    check-cast p1, Loga;

    iget v1, p1, Loga;->a:I

    const/high16 v2, 0x800000

    or-int/2addr v1, v2

    iput v1, p1, Loga;->a:I

    iput-boolean v5, p1, Loga;->g:Z

    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-eqz p1, :cond_5

    iget-object p1, v0, Lnwn;->b:Lnws;

    invoke-virtual {p1}, Lnws;->ac()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_4
    iget-object p1, v0, Lnwp;->b:Lnws;

    check-cast p1, Loga;

    iget v0, p1, Loga;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p1, Loga;->a:I

    iput-wide v1, p1, Loga;->c:J

    :cond_5
    iput-object p2, p0, Ljbd;->g:Lnxy;

    return-void
.end method


# virtual methods
.method public final a()Ljdl;
    .locals 2

    iget-boolean v0, p0, Ljbd;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljbd;->b:Z

    iget-object v0, p0, Ljbd;->a:Ljbc;

    check-cast v0, Ljbf;

    iget-object v0, v0, Ljbf;->e:Ljbg;

    invoke-interface {v0, p0}, Ljbg;->a(Ljbd;)Ljdl;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "do not reuse LogEventBuilder"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AbstractLogEventBuilder"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "uploadAccount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljbd;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", logSourceName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljbd;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", qosTier: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", veMessage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", testCodes: null, mendelPackages: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljbd;->c:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    invoke-static {v2}, Ljbc;->a(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", experimentIds: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljbd;->d:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    invoke-static {v2}, Ljbc;->a(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", experimentTokens: null, experimentTokensBytes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Ljbc;->a:I

    const-string v1, "null, addPhenotype: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

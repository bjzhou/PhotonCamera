.class public final synthetic Llnv;
.super Ljava/lang/Object;

# interfaces
.implements Lnno;


# instance fields
.field public final synthetic a:Lcom/google/android/libraries/performance/primes/transmitter/clearcut/ClearcutMetricSnapshotTransmitter;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Lozv;

.field public final synthetic d:Llnr;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/libraries/performance/primes/transmitter/clearcut/ClearcutMetricSnapshotTransmitter;Landroid/content/Context;Lozv;Llnr;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llnv;->a:Lcom/google/android/libraries/performance/primes/transmitter/clearcut/ClearcutMetricSnapshotTransmitter;

    iput-object p2, p0, Llnv;->b:Landroid/content/Context;

    iput-object p3, p0, Llnv;->c:Lozv;

    iput-object p4, p0, Llnv;->d:Llnr;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lnou;
    .locals 6

    iget-object v0, p0, Llnv;->a:Lcom/google/android/libraries/performance/primes/transmitter/clearcut/ClearcutMetricSnapshotTransmitter;

    iget-object v1, p0, Llnv;->b:Landroid/content/Context;

    iget-object v2, p0, Llnv;->c:Lozv;

    iget-object v3, p0, Llnv;->d:Llnr;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_13

    iget-object p1, v3, Llnr;->b:Ljava/lang/String;

    iget-boolean v4, v3, Llnr;->d:Z

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/google/android/libraries/performance/primes/transmitter/clearcut/ClearcutMetricSnapshotTransmitter;->c:Ljbf;

    if-nez v4, :cond_1

    monitor-enter v0

    :try_start_0
    iget-object v4, v0, Lcom/google/android/libraries/performance/primes/transmitter/clearcut/ClearcutMetricSnapshotTransmitter;->c:Ljbf;

    if-nez v4, :cond_0

    sget-object v4, Ljbf;->j:Ljava/util/List;

    sget-object v4, Lffe;->f:Lffe;

    sget-object v5, Ljbk;->a:Ljbk;

    invoke-static {v1}, Ljhp;->ab(Ljava/lang/Object;)V

    invoke-static {p1}, Ljhp;->Z(Ljava/lang/String;)V

    sget-object v5, Ljbk;->f:Ljava/util/EnumSet;

    invoke-static {v5}, Ljhp;->ab(Ljava/lang/Object;)V

    invoke-static {v5}, Ljbc;->b(Ljava/util/EnumSet;)V

    invoke-static {v1, p1, v4, v5}, Ljcb;->d(Landroid/content/Context;Ljava/lang/String;Lmrl;Ljava/util/EnumSet;)Ljbf;

    move-result-object p1

    iput-object p1, v0, Lcom/google/android/libraries/performance/primes/transmitter/clearcut/ClearcutMetricSnapshotTransmitter;->c:Ljbf;

    move-object v4, p1

    goto :goto_0

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    goto :goto_2

    :cond_2
    iget-object v4, v0, Lcom/google/android/libraries/performance/primes/transmitter/clearcut/ClearcutMetricSnapshotTransmitter;->b:Ljbf;

    if-nez v4, :cond_4

    monitor-enter v0

    :try_start_1
    iget-object v4, v0, Lcom/google/android/libraries/performance/primes/transmitter/clearcut/ClearcutMetricSnapshotTransmitter;->b:Ljbf;

    if-nez v4, :cond_3

    sget-object v4, Ljbf;->j:Ljava/util/List;

    sget-object v4, Lffe;->f:Lffe;

    sget-object v5, Ljbk;->e:Ljava/util/EnumSet;

    invoke-static {v1}, Ljhp;->ab(Ljava/lang/Object;)V

    invoke-static {p1}, Ljhp;->Z(Ljava/lang/String;)V

    invoke-static {v1, p1, v4, v5}, Ljcb;->d(Landroid/content/Context;Ljava/lang/String;Lmrl;Ljava/util/EnumSet;)Ljbf;

    move-result-object p1

    iput-object p1, v0, Lcom/google/android/libraries/performance/primes/transmitter/clearcut/ClearcutMetricSnapshotTransmitter;->b:Ljbf;

    move-object v4, p1

    goto :goto_1

    :cond_3
    :goto_1
    monitor-exit v0

    goto :goto_2

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    :cond_4
    :goto_2
    invoke-virtual {v4, v2}, Ljbf;->e(Lnxy;)Ljbd;

    move-result-object p1

    sget-object v0, Loic;->a:Loic;

    invoke-virtual {v0}, Loic;->b()Loid;

    move-result-object v0

    invoke-interface {v0, v1}, Loid;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/google/android/libraries/performance/primes/transmitter/clearcut/ClearcutMetricSnapshotTransmitter;->a:Lmrl;

    invoke-interface {v0}, Lmrl;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkru;

    invoke-static {v1, v0}, Lksw;->a(Landroid/content/Context;Lkru;)Lksw;

    move-result-object v0

    iput-object v0, p1, Ljbd;->h:Lksw;

    :cond_5
    iget-object v0, v3, Llnr;->e:Ljava/lang/String;

    invoke-static {v0}, Lmqr;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p1, Ljbd;->a:Ljbc;

    invoke-virtual {v1}, Ljbc;->c()Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p1, Ljbd;->i:Lnwp;

    iget-object v2, v1, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_6
    iget-object v1, v1, Lnwp;->b:Lnws;

    check-cast v1, Loga;

    sget-object v2, Loga;->i:Loga;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v2, v1, Loga;->a:I

    const/high16 v4, 0x1000000

    or-int/2addr v2, v4

    iput v2, v1, Loga;->a:I

    iput-object v0, v1, Loga;->h:Ljava/lang/String;

    goto :goto_3

    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "setZwiebackCookieOverride forbidden on deidentified logger"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    :goto_3
    iget-boolean v0, v3, Llnr;->d:Z

    if-nez v0, :cond_12

    iget v0, v3, Llnr;->a:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_b

    iget-object v0, v3, Llnr;->c:Ljava/lang/String;

    iget-object v1, p1, Ljbd;->a:Ljbc;

    invoke-virtual {v1}, Ljbc;->c()Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, p1, Ljbd;->c:Ljava/util/ArrayList;

    if-nez v1, :cond_9

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p1, Ljbd;->c:Ljava/util/ArrayList;

    :cond_9
    iget-object v1, p1, Ljbd;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "addMendelPackage forbidden on deidentified logger"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    :goto_4
    iget v0, v3, Llnr;->a:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_d

    iget-object v0, v3, Llnr;->f:Ljava/lang/String;

    iget-object v1, p1, Ljbd;->a:Ljbc;

    iget-object v1, v1, Ljbc;->h:Ljava/util/EnumSet;

    sget-object v2, Ljbk;->d:Ljbk;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    iput-object v0, p1, Ljbd;->e:Ljava/lang/String;

    goto :goto_5

    :cond_c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "setUploadAccountName forbidden on deidentified logger"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d
    :goto_5
    iget-object v0, v3, Llnr;->g:Lnwy;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_12

    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    array-length v1, v0

    new-array v2, v1, [I

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_6
    if-ge v4, v1, :cond_e

    aget-object v5, v0, v4

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    aput v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_e
    iget-object v0, p1, Ljbd;->a:Ljbc;

    invoke-virtual {v0}, Ljbc;->c()Z

    move-result v0

    if-nez v0, :cond_11

    if-nez v1, :cond_f

    goto :goto_8

    :cond_f
    iget-object v0, p1, Ljbd;->d:Ljava/util/ArrayList;

    if-nez v0, :cond_10

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p1, Ljbd;->d:Ljava/util/ArrayList;

    goto :goto_7

    :cond_10
    :goto_7
    if-ge v3, v1, :cond_12

    aget v0, v2, v3

    iget-object v4, p1, Ljbd;->d:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "addExperimentIds forbidden on deidentified logger"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_12
    :goto_8
    invoke-virtual {p1}, Ljbd;->a()Ljdl;

    move-result-object p1

    invoke-static {p1}, Ljhp;->ae(Ljdl;)Ljot;

    move-result-object p1

    invoke-static {p1}, Lktf;->b(Ljot;)Lnou;

    move-result-object p1

    goto :goto_9

    :cond_13
    sget-object p1, Lnor;->a:Lnou;

    :goto_9
    return-object p1
.end method

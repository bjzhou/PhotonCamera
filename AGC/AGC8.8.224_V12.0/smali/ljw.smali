.class public final Lljw;
.super Lljr;

# interfaces
.implements Llil;


# static fields
.field private static final a:Lnak;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Ljava/util/concurrent/Executor;

.field private final d:Lljo;

.field private final e:Loiw;

.field private final f:Logd;

.field private final g:Loiw;

.field private final h:Loiw;

.field private final i:Lmap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/libraries/performance/primes/metrics/crash/applicationexit/ApplicationExitMetricServiceImpl"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lljw;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Llij;Landroid/content/Context;Ljava/util/concurrent/Executor;Lljo;Loiw;Logd;Loiw;Loiw;)V
    .locals 1

    invoke-direct {p0}, Lljr;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p6, v0}, Llij;->b(Ljava/util/concurrent/Executor;Logd;Loiw;)Lmap;

    move-result-object p1

    iput-object p1, p0, Lljw;->i:Lmap;

    iput-object p2, p0, Lljw;->b:Landroid/content/Context;

    iput-object p3, p0, Lljw;->c:Ljava/util/concurrent/Executor;

    iput-object p4, p0, Lljw;->d:Lljo;

    iput-object p5, p0, Lljw;->e:Loiw;

    iput-object p6, p0, Lljw;->f:Logd;

    iput-object p7, p0, Lljw;->g:Loiw;

    iput-object p8, p0, Lljw;->h:Loiw;

    return-void
.end method

.method public static synthetic aS(Lljw;)Lnou;
    .locals 9

    iget-object v0, p0, Lljw;->f:Logd;

    invoke-interface {v0}, Logd;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lljn;

    invoke-virtual {v0}, Lljn;->b()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lnor;->a:Lnou;

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lljw;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lljw;->f:Logd;

    invoke-interface {v1}, Logd;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lljn;

    iget-object v1, v1, Lljn;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/app/Application;->getProcessName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p0, Lnor;->a:Lnou;

    goto/16 :goto_2

    :cond_1
    iget-object v0, p0, Lljw;->g:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object p0, Lnor;->a:Lnou;

    goto/16 :goto_2

    :cond_2
    iget-object v0, p0, Lljw;->d:Lljo;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lljw;->e:Loiw;

    invoke-interface {v3}, Loiw;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/SharedPreferences;

    const-string v4, "lastExitProcessName"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lljw;->e:Loiw;

    invoke-interface {v4}, Loiw;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/SharedPreferences;

    const-string v5, "lastExitTimestamp"

    const-wide/16 v6, -0x1

    invoke-interface {v4, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-interface/range {v0 .. v5}, Lljo;->a(IILjava/lang/String;J)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object p0, Lnor;->a:Lnou;

    goto/16 :goto_2

    :cond_3
    iget-object v1, p0, Lljw;->h:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Loya;

    sget-object v2, Loxz;->e:Loxz;

    invoke-virtual {v2}, Lnws;->O()Lnwn;

    move-result-object v2

    move-object v3, v0

    check-cast v3, Lmyu;

    iget v3, v3, Lmyu;->c:I

    iget-object v4, v2, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_4
    iget-object v4, v2, Lnwn;->b:Lnws;

    move-object v5, v4

    check-cast v5, Loxz;

    iget v6, v5, Loxz;->a:I

    or-int/lit8 v6, v6, 0x2

    iput v6, v5, Loxz;->a:I

    iput v3, v5, Loxz;->d:I

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_5
    iget-object v3, v2, Lnwn;->b:Lnws;

    check-cast v3, Loxz;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, v3, Loxz;->c:Loya;

    iget v4, v3, Loxz;->a:I

    const/4 v5, 0x1

    or-int/2addr v4, v5

    iput v4, v3, Loxz;->a:I

    invoke-static {}, Lmjy;->z()Ljava/util/HashSet;

    move-result-object v3

    const/4 v4, 0x0

    :goto_0
    iget-object v6, v1, Loya;->a:Lnwy;

    invoke-interface {v6}, Lnwy;->size()I

    move-result v6

    if-ge v4, v6, :cond_7

    iget-object v6, v1, Loya;->a:Lnwy;

    invoke-interface {v6, v4}, Lnwy;->d(I)I

    move-result v6

    invoke-static {v6}, Lljz;->x(I)I

    move-result v6

    if-nez v6, :cond_6

    const/4 v6, 0x1

    :cond_6
    add-int/lit8 v6, v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_7
    move-object v1, v0

    check-cast v1, Lmvv;

    invoke-virtual {v1}, Lmvv;->s()Lnad;

    move-result-object v1

    :cond_8
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Loxy;

    iget v6, v4, Loxy;->c:I

    invoke-static {v6}, Lljz;->x(I)I

    move-result v6

    if-nez v6, :cond_9

    const/4 v6, 0x1

    :cond_9
    add-int/lit8 v6, v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, v2, Lnwn;->b:Lnws;

    invoke-virtual {v6}, Lnws;->ac()Z

    move-result v6

    if-nez v6, :cond_a

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_a
    iget-object v6, v2, Lnwn;->b:Lnws;

    check-cast v6, Loxz;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v7, v6, Loxz;->b:Lnxa;

    invoke-interface {v7}, Lnxa;->c()Z

    move-result v8

    if-nez v8, :cond_b

    invoke-static {v7}, Lnws;->U(Lnxa;)Lnxa;

    move-result-object v7

    iput-object v7, v6, Loxz;->b:Lnxa;

    :cond_b
    iget-object v6, v6, Loxz;->b:Lnxa;

    invoke-interface {v6, v4}, Lnxa;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_c
    invoke-virtual {v2}, Lnwn;->i()Lnws;

    move-result-object v1

    check-cast v1, Loxz;

    iget-object v2, p0, Lljw;->i:Lmap;

    invoke-static {}, Llif;->a()Llie;

    move-result-object v3

    sget-object v4, Lozv;->u:Lozv;

    invoke-virtual {v4}, Lnws;->O()Lnwn;

    move-result-object v4

    iget-object v5, v4, Lnwn;->b:Lnws;

    invoke-virtual {v5}, Lnws;->ac()Z

    move-result v5

    if-nez v5, :cond_d

    invoke-virtual {v4}, Lnwn;->p()V

    :cond_d
    iget-object v5, v4, Lnwn;->b:Lnws;

    check-cast v5, Lozv;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, v5, Lozv;->l:Loxz;

    iget v1, v5, Lozv;->a:I

    const/high16 v6, 0x80000

    or-int/2addr v1, v6

    iput v1, v5, Lozv;->a:I

    invoke-virtual {v4}, Lnwn;->i()Lnws;

    move-result-object v1

    check-cast v1, Lozv;

    invoke-virtual {v3, v1}, Llie;->e(Lozv;)V

    invoke-virtual {v3}, Llie;->a()Llif;

    move-result-object v1

    invoke-virtual {v2, v1}, Lmap;->b(Llif;)Lnou;

    move-result-object v1

    new-instance v2, Lljt;

    invoke-direct {v2, p0, v0}, Lljt;-><init>(Lljw;Ljava/util/List;)V

    iget-object p0, p0, Lljw;->c:Ljava/util/concurrent/Executor;

    invoke-static {v1, v2, p0}, Lnnf;->i(Lnou;Lmqi;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object p0

    :goto_2
    return-object p0
.end method


# virtual methods
.method public synthetic aT()Lnou;
    .locals 2

    iget-object v0, p0, Lljw;->b:Landroid/content/Context;

    new-instance v1, Lljv;

    invoke-direct {v1, p0}, Lljv;-><init>(Lljw;)V

    invoke-static {v0, v1}, Lktm;->b(Landroid/content/Context;Ljava/lang/Runnable;)Lnou;

    move-result-object v0

    return-object v0
.end method

.method public synthetic aU(Ljava/util/List;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Loxy;

    :cond_0
    iget-object v0, p1, Loxy;->b:Ljava/lang/String;

    iget-wide v1, p1, Loxy;->f:J

    iget-object v3, p0, Lljw;->e:Loiw;

    invoke-interface {v3}, Loiw;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "lastExitProcessName"

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "lastExitTimestamp"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    if-nez v0, :cond_1

    add-int/lit8 p2, p2, 0x1

    const/4 v0, 0x3

    if-lt p2, v0, :cond_0

    sget-object p1, Lljw;->a:Lnak;

    invoke-virtual {p1}, Lnaf;->c()Lnaz;

    move-result-object p1

    const-string p2, "Failed to persist most recent App Exit"

    const/16 v0, 0x11a1

    invoke-static {p1, p2, v0}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public synthetic aV()V
    .locals 2

    new-instance v0, Llju;

    invoke-direct {v0, p0}, Llju;-><init>(Lljw;)V

    iget-object v1, p0, Lljw;->c:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1}, Lnsy;->G(Lnnn;Ljava/util/concurrent/Executor;)Lnou;

    return-void
.end method

.method public aW()V
    .locals 2

    new-instance v0, Lljs;

    invoke-direct {v0, p0}, Lljs;-><init>(Lljw;)V

    iget-object v1, p0, Lljw;->c:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1}, Lnsy;->G(Lnnn;Ljava/util/concurrent/Executor;)Lnou;

    return-void
.end method

.method public ab()V
    .locals 0

    invoke-virtual {p0}, Lljw;->aW()V

    return-void
.end method

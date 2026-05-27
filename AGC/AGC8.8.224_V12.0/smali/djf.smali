.class public final Ldjf;
.super Ljava/lang/Object;

# interfaces
.implements Lchj;
.implements Lgxm;


# static fields
.field public static final a:Lnak;


# instance fields
.field public final b:Ldjj;

.field public final c:Lnoj;

.field public final d:Landroid/content/Context;

.field public final e:Ldju;

.field public final f:Lkbc;

.field public final g:Z

.field public final h:Ldjs;

.field public final i:Ldjs;

.field public final j:Lnph;

.field public final k:Lgzm;

.field public final l:Lj$/time/Instant;

.field public final m:Ldjn;

.field public final n:Lcdi;

.field public final o:Lcvm;

.field public final p:Lbkc;

.field private final q:Ljava/util/concurrent/Executor;

.field private final r:Ldhi;

.field private final s:Lgwf;

.field private final t:Ldjg;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/data/CameraFilmstripDataAdapter"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Ldjf;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcdi;Ldju;Lcvm;Lbkc;Lkbc;Ldhi;Ljava/util/concurrent/Executor;Lgwf;ZLgzm;Ldjn;Ldjg;[B[B[B[B[B)V
    .locals 3

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ldjj;

    invoke-direct {v1}, Ldjj;-><init>()V

    iput-object v1, v0, Ldjf;->b:Ldjj;

    new-instance v1, Ldje;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Ldje;-><init>(Ldjf;I)V

    iput-object v1, v0, Ldjf;->c:Lnoj;

    move-object v1, p1

    iput-object v1, v0, Ldjf;->d:Landroid/content/Context;

    move-object v1, p2

    iput-object v1, v0, Ldjf;->n:Lcdi;

    move-object v1, p3

    iput-object v1, v0, Ldjf;->e:Ldju;

    move-object v1, p4

    iput-object v1, v0, Ldjf;->o:Lcvm;

    move-object v1, p5

    iput-object v1, v0, Ldjf;->p:Lbkc;

    move-object v1, p6

    iput-object v1, v0, Ldjf;->f:Lkbc;

    move-object v1, p7

    iput-object v1, v0, Ldjf;->r:Ldhi;

    move-object v1, p8

    iput-object v1, v0, Ldjf;->q:Ljava/util/concurrent/Executor;

    move-object v1, p9

    iput-object v1, v0, Ldjf;->s:Lgwf;

    move v1, p10

    iput-boolean v1, v0, Ldjf;->g:Z

    move-object v1, p11

    iput-object v1, v0, Ldjf;->k:Lgzm;

    move-object v1, p12

    iput-object v1, v0, Ldjf;->m:Ldjn;

    move-object/from16 v1, p13

    iput-object v1, v0, Ldjf;->t:Ldjg;

    sget-object v1, Lnmh;->a:Lnmh;

    invoke-static {}, Lj$/time/Instant;->now()Lj$/time/Instant;

    move-result-object v1

    iput-object v1, v0, Ldjf;->l:Lj$/time/Instant;

    invoke-static {}, Lnph;->g()Lnph;

    move-result-object v1

    iput-object v1, v0, Ldjf;->j:Lnph;

    new-instance v1, Ldjs;

    invoke-direct {v1}, Ldjs;-><init>()V

    iput-object v1, v0, Ldjf;->h:Ldjs;

    new-instance v1, Ldjs;

    invoke-direct {v1}, Ldjs;-><init>()V

    iput-object v1, v0, Ldjf;->i:Ldjs;

    return-void
.end method

.method private final w(Lgxy;)Lchd;
    .locals 3

    invoke-virtual {p0, p1}, Ldjf;->e(Lgxy;)Lchd;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "Could not find %s in dataAdapter"

    invoke-static {v1, v2, p1}, Lmoz;->s(ZLjava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method private final y(Lchd;)Ldjs;
    .locals 1

    invoke-interface {p1}, Lchd;->e()Lgyb;

    move-result-object p1

    sget-object v0, Lgyb;->a:Lgyb;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Ldjf;->h:Ldjs;

    return-object p1

    :cond_0
    iget-object p1, p0, Ldjf;->i:Ldjs;

    return-object p1
.end method

.method private final z()Lnou;
    .locals 4

    new-instance v0, Ldgg;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Ldgg;-><init>(Ldjf;I)V

    iget-object v1, p0, Ldjf;->q:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1}, Lnsy;->E(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object v0

    iget-object v1, p0, Ldjf;->r:Ldhi;

    sget-object v2, Ldho;->a:Ldhk;

    invoke-interface {v1}, Ldhi;->f()V

    iget-object v1, p0, Ldjf;->n:Lcdi;

    invoke-virtual {v1}, Lcdi;->i()Ljuf;

    move-result-object v1

    new-instance v2, Ldei;

    const/16 v3, 0xa

    invoke-direct {v2, v0, v3}, Ldei;-><init>(Lnou;I)V

    invoke-virtual {v1, v2}, Ljuf;->d(Lkad;)V

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    invoke-virtual {p0}, Ldjf;->s()Ldjs;

    move-result-object v0

    invoke-virtual {v0}, Ldjs;->a()I

    move-result v0

    return v0
.end method

.method public final b()Lchd;
    .locals 1

    invoke-virtual {p0}, Ldjf;->s()Ldjs;

    move-result-object v0

    invoke-virtual {v0}, Ldjs;->b()Lchd;

    move-result-object v0

    return-object v0
.end method

.method public final bA()V
    .locals 3

    iget-object v0, p0, Ldjf;->q:Ljava/util/concurrent/Executor;

    new-instance v1, Ldgg;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Ldgg;-><init>(Ldjf;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final bB()V
    .locals 4

    invoke-virtual {p0}, Ldjf;->a()I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lnor;->a:Lnou;

    return-void

    :cond_0
    new-instance v0, Ldgg;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Ldgg;-><init>(Ldjf;I)V

    iget-object v1, p0, Ldjf;->q:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1}, Lnsy;->E(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object v0

    iget-object v1, p0, Ldjf;->c:Lnoj;

    iget-object v2, p0, Ldjf;->q:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, v2}, Lnsy;->L(Lnou;Lnoj;Ljava/util/concurrent/Executor;)V

    iget-object v1, p0, Ldjf;->n:Lcdi;

    invoke-virtual {v1}, Lcdi;->i()Ljuf;

    move-result-object v1

    new-instance v2, Ldei;

    const/16 v3, 0xb

    invoke-direct {v2, v0, v3}, Ldei;-><init>(Lnou;I)V

    invoke-virtual {v1, v2}, Ljuf;->d(Lkad;)V

    return-void
.end method

.method public final c(Lchb;)V
    .locals 3

    iget-object v0, p0, Ldjf;->b:Ldjj;

    iget-object v1, v0, Ldjj;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "More listeners added than is allowed in configured capacity: 4"

    invoke-static {v1, v2}, Lmoz;->q(ZLjava/lang/Object;)V

    iget-object v0, v0, Ldjj;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Ldjf;->j:Lnph;

    invoke-virtual {v0}, Lnph;->isDone()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lchb;->a()V

    :cond_1
    return-void
.end method

.method public final d(Lchb;)V
    .locals 1

    iget-object v0, p0, Ldjf;->b:Ldjj;

    iget-object v0, v0, Ldjj;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final e(Lgxy;)Lchd;
    .locals 1

    iget-object v0, p0, Ldjf;->h:Ldjs;

    invoke-virtual {v0, p1}, Ldjs;->d(Lgxy;)Lchd;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Ldjf;->i:Ldjs;

    invoke-virtual {v0, p1}, Ldjs;->d(Lgxy;)Lchd;

    move-result-object p1

    return-object p1
.end method

.method public final f(Lchd;)Lchd;
    .locals 1

    invoke-direct {p0, p1}, Ldjf;->y(Lchd;)Ldjs;

    move-result-object v0

    invoke-virtual {v0, p1}, Ldjs;->e(Lchd;)Lchd;

    move-result-object p1

    return-object p1
.end method

.method public final g()Lnou;
    .locals 3

    invoke-direct {p0}, Ldjf;->z()Lnou;

    move-result-object v0

    iget-object v1, p0, Ldjf;->c:Lnoj;

    iget-object v2, p0, Ldjf;->q:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, v2}, Lnsy;->L(Lnou;Lnoj;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public final h()V
    .locals 1

    invoke-virtual {p0}, Ldjf;->a()I

    iget-object v0, p0, Ldjf;->i:Ldjs;

    invoke-virtual {v0}, Ldjs;->h()V

    iget-object v0, p0, Ldjf;->b:Ldjj;

    invoke-virtual {v0}, Ldjj;->a()V

    return-void
.end method

.method public final i()V
    .locals 6

    iget-object v0, p0, Ldjf;->t:Ldjg;

    iget-object v1, v0, Ldjg;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lnor;->a:Lnou;

    goto :goto_0

    :cond_0
    new-instance v1, Ldgg;

    const/4 v2, 0x6

    invoke-direct {v1, v0, v2}, Ldgg;-><init>(Ldjg;I)V

    iget-object v0, v0, Ldjg;->c:Ljava/util/concurrent/Executor;

    invoke-static {v1, v0}, Lnsy;->E(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object v0

    :goto_0
    invoke-direct {p0}, Ldjf;->z()Lnou;

    move-result-object v1

    iget-object v2, p0, Ldjf;->s:Lgwf;

    invoke-interface {v2, p0}, Lgwf;->b(Lgxm;)Lnou;

    move-result-object v2

    sget-object v3, Lnnv;->a:Lnnv;

    new-instance v4, Ljava/util/ArrayList;

    const/4 v5, 0x3

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v4}, Lnsy;->x(Ljava/lang/Iterable;)Lnou;

    move-result-object v0

    new-instance v1, Letf;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Letf;-><init>(I)V

    invoke-static {v0, v1, v3}, Lnnf;->j(Lnou;Lnno;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object v0

    iget-object v1, p0, Ldjf;->c:Lnoj;

    iget-object v2, p0, Ldjf;->q:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, v2}, Lnsy;->L(Lnou;Lnoj;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Ldjf;->s()Ldjs;

    move-result-object v0

    invoke-virtual {v0}, Ldjs;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final j(Lgxy;)V
    .locals 3

    invoke-virtual {p0, p1}, Ldjf;->e(Lgxy;)Lchd;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Ldjf;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    const-string v1, "onSessionCanceled tried to remove URI that couldn\'t be found: %s"

    const/16 v2, 0x38c

    invoke-static {v0, v1, p1, v2}, Ld;->j(Lnaz;Ljava/lang/String;Ljava/lang/Object;C)V

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Ldjf;->t(Lchd;)V

    return-void
.end method

.method public final synthetic k(Lgxy;)V
    .locals 0

    return-void
.end method

.method public final l(Lgxy;)V
    .locals 11

    invoke-direct {p0, p1}, Ldjf;->w(Lgxy;)Lchd;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Ldjf;->s:Lgwf;

    invoke-interface {v1, p1}, Lgwf;->a(Lgxy;)Lgxl;

    move-result-object v1

    invoke-static {v1}, Lmqp;->h(Ljava/lang/Object;)Lmqp;

    move-result-object v1

    sget-object v2, Ldeo;->c:Ldeo;

    invoke-virtual {v1, v2}, Lmqp;->b(Lmqi;)Lmqp;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Lmqp;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0}, Lchd;->e()Lgyb;

    move-result-object v3

    sget-object v4, Lgyb;->b:Lgyb;

    if-ne v3, v4, :cond_2

    invoke-virtual {p0, p1}, Ldjf;->r(Lgxy;)V

    invoke-interface {v0}, Lchd;->b()Lche;

    move-result-object p1

    instance-of v1, p1, Ldjp;

    if-eqz v1, :cond_1

    check-cast p1, Ldjp;

    new-instance v1, Ldjo;

    invoke-direct {v1, p1}, Ldjo;-><init>(Ldjp;)V

    invoke-virtual {v1, v2}, Ldjo;->d(Z)V

    invoke-virtual {v1}, Ldjo;->a()Ldjp;

    move-result-object p1

    invoke-interface {v0, p1}, Lchd;->f(Lche;)V

    :cond_1
    return-void

    :cond_2
    instance-of v2, v0, Ldjv;

    const-string v3, "createPublished gets exception in transforming a cursor."

    if-nez v2, :cond_5

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    instance-of v1, v0, Ldjt;

    if-eqz v1, :cond_4

    invoke-interface {v0}, Lchd;->b()Lche;

    move-result-object v1

    invoke-interface {v1}, Lche;->c()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lmoz;->p(Z)V

    :try_start_0
    iget-object v2, p0, Ldjf;->e:Ldju;

    invoke-interface {v0}, Lchd;->e()Lgyb;

    move-result-object v9

    new-instance v10, Ldjt;

    iget-object v5, v2, Ldju;->c:Landroid/content/Context;

    iget-object v6, v2, Ldju;->d:Ldjm;

    iget-object v4, v2, Ldju;->f:Ldjq;

    invoke-virtual {v4, v1, p1}, Ldjq;->c(Landroid/net/Uri;Lgxy;)Ldjp;

    move-result-object v7

    iget-object v8, v2, Ldju;->h:Lhkv;

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Ldjt;-><init>(Landroid/content/Context;Ldjm;Lche;Lhkv;Lgyb;)V

    invoke-virtual {p0, v0, v10}, Ldjf;->u(Lchd;Lchd;)V
    :try_end_0
    .catch Lmrr; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    sget-object v0, Ldjf;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->b()Lnaz;

    move-result-object v0

    const/16 v1, 0x38a

    invoke-static {v0, v3, v1, p1}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V

    return-void

    :cond_4
    return-void

    :cond_5
    :goto_0
    invoke-interface {v0}, Lchd;->b()Lche;

    move-result-object v1

    invoke-interface {v1}, Lche;->c()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    const-string v4, "Could not find MediaStore URI for %s"

    invoke-static {v2, v4, p1}, Lmoz;->s(ZLjava/lang/String;Ljava/lang/Object;)V

    :try_start_1
    iget-object v2, p0, Ldjf;->o:Lcvm;

    invoke-interface {v0}, Lchd;->e()Lgyb;

    move-result-object v4

    new-instance v5, Ldjv;

    iget-object v6, v2, Lcvm;->b:Ljava/lang/Object;

    iget-object v7, v2, Lcvm;->a:Ljava/lang/Object;

    iget-object v2, v2, Lcvm;->d:Ljava/lang/Object;

    check-cast v2, Ldjq;

    invoke-virtual {v2, v1, p1}, Ldjq;->c(Landroid/net/Uri;Lgxy;)Ldjp;

    move-result-object p1

    check-cast v7, Ldjm;

    check-cast v6, Landroid/content/Context;

    invoke-direct {v5, v6, v7, p1, v4}, Ldjv;-><init>(Landroid/content/Context;Ldjm;Lche;Lgyb;)V

    invoke-virtual {p0, v0, v5}, Ldjf;->u(Lchd;Lchd;)V
    :try_end_1
    .catch Lmrr; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p1

    sget-object v0, Ldjf;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->b()Lnaz;

    move-result-object v0

    const/16 v1, 0x395

    invoke-static {v0, v3, v1, p1}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V

    return-void
.end method

.method public final synthetic m(J)V
    .locals 0

    return-void
.end method

.method public final synthetic n(Landroid/graphics/Bitmap;)V
    .locals 0

    return-void
.end method

.method public final synthetic o(Landroid/graphics/Bitmap;I)V
    .locals 0

    invoke-static {p0, p1}, Ljhp;->aw(Lgxm;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public final synthetic p(Lgxy;Lkae;)V
    .locals 0

    return-void
.end method

.method public final q(Lgxy;Lgxt;Lgyb;)V
    .locals 11

    iget-object v0, p2, Lgxt;->c:Lgya;

    sget-object v1, Lgya;->o:Lgya;

    const/4 v2, 0x1

    if-eq v0, v1, :cond_4

    sget-object v1, Lgya;->j:Lgya;

    if-eq v0, v1, :cond_4

    sget-object v1, Lgya;->n:Lgya;

    if-eq v0, v1, :cond_4

    sget-object v1, Lgya;->r:Lgya;

    if-eq v0, v1, :cond_4

    sget-object v1, Lgya;->t:Lgya;

    if-eq v0, v1, :cond_4

    sget-object v1, Lgya;->u:Lgya;

    if-ne v0, v1, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Ldjf;->e:Ldju;

    iget-object v1, v0, Ldju;->h:Lhkv;

    iget-object v1, v1, Lhkv;->b:Landroid/util/LruCache;

    invoke-virtual {v1, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llpu;

    if-eqz v1, :cond_1

    iget-object v1, v1, Llpu;->c:Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    sget-object v1, Ldju;->b:Lkaf;

    sget-object v3, Ldju;->a:Lnak;

    invoke-virtual {v3}, Lnaf;->c()Lnaz;

    move-result-object v3

    check-cast v3, Lnah;

    const/16 v4, 0x3b8

    invoke-interface {v3, v4}, Lnah;->G(I)Lnaz;

    move-result-object v3

    check-cast v3, Lnah;

    const-string v4, "Size not set for in-progress item %s with mediaStoreRecord %s. Assuming %s"

    invoke-interface {v3, v4, p1, p2, v1}, Lnah;->B(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    iget-object v3, v0, Ldju;->g:Lgwf;

    invoke-interface {v3, p1}, Lgwf;->a(Lgxy;)Lgxl;

    move-result-object v3

    if-nez v3, :cond_3

    iget-object v3, v0, Ldju;->e:Lnmi;

    invoke-static {}, Lj$/time/Instant;->now()Lj$/time/Instant;

    move-result-object v3

    goto :goto_1

    :cond_3
    invoke-interface {v3}, Lgxl;->d()J

    move-result-wide v3

    invoke-static {v3, v4}, Lj$/time/Instant;->ofEpochMilli(J)Lj$/time/Instant;

    move-result-object v3

    :goto_1
    invoke-static {}, Ldjp;->k()Ldjo;

    move-result-object v4

    iput-object p1, v4, Ldjo;->a:Lgxy;

    invoke-virtual {v4, v3}, Ldjo;->c(Lj$/time/Instant;)V

    invoke-virtual {v4, v3}, Ldjo;->e(Lj$/time/Instant;)V

    check-cast v1, Lkaf;

    iput-object v1, v4, Ldjo;->b:Lkaf;

    invoke-virtual {v4, v2}, Ldjo;->d(Z)V

    iget-wide v1, p2, Lgxt;->a:J

    invoke-virtual {v4, v1, v2}, Ldjo;->b(J)V

    iget-object p1, p2, Lgxt;->b:Landroid/net/Uri;

    invoke-virtual {v4, p1}, Ldjo;->i(Landroid/net/Uri;)V

    invoke-virtual {v4}, Ldjo;->a()Ldjp;

    move-result-object v8

    new-instance p1, Ldjt;

    iget-object v6, v0, Ldju;->c:Landroid/content/Context;

    iget-object v7, v0, Ldju;->d:Ldjm;

    iget-object v9, v0, Ldju;->h:Lhkv;

    move-object v5, p1

    move-object v10, p3

    invoke-direct/range {v5 .. v10}, Ldjt;-><init>(Landroid/content/Context;Ldjm;Lche;Lhkv;Lgyb;)V

    invoke-virtual {p0, p1}, Ldjf;->v(Lchd;)V

    return-void

    :cond_4
    :goto_2
    sget-object v1, Lgya;->o:Lgya;

    if-eq v0, v1, :cond_5

    iget-boolean v0, p0, Ldjf;->g:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p2, Lgxt;->d:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Ldjf;->o:Lcvm;

    iget-object v1, v0, Lcvm;->c:Ljava/lang/Object;

    invoke-static {}, Lj$/time/Instant;->now()Lj$/time/Instant;

    move-result-object v1

    invoke-static {}, Ldjp;->k()Ldjo;

    move-result-object v3

    invoke-virtual {v3, v1}, Ldjo;->c(Lj$/time/Instant;)V

    invoke-virtual {v3, v1}, Ldjo;->e(Lj$/time/Instant;)V

    invoke-virtual {v3, v2}, Ldjo;->d(Z)V

    iget-wide v1, p2, Lgxt;->a:J

    invoke-virtual {v3, v1, v2}, Ldjo;->b(J)V

    iget-object p2, p2, Lgxt;->b:Landroid/net/Uri;

    invoke-virtual {v3, p2}, Ldjo;->i(Landroid/net/Uri;)V

    iput-object p1, v3, Ldjo;->a:Lgxy;

    invoke-virtual {v3}, Ldjo;->a()Ldjp;

    move-result-object p1

    new-instance p2, Ldjv;

    iget-object v1, v0, Lcvm;->b:Ljava/lang/Object;

    iget-object v0, v0, Lcvm;->a:Ljava/lang/Object;

    check-cast v0, Ldjm;

    check-cast v1, Landroid/content/Context;

    invoke-direct {p2, v1, v0, p1, p3}, Ldjv;-><init>(Landroid/content/Context;Ldjm;Lche;Lgyb;)V

    invoke-virtual {p0, p2}, Ldjf;->v(Lchd;)V

    return-void
.end method

.method public final r(Lgxy;)V
    .locals 0

    invoke-direct {p0, p1}, Ldjf;->w(Lgxy;)Lchd;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Ldjf;->b:Ldjj;

    invoke-virtual {p1}, Ldjj;->a()V

    return-void
.end method

.method public final s()Ldjs;
    .locals 2

    iget-object v0, p0, Ldjf;->k:Lgzm;

    sget-object v1, Lgzd;->at:Lgzr;

    invoke-interface {v0, v1}, Lgzm;->c(Lgzb;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldjf;->i:Ldjs;

    return-object v0

    :cond_0
    iget-object v0, p0, Ldjf;->h:Ldjs;

    return-object v0
.end method

.method public final t(Lchd;)V
    .locals 1

    invoke-direct {p0, p1}, Ldjf;->y(Lchd;)Ldjs;

    move-result-object v0

    invoke-virtual {v0, p1}, Ldjs;->j(Lchd;)V

    iget-object p1, p0, Ldjf;->b:Ldjj;

    invoke-virtual {p1}, Ldjj;->a()V

    return-void
.end method

.method public final u(Lchd;Lchd;)V
    .locals 2

    invoke-direct {p0, p2}, Ldjf;->y(Lchd;)Ldjs;

    move-result-object v0

    invoke-virtual {v0, p2}, Ldjs;->k(Lchd;)V

    new-instance p2, Lcop;

    const/4 v0, 0x3

    invoke-direct {p2, p0, p1, v0}, Lcop;-><init>(Ldjf;Lchd;I)V

    iget-object p1, p0, Ldjf;->q:Ljava/util/concurrent/Executor;

    invoke-static {p2, p1}, Lnsy;->F(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object p1

    iget-object p2, p0, Ldjf;->b:Ldjj;

    new-instance v0, Ldgg;

    const/4 v1, 0x5

    invoke-direct {v0, p2, v1}, Ldgg;-><init>(Ldjj;I)V

    iget-object p2, p0, Ldjf;->q:Ljava/util/concurrent/Executor;

    invoke-interface {p1, v0, p2}, Lnou;->d(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    iget-object p2, p0, Ldjf;->n:Lcdi;

    invoke-virtual {p2}, Lcdi;->i()Ljuf;

    move-result-object p2

    new-instance v0, Ldei;

    const/16 v1, 0xc

    invoke-direct {v0, p1, v1}, Ldei;-><init>(Lnou;I)V

    invoke-virtual {p2, v0}, Ljuf;->d(Lkad;)V

    return-void
.end method

.method public final v(Lchd;)V
    .locals 1

    invoke-direct {p0, p1}, Ldjf;->y(Lchd;)Ldjs;

    move-result-object v0

    invoke-virtual {v0, p1}, Ldjs;->k(Lchd;)V

    return-void
.end method

.method public final x(Lgxy;)V
    .locals 4

    invoke-virtual {p0, p1}, Ldjf;->e(Lgxy;)Lchd;

    move-result-object v0

    iget-object v1, p0, Ldjf;->s:Lgwf;

    invoke-interface {v1, p1}, Lgwf;->a(Lgxy;)Lgxl;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lgxl;->k()Lhjc;

    move-result-object p1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    check-cast p1, Lhjd;

    const/4 v3, 0x2

    invoke-virtual {p1, v3, v1, v2}, Lhjd;->i(IJ)V

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Ldjf;->t(Lchd;)V

    :cond_1
    return-void
.end method

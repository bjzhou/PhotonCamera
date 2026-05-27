.class public final Lepi;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lnak;


# instance fields
.field public final b:Leph;

.field public final c:Lepl;

.field public final d:Ljvk;

.field public final e:Lkbc;

.field public final f:Lepv;

.field public final g:F

.field public final h:I

.field public final i:Ljava/util/Map;

.field private final j:Ljava/util/Map;

.field private final k:Ljvs;

.field private final l:Lecd;

.field private final m:Lcom/google/googlex/gcam/Gcam;

.field private final n:Ljava/util/concurrent/Executor;

.field private final o:Ljuf;

.field private final p:Ljvs;

.field private final q:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/lasagna/MotionBlurOptions"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lepi;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Leph;Lepl;Ljava/util/concurrent/Executor;Ljvk;Ljava/util/Map;Ljvs;Lecd;Lcom/google/googlex/gcam/Gcam;Lkbc;Ldhi;Lepv;Lgzm;Ljuf;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lepi;->i:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lepi;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lepi;->b:Leph;

    iput-object p2, p0, Lepi;->c:Lepl;

    iput-object p3, p0, Lepi;->n:Ljava/util/concurrent/Executor;

    iput-object p4, p0, Lepi;->d:Ljvk;

    iput-object p5, p0, Lepi;->j:Ljava/util/Map;

    iput-object p6, p0, Lepi;->k:Ljvs;

    iput-object p7, p0, Lepi;->l:Lecd;

    iput-object p8, p0, Lepi;->m:Lcom/google/googlex/gcam/Gcam;

    iput-object p9, p0, Lepi;->e:Lkbc;

    iput-object p11, p0, Lepi;->f:Lepv;

    iput-object p13, p0, Lepi;->o:Ljuf;

    sget-object p1, Lgzd;->aq:Lgzs;

    invoke-interface {p12, p1}, Lgzm;->a(Lgzb;)Ljvs;

    move-result-object p1

    new-instance p2, Lcdu;

    const/16 p3, 0x14

    invoke-direct {p2, p10, p3}, Lcdu;-><init>(Ldhi;I)V

    invoke-static {p1, p2}, Ljvw;->j(Ljvs;Lmqi;)Ljvs;

    move-result-object p1

    iput-object p1, p0, Lepi;->p:Ljvs;

    sget-object p1, Ldhx;->b:Ldhk;

    invoke-interface {p10, p1}, Ldhi;->a(Ldhk;)Lj$/util/Optional;

    move-result-object p1

    const/4 p2, 0x7

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lepi;->g:F

    sget-object p1, Ldhx;->c:Ldhk;

    invoke-interface {p10, p1}, Ldhi;->a(Ldhk;)Lj$/util/Optional;

    move-result-object p1

    const/16 p2, 0x10

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lepi;->h:I

    invoke-interface {p10}, Ldhi;->g()V

    invoke-interface {p10}, Ldhi;->e()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    iget-object v0, p0, Lepi;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lepi;->j:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgml;

    sget-object v4, Lgml;->q:Lmwn;

    invoke-virtual {v4, v3}, Lmwn;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkll;

    :try_start_0
    iget-object v3, p0, Lepi;->l:Lecd;

    invoke-interface {v3, v2}, Lecd;->a(Lkll;)I

    move-result v3

    iget-object v4, p0, Lepi;->m:Lcom/google/googlex/gcam/Gcam;

    invoke-virtual {v4, v3}, Lcom/google/googlex/gcam/Gcam;->b(I)Lcom/google/googlex/gcam/StaticMetadata;

    move-result-object v3

    iget-object v4, p0, Lepi;->i:Ljava/util/Map;

    iget-object v5, v2, Lkll;->a:Ljava/lang/String;

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    sget-object v3, Lepi;->a:Lnak;

    invoke-virtual {v3}, Lnaf;->c()Lnaz;

    move-result-object v3

    const-string v4, "Invalid camera ID: %s."

    const/16 v5, 0x6dc

    invoke-static {v3, v4, v2, v5}, Ld;->j(Lnaz;Ljava/lang/String;Ljava/lang/Object;C)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lepi;->o:Ljuf;

    const/4 v2, 0x2

    new-array v2, v2, [Ljvs;

    const/4 v3, 0x0

    iget-object v4, p0, Lepi;->p:Ljvs;

    aput-object v4, v2, v3

    iget-object v3, p0, Lepi;->k:Ljvs;

    aput-object v3, v2, v1

    invoke-static {v2}, Ljvw;->b([Ljvs;)Ljvs;

    move-result-object v1

    new-instance v2, Ldsk;

    const/16 v3, 0x9

    invoke-direct {v2, p0, v3}, Ldsk;-><init>(Lepi;I)V

    iget-object v3, p0, Lepi;->n:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v2, v3}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljuf;->d(Lkad;)V

    :cond_2
    return-void
.end method

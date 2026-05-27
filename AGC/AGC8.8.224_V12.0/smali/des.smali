.class public final Ldes;
.super Ljava/lang/Object;

# interfaces
.implements Ldej;


# static fields
.field public static final a:Lder;


# instance fields
.field public final b:Ldeg;

.field public final c:Ldek;

.field public final d:Lkbi;

.field public final e:Ljava/util/Map;

.field public f:Lder;

.field public final g:Landroid/content/Context;

.field public final h:Lkbc;

.field public final i:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final j:Landroid/util/LruCache;

.field public final k:Lcvr;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Ldep;->a:Ldep;

    sput-object v0, Ldes;->a:Lder;

    return-void
.end method

.method public constructor <init>(Ldeg;Lcvr;Ldek;Lkbi;Ldga;Landroid/content/Context;Lkbc;[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p8, Ldes;->a:Lder;

    iput-object p8, p0, Ldes;->f:Lder;

    new-instance p8, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p9, 0x0

    invoke-direct {p8, p9}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p8, p0, Ldes;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Ldes;->b:Ldeg;

    iput-object p2, p0, Ldes;->k:Lcvr;

    iput-object p3, p0, Ldes;->c:Ldek;

    iput-object p4, p0, Ldes;->d:Lkbi;

    invoke-interface {p5}, Ldga;->bz()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Ldes;->e:Ljava/util/Map;

    iput-object p6, p0, Ldes;->g:Landroid/content/Context;

    iput-object p7, p0, Ldes;->h:Lkbc;

    new-instance p1, Landroid/util/LruCache;

    const/16 p2, 0x14

    invoke-direct {p1, p2}, Landroid/util/LruCache;-><init>(I)V

    iput-object p1, p0, Ldes;->j:Landroid/util/LruCache;

    return-void
.end method

.method public static final b(Z)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 p0, 0x0

    invoke-static {p0}, Landroid/os/Process;->setThreadPriority(I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Long;)V
    .locals 5

    iget-object v0, p0, Ldes;->f:Lder;

    invoke-static {}, Ldef;->a()Ldee;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ldee;->c(J)V

    invoke-static {}, Lddo;->a()Lddn;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lddn;->f(J)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lddn;->g(J)V

    const/4 p1, 0x4

    iput p1, v2, Lddn;->e:I

    invoke-virtual {v2}, Lddn;->a()Lddo;

    move-result-object p1

    invoke-static {p1}, Lmvv;->l(Ljava/lang/Object;)Lmvv;

    move-result-object p1

    invoke-virtual {v1, p1}, Ldee;->b(Ljava/util/List;)V

    invoke-virtual {v1}, Ldee;->a()Ldef;

    move-result-object p1

    invoke-interface {v0, p1}, Lder;->k(Ldef;)V

    return-void
.end method

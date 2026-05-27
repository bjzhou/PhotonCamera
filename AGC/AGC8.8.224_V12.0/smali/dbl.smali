.class public final Ldbl;
.super Ljava/lang/Object;

# interfaces
.implements Lkdy;


# instance fields
.field public final a:Ldbf;

.field public final b:Ljava/lang/Runnable;

.field public final c:Lklv;

.field private final d:Ldhi;

.field private final e:Ljuh;

.field private final f:Ldns;

.field private final g:Ldna;

.field private final h:Ldde;

.field private final i:Lklx;

.field private final j:Lcvr;


# direct methods
.method public constructor <init>(Ldhi;Lcvr;Ldbf;Ljuh;Lklx;Ldns;Ldna;Ldde;Lklv;Ljava/lang/Runnable;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldbl;->d:Ldhi;

    iput-object p2, p0, Ldbl;->j:Lcvr;

    iput-object p3, p0, Ldbl;->a:Ldbf;

    iput-object p4, p0, Ldbl;->e:Ljuh;

    iput-object p5, p0, Ldbl;->i:Lklx;

    iput-object p6, p0, Ldbl;->f:Ldns;

    iput-object p7, p0, Ldbl;->g:Ldna;

    iput-object p8, p0, Ldbl;->h:Ldde;

    iput-object p10, p0, Ldbl;->b:Ljava/lang/Runnable;

    iput-object p9, p0, Ldbl;->c:Lklv;

    return-void
.end method


# virtual methods
.method public final a(Lkbo;J)V
    .locals 4

    invoke-static {p1}, Lkbo;->e(Lkbo;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Ldbl;->j:Lcvr;

    invoke-virtual {v0}, Lcvr;->g()J

    move-result-wide v0

    cmp-long v2, p2, v0

    if-gez v2, :cond_1

    iget-object v0, p0, Ldbl;->j:Lcvr;

    invoke-virtual {v0}, Lcvr;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Ldbl;->h:Ldde;

    iget-object p2, p0, Ldbl;->c:Lklv;

    invoke-interface {p1, p2}, Ldde;->h(Lklv;)V

    iget-object p1, p0, Ldbl;->e:Ljuh;

    new-instance p2, Lczl;

    const/4 p3, 0x6

    invoke-direct {p2, p0, p3}, Lczl;-><init>(Ldbl;I)V

    invoke-virtual {p1, p2}, Ljuh;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    iget-object v0, p0, Ldbl;->g:Ldna;

    iget-object v1, p0, Ldbl;->i:Lklx;

    iget-object v2, p0, Ldbl;->d:Ldhi;

    iget-object v3, p0, Ldbl;->c:Lklv;

    invoke-virtual {v0, v1, v2, v3}, Ldna;->b(Lklj;Ldhi;Lklv;)Lkll;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Ldbl;->f:Ldns;

    new-instance v2, Ldnt;

    invoke-direct {v2, v0, p1, p2, p3}, Ldnt;-><init>(Lkll;Lkbo;J)V

    invoke-interface {v1, v2}, Ldns;->f(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Ldbl;->h:Ldde;

    iget-object v1, p0, Ldbl;->c:Lklv;

    invoke-interface {v0, v1}, Ldde;->g(Lklv;)V

    return-void
.end method

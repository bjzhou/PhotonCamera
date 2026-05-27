.class public final Lepo;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlex/gcam/lasagna/LasagnaCallbacks;
.implements Leqa;


# static fields
.field public static final a:Lnak;


# instance fields
.field public final b:Lepl;

.field public final c:Leph;

.field public final d:I

.field public final e:Leqb;

.field public final f:Lkbc;

.field public final g:Lnph;

.field public final h:Lgxl;

.field public i:Leea;

.field public j:Lnph;

.field public k:Ljava/lang/Runnable;

.field public l:Leqf;

.field public m:Z

.field public final n:Lcvr;

.field private final o:Lnrm;

.field private final p:Ljava/util/concurrent/Executor;

.field private final q:Lnph;

.field private final r:Lfzz;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/lasagna/MotionBlurProcessingSession"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lepo;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Lnrm;Lepl;Ljava/util/concurrent/Executor;Lkbc;Lgkr;Leph;Leqb;Lnph;Lnph;[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p10, 0x0

    iput-boolean p10, p0, Lepo;->m:Z

    iput-object p1, p0, Lepo;->o:Lnrm;

    iput-object p2, p0, Lepo;->b:Lepl;

    iput-object p3, p0, Lepo;->p:Ljava/util/concurrent/Executor;

    iput-object p4, p0, Lepo;->f:Lkbc;

    iget-object p1, p5, Lgkr;->b:Ljava/lang/Object;

    iput-object p1, p0, Lepo;->r:Lfzz;

    iput-object p6, p0, Lepo;->c:Leph;

    iput-object p7, p0, Lepo;->e:Leqb;

    iput-object p8, p0, Lepo;->g:Lnph;

    iput-object p9, p0, Lepo;->q:Lnph;

    iget-object p1, p5, Lgkr;->c:Ljava/lang/Object;

    invoke-interface {p1}, Lgxl;->h()Lgxy;

    move-result-object p1

    iget p1, p1, Lgxy;->a:I

    iput p1, p0, Lepo;->d:I

    iget-object p1, p5, Lgkr;->c:Ljava/lang/Object;

    iput-object p1, p0, Lepo;->h:Lgxl;

    new-instance p1, Lcvr;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcvr;-><init>([S)V

    iput-object p1, p0, Lepo;->n:Lcvr;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(IILjava/lang/String;Lmqp;)V
    .locals 7

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lepo;->m:Z

    iget-object v1, p0, Lepo;->k:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :cond_0
    iget-object v1, p0, Lepo;->q:Lnph;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnph;->e(Ljava/lang/Object;)Z

    if-nez p2, :cond_2b

    iget-object p2, p0, Lepo;->j:Lnph;

    if-eqz p2, :cond_1

    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p2, p3}, Lnph;->e(Ljava/lang/Object;)Z

    :cond_1
    iget-object p2, p0, Lepo;->n:Lcvr;

    iget-object p3, p2, Lcvr;->a:Ljava/lang/Object;

    move-object v1, p3

    check-cast v1, Lnwn;

    iget-object v1, v1, Lnwn;->b:Lnws;

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_2

    move-object v1, p3

    check-cast v1, Lnwn;

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_2
    check-cast p3, Lnwn;

    iget-object p3, p3, Lnwn;->b:Lnws;

    check-cast p3, Lnjt;

    sget-object v1, Lnjt;->x:Lnjt;

    iget v1, p3, Lnjt;->a:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p3, Lnjt;->a:I

    iput-boolean v0, p3, Lnjt;->c:Z

    invoke-virtual {p4}, Lmqp;->g()Z

    move-result p3

    if-eqz p3, :cond_2a

    invoke-virtual {p4}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lntd;

    iget-object p4, p3, Lntd;->h:Lnwx;

    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p2, Lcvr;->a:Ljava/lang/Object;

    invoke-static {p4}, Llyh;->S(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Float;

    invoke-virtual {p4}, Ljava/lang/Float;->floatValue()F

    move-result p4

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p4

    move-object v2, v1

    check-cast v2, Lnwn;

    iget-object v2, v2, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_3

    move-object v2, v1

    check-cast v2, Lnwn;

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_3
    check-cast v1, Lnwn;

    iget-object v1, v1, Lnwn;->b:Lnws;

    check-cast v1, Lnjt;

    iget v2, v1, Lnjt;->a:I

    or-int/lit8 v2, v2, 0x20

    iput v2, v1, Lnjt;->a:I

    iput p4, v1, Lnjt;->f:F

    :cond_4
    iget p4, p3, Lntd;->a:I

    and-int/lit16 p4, p4, 0x80

    if-eqz p4, :cond_6

    iget-object p4, p2, Lcvr;->a:Ljava/lang/Object;

    iget v1, p3, Lntd;->e:F

    move-object v2, p4

    check-cast v2, Lnwn;

    iget-object v2, v2, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_5

    move-object v2, p4

    check-cast v2, Lnwn;

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_5
    check-cast p4, Lnwn;

    iget-object p4, p4, Lnwn;->b:Lnws;

    check-cast p4, Lnjt;

    iget v2, p4, Lnjt;->a:I

    or-int/lit8 v2, v2, 0x40

    iput v2, p4, Lnjt;->a:I

    iput v1, p4, Lnjt;->g:F

    :cond_6
    iget p4, p3, Lntd;->a:I

    and-int/lit16 p4, p4, 0x100

    if-eqz p4, :cond_8

    iget-object p4, p2, Lcvr;->a:Ljava/lang/Object;

    iget v1, p3, Lntd;->f:F

    move-object v2, p4

    check-cast v2, Lnwn;

    iget-object v2, v2, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_7

    move-object v2, p4

    check-cast v2, Lnwn;

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_7
    check-cast p4, Lnwn;

    iget-object p4, p4, Lnwn;->b:Lnws;

    check-cast p4, Lnjt;

    iget v2, p4, Lnjt;->a:I

    or-int/lit16 v2, v2, 0x80

    iput v2, p4, Lnjt;->a:I

    iput v1, p4, Lnjt;->h:F

    :cond_8
    iget p4, p3, Lntd;->a:I

    and-int/lit8 p4, p4, 0x10

    if-eqz p4, :cond_a

    iget-object p4, p2, Lcvr;->a:Ljava/lang/Object;

    iget v1, p3, Lntd;->c:I

    move-object v2, p4

    check-cast v2, Lnwn;

    iget-object v2, v2, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_9

    move-object v2, p4

    check-cast v2, Lnwn;

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_9
    check-cast p4, Lnwn;

    iget-object p4, p4, Lnwn;->b:Lnws;

    check-cast p4, Lnjt;

    iget v2, p4, Lnjt;->a:I

    or-int/lit16 v2, v2, 0x200

    iput v2, p4, Lnjt;->a:I

    iput v1, p4, Lnjt;->j:I

    :cond_a
    iget p4, p3, Lntd;->a:I

    and-int/lit8 p4, p4, 0x20

    if-eqz p4, :cond_c

    iget-object p4, p2, Lcvr;->a:Ljava/lang/Object;

    iget v1, p3, Lntd;->d:I

    move-object v2, p4

    check-cast v2, Lnwn;

    iget-object v2, v2, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_b

    move-object v2, p4

    check-cast v2, Lnwn;

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_b
    check-cast p4, Lnwn;

    iget-object p4, p4, Lnwn;->b:Lnws;

    check-cast p4, Lnjt;

    iget v2, p4, Lnjt;->a:I

    or-int/lit16 v2, v2, 0x400

    iput v2, p4, Lnjt;->a:I

    iput v1, p4, Lnjt;->k:I

    :cond_c
    iget p4, p3, Lntd;->a:I

    and-int/lit16 p4, p4, 0x200

    if-eqz p4, :cond_e

    iget-object p4, p2, Lcvr;->a:Ljava/lang/Object;

    iget v1, p3, Lntd;->g:I

    move-object v2, p4

    check-cast v2, Lnwn;

    iget-object v2, v2, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_d

    move-object v2, p4

    check-cast v2, Lnwn;

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_d
    check-cast p4, Lnwn;

    iget-object p4, p4, Lnwn;->b:Lnws;

    check-cast p4, Lnjt;

    iget v2, p4, Lnjt;->a:I

    or-int/lit16 v2, v2, 0x800

    iput v2, p4, Lnjt;->a:I

    iput v1, p4, Lnjt;->l:I

    :cond_e
    iget p4, p3, Lntd;->a:I

    and-int/lit16 p4, p4, 0x800

    if-eqz p4, :cond_10

    iget-object p4, p2, Lcvr;->a:Ljava/lang/Object;

    iget-boolean v1, p3, Lntd;->i:Z

    move-object v2, p4

    check-cast v2, Lnwn;

    iget-object v2, v2, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_f

    move-object v2, p4

    check-cast v2, Lnwn;

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_f
    check-cast p4, Lnwn;

    iget-object p4, p4, Lnwn;->b:Lnws;

    check-cast p4, Lnjt;

    iget v2, p4, Lnjt;->a:I

    or-int/lit16 v2, v2, 0x1000

    iput v2, p4, Lnjt;->a:I

    iput-boolean v1, p4, Lnjt;->m:Z

    :cond_10
    iget p4, p3, Lntd;->a:I

    and-int/lit8 p4, p4, 0x8

    if-eqz p4, :cond_12

    iget-object p4, p2, Lcvr;->a:Ljava/lang/Object;

    iget v1, p3, Lntd;->b:I

    move-object v2, p4

    check-cast v2, Lnwn;

    iget-object v2, v2, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_11

    move-object v2, p4

    check-cast v2, Lnwn;

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_11
    check-cast p4, Lnwn;

    iget-object p4, p4, Lnwn;->b:Lnws;

    check-cast p4, Lnjt;

    iget v2, p4, Lnjt;->a:I

    or-int/lit16 v2, v2, 0x2000

    iput v2, p4, Lnjt;->a:I

    iput v1, p4, Lnjt;->n:I

    :cond_12
    iget p4, p3, Lntd;->a:I

    const/high16 v1, 0x80000

    and-int/2addr p4, v1

    if-eqz p4, :cond_15

    iget-object p4, p2, Lcvr;->a:Ljava/lang/Object;

    iget-object v2, p3, Lntd;->j:Lntb;

    if-nez v2, :cond_13

    sget-object v2, Lntb;->g:Lntb;

    :cond_13
    invoke-static {v2}, Lcvr;->A(Lntb;)Lnhz;

    move-result-object v2

    move-object v3, p4

    check-cast v3, Lnwn;

    iget-object v3, v3, Lnwn;->b:Lnws;

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_14

    move-object v3, p4

    check-cast v3, Lnwn;

    invoke-virtual {v3}, Lnwn;->p()V

    :cond_14
    check-cast p4, Lnwn;

    iget-object p4, p4, Lnwn;->b:Lnws;

    check-cast p4, Lnjt;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v2, p4, Lnjt;->p:Lnhz;

    iget v2, p4, Lnjt;->a:I

    const v3, 0x8000

    or-int/2addr v2, v3

    iput v2, p4, Lnjt;->a:I

    :cond_15
    iget p4, p3, Lntd;->a:I

    const/high16 v2, 0x400000

    and-int/2addr p4, v2

    if-eqz p4, :cond_18

    iget-object p4, p2, Lcvr;->a:Ljava/lang/Object;

    iget-object v3, p3, Lntd;->m:Lntb;

    if-nez v3, :cond_16

    sget-object v3, Lntb;->g:Lntb;

    :cond_16
    invoke-static {v3}, Lcvr;->A(Lntb;)Lnhz;

    move-result-object v3

    move-object v4, p4

    check-cast v4, Lnwn;

    iget-object v4, v4, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_17

    move-object v4, p4

    check-cast v4, Lnwn;

    invoke-virtual {v4}, Lnwn;->p()V

    :cond_17
    check-cast p4, Lnwn;

    iget-object p4, p4, Lnwn;->b:Lnws;

    check-cast p4, Lnjt;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v3, p4, Lnjt;->q:Lnhz;

    iget v3, p4, Lnjt;->a:I

    const/high16 v4, 0x10000

    or-int/2addr v3, v4

    iput v3, p4, Lnjt;->a:I

    :cond_18
    iget p4, p3, Lntd;->a:I

    const/high16 v3, 0x800000

    and-int/2addr p4, v3

    if-eqz p4, :cond_1b

    iget-object p4, p2, Lcvr;->a:Ljava/lang/Object;

    iget-object v3, p3, Lntd;->n:Lntb;

    if-nez v3, :cond_19

    sget-object v3, Lntb;->g:Lntb;

    :cond_19
    invoke-static {v3}, Lcvr;->A(Lntb;)Lnhz;

    move-result-object v3

    move-object v4, p4

    check-cast v4, Lnwn;

    iget-object v4, v4, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_1a

    move-object v4, p4

    check-cast v4, Lnwn;

    invoke-virtual {v4}, Lnwn;->p()V

    :cond_1a
    check-cast p4, Lnwn;

    iget-object p4, p4, Lnwn;->b:Lnws;

    check-cast p4, Lnjt;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v3, p4, Lnjt;->r:Lnhz;

    iget v3, p4, Lnjt;->a:I

    const/high16 v4, 0x20000

    or-int/2addr v3, v4

    iput v3, p4, Lnjt;->a:I

    :cond_1b
    iget p4, p3, Lntd;->a:I

    const/high16 v3, 0x1000000

    and-int/2addr p4, v3

    if-eqz p4, :cond_1e

    iget-object p4, p2, Lcvr;->a:Ljava/lang/Object;

    iget-object v3, p3, Lntd;->o:Lntb;

    if-nez v3, :cond_1c

    sget-object v3, Lntb;->g:Lntb;

    :cond_1c
    invoke-static {v3}, Lcvr;->A(Lntb;)Lnhz;

    move-result-object v3

    move-object v4, p4

    check-cast v4, Lnwn;

    iget-object v4, v4, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_1d

    move-object v4, p4

    check-cast v4, Lnwn;

    invoke-virtual {v4}, Lnwn;->p()V

    :cond_1d
    check-cast p4, Lnwn;

    iget-object p4, p4, Lnwn;->b:Lnws;

    check-cast p4, Lnjt;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v3, p4, Lnjt;->s:Lnhz;

    iget v3, p4, Lnjt;->a:I

    const/high16 v4, 0x40000

    or-int/2addr v3, v4

    iput v3, p4, Lnjt;->a:I

    :cond_1e
    iget p4, p3, Lntd;->a:I

    const/high16 v3, 0x2000000

    and-int/2addr p4, v3

    if-eqz p4, :cond_21

    iget-object p4, p2, Lcvr;->a:Ljava/lang/Object;

    iget-object v3, p3, Lntd;->p:Lntb;

    if-nez v3, :cond_1f

    sget-object v3, Lntb;->g:Lntb;

    :cond_1f
    invoke-static {v3}, Lcvr;->A(Lntb;)Lnhz;

    move-result-object v3

    move-object v4, p4

    check-cast v4, Lnwn;

    iget-object v4, v4, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_20

    move-object v4, p4

    check-cast v4, Lnwn;

    invoke-virtual {v4}, Lnwn;->p()V

    :cond_20
    check-cast p4, Lnwn;

    iget-object p4, p4, Lnwn;->b:Lnws;

    check-cast p4, Lnjt;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v3, p4, Lnjt;->t:Lnhz;

    iget v3, p4, Lnjt;->a:I

    or-int/2addr v1, v3

    iput v1, p4, Lnjt;->a:I

    :cond_21
    iget p4, p3, Lntd;->a:I

    const/high16 v1, 0x100000

    and-int/2addr p4, v1

    if-eqz p4, :cond_23

    iget-object p4, p2, Lcvr;->a:Ljava/lang/Object;

    iget v3, p3, Lntd;->k:F

    move-object v4, p4

    check-cast v4, Lnwn;

    iget-object v4, v4, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_22

    move-object v4, p4

    check-cast v4, Lnwn;

    invoke-virtual {v4}, Lnwn;->p()V

    :cond_22
    check-cast p4, Lnwn;

    iget-object p4, p4, Lnwn;->b:Lnws;

    check-cast p4, Lnjt;

    iget v4, p4, Lnjt;->a:I

    or-int/2addr v1, v4

    iput v1, p4, Lnjt;->a:I

    iput v3, p4, Lnjt;->u:F

    :cond_23
    iget p4, p3, Lntd;->a:I

    const/high16 v1, 0x200000

    and-int/2addr p4, v1

    if-eqz p4, :cond_25

    iget-object p4, p2, Lcvr;->a:Ljava/lang/Object;

    iget v3, p3, Lntd;->l:F

    move-object v4, p4

    check-cast v4, Lnwn;

    iget-object v4, v4, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_24

    move-object v4, p4

    check-cast v4, Lnwn;

    invoke-virtual {v4}, Lnwn;->p()V

    :cond_24
    check-cast p4, Lnwn;

    iget-object p4, p4, Lnwn;->b:Lnws;

    check-cast p4, Lnjt;

    iget v4, p4, Lnjt;->a:I

    or-int/2addr v1, v4

    iput v1, p4, Lnjt;->a:I

    iput v3, p4, Lnjt;->v:F

    :cond_25
    iget p4, p3, Lntd;->a:I

    const/high16 v1, 0x4000000

    and-int/2addr p4, v1

    if-eqz p4, :cond_2a

    iget-object p2, p2, Lcvr;->a:Ljava/lang/Object;

    iget-object p3, p3, Lntd;->q:Lnta;

    if-nez p3, :cond_26

    sget-object p3, Lnta;->c:Lnta;

    :cond_26
    sget-object p4, Lngm;->d:Lngm;

    invoke-virtual {p4}, Lnws;->O()Lnwn;

    move-result-object p4

    iget-wide v3, p3, Lnta;->a:D

    iget-object v1, p4, Lnwn;->b:Lnws;

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_27

    invoke-virtual {p4}, Lnwn;->p()V

    :cond_27
    iget-object v1, p4, Lnwn;->b:Lnws;

    move-object v5, v1

    check-cast v5, Lngm;

    iget v6, v5, Lngm;->a:I

    or-int/2addr v6, v0

    iput v6, v5, Lngm;->a:I

    iput-wide v3, v5, Lngm;->b:D

    iget p3, p3, Lnta;->b:I

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_28

    invoke-virtual {p4}, Lnwn;->p()V

    :cond_28
    iget-object v1, p4, Lnwn;->b:Lnws;

    check-cast v1, Lngm;

    iget v3, v1, Lngm;->a:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v1, Lngm;->a:I

    iput p3, v1, Lngm;->c:I

    invoke-virtual {p4}, Lnwn;->i()Lnws;

    move-result-object p3

    check-cast p3, Lngm;

    move-object p4, p2

    check-cast p4, Lnwn;

    iget-object p4, p4, Lnwn;->b:Lnws;

    invoke-virtual {p4}, Lnws;->ac()Z

    move-result p4

    if-nez p4, :cond_29

    move-object p4, p2

    check-cast p4, Lnwn;

    invoke-virtual {p4}, Lnwn;->p()V

    :cond_29
    check-cast p2, Lnwn;

    iget-object p2, p2, Lnwn;->b:Lnws;

    check-cast p2, Lnjt;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p3, p2, Lnjt;->w:Lngm;

    iget p3, p2, Lnjt;->a:I

    or-int/2addr p3, v2

    iput p3, p2, Lnjt;->a:I

    :cond_2a
    iget-object p2, p0, Lepo;->b:Lepl;

    invoke-virtual {p2, p1, v0}, Lepl;->b(IZ)V

    goto :goto_0

    :cond_2b
    sget-object p4, Lepo;->a:Lnak;

    invoke-virtual {p4}, Lnaf;->c()Lnaz;

    move-result-object p4

    check-cast p4, Lnah;

    const/16 v0, 0x6f8

    invoke-interface {p4, v0}, Lnah;->G(I)Lnaz;

    move-result-object p4

    check-cast p4, Lnah;

    const-string v0, "[shot-%s] Final error status [%s]. "

    invoke-interface {p4, v0, p1, p3}, Lnah;->u(Ljava/lang/String;ILjava/lang/Object;)V

    const/16 p4, 0xa

    if-eq p2, p4, :cond_2c

    iget-object p2, p0, Lepo;->p:Ljava/util/concurrent/Executor;

    new-instance p4, Lepn;

    invoke-direct {p4, p0, p1, p3}, Lepn;-><init>(Lepo;ILjava/lang/String;)V

    invoke-interface {p2, p4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_2c
    :goto_0
    iget-object p1, p0, Lepo;->h:Lgxl;

    invoke-interface {p1}, Lgxl;->k()Lhjc;

    move-result-object p1

    iget-object p2, p0, Lepo;->n:Lcvr;

    invoke-virtual {p2}, Lcvr;->z()Lnjt;

    move-result-object p2

    check-cast p1, Lhjd;

    iput-object p2, p1, Lhjd;->u:Lnjt;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b(Lnsx;)V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lepo;->m:Z

    if-nez v0, :cond_1

    iget-object v0, p1, Lnsx;->b:Lcom/google/googlex/gcam/FrameMetadata;

    invoke-virtual {v0}, Lcom/google/googlex/gcam/FrameMetadata;->c()J

    iget-object v0, p1, Lnsx;->b:Lcom/google/googlex/gcam/FrameMetadata;

    invoke-virtual {v0}, Lcom/google/googlex/gcam/FrameMetadata;->c()J

    move-result-wide v0

    iget-object v2, p0, Lepo;->b:Lepl;

    iget v3, p0, Lepo;->d:I

    new-instance v4, Lekf;

    const/16 v5, 0xd

    invoke-direct {v4, p0, p1, v5}, Lekf;-><init>(Lepo;Lnsx;I)V

    new-instance v5, Lepm;

    const/4 v6, 0x0

    invoke-direct {v5, v0, v1, p1, v6}, Lepm;-><init>(JLnsx;I)V

    const-string p1, "onPslFrame"

    invoke-virtual {v2, v3, p1, v4, v5}, Lepl;->d(ILjava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    sget-object p1, Lepo;->a:Lnak;

    invoke-virtual {p1}, Lnaf;->c()Lnaz;

    move-result-object p1

    const-string v0, "Couldn\'t post PSL frame"

    const/16 v1, 0x6fd

    invoke-static {p1, v0, v1}, Ld;->g(Lnaz;Ljava/lang/String;C)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p1, Lnsx;->b:Lcom/google/googlex/gcam/FrameMetadata;

    invoke-virtual {v0}, Lcom/google/googlex/gcam/FrameMetadata;->c()J

    iget-object p1, p1, Lnsx;->d:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lepo;->q:Lnph;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnph;->e(Ljava/lang/Object;)Z

    iget-object v0, p0, Lepo;->e:Leqb;

    if-eqz v0, :cond_0

    iget v1, p0, Lepo;->d:I

    invoke-interface {v0, v1}, Leqb;->b(I)V

    :cond_0
    iget-object v0, p0, Lepo;->r:Lfzz;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lfzz;->f()V

    :cond_1
    return-void
.end method

.method public final declared-synchronized d(Z)V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lepo;->q:Lnph;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lnph;->e(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Lepo;->m:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    if-eq v1, p1, :cond_1

    const-string v0, "endShot"

    goto :goto_0

    :cond_1
    const-string v0, "abortShot"

    :goto_0
    iget-object v2, p0, Lepo;->b:Lepl;

    iget v3, p0, Lepo;->d:I

    new-instance v4, Lcwz;

    const/4 v5, 0x2

    invoke-direct {v4, p0, v0, p1, v5}, Lcwz;-><init>(Lepo;Ljava/lang/String;ZI)V

    new-instance p1, Leli;

    const/16 v5, 0xd

    invoke-direct {p1, v0, v5}, Leli;-><init>(Ljava/lang/String;I)V

    const-string v5, "onPslDone: "

    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5, v4, p1}, Lepl;->d(ILjava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)I

    move-result p1

    if-eq p1, v1, :cond_2

    sget-object p1, Lepo;->a:Lnak;

    invoke-virtual {p1}, Lnaf;->c()Lnaz;

    move-result-object p1

    const-string v1, "Couldn\'t post %s"

    const/16 v2, 0x6fc

    invoke-static {p1, v1, v0, v2}, Ld;->j(Lnaz;Ljava/lang/String;Ljava/lang/Object;C)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final e(IJILjava/lang/String;Lcom/google/googlex/gcam/ShotMetadata;)V
    .locals 22

    move-object/from16 v1, p0

    move/from16 v0, p4

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    if-eqz v0, :cond_7

    add-int/lit8 v4, v0, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-static/range {p4 .. p4}, Lnsy;->d(I)Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x2

    aput-object v4, v3, v7

    const/4 v4, 0x3

    aput-object p5, v3, v4

    const-string v4, "Got image!!! allocationId = %d, outputType=%d (%s), description=%s)"

    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    iget-object v2, v1, Lepo;->f:Lkbc;

    const-string v3, "MotionBlur#onImage"

    invoke-interface {v2, v3}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v2, v1, Lepo;->o:Lnrm;

    move-wide/from16 v3, p2

    invoke-virtual {v2, v3, v4}, Lnrm;->a(J)Lmqp;

    move-result-object v2

    invoke-virtual {v2}, Lmqp;->g()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v1, Lepo;->f:Lkbc;

    const-string v4, "settingResult"

    invoke-interface {v3, v4}, Lkbc;->e(Ljava/lang/String;)V

    invoke-virtual {v2}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/googlex/gcam/InterleavedImageU8;

    invoke-virtual {v2}, Lcom/google/googlex/gcam/InterleavedImageU8;->c()I

    invoke-virtual {v2}, Lcom/google/googlex/gcam/InterleavedImageU8;->b()I

    invoke-virtual {v2}, Lcom/google/googlex/gcam/InterleavedImageU8;->a()I

    new-instance v3, Leqe;

    move-object/from16 v4, p6

    invoke-direct {v3, v2, v0, v4}, Leqe;-><init>(Lcom/google/googlex/gcam/InterleavedImageU8;ILcom/google/googlex/gcam/ShotMetadata;)V

    invoke-static {v3}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v2

    iget-object v3, v1, Lepo;->f:Lkbc;

    invoke-interface {v3}, Lkbc;->f()V

    goto :goto_0

    :cond_0
    sget-object v2, Lmpx;->a:Lmpx;

    :goto_0
    iget-object v3, v1, Lepo;->l:Leqf;

    if-eqz v3, :cond_6

    iget-object v4, v1, Lepo;->i:Leea;

    if-eqz v4, :cond_6

    :try_start_0
    invoke-virtual {v4}, Leea;->a()I

    move-object v8, v3

    check-cast v8, Lepq;

    iget-object v8, v8, Lepq;->d:Ljava/util/Map;

    invoke-interface {v8, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lepd;

    if-nez v8, :cond_2

    invoke-virtual {v2}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leqe;

    invoke-virtual {v0}, Leqe;->close()V

    :cond_1
    const-string v0, "Shot hasn\'t been started yet"

    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    invoke-virtual {v2}, Lmqp;->g()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-virtual {v4}, Leea;->a()I

    move-result v0

    int-to-long v10, v0

    invoke-virtual {v2}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leqe;

    iget v4, v0, Leqe;->d:I

    const/4 v9, 0x5

    if-ne v4, v9, :cond_4

    iget-object v4, v0, Leqe;->a:Lcom/google/googlex/gcam/InterleavedImageU8;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    move-object v7, v3

    check-cast v7, Lepq;

    iget-object v7, v7, Lepq;->c:Lkbc;

    const-string v9, "updateThumbnail"

    invoke-interface {v7, v9}, Lkbc;->e(Ljava/lang/String;)V

    move-object v7, v3

    check-cast v7, Lepq;

    iget-object v7, v7, Lepq;->c:Lkbc;

    const-string v9, "convert"

    invoke-interface {v7, v9}, Lkbc;->e(Ljava/lang/String;)V

    move-object v7, v3

    check-cast v7, Lepq;

    iget-object v7, v7, Lepq;->h:Lcvr;

    invoke-virtual {v7, v4}, Lcvr;->J(Lcom/google/googlex/gcam/InterleavedImageU8;)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object v7, v3

    check-cast v7, Lepq;

    iget-object v7, v7, Lepq;->c:Lkbc;

    invoke-interface {v7}, Lkbc;->f()V

    iget-object v7, v8, Lepd;->d:Leqg;

    sget-object v9, Leqg;->b:Leqg;

    if-ne v7, v9, :cond_3

    const/4 v5, 0x1

    goto :goto_1

    :cond_3
    :goto_1
    move-object v6, v3

    check-cast v6, Lepq;

    invoke-virtual {v6, v8, v4, v5}, Lepq;->l(Lepd;Landroid/graphics/Bitmap;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    check-cast v3, Lepq;

    iget-object v3, v3, Lepq;->c:Lkbc;

    invoke-interface {v3}, Lkbc;->f()V

    invoke-virtual {v0}, Leqe;->close()V

    goto/16 :goto_5

    :catchall_0
    move-exception v0

    check-cast v3, Lepq;

    iget-object v3, v3, Lepq;->c:Lkbc;

    invoke-interface {v3}, Lkbc;->f()V

    throw v0

    :cond_4
    move-object v4, v3

    check-cast v4, Lepq;

    iget-object v4, v4, Lepq;->f:Lgvb;

    iget-object v6, v0, Leqe;->a:Lcom/google/googlex/gcam/InterleavedImageU8;

    iget v9, v8, Lepd;->e:I

    move-object v12, v3

    check-cast v12, Lepq;

    iget-object v12, v12, Lepq;->g:Lfuz;

    invoke-virtual {v12}, Lklw;->k()Lklv;

    move-result-object v12

    invoke-interface {v4, v6, v9, v12}, Lgvb;->c(Lcom/google/googlex/gcam/InterleavedImageU8;ILklv;)Lcom/google/googlex/gcam/InterleavedImageU8;

    move-result-object v4

    check-cast v3, Lepq;

    iget-object v9, v3, Lepq;->b:Leeo;

    iget-object v13, v0, Leqe;->c:Lgpa;

    iget v3, v0, Leqe;->d:I

    add-int/lit8 v3, v3, -0x1

    packed-switch v3, :pswitch_data_0

    const/16 v5, 0x64

    const/16 v14, 0x64

    goto :goto_2

    :pswitch_0
    const/4 v14, 0x0

    :goto_2
    packed-switch v3, :pswitch_data_1

    sget-object v3, Leen;->b:Leen;

    goto :goto_3

    :pswitch_1
    sget-object v3, Leen;->a:Leen;

    move-object/from16 v17, v3

    goto :goto_4

    :goto_3
    move-object/from16 v17, v3

    :goto_4
    iget-object v3, v8, Lepd;->b:Leea;

    iget-object v3, v3, Leea;->v:Lgkr;

    iget-object v3, v3, Lgkr;->c:Ljava/lang/Object;

    iget-object v5, v8, Lepd;->f:Ljava/util/UUID;

    iget-object v6, v0, Leqe;->b:Lcom/google/googlex/gcam/ShotMetadata;

    invoke-static {v4}, Ligo;->i(Ljava/lang/Object;)Ligo;

    move-result-object v12

    const/4 v15, 0x0

    iget-object v4, v9, Leeo;->f:Ldhi;

    sget-object v7, Ldho;->bD:Ldhj;

    invoke-interface {v4, v7}, Ldhi;->l(Ldhj;)Z

    move-result v16

    sget-object v21, Lmpx;->a:Lmpx;

    move-object/from16 v18, v3

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    invoke-virtual/range {v9 .. v21}, Leeo;->a(JLigo;Lgpa;IIZLeen;Lgxl;Ljava/util/UUID;Lcom/google/googlex/gcam/ShotMetadata;Lmqp;)Lnou;

    move-result-object v3

    new-instance v4, Lenq;

    const/4 v5, 0x2

    invoke-direct {v4, v0, v8, v5}, Lenq;-><init>(Leqe;Lepd;I)V

    sget-object v0, Lnnv;->a:Lnnv;

    invoke-static {v3, v4, v0}, Lnsy;->L(Lnou;Lnoj;Ljava/util/concurrent/Executor;)V

    goto :goto_5

    :cond_5
    sget-object v3, Lepq;->a:Lnak;

    invoke-virtual {v3}, Lnaf;->c()Lnaz;

    move-result-object v3

    check-cast v3, Lnah;

    const/16 v4, 0x718

    invoke-interface {v3, v4}, Lnah;->G(I)Lnaz;

    move-result-object v3

    check-cast v3, Lnah;

    invoke-static/range {p4 .. p4}, Lnsy;->d(I)Ljava/lang/String;

    move-result-object v0

    const-string v4, "Motion Blur result %s was received, but ignored because it was invalid."

    invoke-interface {v3, v4, v0}, Lnah;->r(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v8}, Lepd;->e()V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    sget-object v3, Lepo;->a:Lnak;

    invoke-virtual {v3}, Lnaf;->c()Lnaz;

    move-result-object v3

    check-cast v3, Lnah;

    invoke-interface {v3, v0}, Lnah;->h(Ljava/lang/Throwable;)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const/16 v3, 0x6f9

    invoke-interface {v0, v3}, Lnah;->G(I)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const-string v3, "Error saving the image for shot %s."

    move/from16 v4, p1

    invoke-interface {v0, v3, v4}, Lnah;->p(Ljava/lang/String;I)V

    invoke-virtual {v2}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v2}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leqe;

    invoke-virtual {v0}, Leqe;->close()V

    :cond_6
    :goto_5
    iget-object v0, v1, Lepo;->f:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    return-void

    :cond_7
    const/4 v0, 0x0

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method public final synthetic onFinalStatusNative(IILjava/lang/String;[B)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lnsy;->$default$onFinalStatusNative(Lcom/google/googlex/gcam/lasagna/LasagnaCallbacks;IILjava/lang/String;[B)V

    return-void
.end method

.method public final synthetic onImageNative(IJILjava/lang/String;J)V
    .locals 0

    invoke-static/range {p0 .. p7}, Lnsy;->$default$onImageNative(Lcom/google/googlex/gcam/lasagna/LasagnaCallbacks;IJILjava/lang/String;J)V

    return-void
.end method

.method public final onProgress(IF)V
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Processing progress: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lepo;->i:Leea;

    if-eqz p1, :cond_0

    iget-object p1, p1, Leea;->v:Lgkr;

    iget-object p1, p1, Lgkr;->a:Ljava/lang/Object;

    sget-object v0, Leqc;->t:Lilz;

    invoke-interface {p1, v0, p2}, Lgaa;->a(Lilz;F)V

    return-void

    :cond_0
    sget-object p1, Lepo;->a:Lnak;

    invoke-virtual {p1}, Lnaf;->c()Lnaz;

    move-result-object p1

    const-string p2, "Shot has been aborted."

    const/16 v0, 0x6fb

    invoke-static {p1, p2, v0}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    return-void
.end method

.method public final onPslRequest(IZFF)V
    .locals 9

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const-string v1, "onPslRequest / isNeeded = %s, duration = %s, frameRate = %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    if-eqz p2, :cond_4

    iget-object p2, p0, Lepo;->e:Leqb;

    if-eqz p2, :cond_4

    :try_start_0
    sget-object p2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v0, 0x1

    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    long-to-float p2, v0

    mul-float p2, p2, p3

    iget-object v0, p0, Lepo;->r:Lfzz;

    float-to-long v1, p2

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lfzz;->d()Lfzy;

    move-result-object p2

    invoke-interface {p2, v4}, Lfzy;->e(I)V

    iget-object p2, p0, Lepo;->r:Lfzz;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p2}, Lfzz;->d()Lfzy;

    move-result-object p2

    invoke-interface {p2, v1, v2}, Lfzy;->g(J)V

    iget-object p2, p0, Lepo;->r:Lfzz;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p2}, Lfzz;->d()Lfzy;

    move-result-object p2

    invoke-interface {p2}, Lfzy;->h()V

    iget-object p2, p0, Lepo;->r:Lfzz;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p2}, Lfzz;->d()Lfzy;

    move-result-object p2

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Lfzy;->bn(Ljava/lang/Object;)V

    :cond_0
    iget-object p2, p0, Lepo;->h:Lgxl;

    invoke-interface {p2, v1, v2}, Lgxl;->T(J)V

    iget-object v3, p0, Lepo;->e:Leqb;

    iget-object p2, p0, Lepo;->g:Lnph;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-virtual {p2, v1, v2, v0}, Lnph;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    move v4, p1

    move v5, p3

    move v6, p4

    invoke-interface/range {v3 .. v8}, Leqb;->d(IFFJ)V

    iget-object p1, p0, Lepo;->n:Lcvr;

    iget-object p2, p1, Lcvr;->a:Ljava/lang/Object;

    move-object v0, p2

    check-cast v0, Lnwn;

    iget-object v0, v0, Lnwn;->b:Lnws;

    invoke-virtual {v0}, Lnws;->ac()Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, p2

    check-cast v0, Lnwn;

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_1
    check-cast p2, Lnwn;

    iget-object p2, p2, Lnwn;->b:Lnws;

    check-cast p2, Lnjt;

    sget-object v0, Lnjt;->x:Lnjt;

    iget v0, p2, Lnjt;->a:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p2, Lnjt;->a:I

    iput p3, p2, Lnjt;->e:F

    iget-object p1, p1, Lcvr;->a:Ljava/lang/Object;

    move-object p2, p1

    check-cast p2, Lnwn;

    iget-object p2, p2, Lnwn;->b:Lnws;

    invoke-virtual {p2}, Lnws;->ac()Z

    move-result p2

    if-nez p2, :cond_2

    move-object p2, p1

    check-cast p2, Lnwn;

    invoke-virtual {p2}, Lnwn;->p()V

    :cond_2
    check-cast p1, Lnwn;

    iget-object p1, p1, Lnwn;->b:Lnws;

    check-cast p1, Lnjt;

    iget p2, p1, Lnjt;->a:I

    or-int/lit16 p2, p2, 0x100

    iput p2, p1, Lnjt;->a:I

    iput p4, p1, Lnjt;->i:F
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    :goto_0
    instance-of p1, p1, Ljava/lang/InterruptedException;

    if-eqz p1, :cond_3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    :cond_3
    invoke-virtual {p0}, Lepo;->c()V

    return-void

    :cond_4
    iget-object p1, p0, Lepo;->r:Lfzz;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Lfzz;->d()Lfzy;

    move-result-object p1

    invoke-interface {p1, v2}, Lfzy;->e(I)V

    iget-object p1, p0, Lepo;->r:Lfzz;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Lfzz;->d()Lfzy;

    move-result-object p1

    invoke-interface {p1}, Lfzy;->h()V

    :cond_5
    iget-object p1, p0, Lepo;->q:Lnph;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lnph;->e(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lepo;->c()V

    return-void
.end method

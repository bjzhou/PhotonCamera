.class public Ljfi;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lcom/google/googlex/gcam/lasagna/LasagnaCallbacks;
.implements Ljfx;


# static fields
.field public static final a:Lsdb;


# instance fields
.field public final b:Ljfg;

.field public final c:Ljfc;

.field public final d:I

.field public final e:Lpdf;

.field public final f:Lsuu;

.field public final g:Llxa;

.field public h:Linb;

.field public i:Lsuu;

.field public j:Ljava/lang/Runnable;

.field public k:Z

.field public final l:Ljel;

.field public m:Ljfk;

.field public final n:Lfdo;

.field private final o:Lsys;

.field private final p:Ljava/util/concurrent/Executor;

.field private final q:Lsuu;

.field private final r:Lktq;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    sput-object v0, Ljfi;->a:Lsdb;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    :goto_2
    const-string v0, "jfi"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Lsys;Ljfg;Ljava/util/concurrent/Executor;Lpdf;Llko;Ljfc;Ljel;Lsuu;Lsuu;)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    invoke-interface {p1}, Llxa;->j()Llxm;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p9, p0, Ljfi;->q:Lsuu;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p7, p0, Ljfi;->l:Ljel;

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_4
    iput-object p8, p0, Ljfi;->f:Lsuu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    iget-object p1, p5, Llko;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    nop

    :goto_7
    iput-object p4, p0, Ljfi;->e:Lpdf;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iput p1, p0, Ljfi;->d:I

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_9
    iput-object p2, p0, Ljfi;->b:Ljfg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/4 p2, 0x0

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iput-object p3, p0, Ljfi;->p:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_c
    iput-object p1, p0, Ljfi;->n:Lfdo;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_d
    iput-boolean v0, p0, Ljfi;->k:Z

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_e
    iput-object p1, p0, Ljfi;->g:Llxa;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iput-object p1, p0, Ljfi;->o:Lsys;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iput-object p6, p0, Ljfi;->c:Ljfc;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object p1, p5, Llko;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_12
    iget-object p1, p5, Llko;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    new-instance p1, Lfdo;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-direct {p1, p2, p2}, Lfdo;-><init>([C[C)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_15
    iget p1, p1, Llxm;->a:I

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iput-object p1, p0, Ljfi;->r:Lktq;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_17
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method private final da190e616797844b591057d0190e7728m(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_0
    check-cast p2, Lscz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    invoke-interface {p2, v0, p0, p1}, Lscz;->y(Ljava/lang/String;ILjava/lang/Object;)V

    goto/32 :goto_8

    nop

    nop

    :goto_2
    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/16 v0, 0x8c1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const-string v0, "[shot-%s] %s"

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_5
    invoke-interface {v0, p2}, Lscz;->i(Ljava/lang/Throwable;)Lsdo;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    sget-object v0, Ljfi;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_7
    iget p0, p0, Ljfi;->d:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    :goto_9
    invoke-interface {p2, v0}, Lscz;->M(I)Lsdo;

    move-result-object p2

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_a
    check-cast p2, Lscz;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final declared-synchronized a(IILjava/lang/String;Lrss;)V
    .locals 7

    goto/32 :goto_6

    nop

    nop

    :goto_0
    const v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_1
    const/4 v0, 0x1

    nop

    :try_start_0
    iput-boolean v0, p0, Ljfi;->k:Z

    nop

    nop

    nop

    nop

    iget-object v1, p0, Ljfi;->j:Ljava/lang/Runnable;

    nop

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_0

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :cond_0
    iget-object v1, p0, Ljfi;->q:Lsuu;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    nop

    invoke-virtual {v1, v2}, Lsuu;->e(Ljava/lang/Object;)Z

    if-nez p2, :cond_2b

    nop

    nop

    nop

    nop

    nop

    iget-object p2, p0, Ljfi;->i:Lsuu;

    nop

    nop

    nop

    if-eqz p2, :cond_1

    nop

    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    invoke-virtual {p2, p3}, Lsuu;->e(Ljava/lang/Object;)Z

    :cond_1
    iget-object p2, p0, Ljfi;->n:Lfdo;

    nop

    iget-object p3, p2, Lfdo;->a:Ljava/lang/Object;

    nop

    nop

    nop

    move-object v1, p3

    nop

    nop

    check-cast v1, Ltkb;

    nop

    nop

    nop

    nop

    iget-object v1, v1, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Ltkg;->C()Z

    move-result v1

    nop

    nop

    if-nez v1, :cond_2

    nop

    nop

    nop

    move-object v1, p3

    nop

    nop

    nop

    check-cast v1, Ltkb;

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Ltkb;->o()V

    :cond_2
    check-cast p3, Ltkb;

    nop

    nop

    iget-object p3, p3, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    check-cast p3, Lsnz;

    nop

    nop

    nop

    sget-object v1, Lsnz;->a:Lsnz;

    nop

    iget v1, p3, Lsnz;->b:I

    nop

    nop

    nop

    nop

    nop

    or-int/lit8 v1, v1, 0x2

    nop

    nop

    nop

    iput v1, p3, Lsnz;->b:I

    nop

    iput-boolean v0, p3, Lsnz;->d:Z

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p4}, Lrss;->h()Z

    move-result p3

    nop

    nop

    if-eqz p3, :cond_2a

    nop

    nop

    nop

    invoke-virtual {p4}, Lrss;->c()Ljava/lang/Object;

    move-result-object p3

    nop

    nop

    nop

    nop

    move-object p4, p3

    nop

    nop

    nop

    nop

    check-cast p4, Ltdb;

    nop

    nop

    nop

    nop

    nop

    iget-object p4, p4, Ltdb;->i:Ltkl;

    nop

    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v1

    nop

    if-nez v1, :cond_4

    nop

    nop

    nop

    nop

    iget-object v1, p2, Lfdo;->a:Ljava/lang/Object;

    nop

    nop

    nop

    invoke-static {p4}, Lrgw;->ab(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p4

    nop

    nop

    nop

    check-cast p4, Ljava/lang/Float;

    nop

    nop

    nop

    invoke-virtual {p4}, Ljava/lang/Float;->floatValue()F

    move-result p4

    nop

    nop

    nop

    nop

    nop

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p4

    nop

    nop

    nop

    nop

    nop

    move-object v2, v1

    nop

    check-cast v2, Ltkb;

    nop

    nop

    nop

    iget-object v2, v2, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    invoke-virtual {v2}, Ltkg;->C()Z

    move-result v2

    nop

    if-nez v2, :cond_3

    nop

    nop

    nop

    nop

    move-object v2, v1

    nop

    nop

    nop

    check-cast v2, Ltkb;

    nop

    nop

    nop

    invoke-virtual {v2}, Ltkb;->o()V

    :cond_3
    check-cast v1, Ltkb;

    nop

    nop

    nop

    iget-object v1, v1, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    check-cast v1, Lsnz;

    nop

    iget v2, v1, Lsnz;->b:I

    nop

    nop

    nop

    or-int/lit8 v2, v2, 0x20

    nop

    nop

    nop

    iput v2, v1, Lsnz;->b:I

    nop

    nop

    nop

    nop

    iput p4, v1, Lsnz;->g:F

    nop

    nop

    nop

    nop

    :cond_4
    move-object p4, p3

    nop

    nop

    nop

    check-cast p4, Ltdb;

    nop

    nop

    nop

    iget p4, p4, Ltdb;->b:I

    nop

    nop

    and-int/lit16 p4, p4, 0x80

    nop

    if-eqz p4, :cond_6

    nop

    nop

    nop

    nop

    nop

    iget-object p4, p2, Lfdo;->a:Ljava/lang/Object;

    nop

    move-object v1, p3

    nop

    nop

    nop

    nop

    check-cast v1, Ltdb;

    nop

    nop

    iget v1, v1, Ltdb;->f:F

    nop

    nop

    nop

    nop

    move-object v2, p4

    nop

    nop

    nop

    check-cast v2, Ltkb;

    nop

    nop

    iget-object v2, v2, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    invoke-virtual {v2}, Ltkg;->C()Z

    move-result v2

    nop

    nop

    nop

    nop

    if-nez v2, :cond_5

    nop

    nop

    nop

    nop

    move-object v2, p4

    nop

    check-cast v2, Ltkb;

    nop

    invoke-virtual {v2}, Ltkb;->o()V

    :cond_5
    check-cast p4, Ltkb;

    nop

    nop

    nop

    nop

    nop

    iget-object p4, p4, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    check-cast p4, Lsnz;

    nop

    nop

    nop

    nop

    nop

    iget v2, p4, Lsnz;->b:I

    nop

    or-int/lit8 v2, v2, 0x40

    nop

    nop

    nop

    nop

    nop

    iput v2, p4, Lsnz;->b:I

    nop

    nop

    iput v1, p4, Lsnz;->h:F

    nop

    nop

    nop

    nop

    nop

    :cond_6
    move-object p4, p3

    nop

    nop

    nop

    check-cast p4, Ltdb;

    nop

    nop

    nop

    nop

    iget p4, p4, Ltdb;->b:I

    nop

    nop

    and-int/lit16 p4, p4, 0x100

    nop

    nop

    nop

    nop

    if-eqz p4, :cond_8

    nop

    nop

    iget-object p4, p2, Lfdo;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    move-object v1, p3

    nop

    nop

    check-cast v1, Ltdb;

    nop

    nop

    nop

    nop

    nop

    iget v1, v1, Ltdb;->g:F

    nop

    nop

    nop

    nop

    move-object v2, p4

    nop

    nop

    nop

    nop

    check-cast v2, Ltkb;

    nop

    nop

    iget-object v2, v2, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    invoke-virtual {v2}, Ltkg;->C()Z

    move-result v2

    nop

    if-nez v2, :cond_7

    nop

    nop

    nop

    nop

    nop

    move-object v2, p4

    nop

    nop

    nop

    nop

    nop

    check-cast v2, Ltkb;

    nop

    invoke-virtual {v2}, Ltkb;->o()V

    :cond_7
    check-cast p4, Ltkb;

    nop

    iget-object p4, p4, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    check-cast p4, Lsnz;

    nop

    iget v2, p4, Lsnz;->b:I

    nop

    nop

    nop

    or-int/lit16 v2, v2, 0x80

    nop

    nop

    nop

    iput v2, p4, Lsnz;->b:I

    nop

    nop

    nop

    iput v1, p4, Lsnz;->i:F

    nop

    nop

    nop

    nop

    nop

    :cond_8
    move-object p4, p3

    nop

    nop

    nop

    check-cast p4, Ltdb;

    nop

    nop

    nop

    nop

    iget p4, p4, Ltdb;->b:I

    nop

    nop

    nop

    and-int/lit8 p4, p4, 0x10

    nop

    nop

    if-eqz p4, :cond_a

    nop

    nop

    nop

    nop

    iget-object p4, p2, Lfdo;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    move-object v1, p3

    nop

    nop

    nop

    check-cast v1, Ltdb;

    nop

    iget v1, v1, Ltdb;->d:I

    nop

    nop

    nop

    nop

    move-object v2, p4

    nop

    nop

    nop

    nop

    check-cast v2, Ltkb;

    nop

    nop

    nop

    iget-object v2, v2, Ltkb;->b:Ltkg;

    nop

    invoke-virtual {v2}, Ltkg;->C()Z

    move-result v2

    nop

    nop

    if-nez v2, :cond_9

    nop

    nop

    move-object v2, p4

    nop

    nop

    nop

    nop

    check-cast v2, Ltkb;

    nop

    invoke-virtual {v2}, Ltkb;->o()V

    :cond_9
    check-cast p4, Ltkb;

    nop

    nop

    nop

    nop

    iget-object p4, p4, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    check-cast p4, Lsnz;

    nop

    nop

    nop

    iget v2, p4, Lsnz;->b:I

    nop

    nop

    or-int/lit16 v2, v2, 0x200

    nop

    nop

    nop

    nop

    iput v2, p4, Lsnz;->b:I

    nop

    nop

    iput v1, p4, Lsnz;->k:I

    nop

    nop

    nop

    :cond_a
    move-object p4, p3

    nop

    check-cast p4, Ltdb;

    nop

    nop

    nop

    nop

    iget p4, p4, Ltdb;->b:I

    nop

    nop

    nop

    nop

    and-int/lit8 p4, p4, 0x20

    nop

    nop

    if-eqz p4, :cond_c

    nop

    nop

    nop

    iget-object p4, p2, Lfdo;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    move-object v1, p3

    nop

    nop

    check-cast v1, Ltdb;

    nop

    nop

    nop

    iget v1, v1, Ltdb;->e:I

    nop

    nop

    nop

    move-object v2, p4

    nop

    nop

    check-cast v2, Ltkb;

    nop

    nop

    iget-object v2, v2, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Ltkg;->C()Z

    move-result v2

    nop

    if-nez v2, :cond_b

    nop

    nop

    nop

    nop

    nop

    move-object v2, p4

    nop

    nop

    nop

    nop

    nop

    check-cast v2, Ltkb;

    nop

    nop

    invoke-virtual {v2}, Ltkb;->o()V

    :cond_b
    check-cast p4, Ltkb;

    nop

    nop

    nop

    nop

    iget-object p4, p4, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    check-cast p4, Lsnz;

    nop

    nop

    nop

    nop

    iget v2, p4, Lsnz;->b:I

    nop

    nop

    nop

    nop

    nop

    or-int/lit16 v2, v2, 0x400

    nop

    nop

    nop

    nop

    iput v2, p4, Lsnz;->b:I

    nop

    nop

    nop

    nop

    iput v1, p4, Lsnz;->l:I

    nop

    :cond_c
    move-object p4, p3

    nop

    nop

    nop

    check-cast p4, Ltdb;

    nop

    nop

    iget p4, p4, Ltdb;->b:I

    nop

    nop

    and-int/lit16 p4, p4, 0x200

    nop

    nop

    if-eqz p4, :cond_e

    nop

    nop

    nop

    nop

    iget-object p4, p2, Lfdo;->a:Ljava/lang/Object;

    nop

    move-object v1, p3

    nop

    nop

    nop

    nop

    check-cast v1, Ltdb;

    nop

    nop

    nop

    nop

    iget v1, v1, Ltdb;->h:I

    nop

    nop

    nop

    nop

    nop

    move-object v2, p4

    nop

    nop

    check-cast v2, Ltkb;

    nop

    nop

    iget-object v2, v2, Ltkb;->b:Ltkg;

    nop

    nop

    invoke-virtual {v2}, Ltkg;->C()Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    if-nez v2, :cond_d

    nop

    move-object v2, p4

    nop

    nop

    check-cast v2, Ltkb;

    nop

    nop

    invoke-virtual {v2}, Ltkb;->o()V

    :cond_d
    check-cast p4, Ltkb;

    nop

    nop

    nop

    nop

    iget-object p4, p4, Ltkb;->b:Ltkg;

    nop

    nop

    check-cast p4, Lsnz;

    nop

    nop

    nop

    iget v2, p4, Lsnz;->b:I

    nop

    nop

    nop

    nop

    or-int/lit16 v2, v2, 0x800

    nop

    nop

    nop

    nop

    nop

    iput v2, p4, Lsnz;->b:I

    nop

    nop

    nop

    nop

    iput v1, p4, Lsnz;->m:I

    nop

    nop

    nop

    nop

    :cond_e
    move-object p4, p3

    nop

    nop

    nop

    check-cast p4, Ltdb;

    nop

    iget p4, p4, Ltdb;->b:I

    nop

    nop

    and-int/lit16 p4, p4, 0x800

    nop

    if-eqz p4, :cond_10

    nop

    nop

    iget-object p4, p2, Lfdo;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    move-object v1, p3

    nop

    nop

    nop

    nop

    check-cast v1, Ltdb;

    nop

    nop

    nop

    nop

    nop

    iget-boolean v1, v1, Ltdb;->j:Z

    nop

    nop

    move-object v2, p4

    nop

    nop

    nop

    nop

    nop

    check-cast v2, Ltkb;

    nop

    nop

    nop

    nop

    nop

    iget-object v2, v2, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Ltkg;->C()Z

    move-result v2

    nop

    nop

    if-nez v2, :cond_f

    nop

    nop

    move-object v2, p4

    nop

    nop

    nop

    nop

    nop

    check-cast v2, Ltkb;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Ltkb;->o()V

    :cond_f
    check-cast p4, Ltkb;

    nop

    nop

    iget-object p4, p4, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    check-cast p4, Lsnz;

    nop

    iget v2, p4, Lsnz;->b:I

    nop

    nop

    or-int/lit16 v2, v2, 0x1000

    nop

    nop

    nop

    iput v2, p4, Lsnz;->b:I

    nop

    nop

    nop

    nop

    nop

    iput-boolean v1, p4, Lsnz;->n:Z

    nop

    nop

    nop

    nop

    :cond_10
    move-object p4, p3

    nop

    check-cast p4, Ltdb;

    nop

    nop

    nop

    iget p4, p4, Ltdb;->b:I

    nop

    nop

    nop

    and-int/lit8 p4, p4, 0x8

    nop

    if-eqz p4, :cond_12

    nop

    nop

    nop

    nop

    iget-object p4, p2, Lfdo;->a:Ljava/lang/Object;

    nop

    move-object v1, p3

    nop

    nop

    nop

    nop

    nop

    check-cast v1, Ltdb;

    nop

    nop

    nop

    nop

    nop

    iget v1, v1, Ltdb;->c:I

    nop

    nop

    nop

    nop

    nop

    move-object v2, p4

    nop

    nop

    nop

    nop

    check-cast v2, Ltkb;

    nop

    nop

    nop

    iget-object v2, v2, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Ltkg;->C()Z

    move-result v2

    nop

    nop

    if-nez v2, :cond_11

    nop

    move-object v2, p4

    nop

    check-cast v2, Ltkb;

    nop

    nop

    invoke-virtual {v2}, Ltkb;->o()V

    :cond_11
    check-cast p4, Ltkb;

    nop

    nop

    nop

    nop

    iget-object p4, p4, Ltkb;->b:Ltkg;

    nop

    nop

    check-cast p4, Lsnz;

    nop

    nop

    nop

    iget v2, p4, Lsnz;->b:I

    nop

    nop

    nop

    nop

    or-int/lit16 v2, v2, 0x2000

    nop

    nop

    nop

    iput v2, p4, Lsnz;->b:I

    nop

    nop

    nop

    nop

    nop

    iput v1, p4, Lsnz;->o:I

    nop

    :cond_12
    move-object p4, p3

    nop

    nop

    check-cast p4, Ltdb;

    nop

    iget p4, p4, Ltdb;->b:I

    nop

    nop

    nop

    const/high16 v1, 0x80000

    nop

    nop

    nop

    nop

    and-int/2addr p4, v1

    nop

    nop

    if-eqz p4, :cond_15

    nop

    nop

    nop

    iget-object p4, p2, Lfdo;->a:Ljava/lang/Object;

    nop

    nop

    nop

    move-object v2, p3

    nop

    nop

    nop

    check-cast v2, Ltdb;

    nop

    nop

    nop

    nop

    nop

    iget-object v2, v2, Ltdb;->k:Ltcz;

    nop

    nop

    nop

    nop

    if-nez v2, :cond_13

    nop

    nop

    nop

    nop

    nop

    sget-object v2, Ltcz;->a:Ltcz;

    nop

    nop

    nop

    nop

    nop

    :cond_13
    invoke-static {v2}, Lfdo;->n(Ltcz;)Lsly;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    move-object v3, p4

    nop

    check-cast v3, Ltkb;

    nop

    nop

    nop

    iget-object v3, v3, Ltkb;->b:Ltkg;

    nop

    invoke-virtual {v3}, Ltkg;->C()Z

    move-result v3

    nop

    nop

    if-nez v3, :cond_14

    nop

    nop

    nop

    nop

    nop

    move-object v3, p4

    nop

    check-cast v3, Ltkb;

    nop

    invoke-virtual {v3}, Ltkb;->o()V

    :cond_14
    check-cast p4, Ltkb;

    nop

    iget-object p4, p4, Ltkb;->b:Ltkg;

    nop

    nop

    check-cast p4, Lsnz;

    nop

    nop

    nop

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v2, p4, Lsnz;->q:Lsly;

    nop

    iget v2, p4, Lsnz;->b:I

    nop

    nop

    nop

    const v3, 0x8000

    nop

    nop

    nop

    nop

    or-int/2addr v2, v3

    nop

    nop

    nop

    iput v2, p4, Lsnz;->b:I

    nop

    nop

    :cond_15
    move-object p4, p3

    nop

    check-cast p4, Ltdb;

    nop

    nop

    iget p4, p4, Ltdb;->b:I

    nop

    nop

    nop

    nop

    const/high16 v2, 0x400000

    nop

    nop

    nop

    nop

    and-int/2addr p4, v2

    nop

    nop

    nop

    if-eqz p4, :cond_18

    nop

    nop

    nop

    iget-object p4, p2, Lfdo;->a:Ljava/lang/Object;

    nop

    move-object v3, p3

    nop

    nop

    nop

    check-cast v3, Ltdb;

    nop

    iget-object v3, v3, Ltdb;->n:Ltcz;

    nop

    nop

    nop

    nop

    if-nez v3, :cond_16

    nop

    nop

    nop

    nop

    sget-object v3, Ltcz;->a:Ltcz;

    nop

    :cond_16
    invoke-static {v3}, Lfdo;->n(Ltcz;)Lsly;

    move-result-object v3

    nop

    nop

    move-object v4, p4

    nop

    nop

    check-cast v4, Ltkb;

    nop

    nop

    nop

    iget-object v4, v4, Ltkb;->b:Ltkg;

    nop

    invoke-virtual {v4}, Ltkg;->C()Z

    move-result v4

    nop

    if-nez v4, :cond_17

    nop

    nop

    nop

    move-object v4, p4

    nop

    check-cast v4, Ltkb;

    nop

    invoke-virtual {v4}, Ltkb;->o()V

    :cond_17
    check-cast p4, Ltkb;

    nop

    nop

    iget-object p4, p4, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    check-cast p4, Lsnz;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v3, p4, Lsnz;->r:Lsly;

    nop

    nop

    nop

    iget v3, p4, Lsnz;->b:I

    nop

    nop

    nop

    const/high16 v4, 0x10000

    nop

    nop

    nop

    nop

    nop

    or-int/2addr v3, v4

    nop

    nop

    nop

    nop

    iput v3, p4, Lsnz;->b:I

    nop

    nop

    :cond_18
    move-object p4, p3

    nop

    nop

    check-cast p4, Ltdb;

    nop

    nop

    nop

    nop

    nop

    iget p4, p4, Ltdb;->b:I

    nop

    nop

    nop

    nop

    const/high16 v3, 0x800000

    nop

    nop

    nop

    nop

    and-int/2addr p4, v3

    nop

    nop

    nop

    nop

    nop

    if-eqz p4, :cond_1b

    nop

    nop

    nop

    nop

    nop

    iget-object p4, p2, Lfdo;->a:Ljava/lang/Object;

    nop

    nop

    nop

    move-object v3, p3

    nop

    nop

    nop

    nop

    check-cast v3, Ltdb;

    nop

    nop

    nop

    nop

    iget-object v3, v3, Ltdb;->o:Ltcz;

    nop

    nop

    if-nez v3, :cond_19

    nop

    nop

    nop

    nop

    nop

    sget-object v3, Ltcz;->a:Ltcz;

    nop

    nop

    nop

    :cond_19
    invoke-static {v3}, Lfdo;->n(Ltcz;)Lsly;

    move-result-object v3

    nop

    nop

    move-object v4, p4

    nop

    nop

    nop

    check-cast v4, Ltkb;

    nop

    nop

    nop

    nop

    nop

    iget-object v4, v4, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    invoke-virtual {v4}, Ltkg;->C()Z

    move-result v4

    nop

    nop

    if-nez v4, :cond_1a

    nop

    nop

    nop

    move-object v4, p4

    nop

    check-cast v4, Ltkb;

    nop

    nop

    nop

    invoke-virtual {v4}, Ltkb;->o()V

    :cond_1a
    check-cast p4, Ltkb;

    nop

    nop

    nop

    nop

    nop

    iget-object p4, p4, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    check-cast p4, Lsnz;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v3, p4, Lsnz;->s:Lsly;

    nop

    iget v3, p4, Lsnz;->b:I

    nop

    nop

    nop

    const/high16 v4, 0x20000

    nop

    or-int/2addr v3, v4

    nop

    nop

    nop

    nop

    iput v3, p4, Lsnz;->b:I

    nop

    nop

    :cond_1b
    move-object p4, p3

    nop

    check-cast p4, Ltdb;

    nop

    nop

    nop

    iget p4, p4, Ltdb;->b:I

    nop

    nop

    const/high16 v3, 0x1000000

    nop

    nop

    nop

    nop

    nop

    and-int/2addr p4, v3

    nop

    nop

    if-eqz p4, :cond_1e

    nop

    iget-object p4, p2, Lfdo;->a:Ljava/lang/Object;

    nop

    nop

    move-object v3, p3

    nop

    nop

    nop

    check-cast v3, Ltdb;

    nop

    iget-object v3, v3, Ltdb;->p:Ltcz;

    nop

    nop

    nop

    if-nez v3, :cond_1c

    nop

    nop

    nop

    nop

    sget-object v3, Ltcz;->a:Ltcz;

    nop

    nop

    :cond_1c
    invoke-static {v3}, Lfdo;->n(Ltcz;)Lsly;

    move-result-object v3

    nop

    nop

    nop

    nop

    move-object v4, p4

    nop

    nop

    nop

    check-cast v4, Ltkb;

    nop

    nop

    nop

    nop

    iget-object v4, v4, Ltkb;->b:Ltkg;

    nop

    invoke-virtual {v4}, Ltkg;->C()Z

    move-result v4

    nop

    nop

    nop

    nop

    nop

    if-nez v4, :cond_1d

    nop

    move-object v4, p4

    nop

    nop

    nop

    nop

    check-cast v4, Ltkb;

    nop

    nop

    invoke-virtual {v4}, Ltkb;->o()V

    :cond_1d
    check-cast p4, Ltkb;

    nop

    nop

    iget-object p4, p4, Ltkb;->b:Ltkg;

    nop

    nop

    check-cast p4, Lsnz;

    nop

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v3, p4, Lsnz;->t:Lsly;

    nop

    nop

    nop

    nop

    iget v3, p4, Lsnz;->b:I

    nop

    nop

    nop

    nop

    const/high16 v4, 0x40000

    nop

    or-int/2addr v3, v4

    nop

    nop

    nop

    nop

    iput v3, p4, Lsnz;->b:I

    nop

    nop

    nop

    nop

    :cond_1e
    move-object p4, p3

    nop

    nop

    nop

    check-cast p4, Ltdb;

    nop

    nop

    nop

    nop

    iget p4, p4, Ltdb;->b:I

    nop

    nop

    const/high16 v3, 0x2000000

    nop

    nop

    nop

    and-int/2addr p4, v3

    nop

    nop

    if-eqz p4, :cond_21

    nop

    nop

    nop

    nop

    iget-object p4, p2, Lfdo;->a:Ljava/lang/Object;

    nop

    move-object v3, p3

    nop

    check-cast v3, Ltdb;

    nop

    nop

    nop

    iget-object v3, v3, Ltdb;->q:Ltcz;

    nop

    nop

    if-nez v3, :cond_1f

    nop

    nop

    nop

    sget-object v3, Ltcz;->a:Ltcz;

    nop

    :cond_1f
    invoke-static {v3}, Lfdo;->n(Ltcz;)Lsly;

    move-result-object v3

    nop

    move-object v4, p4

    nop

    nop

    nop

    nop

    check-cast v4, Ltkb;

    nop

    nop

    iget-object v4, v4, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Ltkg;->C()Z

    move-result v4

    nop

    nop

    nop

    nop

    nop

    if-nez v4, :cond_20

    nop

    nop

    move-object v4, p4

    nop

    nop

    nop

    check-cast v4, Ltkb;

    nop

    invoke-virtual {v4}, Ltkb;->o()V

    :cond_20
    check-cast p4, Ltkb;

    nop

    nop

    iget-object p4, p4, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    check-cast p4, Lsnz;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v3, p4, Lsnz;->u:Lsly;

    nop

    nop

    iget v3, p4, Lsnz;->b:I

    nop

    nop

    nop

    nop

    or-int/2addr v1, v3

    nop

    nop

    nop

    iput v1, p4, Lsnz;->b:I

    nop

    nop

    nop

    nop

    nop

    :cond_21
    move-object p4, p3

    nop

    nop

    check-cast p4, Ltdb;

    nop

    nop

    iget p4, p4, Ltdb;->b:I

    nop

    nop

    nop

    const/high16 v1, 0x100000

    nop

    nop

    nop

    nop

    nop

    and-int/2addr p4, v1

    nop

    nop

    nop

    nop

    nop

    if-eqz p4, :cond_23

    nop

    nop

    nop

    nop

    iget-object p4, p2, Lfdo;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    move-object v3, p3

    nop

    nop

    nop

    check-cast v3, Ltdb;

    nop

    iget v3, v3, Ltdb;->l:F

    nop

    nop

    nop

    move-object v4, p4

    nop

    check-cast v4, Ltkb;

    nop

    nop

    nop

    iget-object v4, v4, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    invoke-virtual {v4}, Ltkg;->C()Z

    move-result v4

    nop

    nop

    nop

    nop

    if-nez v4, :cond_22

    nop

    nop

    nop

    move-object v4, p4

    nop

    check-cast v4, Ltkb;

    nop

    invoke-virtual {v4}, Ltkb;->o()V

    :cond_22
    check-cast p4, Ltkb;

    nop

    nop

    nop

    iget-object p4, p4, Ltkb;->b:Ltkg;

    nop

    nop

    check-cast p4, Lsnz;

    nop

    nop

    iget v4, p4, Lsnz;->b:I

    nop

    nop

    nop

    or-int/2addr v1, v4

    nop

    nop

    iput v1, p4, Lsnz;->b:I

    nop

    nop

    nop

    iput v3, p4, Lsnz;->v:F

    nop

    nop

    nop

    :cond_23
    move-object p4, p3

    nop

    check-cast p4, Ltdb;

    nop

    nop

    nop

    nop

    nop

    iget p4, p4, Ltdb;->b:I

    nop

    nop

    const/high16 v1, 0x200000

    nop

    nop

    nop

    and-int/2addr p4, v1

    nop

    nop

    nop

    nop

    nop

    if-eqz p4, :cond_25

    nop

    iget-object p4, p2, Lfdo;->a:Ljava/lang/Object;

    nop

    nop

    nop

    move-object v3, p3

    nop

    nop

    check-cast v3, Ltdb;

    nop

    nop

    nop

    iget v3, v3, Ltdb;->m:F

    nop

    nop

    move-object v4, p4

    nop

    nop

    check-cast v4, Ltkb;

    nop

    nop

    nop

    nop

    iget-object v4, v4, Ltkb;->b:Ltkg;

    nop

    nop

    invoke-virtual {v4}, Ltkg;->C()Z

    move-result v4

    nop

    nop

    nop

    nop

    nop

    if-nez v4, :cond_24

    nop

    move-object v4, p4

    nop

    nop

    check-cast v4, Ltkb;

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Ltkb;->o()V

    :cond_24
    check-cast p4, Ltkb;

    nop

    nop

    nop

    nop

    iget-object p4, p4, Ltkb;->b:Ltkg;

    nop

    check-cast p4, Lsnz;

    nop

    nop

    nop

    nop

    iget v4, p4, Lsnz;->b:I

    nop

    nop

    nop

    or-int/2addr v1, v4

    nop

    nop

    nop

    nop

    iput v1, p4, Lsnz;->b:I

    nop

    nop

    nop

    nop

    nop

    iput v3, p4, Lsnz;->w:F

    nop

    nop

    nop

    :cond_25
    move-object p4, p3

    nop

    nop

    nop

    nop

    check-cast p4, Ltdb;

    nop

    nop

    nop

    nop

    nop

    iget p4, p4, Ltdb;->b:I

    nop

    const/high16 v1, 0x4000000

    nop

    nop

    and-int/2addr p4, v1

    nop

    if-eqz p4, :cond_2a

    nop

    nop

    iget-object p2, p2, Lfdo;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    check-cast p3, Ltdb;

    nop

    nop

    nop

    iget-object p3, p3, Ltdb;->r:Ltcy;

    nop

    nop

    nop

    if-nez p3, :cond_26

    nop

    nop

    sget-object p3, Ltcy;->a:Ltcy;

    nop

    nop

    nop

    nop

    nop

    :cond_26
    sget-object p4, Lsju;->a:Lsju;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p4}, Ltkg;->m()Ltkb;

    move-result-object p4

    nop

    nop

    nop

    nop

    nop

    iget-wide v3, p3, Ltcy;->b:D

    nop

    nop

    iget-object v1, p4, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    invoke-virtual {v1}, Ltkg;->C()Z

    move-result v1

    nop

    nop

    nop

    if-nez v1, :cond_27

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p4}, Ltkb;->o()V

    :cond_27
    iget-object v1, p4, Ltkb;->b:Ltkg;

    nop

    move-object v5, v1

    nop

    nop

    nop

    check-cast v5, Lsju;

    nop

    nop

    nop

    nop

    nop

    iget v6, v5, Lsju;->b:I

    nop

    nop

    nop

    nop

    nop

    or-int/2addr v6, v0

    nop

    nop

    nop

    nop

    iput v6, v5, Lsju;->b:I

    nop

    iput-wide v3, v5, Lsju;->c:D

    nop

    nop

    nop

    iget p3, p3, Ltcy;->c:I

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Ltkg;->C()Z

    move-result v1

    nop

    if-nez v1, :cond_28

    nop

    nop

    invoke-virtual {p4}, Ltkb;->o()V

    :cond_28
    iget-object v1, p4, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    check-cast v1, Lsju;

    nop

    iget v3, v1, Lsju;->b:I

    nop

    or-int/lit8 v3, v3, 0x2

    nop

    nop

    nop

    nop

    iput v3, v1, Lsju;->b:I

    nop

    nop

    nop

    nop

    iput p3, v1, Lsju;->d:I

    nop

    nop

    nop

    nop

    invoke-virtual {p4}, Ltkb;->i()Ltkg;

    move-result-object p3

    nop

    nop

    nop

    nop

    check-cast p3, Lsju;

    nop

    move-object p4, p2

    nop

    nop

    nop

    nop

    check-cast p4, Ltkb;

    nop

    nop

    nop

    iget-object p4, p4, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    invoke-virtual {p4}, Ltkg;->C()Z

    move-result p4

    nop

    nop

    if-nez p4, :cond_29

    nop

    nop

    nop

    nop

    move-object p4, p2

    nop

    nop

    check-cast p4, Ltkb;

    nop

    nop

    nop

    invoke-virtual {p4}, Ltkb;->o()V

    :cond_29
    check-cast p2, Ltkb;

    nop

    nop

    nop

    iget-object p2, p2, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    check-cast p2, Lsnz;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p3, p2, Lsnz;->x:Lsju;

    nop

    nop

    nop

    iget p3, p2, Lsnz;->b:I

    nop

    nop

    nop

    or-int/2addr p3, v2

    nop

    nop

    nop

    nop

    nop

    iput p3, p2, Lsnz;->b:I

    nop

    nop

    nop

    nop

    :cond_2a
    iget-object p2, p0, Ljfi;->b:Ljfg;

    nop

    nop

    nop

    invoke-virtual {p2, p1, v0}, Ljfg;->b(IZ)V

    goto :goto_2

    nop

    nop

    nop

    :cond_2b
    sget-object p4, Ljfi;->a:Lsdb;

    nop

    nop

    invoke-virtual {p4}, Lscs;->c()Lsdo;

    move-result-object p4

    nop

    nop

    nop

    nop

    const/16 v0, 0x8c2

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p4, v0}, Lscz;->M(I)Lsdo;

    move-result-object p4

    nop

    nop

    nop

    nop

    check-cast p4, Lscz;

    nop

    nop

    const-string v0, "[shot-%s] Final error status [%s]. "

    nop

    invoke-interface {p4, v0, p1, p3}, Lscz;->y(Ljava/lang/String;ILjava/lang/Object;)V

    const/16 p4, 0xa

    nop

    nop

    nop

    nop

    nop

    if-eq p2, p4, :cond_2c

    nop

    nop

    nop

    nop

    nop

    iget-object p2, p0, Ljfi;->p:Ljava/util/concurrent/Executor;

    nop

    new-instance p4, Lmw;

    nop

    nop

    const/16 v4, 0xa

    nop

    nop

    nop

    nop

    nop

    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    nop

    move-object v0, p4

    nop

    nop

    nop

    move-object v1, p0

    nop

    nop

    nop

    move v2, p1

    nop

    nop

    nop

    move-object v3, p3

    nop

    nop

    nop

    nop

    nop

    invoke-direct/range {v0 .. v5}, Lmw;-><init>(Ljava/lang/Object;ILjava/lang/Object;I[B)V

    invoke-interface {p2, p4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_2c
    :goto_2
    iget-object p1, p0, Ljfi;->g:Llxa;

    nop

    nop

    nop

    iget-object p2, p0, Ljfi;->n:Lfdo;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p1}, Llxa;->ag()Lmjn;

    move-result-object p1

    nop

    nop

    invoke-virtual {p2}, Lfdo;->m()Lsnz;

    move-result-object p2

    nop

    nop

    nop

    iput-object p2, p1, Lmjn;->v:Lsnz;

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    throw p1

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_5
    monitor-enter p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0x6

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_2d

    nop

    nop

    goto/32 :goto_b

    nop

    :cond_2d
    goto/32 :goto_a

    nop
.end method

.method public final declared-synchronized b(Ltcv;)V
    .locals 7

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    monitor-exit p0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_1
    const v1, 0x9

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_3
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_5
    monitor-exit p0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_6
    throw p1

    nop

    nop

    :goto_7
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    nop

    :cond_0
    :try_start_1
    iget-object v0, p1, Ltcv;->b:Lcom/google/googlex/gcam/FrameMetadata;

    nop

    nop

    nop

    invoke-virtual {v0}, Lcom/google/googlex/gcam/FrameMetadata;->d()J

    iget-object p1, p1, Ltcv;->d:Ljava/lang/Runnable;

    nop

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_d

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_b
    const v0, 0x1b

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_10

    nop

    nop

    :goto_f
    return-void

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_0

    nop

    nop

    :goto_10
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_2
    iget-boolean v0, p0, Ljfi;->k:Z

    nop

    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    iget-object v0, p1, Ltcv;->b:Lcom/google/googlex/gcam/FrameMetadata;

    nop

    nop

    invoke-virtual {v0}, Lcom/google/googlex/gcam/FrameMetadata;->d()J

    iget-object v0, p1, Ltcv;->b:Lcom/google/googlex/gcam/FrameMetadata;

    nop

    invoke-virtual {v0}, Lcom/google/googlex/gcam/FrameMetadata;->d()J

    move-result-wide v0

    nop

    nop

    nop

    nop

    iget-object v2, p0, Ljfi;->b:Ljfg;

    nop

    nop

    nop

    nop

    iget v3, p0, Ljfi;->d:I

    nop

    nop

    nop

    nop

    new-instance v4, Lixb;

    nop

    const/16 v5, 0xc

    nop

    nop

    nop

    nop

    invoke-direct {v4, p0, p1, v5}, Lixb;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance v5, Lhpv;

    nop

    nop

    const/4 v6, 0x3

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v5, v0, v1, p1, v6}, Lhpv;-><init>(JLjava/lang/Object;I)V

    const-string p1, "onPslFrame"

    nop

    invoke-virtual {v2, v3, p1, v4, v5}, Ljfg;->d(ILjava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)I

    move-result p1

    nop

    nop

    nop

    const/4 v0, 0x1

    nop

    nop

    nop

    if-eq p1, v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    sget-object p1, Ljfi;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Lscs;->c()Lsdo;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    const/16 v0, 0x8c7

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p1, v0}, Lscz;->M(I)Lsdo;

    move-result-object p1

    nop

    nop

    nop

    nop

    check-cast p1, Lscz;

    nop

    nop

    const-string v0, "Couldn\'t post PSL frame"

    nop

    nop

    nop

    nop

    invoke-interface {p1, v0}, Lscz;->s(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop
.end method

.method public final c()V
    .locals 2

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_1
    if-nez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_2
    invoke-interface {p0}, Lktq;->f()V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_6

    nop

    :goto_4
    iget-object v0, p0, Ljfi;->l:Ljel;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_5
    goto/32 :goto_10

    nop

    :goto_6
    goto/32 :goto_8

    nop

    nop

    :goto_7
    invoke-virtual {v0, v1}, Lsuu;->e(Ljava/lang/Object;)Z

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v0, p0, Ljfi;->q:Lsuu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0x20

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v0, 0x7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_c
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget v1, p0, Ljfi;->d:I

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_e
    iget-object p0, p0, Ljfi;->r:Lktq;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    return-void

    nop

    :goto_10
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v0, v1}, Ljel;->c(I)V

    :goto_12
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_14
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    nop

    goto/32 :goto_7

    nop

    nop

    nop
.end method

.method public final declared-synchronized e(Z)V
    .locals 6

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_5

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    nop

    :cond_0
    :goto_3
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_5
    throw p1

    nop

    :goto_6
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_9

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_9
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_b

    nop

    nop

    :goto_b
    monitor-enter p0

    nop

    nop

    nop

    :try_start_1
    iget-object v0, p0, Ljfi;->q:Lsuu;

    nop

    const/4 v1, 0x1

    nop

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    nop

    nop

    nop

    invoke-virtual {v0, v2}, Lsuu;->e(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Ljfi;->k:Z

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_2

    nop

    goto :goto_3

    nop

    :cond_2
    if-eq v1, p1, :cond_3

    nop

    const-string v0, "endShot"

    nop

    nop

    goto :goto_c

    nop

    nop

    nop

    nop

    :cond_3
    const-string v0, "abortShot"

    nop

    nop

    nop

    :goto_c
    iget-object v2, p0, Ljfi;->b:Ljfg;

    nop

    nop

    nop

    nop

    iget v3, p0, Ljfi;->d:I

    nop

    new-instance v4, Lgba;

    nop

    const/4 v5, 0x5

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v4, p0, v0, p1, v5}, Lgba;-><init>(Ljava/lang/Object;Ljava/lang/Object;ZI)V

    new-instance p1, Ljcl;

    nop

    nop

    nop

    nop

    nop

    const/16 v5, 0xd

    nop

    nop

    invoke-direct {p1, v0, v5}, Ljcl;-><init>(Ljava/lang/Object;I)V

    const-string v5, "onPslDone: "

    nop

    nop

    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    nop

    nop

    nop

    invoke-virtual {v2, v3, v5, v4, p1}, Ljfg;->d(ILjava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)I

    move-result p1

    nop

    nop

    if-eq p1, v1, :cond_0

    nop

    nop

    nop

    nop

    sget-object p1, Ljfi;->a:Lsdb;

    nop

    invoke-virtual {p1}, Lscs;->c()Lsdo;

    move-result-object p1

    nop

    nop

    const/16 v1, 0x8c6

    nop

    invoke-interface {p1, v1}, Lscz;->M(I)Lsdo;

    move-result-object p1

    nop

    nop

    nop

    check-cast p1, Lscz;

    nop

    nop

    const-string v1, "Couldn\'t post %s"

    nop

    nop

    invoke-interface {p1, v1, v0}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_e

    nop

    nop

    :goto_d
    const v1, 0x1e

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_e
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_f
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final f(IJILjava/lang/String;Lcom/google/googlex/gcam/ShotMetadata;)V
    .locals 18

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_0
    move-object/from16 v1, p0

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v2}, Lcom/google/googlex/gcam/InterleavedImageU8;->b()I

    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v2}, Lcom/google/googlex/gcam/InterleavedImageU8;->d()I

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_5
    add-int/lit8 v4, v0, -0x1

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-interface {v3, v0}, Lscz;->i(Ljava/lang/Throwable;)Lsdo;

    move-result-object v0

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_7
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {v3}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v2

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v2}, Lrss;->h()Z

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_a
    if-nez v3, :cond_1

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_41

    nop

    nop

    nop

    :goto_b
    iget-object v0, v1, Ljfi;->e:Lpdf;

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_c
    move-object/from16 v4, p6

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v2, v1, Ljfi;->e:Lpdf;

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_10
    new-instance v3, Ljgb;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_11
    move/from16 v0, p4

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-static/range {p4 .. p4}, Ltcw;->d(I)Ljava/lang/String;

    move-result-object v5

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_13
    throw v0

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_e

    nop

    nop

    :goto_15
    invoke-virtual {v2}, Lrss;->h()Z

    move-result v0

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_16
    invoke-interface {v0, v3}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_17
    move/from16 v4, p1

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_18
    const-string v4, "Got image!!! allocationId = %d, outputType=%d (%s), description=%s)"

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_19
    const-string v3, "Error saving the image for shot %s."

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_1a
    const/16 v3, 0x8c3

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v2}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_1c
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v2, v3, v4}, Lsys;->a(J)Lrss;

    move-result-object v2

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    if-nez v3, :cond_2

    nop

    goto/32 :goto_39

    nop

    :cond_2
    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const v1, 0x10

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_20
    goto/16 :goto_39

    nop

    nop

    nop

    :catch_0
    move-exception v0

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_21
    goto/16 :goto_37

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_36

    nop

    nop

    nop

    :goto_23
    const-string v4, "settingResult"

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_24
    move-object/from16 v6, p5

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_25
    invoke-direct {v3, v2, v0, v4}, Ljgb;-><init>(Lcom/google/googlex/gcam/InterleavedImageU8;ILcom/google/googlex/gcam/ShotMetadata;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_26
    check-cast v2, Lcom/google/googlex/gcam/InterleavedImageU8;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-interface {v2, v3}, Lpdf;->f(Ljava/lang/String;)V

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_28
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_29
    iget-object v3, v1, Ljfi;->e:Lpdf;

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_2a
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_2b
    const-string v3, "MotionBlur#onImage"

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_2c
    if-nez v4, :cond_3

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :cond_3
    :try_start_0
    invoke-virtual {v4}, Linb;->a()I

    iget-object v5, v3, Ljfk;->f:Ljava/util/Map;

    nop

    nop

    nop

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    nop

    check-cast v5, Ljez;

    nop

    nop

    nop

    if-nez v5, :cond_5

    nop

    invoke-virtual {v2}, Lrss;->h()Z

    move-result v0

    nop

    nop

    if-eqz v0, :cond_4

    nop

    nop

    nop

    invoke-virtual {v2}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    check-cast v0, Ljgb;

    nop

    nop

    invoke-virtual {v0}, Ljgb;->close()V

    :cond_4
    const-string v0, "Shot hasn\'t been started yet"

    nop

    nop

    nop

    new-instance v3, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    invoke-direct {v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    nop

    nop

    :cond_5
    invoke-virtual {v2}, Lrss;->h()Z

    move-result v6

    nop

    nop

    nop

    if-eqz v6, :cond_11

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Linb;->a()I

    move-result v0

    nop

    nop

    int-to-long v7, v0

    nop

    nop

    invoke-virtual {v2}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    iget-object v4, v3, Ljfk;->h:Lirz;

    nop

    nop

    nop

    nop

    nop

    move-object v6, v0

    nop

    check-cast v6, Ljgb;

    nop

    iget-object v6, v6, Ljgb;->b:Lcom/google/googlex/gcam/ShotMetadata;

    nop

    nop

    nop

    iget-object v9, v5, Ljez;->b:Linb;

    nop

    nop

    iget-object v10, v5, Llhz;->s:Lijd;

    nop

    sget-object v11, Lioy;->a:Lioy;

    nop

    nop

    nop

    nop

    iget-object v9, v9, Linb;->w:Llko;

    nop

    nop

    nop

    iget-object v9, v9, Llko;->d:Ljava/lang/Object;

    nop

    nop

    invoke-interface {v4, v6, v9, v10, v11}, Lirz;->a(Lcom/google/googlex/gcam/ShotMetadata;Llxa;Lijd;Lioy;)V

    move-object v4, v0

    nop

    check-cast v4, Ljgb;

    nop

    nop

    nop

    nop

    iget v4, v4, Ljgb;->d:I

    nop

    nop

    nop

    nop

    const/4 v6, 0x5

    nop

    nop

    nop

    nop

    nop

    const/4 v9, 0x0

    nop

    nop

    nop

    nop

    nop

    const/4 v10, 0x1

    nop

    nop

    nop

    nop

    nop

    if-ne v4, v6, :cond_7

    nop

    nop

    nop

    nop

    nop

    move-object v4, v0

    nop

    nop

    nop

    nop

    nop

    check-cast v4, Ljgb;

    nop

    nop

    iget-object v4, v4, Ljgb;->a:Lcom/google/googlex/gcam/InterleavedImageU8;

    nop

    nop

    nop
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v6, v3, Ljfk;->d:Lpdf;

    nop

    nop

    const-string v7, "updateThumbnail"

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v6, v7}, Lpdf;->f(Ljava/lang/String;)V

    iget-object v6, v3, Ljfk;->d:Lpdf;

    nop

    nop

    const-string v7, "convert"

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v6, v7}, Lpdf;->f(Ljava/lang/String;)V

    iget-object v6, v3, Ljfk;->l:Lfdn;

    nop

    nop

    invoke-virtual {v6, v4}, Lfdn;->u(Lcom/google/googlex/gcam/InterleavedImageU8;)Landroid/graphics/Bitmap;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    iget-object v6, v3, Ljfk;->d:Lpdf;

    nop

    nop

    nop

    invoke-interface {v6}, Lpdf;->g()V

    iget-object v6, v5, Ljez;->d:Ljgc;

    nop

    nop

    nop

    nop

    sget-object v7, Ljgc;->b:Ljgc;

    nop

    nop

    nop

    if-ne v6, v7, :cond_6

    nop

    nop

    nop

    nop

    move v9, v10

    nop

    nop

    nop

    nop

    nop

    :cond_6
    invoke-virtual {v3, v5, v4, v9}, Ljfk;->j(Ljez;Landroid/graphics/Bitmap;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v3, v3, Ljfk;->d:Lpdf;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v3}, Lpdf;->g()V

    check-cast v0, Ljgb;

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Ljgb;->close()V

    goto/16 :goto_39

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    iget-object v3, v3, Ljfk;->d:Lpdf;

    nop

    nop

    nop

    nop

    invoke-interface {v3}, Lpdf;->g()V

    throw v0

    nop

    nop

    :cond_7
    iget-object v4, v3, Ljfk;->j:Lkog;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Lpoh;->l()Lpog;

    move-result-object v4

    nop

    nop

    nop

    iget-object v6, v3, Ljfk;->k:Lnpr;

    nop

    move-object v11, v0

    nop

    nop

    check-cast v11, Ljgb;

    nop

    nop

    nop

    nop

    nop

    iget-object v11, v11, Ljgb;->a:Lcom/google/googlex/gcam/InterleavedImageU8;

    nop

    nop

    nop

    nop

    nop

    iget v12, v5, Ljez;->e:I

    nop

    nop

    nop

    nop

    invoke-static {v12}, Lsgj;->y(I)Lsxp;

    move-result-object v12

    nop

    sget-object v13, Lsxp;->b:Lsxp;

    nop

    nop

    nop

    nop

    nop

    if-eq v12, v13, :cond_9

    nop

    nop

    sget-object v13, Lsxp;->d:Lsxp;

    nop

    nop

    nop

    nop

    if-ne v12, v13, :cond_8

    nop

    nop

    nop

    nop

    goto :goto_2d

    nop

    nop

    nop

    nop

    nop

    :cond_8
    move v13, v9

    nop

    goto :goto_2e

    nop

    nop

    nop

    :cond_9
    :goto_2d
    move v13, v10

    nop

    :goto_2e
    sget-object v14, Lsxp;->i:Lsxp;

    nop

    nop

    nop

    nop

    nop

    if-eq v12, v14, :cond_b

    nop

    sget-object v14, Lsxp;->g:Lsxp;

    nop

    nop

    if-ne v12, v14, :cond_a

    nop

    nop

    nop

    nop

    nop

    goto :goto_2f

    nop

    nop

    nop

    nop

    :cond_a
    move v12, v9

    nop

    nop

    nop

    nop

    goto :goto_30

    nop

    nop

    nop

    nop

    nop

    :cond_b
    :goto_2f
    move v12, v10

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-virtual {v6, v4}, Lnpr;->m(Lpog;)Z

    move-result v4

    nop

    nop

    if-eqz v4, :cond_e

    nop

    nop

    if-nez v13, :cond_c

    nop

    nop

    nop

    if-eqz v12, :cond_e

    nop

    nop

    nop

    nop

    :cond_c
    new-instance v4, Lcom/google/googlex/gcam/InterleavedImageU8;

    nop

    nop

    nop

    nop

    invoke-virtual {v11}, Lcom/google/googlex/gcam/InterleavedImageU8;->d()I

    move-result v6

    nop

    nop

    invoke-virtual {v11}, Lcom/google/googlex/gcam/InterleavedImageU8;->b()I

    move-result v12

    nop

    nop

    nop

    nop

    invoke-virtual {v11}, Lcom/google/googlex/gcam/InterleavedImageU8;->a()I

    move-result v14

    nop

    nop

    nop

    invoke-direct {v4, v6, v12, v14}, Lcom/google/googlex/gcam/InterleavedImageU8;-><init>(III)V

    invoke-virtual {v11}, Lcom/google/googlex/gcam/InterleavedImageU8;->f()Lcom/google/googlex/gcam/InterleavedReadViewU8;

    move-result-object v6

    nop

    nop

    nop

    nop

    if-eqz v13, :cond_d

    nop

    nop

    nop

    nop

    sget-object v11, Lsxp;->c:Lsxp;

    nop

    nop

    goto :goto_31

    nop

    nop

    nop

    :cond_d
    sget-object v11, Lsxp;->e:Lsxp;

    nop

    nop

    nop

    nop

    :goto_31
    invoke-virtual {v4}, Lcom/google/googlex/gcam/InterleavedImageU8;->g()Lcom/google/googlex/gcam/InterleavedWriteViewU8;

    move-result-object v12

    nop

    nop

    nop

    invoke-static {v6, v11, v12}, Lcom/google/googlex/gcam/imageproc/Resample;->b(Lcom/google/googlex/gcam/InterleavedReadViewU8;Lsxp;Lcom/google/googlex/gcam/InterleavedWriteViewU8;)V

    move-object v11, v4

    nop

    nop

    nop

    nop

    nop

    :cond_e
    iget-object v6, v3, Ljfk;->c:Lins;

    nop

    nop

    nop

    move-object v3, v0

    nop

    nop

    check-cast v3, Ljgb;

    nop

    nop

    nop

    iget-object v3, v3, Ljgb;->c:Lllc;

    nop

    move-object v4, v0

    nop

    check-cast v4, Ljgb;

    nop

    nop

    nop

    iget v4, v4, Ljgb;->d:I

    nop

    nop

    nop

    nop

    nop

    add-int/lit8 v4, v4, -0x1

    nop

    nop

    nop

    nop

    nop

    if-eq v4, v10, :cond_f

    nop

    nop

    const/16 v9, 0x64

    nop

    nop

    nop

    :cond_f
    move v12, v9

    nop

    nop

    nop

    nop

    nop

    if-eq v4, v10, :cond_10

    nop

    sget-object v4, Linr;->b:Linr;

    nop

    nop

    nop

    nop

    nop

    goto :goto_32

    nop

    nop

    nop

    :cond_10
    sget-object v4, Linr;->a:Linr;

    nop

    nop

    nop

    :goto_32
    move-object v13, v4

    nop

    nop

    iget-object v4, v5, Ljez;->b:Linb;

    nop

    iget-object v15, v5, Ljez;->f:Ljava/util/UUID;

    nop

    nop

    nop

    nop

    move-object v9, v0

    nop

    nop

    check-cast v9, Ljgb;

    nop

    nop

    nop

    nop

    iget-object v14, v9, Ljgb;->b:Lcom/google/googlex/gcam/ShotMetadata;

    nop

    nop

    nop

    nop

    invoke-static {v11}, Lnar;->n(Ljava/lang/Object;)Lnar;

    move-result-object v9

    nop

    nop

    nop

    nop

    nop

    iget-object v10, v6, Lins;->e:Lhoh;

    nop

    nop

    sget-object v11, Lhmq;->bk:Lhmn;

    nop

    invoke-virtual {v10, v11}, Lhoh;->p(Lhmn;)Z

    move-result v16

    nop

    nop

    nop

    nop

    sget-object v17, Lrsa;->a:Lrsa;

    nop

    nop

    iget-object v4, v4, Linb;->w:Llko;

    nop

    nop

    nop

    nop

    iget-object v4, v4, Llko;->d:Ljava/lang/Object;

    nop

    nop

    move-object v10, v3

    nop

    nop

    nop

    move v11, v12

    nop

    move/from16 v12, v16

    nop

    nop

    nop

    move-object v3, v14

    nop

    nop

    nop

    nop

    nop

    move-object v14, v4

    nop

    nop

    move-object/from16 v16, v3

    nop

    nop

    nop

    invoke-virtual/range {v6 .. v17}, Lins;->a(JLnar;Lllc;IZLinr;Llxa;Ljava/util/UUID;Lcom/google/googlex/gcam/ShotMetadata;Lrss;)Lsui;

    move-result-object v3

    nop

    nop

    nop

    new-instance v4, Litv;

    nop

    nop

    nop

    nop

    check-cast v0, Ljgb;

    nop

    nop

    nop

    nop

    const/4 v6, 0x3

    nop

    nop

    invoke-direct {v4, v0, v5, v6}, Litv;-><init>(Ljgb;Ljez;I)V

    sget-object v0, Lstd;->a:Lstd;

    nop

    nop

    nop

    nop

    invoke-static {v3, v4, v0}, Lsgj;->Y(Lsui;Lstu;Ljava/util/concurrent/Executor;)V

    goto :goto_39

    nop

    nop

    :cond_11
    sget-object v3, Ljfk;->a:Lsdb;

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Lscs;->c()Lsdo;

    move-result-object v3

    nop

    nop

    const/16 v4, 0x8e3

    nop

    invoke-interface {v3, v4}, Lscz;->M(I)Lsdo;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    check-cast v3, Lscz;

    nop

    nop

    nop

    nop

    invoke-static/range {p4 .. p4}, Ltcw;->d(I)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    const-string v4, "Motion Blur result %s was received, but ignored because it was invalid."

    nop

    nop

    nop

    nop

    invoke-interface {v3, v4, v0}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v5}, Ljez;->e()V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_33
    const v0, 0x1a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_34
    iget-object v2, v1, Ljfi;->o:Lsys;

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-interface {v3, v4}, Lpdf;->f(Ljava/lang/String;)V

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    sget-object v2, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    nop

    nop

    :goto_37
    goto/32 :goto_46

    nop

    nop

    nop

    :goto_38
    invoke-virtual {v0}, Ljgb;->close()V

    :goto_39
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_3a
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    sget-object v3, Ljfi;->a:Lsdb;

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_3d
    invoke-interface {v0}, Lpdf;->g()V

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-interface {v3}, Lpdf;->g()V

    goto/32 :goto_21

    nop

    nop

    :goto_3f
    invoke-virtual {v3}, Lscs;->c()Lsdo;

    move-result-object v3

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_40
    invoke-virtual {v2}, Lrss;->c()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    iget-object v3, v1, Ljfi;->e:Lpdf;

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    check-cast v0, Lscz;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_43
    move-wide/from16 v3, p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    if-nez v0, :cond_12

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :cond_12
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    invoke-interface {v0, v3, v4}, Lscz;->t(Ljava/lang/String;I)V

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_46
    iget-object v3, v1, Ljfi;->m:Ljfk;

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_47
    check-cast v0, Ljgb;

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_48
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_49
    goto/32 :goto_0

    nop

    nop

    :goto_4a
    if-lez v0, :cond_13

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    :cond_13
    goto/32 :goto_48

    nop

    :goto_4b
    iget-object v4, v1, Ljfi;->h:Linb;

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_4c
    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    check-cast v0, Lscz;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    filled-new-array {v3, v4, v5, v6}, [Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    invoke-virtual {v2}, Lcom/google/googlex/gcam/InterleavedImageU8;->a()I

    goto/32 :goto_10

    nop

    nop
.end method

.method public final synthetic onFinalStatusNative(IILjava/lang/String;[B)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-static {p0, p1, p2, p3, p4}, Ltcw;->$default$onFinalStatusNative(Lcom/google/googlex/gcam/lasagna/LasagnaCallbacks;IILjava/lang/String;[B)V

    goto/32 :goto_0

    nop

    nop
.end method

.method public final synthetic onImageNative(IJILjava/lang/String;J)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-static/range {p0 .. p7}, Ltcw;->$default$onImageNative(Lcom/google/googlex/gcam/lasagna/LasagnaCallbacks;IJILjava/lang/String;J)V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop
.end method

.method public final onProgress(IF)V
    .locals 0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_0
    sget-object p0, Ljfi;->a:Lsdb;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    check-cast p0, Lscz;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    :goto_3
    const/16 p1, 0x8c5

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    invoke-interface {p0, p1}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p0, p0, Ljfi;->h:Linb;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_6
    invoke-interface {p0, p1, p2}, Lktr;->a(Lnoz;F)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-interface {p0, p1}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_2

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0}, Lscs;->c()Lsdo;

    move-result-object p0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_b
    sget-object p1, Ljfy;->t:Lnoz;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_c
    iget-object p0, p0, Linb;->w:Llko;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object p0, p0, Llko;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_e
    if-nez p0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    nop

    :goto_f
    const-string p1, "Shot has been aborted."

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop
.end method

.method public final onPslRequest(IZFF)V
    .locals 10

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-interface {p1, p2}, Lktp;->e(I)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-eqz p2, :cond_0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    :cond_0
    :try_start_0
    sget-object p2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    nop

    const-wide/16 v1, 0x1

    nop

    nop

    nop

    nop

    invoke-virtual {p2, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    nop

    nop

    nop

    nop

    nop

    long-to-float p2, v1

    nop

    nop

    nop

    mul-float/2addr p2, p3

    nop

    nop

    nop

    nop

    nop

    iget-object v1, p0, Ljfi;->r:Lktq;

    nop

    nop

    float-to-long v2, p2

    nop

    invoke-interface {v1}, Lktq;->d()Lktp;

    move-result-object p2

    nop

    nop

    nop

    nop

    const/4 v1, 0x2

    nop

    nop

    nop

    invoke-interface {p2, v1}, Lktp;->e(I)V

    iget-object p2, p0, Ljfi;->r:Lktq;

    nop

    invoke-interface {p2}, Lktq;->d()Lktp;

    move-result-object p2

    nop

    nop

    nop

    nop

    invoke-interface {p2, v2, v3}, Lktp;->g(J)V

    iget-object p2, p0, Ljfi;->r:Lktq;

    nop

    nop

    invoke-interface {p2}, Lktq;->d()Lktp;

    move-result-object p2

    nop

    nop

    nop

    nop

    invoke-interface {p2}, Lktp;->h()V

    iget-object p2, p0, Ljfi;->r:Lktq;

    nop

    invoke-interface {p2}, Lktq;->d()Lktp;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p2, v0}, Lktp;->a(Ljava/lang/Object;)V

    iget-object p2, p0, Ljfi;->g:Llxa;

    nop

    nop

    invoke-interface {p2, v2, v3}, Llxa;->Y(J)V

    iget-object v4, p0, Ljfi;->l:Ljel;

    nop

    nop

    nop

    iget-object p2, p0, Ljfi;->f:Lsuu;

    nop
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    nop

    const-wide/16 v1, 0x5

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p2, v1, v2, v0}, Lsuu;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p2

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_10

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object p1, p0, Ljfi;->r:Lktq;

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object p1, p0, Ljfi;->r:Lktq;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_4

    nop

    :goto_b
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_c
    iget-object p1, p0, Ljfi;->q:Lsuu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    nop

    nop

    nop

    :catch_0
    move-exception p1

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_e
    if-nez p2, :cond_1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_1
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p0}, Ljfi;->c()V

    goto/32 :goto_6

    nop

    nop

    :goto_10
    if-nez p2, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    :cond_2
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_11
    const-string p1, "No PSL frames to collect."

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_12
    iget-object p2, p0, Ljfi;->l:Ljel;

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-interface {p1}, Lktq;->d()Lktp;

    move-result-object p1

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const v1, 0xf

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p1, p2}, Lsuu;->e(Ljava/lang/Object;)Z

    goto/32 :goto_11

    nop

    nop

    :goto_16
    const v0, 0x13

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_17
    if-nez p2, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_18
    invoke-direct {p0, p2, p1}, Ljfi;->da190e616797844b591057d0190e7728m(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_1a
    if-lez v0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_a

    nop

    :goto_1b
    const-string p2, "Error collecting PSL frames."

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object p2, p0, Ljfi;->q:Lsuu;

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_1d
    check-cast p2, Ljava/lang/Long;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_1f
    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-interface {p1}, Lktq;->d()Lktp;

    move-result-object p1

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-direct {p0, p1, v0}, Ljfi;->da190e616797844b591057d0190e7728m(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_22
    invoke-virtual {p0}, Ljfi;->c()V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_23
    move v7, p4

    nop

    :try_start_2
    invoke-virtual/range {v4 .. v9}, Ljel;->e(IFFJ)V

    iget-object p1, p0, Ljfi;->n:Lfdo;

    nop

    iget-object p2, p1, Lfdo;->a:Ljava/lang/Object;

    nop

    nop

    move-object v0, p2

    nop

    nop

    nop

    check-cast v0, Ltkb;

    nop

    nop

    nop

    iget-object v0, v0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Ltkg;->C()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    if-nez v0, :cond_5

    nop

    nop

    move-object v0, p2

    nop

    nop

    nop

    check-cast v0, Ltkb;

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Ltkb;->o()V

    :cond_5
    check-cast p2, Ltkb;

    nop

    nop

    nop

    nop

    nop

    iget-object p2, p2, Ltkb;->b:Ltkg;

    nop

    nop

    check-cast p2, Lsnz;

    nop

    nop

    nop

    sget-object v0, Lsnz;->a:Lsnz;

    nop

    nop

    nop

    nop

    iget v0, p2, Lsnz;->b:I

    nop

    nop

    nop

    nop

    or-int/lit8 v0, v0, 0x10

    nop

    nop

    nop

    nop

    iput v0, p2, Lsnz;->b:I

    nop

    nop

    nop

    iput p3, p2, Lsnz;->f:F

    nop

    nop

    nop

    iget-object p1, p1, Lfdo;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    move-object p2, p1

    nop

    nop

    nop

    nop

    check-cast p2, Ltkb;

    nop

    nop

    iget-object p2, p2, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p2}, Ltkg;->C()Z

    move-result p2

    nop

    nop

    if-nez p2, :cond_6

    nop

    nop

    nop

    nop

    nop

    move-object p2, p1

    nop

    nop

    nop

    nop

    nop

    check-cast p2, Ltkb;

    nop

    invoke-virtual {p2}, Ltkb;->o()V

    :cond_6
    check-cast p1, Ltkb;

    nop

    nop

    nop

    nop

    iget-object p1, p1, Ltkb;->b:Ltkg;

    nop

    check-cast p1, Lsnz;

    nop

    nop

    nop

    iget p2, p1, Lsnz;->b:I

    nop

    nop

    nop

    or-int/lit16 p2, p2, 0x100

    nop

    nop

    iput p2, p1, Lsnz;->b:I

    nop

    nop

    nop

    nop

    nop

    iput p4, p1, Lsnz;->j:F

    nop

    nop

    nop

    nop
    :try_end_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_2} :catch_0

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_24
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_25
    instance-of p2, p1, Ljava/lang/InterruptedException;

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_26
    move v6, p3

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    const/4 p2, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_28
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_29
    invoke-interface {p1}, Lktp;->h()V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    if-nez p2, :cond_7

    nop

    goto/32 :goto_33

    nop

    nop

    :cond_7
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    move v5, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_2c
    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_2d
    const-string v1, "onPslRequest / isNeeded = %s, duration = %s, frameRate = %s"

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_2e
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    const/4 p2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_32
    invoke-virtual {p2}, Ljava/lang/Thread;->interrupt()V

    :goto_33
    goto/32 :goto_1b

    nop

    nop

    :goto_34
    invoke-virtual {p2}, Lsuu;->isDone()Z

    move-result p2

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_35
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_36
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    nop

    nop

    nop

    :catchall_0
    :goto_37
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop
.end method

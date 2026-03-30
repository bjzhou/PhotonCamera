.class public Llph;
.super Ljsg;
.source "PG"

# interfaces
.implements Llna;


# static fields
.field public static final a:Lsdb;

.field private static final p:Lj$/time/Duration;


# instance fields
.field public final b:Lljh;

.field public final c:Loyn;

.field public final d:Lebf;

.field public final e:Llpp;

.field public final f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public h:Lnkn;

.field public i:Landroid/view/View;

.field public j:Landroid/view/View;

.field public k:Z

.field public l:Z

.field public m:Lows;

.field public final n:Lmjv;

.field public o:Lnar;

.field private final q:Loyd;

.field private final r:Lowu;

.field private final s:Loyn;

.field private final t:Loyd;

.field private u:Landroidx/compose/ui/platform/ComposeView;

.field private v:Z

.field private w:Lows;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_0
    const-wide/16 v0, 0x64

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

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

    :goto_5
    invoke-static {v0, v1}, Lj$/time/Duration;->ofMillis(J)Lj$/time/Duration;

    move-result-object v0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    sput-object v0, Llph;->a:Lsdb;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    sput-object v0, Llph;->p:Lj$/time/Duration;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_8
    const-string v0, "lph"

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_9
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_c
    const v0, 0x20

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const v1, 0xd

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop
.end method

.method public constructor <init>(Lljh;Loyn;Loyd;Lowu;Loyn;Loyd;Lmjv;)V
    .locals 3

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p3, p0, Llph;->q:Loyd;

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_5
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iput-object p5, p0, Llph;->s:Loyn;

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0x1

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

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    :cond_0
    goto/32 :goto_13

    nop

    :goto_b
    new-instance v0, Lebf;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_c
    iput-boolean v1, p0, Llph;->k:Z

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

    nop

    :goto_d
    new-instance v0, Llpp;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_e
    iput-object v0, p0, Llph;->e:Llpp;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iput-object v0, p0, Llph;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iput-boolean v0, p0, Llph;->v:Z

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

    :goto_12
    invoke-direct {v0, v2}, Lebf;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_18

    nop

    :goto_14
    goto/32 :goto_1b

    nop

    nop

    :goto_15
    const v1, 0x1b

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_16
    iput-object p1, p0, Llph;->b:Lljh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_17
    return-void

    nop

    nop

    :goto_18
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_19
    invoke-direct {v0}, Llpp;-><init>()V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iput-object p7, p0, Llph;->n:Lmjv;

    nop

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

    :goto_1b
    invoke-direct {p0}, Ljsg;-><init>()V

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1c
    iput-object p4, p0, Llph;->r:Lowu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1d
    iput-boolean v1, p0, Llph;->l:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_1e
    iput-object p2, p0, Llph;->c:Loyn;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iput-object v0, p0, Llph;->d:Lebf;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_20
    iput-object p6, p0, Llph;->t:Loyd;

    nop

    goto/32 :goto_1a

    nop

    nop
.end method


# virtual methods
.method public final d(Landroid/view/View;)Lpci;
    .locals 8

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v2, p0, Llph;->r:Lowu;

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_1
    iput-object v0, p0, Llph;->m:Lows;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Ljsg;->g:Lnkn;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    new-instance v0, Lows;

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {v5, p0, v6}, Lhbt;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Llph;->t:Loyd;

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/4 v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_7
    const-wide/32 v0, 0x186a0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v2}, Lcwl;->b()V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-direct {v0, p0, v1}, Ljsh;-><init>(Ljsg;I)V

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    new-instance v0, Ljsh;

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_b
    check-cast p1, Landroidx/compose/ui/platform/ComposeView;

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p0, v0}, Llph;->k(Llpn;)Lnkm;

    move-result-object v0

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    new-instance p1, Lkxx;

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

    :goto_e
    const/16 v0, 0x13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object p1, p1, Llpo;->b:Lnar;

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_10
    iget-object v0, p1, Llpo;->a:Llpn;

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const v0, 0xd

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

    :goto_12
    iput-object v0, p0, Llph;->j:Landroid/view/View;

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v0, p0, Llph;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_25

    nop

    nop

    :goto_15
    invoke-direct {v1, p0, v2}, Llmy;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_16
    iget-object v1, p0, Llph;->u:Landroidx/compose/ui/platform/ComposeView;

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_17
    const v7, 0x7f08032a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_19
    const/4 v1, 0x7

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

    nop

    nop

    :goto_1a
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {p1, v0}, Lows;->d(Lpci;)V

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1c
    iget-object v2, p0, Llph;->u:Landroidx/compose/ui/platform/ComposeView;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_1d
    new-instance v2, Lnkn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    return-object p1

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    const v5, 0x7f1400a4

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_21
    add-int v0, v0, v1

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_22
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_23
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_24
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    const v1, 0x18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_27
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    iget-object v3, p0, Llph;->u:Landroidx/compose/ui/platform/ComposeView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_29
    iput-object v2, p0, Llph;->h:Lnkn;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_2a
    const-string p1, "Cannot bind multiple times."

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_2c
    const/16 v6, 0x9

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-direct {v0}, Lows;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-direct {p1, p0, v0}, Lkxx;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_2f
    invoke-direct {v4, v7, v1, v5, v6}, Lnkk;-><init>(ILjava/lang/String;Luaz;Lebf;)V

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    new-instance v4, Lnkk;

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_31
    invoke-direct {v2, v3, v0, v4}, Lnkn;-><init>(Landroidx/compose/ui/platform/ComposeView;Lnkm;Lnkk;)V

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-virtual {v1}, Landroidx/compose/ui/platform/ComposeView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_33
    const v1, 0x7f0b016e

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_35
    iget-object p1, p0, Llph;->h:Lnkn;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_36
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_24

    nop

    :goto_37
    iput-object p1, p0, Llph;->o:Lnar;

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_38
    iput-object p1, p0, Llph;->i:Landroid/view/View;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_39
    throw p0

    nop

    nop

    :goto_3a
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_3b
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    iget-object p1, p0, Llph;->m:Lows;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3d
    new-instance v1, Llmy;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_3e
    invoke-static {v0, v1}, Llpk;->a(J)Llpo;

    move-result-object p1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_40
    if-nez v0, :cond_1

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :cond_1
    goto/32 :goto_38

    nop

    nop

    :goto_41
    const/16 v2, 0x10

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_42
    new-instance v5, Lhbt;

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_43
    const v0, 0x7f0b0413

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_44
    invoke-interface {v0, v1, v2}, Loyd;->cL(Lpcm;Ljava/util/concurrent/Executor;)Lpci;

    move-result-object v0

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_45
    invoke-virtual {p1, v0}, Lnkn;->c(Lnlk;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_46
    iget-object v6, p0, Llph;->d:Lebf;

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_47
    iput-object p1, p0, Llph;->u:Landroidx/compose/ui/platform/ComposeView;

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop
.end method

.method public final declared-synchronized e()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    monitor-exit p0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1
    throw v0

    nop

    nop

    nop

    nop

    :goto_2
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v0, p0, Llph;->w:Lows;

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_0

    nop

    invoke-virtual {v0}, Lows;->close()V

    const/4 v0, 0x0

    nop

    nop

    nop

    iput-object v0, p0, Llph;->w:Lows;

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final f()V
    .locals 3

    goto/32 :goto_f

    nop

    nop

    :goto_0
    invoke-interface {v2, v1}, Loyn;->a(Ljava/lang/Object;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v1, p0, Llph;->s:Loyn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_2
    iget-object v2, p0, Llph;->c:Loyn;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    invoke-interface {v1}, Loyn;->cM()Ljava/lang/Object;

    move-result-object v1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    :cond_0
    goto/32 :goto_11

    nop

    :goto_5
    iput-boolean v0, p0, Llph;->k:Z

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object p0, p0, Llph;->d:Lebf;

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-interface {v1, v0}, Loyn;->a(Ljava/lang/Object;)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object v2

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    :goto_b
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_c
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_d
    iget-object v0, p0, Llph;->b:Lljh;

    nop

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

    :goto_e
    const/4 v1, 0x1

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
    const v0, 0x20

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_10
    check-cast v1, Ljry;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-interface {v0, v1}, Lljh;->b(Z)V

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_14
    const v1, 0x17

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_12

    nop

    nop

    :goto_16
    iput-object v2, v1, Ljry;->e:Lj$/util/Optional;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget-object v1, p0, Llph;->c:Loyn;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_18
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p0, v0}, Lebf;->h(Ljava/lang/Object;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1a
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop
.end method

.method public final declared-synchronized g()V
    .locals 5

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_0
    const v1, 0x20

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    throw v0

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_3
    monitor-exit p0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_2

    nop

    nop

    :goto_6
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_8
    if-nez v0, :cond_0

    nop

    goto/32 :goto_a

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    nop

    :goto_a
    :try_start_0
    iget-object v0, p0, Llph;->m:Lows;

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lows;->c()Lows;

    move-result-object v0

    nop

    iput-object v0, p0, Llph;->w:Lows;

    nop

    nop

    nop

    iget-object v1, p0, Llph;->q:Loyd;

    nop

    new-instance v2, Llmy;

    nop

    nop

    nop

    nop

    const/16 v3, 0xe

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v2, p0, v3}, Llmy;-><init>(Ljava/lang/Object;I)V

    iget-object v3, p0, Llph;->r:Lowu;

    nop

    nop

    nop

    nop

    invoke-interface {v1, v2, v3}, Loyd;->cL(Lpcm;Ljava/util/concurrent/Executor;)Lpci;

    move-result-object v1

    nop

    nop

    invoke-virtual {v0, v1}, Lows;->d(Lpci;)V

    iget-object v0, p0, Llph;->w:Lows;

    nop

    nop

    iget-object v1, p0, Llph;->q:Loyd;

    nop

    nop

    nop

    nop

    nop

    new-instance v2, Llnm;

    nop

    nop

    nop

    nop

    const/4 v3, 0x4

    nop

    nop

    nop

    nop

    invoke-direct {v2, v3}, Llnm;-><init>(I)V

    invoke-static {v1, v2}, Loyi;->h(Loyd;Lrsk;)Loyd;

    move-result-object v1

    nop

    invoke-static {v1}, Loxz;->a(Loyd;)Loyd;

    move-result-object v1

    nop

    new-instance v2, Llmy;

    nop

    nop

    nop

    nop

    nop

    const/16 v3, 0xf

    nop

    nop

    nop

    invoke-direct {v2, p0, v3}, Llmy;-><init>(Ljava/lang/Object;I)V

    iget-object v3, p0, Llph;->r:Lowu;

    nop

    nop

    nop

    nop

    invoke-interface {v1, v2, v3}, Loyd;->cL(Lpcm;Ljava/util/concurrent/Executor;)Lpci;

    move-result-object v1

    nop

    invoke-virtual {v0, v1}, Lows;->d(Lpci;)V

    iget-object v0, p0, Llph;->w:Lows;

    nop

    nop

    nop

    nop

    nop

    new-instance v1, Lkxx;

    nop

    nop

    nop

    nop

    const/16 v2, 0x12

    nop

    nop

    nop

    invoke-direct {v1, p0, v2}, Lkxx;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Lows;->d(Lpci;)V

    iput-boolean v4, p0, Llph;->l:Z

    nop

    iget-object v0, p0, Llph;->j:Landroid/view/View;

    nop

    nop

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    nop

    nop

    nop

    nop

    iget-object v1, p0, Llph;->j:Landroid/view/View;

    nop

    nop

    const v2, 0x7f14063a

    nop

    nop

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    const v2, 0x7f140636

    nop

    nop

    nop

    nop

    nop

    const v3, 0x7f140639

    nop

    nop

    nop

    invoke-static {v1, v2, v3, v0}, Ljmo;->y(Landroid/view/View;IILjava/lang/String;)V

    iput-object v1, p0, Llph;->j:Landroid/view/View;

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    monitor-exit p0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_c
    monitor-enter p0

    nop

    :try_start_1
    iget-object v0, p0, Llph;->i:Landroid/view/View;

    nop

    nop

    nop

    nop

    iget-boolean v1, p0, Llph;->v:Z

    nop

    nop

    nop

    const/16 v2, 0x8

    nop

    nop

    nop

    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    nop

    const/4 v4, 0x1

    nop

    nop

    nop

    if-eq v4, v1, :cond_1

    nop

    nop

    nop

    nop

    nop

    move v1, v2

    nop

    nop

    nop

    goto :goto_d

    nop

    :cond_1
    move v1, v3

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Llph;->j:Landroid/view/View;

    nop

    nop

    nop

    nop

    iget-boolean v1, p0, Llph;->v:Z

    nop

    nop

    if-eq v4, v1, :cond_2

    nop

    nop

    nop

    nop

    move v2, v3

    nop

    nop

    :cond_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Llph;->w:Lows;

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_e
    return-void

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    :try_start_2
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const v0, 0x19

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-lez v0, :cond_3

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_3
    goto/32 :goto_5

    nop
.end method

.method public final h(J)F
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    double-to-float p0, p0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1, p2}, Lnar;->m(D)D

    move-result-wide p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    const/high16 p2, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return p0

    nop

    nop

    nop

    :goto_4
    iget-object p0, p0, Llph;->o:Lnar;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 p1, 0x0

    nop

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

    :goto_6
    invoke-static {p0, p1, p2}, Lrrf;->V(FFF)F

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_7
    long-to-double p1, p1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public final i(Z)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-boolean p1, p0, Llph;->v:Z

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2
    if-nez p1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    :goto_3
    iget-boolean p1, p0, Llph;->l:Z

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Llph;->g()V

    :goto_5
    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final j(F)J
    .locals 10

    goto/32 :goto_6

    nop

    nop

    :goto_0
    invoke-static/range {v2 .. v7}, Lrrf;->s(ZLjava/lang/String;JJ)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_2
    check-cast v0, Landroid/util/Range;

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_4
    check-cast v0, Loxv;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0x1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_8
    goto/32 :goto_b

    nop

    nop

    :goto_9
    iget-object v0, v0, Loxv;->d:Ljava/lang/Object;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_c
    const v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_d
    invoke-static {p0, p1, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    float-to-double v1, p1

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v0, p0, Llph;->b:Lljh;

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_10
    check-cast v1, Ljava/lang/Long;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_11
    move-wide v6, v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const-string v3, "min (%s) must be less than or equal to max (%s)"

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

    nop

    :goto_13
    move-wide v4, v8

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_14
    goto :goto_18

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_16
    if-lez v2, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1e

    nop

    nop

    :goto_17
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_12

    nop

    nop

    :goto_19
    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_1b
    invoke-interface {v0}, Lljh;->a()Loyd;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1c
    rem-int v0, v0, v1

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

    :goto_1d
    cmp-long v2, v8, v0

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const/4 v2, 0x1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_1f
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_20
    check-cast v0, Ljava/lang/Long;

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_21
    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_22
    iget-object p0, p0, Llph;->o:Lnar;

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

    :goto_23
    return-wide p0

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {p0, v1, v2}, Lnar;->l(D)D

    move-result-wide p0

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop
.end method

.method public final k(Llpn;)Lnkm;
    .locals 18

    goto/32 :goto_1f

    nop

    nop

    :goto_0
    invoke-direct {v13, v6, v4, v5, v3}, Lnkl;-><init>(ILjava/lang/String;Landroid/util/Size;I)V

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_1
    const v1, 0xd

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_2
    const v3, 0x7f07036e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v2}, Landroidx/compose/ui/platform/ComposeView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_4
    iget-object v3, v0, Llph;->i:Landroid/view/View;

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    int-to-float v7, v3

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget v5, v1, Llpn;->a:I

    nop

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

    :goto_7
    const/16 v4, 0xc

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    new-instance v17, Lnkm;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v4, 0x7f140176

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_a
    invoke-direct {v3, v0, v2, v4}, Lhdq;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_b
    new-instance v13, Lnkl;

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_c
    return-object v17

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_34

    nop

    nop

    nop

    :goto_e
    invoke-direct/range {v4 .. v16}, Lnkm;-><init>(ILjava/util/Set;FFZILjava/util/List;Lnkl;Lnkl;ZILubk;)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    new-instance v5, Landroid/util/Size;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_12
    move-object/from16 v1, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_13
    iget v3, v1, Llpn;->b:I

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_14
    const/4 v15, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    new-instance v5, Landroid/util/Size;

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_17
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget-object v3, v0, Llph;->i:Landroid/view/View;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-direct {v5, v3, v3}, Landroid/util/Size;-><init>(II)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_d

    nop

    nop

    :goto_1b
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_1c
    new-instance v12, Lnkl;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_1d
    const v6, 0x7f080244

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

    :goto_1e
    const/high16 v8, 0x3f000000    # 0.5f

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const v0, 0x13

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_20
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    :cond_0
    goto/32 :goto_1a

    nop

    :goto_21
    invoke-static {v3}, Lnzk;->v(Landroid/view/View;)I

    move-result v3

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_22
    const v3, 0x7f07014f

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_23
    iget-object v2, v0, Llph;->u:Landroidx/compose/ui/platform/ComposeView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_24
    iget-object v6, v1, Llpn;->c:Lryy;

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_25
    invoke-static {v3}, Lnzk;->v(Landroid/view/View;)I

    move-result v3

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

    :goto_26
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-direct {v12, v6, v4, v5, v3}, Lnkl;-><init>(ILjava/lang/String;Landroid/util/Size;I)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_28
    iget-object v11, v1, Llpn;->d:Lryb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_29
    invoke-direct {v5, v3, v3}, Landroid/util/Size;-><init>(II)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2a
    move-object/from16 v4, v17

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    const v6, 0x7f080245

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_2c
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_2d
    const/4 v10, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_2e
    new-instance v3, Lhdq;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    const v4, 0x7f1402a1

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_30
    const/4 v9, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    move-object/from16 v16, v3

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_32
    move-object/from16 v0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    const/4 v14, 0x0

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_1b

    nop

    nop

    :goto_35
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop
.end method

.method public final l(J)V
    .locals 4

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_0
    cmp-long v3, p1, v1

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/16 :goto_2b

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-interface {p0}, Loyn;->cM()Ljava/lang/Object;

    move-result-object v0

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

    nop

    :goto_4
    const/4 v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_5
    invoke-virtual {v0}, Lj$/time/Duration;->toNanos()J

    move-result-wide v2

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_6
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v0}, Lj$/time/Duration;->toNanos()J

    move-result-wide v1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v2, v1}, Lebf;->h(Ljava/lang/Object;)V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-nez v3, :cond_0

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

    :cond_0
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    check-cast v0, Ljry;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_d
    iget-object p0, p0, Llph;->c:Loyn;

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

    :goto_e
    invoke-interface {p0, v0}, Loyn;->a(Ljava/lang/Object;)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto :goto_1c

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-interface {v1, v2, v3}, Lljh;->c(J)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_12
    rem-int v0, v0, v1

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_13
    if-gtz v3, :cond_1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_14
    invoke-static {p1}, Lj$/util/Optional;->of(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object p1

    nop

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
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_23

    nop

    :cond_2
    goto/32 :goto_22

    nop

    :goto_16
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_7

    nop

    nop

    :goto_18
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iput-boolean v1, p0, Llph;->k:Z

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_1d
    iget-boolean v1, p0, Llph;->k:Z

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

    :goto_1e
    goto/32 :goto_23

    nop

    nop

    :goto_1f
    iget-object v1, p0, Llph;->b:Lljh;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_20
    iget-object v2, p0, Llph;->d:Lebf;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-interface {v2, v1}, Loyn;->a(Ljava/lang/Object;)V

    goto/32 :goto_20

    nop

    nop

    :goto_22
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_27

    nop

    nop

    :goto_24
    iput-object p1, v0, Ljry;->e:Lj$/util/Optional;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_25
    const v1, 0x2

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

    :goto_26
    if-nez v1, :cond_3

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    sget-object v0, Llph;->p:Lj$/time/Duration;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_28
    iget-object v2, p0, Llph;->s:Loyn;

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

    :goto_29
    const v0, 0x1f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-interface {v0, p1, p2}, Lljh;->c(J)V

    :goto_2b
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_2c
    iget-object v0, p0, Llph;->b:Lljh;

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop
.end method

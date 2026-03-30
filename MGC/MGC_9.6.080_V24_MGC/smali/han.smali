.class public final Lhan;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lmsc;


# instance fields
.field public final a:Lowu;

.field public final b:Lhco;

.field public final c:Loyd;

.field public final d:Loyd;

.field public final e:Loyd;

.field public f:Lneh;

.field public g:Z

.field public final h:Lixe;

.field private final i:Ljava/util/Timer;

.field private final j:Landroid/content/Context;

.field private final k:Lmse;

.field private l:Lpci;


# direct methods
.method public constructor <init>(Lixe;Landroid/content/Context;Lowu;Ljava/util/Timer;Lmse;Lhco;Loyn;Loyd;Loyd;)V
    .locals 1

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p4, p0, Lhan;->i:Ljava/util/Timer;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p2, p0, Lhan;->j:Landroid/content/Context;

    nop

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

    :goto_2
    iput-object p7, p0, Lhan;->c:Loyd;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_3
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_4
    iput-object p6, p0, Lhan;->b:Lhco;

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

    :goto_5
    iput-boolean v0, p0, Lhan;->g:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    :goto_7
    iput-object p3, p0, Lhan;->a:Lowu;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    :goto_9
    iput-object p1, p0, Lhan;->h:Lixe;

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

    :goto_a
    iput-object p5, p0, Lhan;->k:Lmse;

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

    :goto_b
    iput-object p8, p0, Lhan;->d:Loyd;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iput-object p9, p0, Lhan;->e:Loyd;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop
.end method


# virtual methods
.method public final a()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    const/4 v0, 0x0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0, v0}, Lixe;->f(Lixf;)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Lhan;->f:Lneh;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_5
    iput-boolean v0, p0, Lhan;->g:Z

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

    :goto_6
    iget-object p0, p0, Lhan;->h:Lixe;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method

.method public final b()V
    .locals 3

    goto/32 :goto_f

    nop

    nop

    :goto_0
    const v1, 0x3

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_2
    invoke-direct {v0, p0}, Lham;-><init>(Lhan;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto/32 :goto_6

    nop

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

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_5
    goto/32 :goto_d

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const-wide/16 v1, 0x1f4

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_a
    iget-object p0, p0, Lhan;->i:Ljava/util/Timer;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iput-boolean v1, p0, Lhan;->g:Z

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_10

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

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

    nop

    nop

    :goto_f
    const v0, 0x20

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

    :goto_10
    new-instance v0, Lham;

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method

.method public final c(Lnne;)V
    .locals 3

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_0
    goto :goto_a

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_2
    iput p1, v1, Lnei;->h:I

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lhan;->l:Lpci;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_4
    invoke-virtual {v1}, Lnei;->a()Lneh;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_5
    iget-object p1, p0, Lhan;->k:Lmse;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_6
    const/4 p1, 0x5

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_7
    iput-object p1, p0, Lhan;->f:Lneh;

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

    :goto_8
    invoke-interface {v1, p1, v0}, Loyd;->cL(Lpcm;Ljava/util/concurrent/Executor;)Lpci;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_9
    const p1, 0x7f140771

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v0, p0, Lhan;->a:Lowu;

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iput-object p1, v1, Lnei;->e:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_12
    const/16 p1, 0x1388

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-direct {p1, p0, v0}, Lhao;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p1, p0}, Lmse;->f(Lmsc;)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_15
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1e

    nop

    :goto_16
    const p1, 0x7f140770

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_17
    const/4 v0, 0x1

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_18
    iput-object p1, v1, Lnei;->g:Landroid/content/Context;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_19
    new-instance p1, Lhao;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_1a
    if-eq p1, v0, :cond_1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    sget-object v0, Lnne;->c:Lnne;

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_1c
    iput p1, v1, Lnei;->b:I

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1d
    iget-object v2, p0, Lhan;->j:Landroid/content/Context;

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

    :goto_1e
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_20
    add-int v0, v0, v1

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iget-object p1, p0, Lhan;->j:Landroid/content/Context;

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-direct {v1}, Lnei;-><init>()V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const v0, 0x19

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

    :goto_24
    iget-object v1, p0, Lhan;->d:Loyd;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_25
    const v1, 0xe

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_26
    new-instance v1, Lnei;

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    rem-int v0, v0, v1

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop
.end method

.method public final d()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lhan;->k:Lmse;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0, p0}, Lmse;->i(Lmsc;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2
    invoke-interface {v0}, Lpci;->close()V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Lhan;->a()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Lhan;->l:Lpci;

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop
.end method

.method public final dF(I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lhan;->a()V

    goto/32 :goto_1

    nop

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
.end method

.method public final e(I)V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-virtual {p0}, Lhan;->b()V

    :goto_2
    goto/32 :goto_0

    nop

    nop

    :goto_3
    const/16 v0, 0x24

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

    :goto_4
    if-eq p1, v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method

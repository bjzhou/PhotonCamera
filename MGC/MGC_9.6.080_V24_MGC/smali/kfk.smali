.class public final Lkfk;
.super Lpuq;
.source "PG"


# static fields
.field public static final a:Lj$/time/Duration;


# instance fields
.field public final b:Loyn;

.field public final c:Lowu;

.field public final d:Lrtk;

.field public e:Lneh;

.field public f:Z

.field public final g:Lnsi;

.field public final h:Lixe;

.field public i:I

.field private final k:Ljava/util/Timer;

.field private final l:Lneh;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_2

    nop

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

    :goto_1
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0x6

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_4
    invoke-static {v0, v1}, Lj$/time/Duration;->ofMillis(J)Lj$/time/Duration;

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

    :goto_5
    sput-object v0, Lkfk;->a:Lj$/time/Duration;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0xe

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_9
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_a

    nop

    nop

    :goto_c
    const-wide/16 v0, 0x1f40

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Lixe;Landroid/content/Context;Lowu;Loyn;Ljava/util/Timer;)V
    .locals 2

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_1
    const/4 p2, 0x5

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lkfk;->h:Lixe;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_3
    iput-object p3, p1, Lnei;->e:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_4
    iput-object p1, p0, Lkfk;->l:Lneh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_5
    const/16 p2, 0x1388

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

    nop

    :goto_6
    iput-object p5, p0, Lkfk;->k:Ljava/util/Timer;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_7
    new-instance p1, Lnei;

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

    :goto_8
    rem-int v0, v0, v1

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

    :goto_9
    const v0, 0x1e

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_a
    iput-object p3, p0, Lkfk;->c:Lowu;

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

    :goto_b
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_14

    nop

    :goto_c
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_d
    iput-object p4, p0, Lkfk;->b:Loyn;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_e
    invoke-direct {p2, p0, v0}, Lkfh;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_19

    nop

    nop

    :goto_f
    iput-object p2, p1, Lnei;->g:Landroid/content/Context;

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
    new-instance v1, Lkfi;

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

    :goto_11
    new-instance v1, Lrtk;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_12
    invoke-direct {v1, p0}, Lkfi;-><init>(Lkfk;)V

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_13
    sget-object v0, Lrrz;->a:Lrts;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_16
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_17
    invoke-direct {v1, v0}, Lrtk;-><init>(Lrts;)V

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

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

    :goto_19
    iput-object p2, p1, Lnei;->d:Lneg;

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
    iput v0, p0, Lkfk;->i:I

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_1b
    return-void

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const v1, 0x7

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

    :goto_1e
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_20
    invoke-virtual {p1}, Lnei;->a()Lneh;

    move-result-object p1

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

    :goto_21
    iput-object v1, p0, Lkfk;->d:Lrtk;

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

    nop

    :goto_22
    iput-object v1, p0, Lkfk;->g:Lnsi;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_23
    new-instance p2, Lkfh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_24
    invoke-direct {p1}, Lnei;-><init>()V

    goto/32 :goto_0

    nop

    nop

    :goto_25
    iput p2, p1, Lnei;->b:I

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_26
    iput p2, p1, Lnei;->h:I

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_27
    const/4 v0, 0x0

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

    :goto_28
    invoke-direct {p0, v0, v0, v0}, Lpuq;-><init>([B[C[B)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_29
    const p4, 0x7f140069

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_2a
    iput-boolean v0, p0, Lkfk;->f:Z

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final i()V
    .locals 4

    goto/32 :goto_13

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

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_1
    new-instance v0, Lkfj;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_3
    iput-boolean v0, p0, Lkfk;->f:Z

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Lkfk;->l:Lneh;

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

    :goto_6
    const/4 v0, 0x1

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

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    :goto_9
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_a
    const-wide/16 v2, 0x1f4

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

    nop

    :goto_b
    const v1, 0x12

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

    :goto_c
    iget-object v1, p0, Lkfk;->k:Ljava/util/Timer;

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

    :goto_d
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_f
    invoke-direct {v0, p0}, Lkfj;-><init>(Lkfk;)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_11
    iput v0, p0, Lkfk;->i:I

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_12
    iput-object v0, p0, Lkfk;->e:Lneh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_13
    const v0, 0x1

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

    :goto_14
    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final j()V
    .locals 6

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

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

    :goto_1
    goto/32 :goto_16

    nop

    nop

    :goto_2
    add-int v0, v0, v1

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

    :goto_3
    aput-object v3, v2, v5

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    :goto_5
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_6
    const/16 v4, 0x22a

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

    nop

    :goto_7
    const v0, 0xc

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_15

    nop

    :goto_9
    iget-object v1, p0, Lkfk;->b:Loyn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_a
    iput-boolean v0, p0, Lkfk;->f:Z

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    new-array v2, v2, [Ljava/lang/Object;

    nop

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

    :goto_c
    const/16 v4, 0x229

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_d
    const v1, 0x1f

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const/4 v2, 0x1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const/4 v0, 0x0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v0, p0, Lkfk;->d:Lrtk;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_11
    invoke-static {v4, p0, v2}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_4

    nop

    nop

    :goto_12
    const/4 v5, 0x0

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_13
    invoke-interface {v1, v0}, Loyn;->a(Ljava/lang/Object;)V

    goto/32 :goto_10

    nop

    nop

    :goto_14
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget v0, p0, Lkfk;->i:I

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-static {v4, v0, v2}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const/4 v2, 0x0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1a
    rem-int v0, v0, v1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop
.end method

.method public final k(I)V
    .locals 2

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lkfk;->h:Lixe;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0xb

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

    :goto_3
    add-int v0, v0, v1

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_4
    const/4 p1, 0x0

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

    :goto_5
    iget-object p1, p0, Lkfk;->e:Lneh;

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_6
    if-ne v0, v1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_0
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_7
    const/4 v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget v0, p0, Lkfk;->i:I

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

    :goto_9
    return-void

    nop

    nop

    :goto_a
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v0, p1}, Lixe;->f(Lixf;)V

    goto/32 :goto_4

    nop

    nop

    :goto_c
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iput-object p1, p0, Lkfk;->e:Lneh;

    nop

    nop

    :goto_e
    goto/32 :goto_9

    nop

    nop

    :goto_f
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_11
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_1
    goto/32 :goto_f

    nop

    :goto_12
    const v1, 0x10

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

    :goto_13
    if-eq v0, p1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    :cond_2
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_14
    if-nez p1, :cond_3

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

    :cond_3
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_15
    iput v1, p0, Lkfk;->i:I

    nop

    goto/32 :goto_5

    nop

    nop

    nop
.end method

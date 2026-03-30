.class public Lmkp;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lcom/google/android/apps/camera/stats/timing/TimingSession;


# static fields
.field public static final j:Lmko;

.field public static final k:Lmko;


# instance fields
.field private final a:[J

.field private b:Ljava/lang/Runnable;

.field public final l:Lpty;

.field public m:J

.field public final n:[Ljava/lang/Enum;

.field public final o:Lnzk;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0, v1}, Lsvw;->f(Z)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0xb

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0}, Lsvw;->d()Lmko;

    move-result-object v0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    sput-object v0, Lmkp;->k:Lmko;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_4
    sput-object v0, Lmkp;->j:Lmko;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0x18

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v0, v1}, Lsvw;->e(Z)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v0}, Lsvw;->d()Lmko;

    move-result-object v0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_d

    nop

    nop

    :goto_c
    invoke-static {}, Lmko;->a()Lsvw;

    move-result-object v0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_d
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_10
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-static {}, Lmko;->a()Lsvw;

    move-result-object v0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    add-int v0, v0, v1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop
.end method

.method protected constructor <init>(Lpty;J[Ljava/lang/Enum;)V
    .locals 6

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_c

    nop

    nop

    :goto_3
    move-object v1, p1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_4
    const v0, 0x19

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_7
    invoke-direct {v2}, Lnzk;-><init>()V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    :goto_9
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_b
    const v1, 0xb

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_c
    new-instance v2, Lnzk;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_d
    move-object v5, p4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_e
    move-object v0, p0

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

    :goto_f
    move-wide v3, p2

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_10
    invoke-direct/range {v0 .. v5}, Lmkp;-><init>(Lpty;Lnzk;J[Ljava/lang/Enum;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method protected constructor <init>(Lpty;Lnzk;J[Ljava/lang/Enum;)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    array-length p1, p5

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1
    iput-wide p3, p0, Lmkp;->m:J

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {p1, p2, p3}, Ljava/util/Arrays;->fill([JJ)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p1, p0, Lmkp;->l:Lpty;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_6
    new-array p1, p1, [J

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_7
    iput-object p1, p0, Lmkp;->a:[J

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_8
    iput-object p2, p0, Lmkp;->o:Lnzk;

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

    :goto_9
    const-wide/16 p2, -0x1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iput-object p5, p0, Lmkp;->n:[Ljava/lang/Enum;

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method protected constructor <init>(Lpty;[Ljava/lang/Enum;)V
    .locals 6

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    move-object v1, p1

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

    :goto_2
    rem-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_4
    const v1, 0x1b

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

    nop

    :goto_5
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_7
    move-object v5, p2

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_8
    invoke-interface {p1}, Lpty;->a()J

    move-result-wide v3

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_9
    const v0, 0x11

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_a
    invoke-direct {v2}, Lnzk;-><init>()V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_6

    nop

    :goto_c
    new-instance v2, Lnzk;

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
    return-void

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-direct/range {v0 .. v5}, Lmkp;-><init>(Lpty;Lnzk;J[Ljava/lang/Enum;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_10
    move-object v0, p0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method


# virtual methods
.method protected a()V
    .locals 3

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x17

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([JJ)V

    goto/32 :goto_9

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

    goto/32 :goto_f

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    :goto_5
    rem-int v0, v0, v1

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

    :goto_6
    invoke-interface {v0}, Lpty;->a()J

    move-result-wide v0

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v0, p0, Lmkp;->a:[J

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_9
    iget-object v0, p0, Lmkp;->l:Lpty;

    nop

    nop

    goto/32 :goto_6

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

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const-wide/16 v1, -0x1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v1, 0x1b

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iput-wide v0, p0, Lmkp;->m:J

    nop

    goto/32 :goto_1

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
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final b(Ljava/lang/Runnable;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lmkp;->b:Ljava/lang/Runnable;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop
.end method

.method public final close()V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :goto_1
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    :goto_3
    iget-object p0, p0, Lmkp;->b:Ljava/lang/Runnable;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_4
    if-nez p0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final g(Ljava/lang/Enum;)J
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    aget-wide p0, p0, p1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-wide p0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lmkp;->a:[J

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final h(Ljava/lang/Enum;)V
    .locals 3

    goto/32 :goto_7

    nop

    nop

    :goto_0
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_6

    nop

    nop

    :goto_2
    const v1, 0x1d

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_5
    sget-object v2, Lmkp;->j:Lmko;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_6
    iget-object v0, p0, Lmkp;->l:Lpty;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0x2

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_a
    invoke-virtual {p0, p1, v0, v1, v2}, Lmkp;->j(Ljava/lang/Enum;JLmko;)V

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-interface {v0}, Lpty;->a()J

    move-result-wide v0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop
.end method

.method public final i(Ljava/lang/Enum;Lmko;)V
    .locals 2

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x8

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

    nop

    :goto_1
    invoke-interface {v0}, Lpty;->a()J

    move-result-wide v0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Lmkp;->l:Lpty;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    :goto_4
    goto/32 :goto_9

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_6
    invoke-virtual {p0, p1, v0, v1, p2}, Lmkp;->j(Ljava/lang/Enum;JLmko;)V

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

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0xf

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_b

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

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop
.end method

.method public final j(Ljava/lang/Enum;JLmko;)V
    .locals 2

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_1
    const/4 p3, 0x1

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0x11

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    :goto_5
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    goto/32 :goto_33

    nop

    nop

    :goto_7
    if-nez p0, :cond_0

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

    :cond_0
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_15

    nop

    :goto_9
    const-wide/16 v0, 0x0

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_a
    if-nez p2, :cond_2

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    aget-wide p2, p0, p2

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_c
    if-nez p3, :cond_3

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_32

    nop

    nop

    nop

    :goto_d
    aget-object p0, v1, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_e
    if-gtz v0, :cond_4

    nop

    goto/32 :goto_21

    nop

    :cond_4
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_10
    add-int/lit8 v0, v0, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_11
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_0

    nop

    nop

    :goto_13
    if-nez p3, :cond_5

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-object p0, p0, Lmkp;->a:[J

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_15
    goto/32 :goto_12

    nop

    nop

    :goto_16
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const-wide/16 p2, -0x1

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_19
    if-nez p2, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_38

    nop

    nop

    :goto_1a
    const v1, 0x1a

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object v1, p0, Lmkp;->n:[Ljava/lang/Enum;

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_1c
    add-int/lit8 p2, v0, -0x1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    if-nez p2, :cond_7

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_7
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    :goto_1f
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {p0, p1}, Lmkp;->k(Ljava/lang/Enum;)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    if-gtz v0, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :cond_8
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_25
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    iget-boolean p2, p4, Lmko;->b:Z

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_28
    goto/16 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_22

    nop

    nop

    :goto_2a
    aput-object p1, v1, v0

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_2b
    iget-boolean p2, p4, Lmko;->a:Z

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

    :goto_2c
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    :goto_2d
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    cmp-long p2, p2, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    aput-wide p2, p0, v0

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_30
    goto/16 :goto_18

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_17

    nop

    nop

    :goto_32
    if-nez p0, :cond_9

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :cond_9
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_35
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    if-gez p2, :cond_a

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_37
    if-nez v0, :cond_b

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_38
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    :goto_39
    goto/32 :goto_11

    nop

    nop

    :goto_3a
    rem-int v0, v0, v1

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

    :goto_3b
    const/4 p3, 0x0

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
.end method

.method public final k(Ljava/lang/Enum;)Z
    .locals 4

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_0
    const-wide/16 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lmkp;->a:[J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    if-eq v0, p1, :cond_0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_7

    nop

    :goto_5
    const v1, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_6
    aget-wide p0, p0, v1

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
    goto/32 :goto_16

    nop

    nop

    :goto_8
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    move p1, v2

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_a
    goto :goto_e

    nop

    :goto_b
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_c
    invoke-static {p1}, La;->au(Z)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_d
    move p1, v3

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_c

    nop

    nop

    :goto_f
    const/4 v3, 0x0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    aget-object v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_11
    return v2

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_14
    cmp-long p0, p0, v0

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    return v3

    nop

    :goto_16
    goto/32 :goto_13

    nop

    nop

    :goto_17
    const/4 v2, 0x1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const v0, 0xb

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_19
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1a
    iget-object v0, p0, Lmkp;->n:[Ljava/lang/Enum;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

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

    :goto_1c
    if-gez p0, :cond_2

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

    :cond_2
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 9

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1
    array-length v6, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v4, p0, Lmkp;->n:[Ljava/lang/Enum;

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0x8

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_4
    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const-string v4, "\t"

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_6
    const-string v4, "ms)"

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const-string v4, ": "

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

    :goto_8
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1e

    nop

    nop

    :goto_9
    const/4 v0, 0x0

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    cmp-long v7, v5, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_c
    add-int/lit8 v0, v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    array-length v4, v4

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_e
    aget-wide v4, v4, v0

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const-string v0, "{\n"

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_10
    if-gez v7, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v4, p0, Lmkp;->a:[J

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_14
    if-lt v0, v4, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget-object v4, p0, Lmkp;->a:[J

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_16
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_3e

    nop

    nop

    :goto_18
    goto/16 :goto_33

    nop

    nop

    :goto_19
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_1a
    iget-object v4, p0, Lmkp;->a:[J

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_1b
    const-string v4, " ("

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

    :goto_1c
    aget-wide v5, v5, v4

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const v1, 0x2

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_1e
    iget-object v4, p0, Lmkp;->a:[J

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_1f
    rem-int v0, v0, v1

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

    :goto_20
    cmp-long v4, v4, v7

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

    :goto_21
    const-string p0, "}"

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

    :goto_22
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_23
    new-instance v1, Ljava/lang/StringBuilder;

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_24
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_25
    return-object p0

    nop

    :goto_26
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_27
    const-wide/16 v7, 0x0

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_28
    sub-long/2addr v4, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_29
    aget-wide v4, v4, v0

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    iget-object v5, p0, Lmkp;->a:[J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_2c
    const-wide v2, 0x7fffffffffffffffL

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    if-gez v4, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    :cond_2
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_2e
    add-int/lit8 v4, v4, 0x1

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

    :goto_2f
    aget-wide v4, v4, v0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_30
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_31
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_32
    move v4, v0

    nop

    nop

    nop

    nop

    nop

    :goto_33
    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_34
    const-string v4, "\n"

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

    :goto_35
    invoke-static {v4, v5}, Lnzk;->I(J)J

    move-result-wide v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_36
    if-lez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_3d

    nop

    :goto_37
    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_38
    goto/16 :goto_19

    nop

    :goto_39
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    if-lt v4, v6, :cond_4

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

    nop

    :cond_4
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

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

    :goto_3c
    if-ltz v7, :cond_5

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    :cond_5
    goto/32 :goto_43

    nop

    nop

    :goto_3d
    goto/32 :goto_26

    nop

    nop

    :goto_3e
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    aget-object v4, v4, v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_40
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_41
    goto/32 :goto_34

    nop

    nop

    :goto_42
    cmp-long v7, v5, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_43
    move-wide v2, v5

    nop

    nop

    :goto_44
    goto/32 :goto_2e

    nop

    nop

    nop

    nop
.end method

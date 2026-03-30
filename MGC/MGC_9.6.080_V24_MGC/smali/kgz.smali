.class public final Lkgz;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicReference;

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:Loyd;

.field private final g:Lrss;

.field private final h:Lkut;

.field private final i:Lkhw;


# direct methods
.method public constructor <init>(Lkhw;Lijl;IIILoyd;Lrss;Lkut;)V
    .locals 2

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1
    iput-object p8, p0, Lkgz;->h:Lkut;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_2
    iput p4, p0, Lkgz;->d:I

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

    :goto_3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_12

    nop

    :goto_5
    iput-object v0, p0, Lkgz;->a:Ljava/util/concurrent/atomic/AtomicReference;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_7
    const v0, 0x9

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

    :goto_8
    iput-object p7, p0, Lkgz;->g:Lrss;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_9
    sget-object v1, Lkiw;->a:Lkiw;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_a
    const v1, 0x8

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_b
    iget p1, p2, Lijl;->a:I

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
    iput p1, p0, Lkgz;->b:I

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iput p5, p0, Lkgz;->e:I

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_f
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_11

    nop

    :goto_10
    iput-object p1, p0, Lkgz;->i:Lkhw;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_15

    nop

    :goto_12
    goto/32 :goto_6

    nop

    nop

    :goto_13
    iput-object p6, p0, Lkgz;->f:Loyd;

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

    nop

    :goto_14
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iput p3, p0, Lkgz;->c:I

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()I
    .locals 0

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p0}, Loyd;->cM()Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lrsx;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_2
    return p0

    nop

    nop

    nop

    nop

    :goto_3
    check-cast p0, Ljava/lang/Integer;

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
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_5
    check-cast p0, Lrsx;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_6
    iget-object p0, p0, Lkgz;->g:Lrss;

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

    nop

    :goto_7
    add-int/lit8 p0, p0, 0x2

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    check-cast p0, Loyd;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final b()I
    .locals 4

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sget-object v3, Lkiw;->b:Lkiw;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p0, v1}, Ljava/lang/Math;->max(II)I

    move-result p0

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_2
    iget-object p0, p0, Lkgz;->h:Lkut;

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_3
    add-int/2addr v2, v0

    nop

    nop

    :goto_4
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Lkgz;->a:Ljava/util/concurrent/atomic/AtomicReference;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_6
    goto :goto_a

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-interface {v0}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_9
    const/4 v2, 0x0

    nop

    :goto_a
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_b
    iget v2, p0, Lkgz;->c:I

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-eq v0, v2, :cond_0

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    sub-int/2addr p0, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_e
    iget v0, p0, Lkgz;->e:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_f
    if-eq v0, v3, :cond_1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget p0, p0, Lkgz;->b:I

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_26

    nop

    nop

    nop

    :goto_13
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :cond_2
    goto/32 :goto_11

    nop

    :goto_14
    iget-object v0, p0, Lkgz;->i:Lkhw;

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_17
    if-nez v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_6

    nop

    nop

    :goto_18
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

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

    :goto_19
    invoke-virtual {p0}, Lkut;->a()I

    move-result p0

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object v0, p0, Lkgz;->f:Loyd;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_1b
    invoke-virtual {v0}, Lkhw;->a()I

    move-result v0

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

    :goto_1c
    invoke-virtual {v0}, Lkhw;->a()I

    move-result v0

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_1d
    const/4 v2, 0x2

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_12

    nop

    nop

    :goto_1f
    return p0

    nop

    :goto_20
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_21
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_22
    iget v2, p0, Lkgz;->d:I

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const v1, 0x15

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

    nop

    :goto_24
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_25
    const/4 v1, 0x1

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
    iget-object v0, p0, Lkgz;->a:Ljava/util/concurrent/atomic/AtomicReference;

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

    :goto_27
    sget-object v1, Lkiw;->c:Lkiw;

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_28
    iget-object v0, p0, Lkgz;->i:Lkhw;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_29
    goto/16 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_2b
    const v0, 0x6

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_2c
    goto/16 :goto_a

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_2e
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    check-cast v0, Ljava/lang/Integer;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_31
    if-eq v0, v1, :cond_4

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    if-ne v0, v1, :cond_5

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :cond_5
    goto/32 :goto_1a

    nop

    nop

    nop
.end method

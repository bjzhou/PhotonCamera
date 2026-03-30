.class final Lbza;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/util/List;
.implements Lucw;


# instance fields
.field public a:I

.field private final b:Lbyl;

.field private final c:I

.field private d:I


# direct methods
.method public constructor <init>(Lbyl;II)V
    .locals 4

    goto/32 :goto_4

    nop

    nop

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

    nop

    nop

    :goto_1
    const/16 v2, 0xba

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_8

    nop

    nop

    :goto_4
    const v0, 0x19

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

    :goto_5
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_a

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

    goto/32 :goto_10

    nop

    nop

    :goto_8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_a
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_b
    iput p3, p0, Lbza;->a:I

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    check-cast p1, Ljava/lang/Integer;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_d
    sub-int/2addr p3, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_e
    iput p1, p0, Lbza;->d:I

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

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

    :goto_10
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_11
    iput p2, p0, Lbza;->c:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_12
    invoke-static {v2, p1, v0}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_13
    iput-object p1, p0, Lbza;->b:Lbyl;

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

    :goto_14
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method private final f875135777c17da3cef2ea6eeff5be29m()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    :goto_0
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget p0, p0, Lbza;->d:I

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2
    iget-object v0, p0, Lbza;->b:Lbyl;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-eq v0, p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    :goto_4
    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    new-instance p0, Ljava/util/ConcurrentModificationException;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    :goto_7
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v0}, Lbyl;->b()I

    move-result v0

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
.end method


# virtual methods
.method public final a(I)Ljava/lang/Object;
    .locals 2

    goto/32 :goto_c

    nop

    nop

    :goto_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput v0, p0, Lbza;->d:I

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_2
    invoke-virtual {v0, v1}, Lbyl;->d(I)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_3
    goto/32 :goto_a

    nop

    nop

    :goto_4
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_5
    iget v0, p0, Lbza;->a:I

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

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

    :goto_7
    iput v0, p0, Lbza;->a:I

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget v1, p0, Lbza;->c:I

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

    :goto_9
    return-object p1

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_c
    const v0, 0x1d

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

    :goto_d
    add-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-direct {p0}, Lbza;->f875135777c17da3cef2ea6eeff5be29m()V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_f
    add-int/lit8 v0, v0, -0x1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v1, 0x1e

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_11
    add-int/2addr v1, p1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_12
    iget-object v0, p0, Lbza;->b:Lbyl;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v0}, Lbyl;->b()I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_14
    iget-object v0, p0, Lbza;->b:Lbyl;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop
.end method

.method public final add(ILjava/lang/Object;)V
    .locals 2

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lbza;->b:Lbyl;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    const v1, 0x6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    add-int v0, v0, v1

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

    nop

    nop

    :goto_3
    iget p1, p0, Lbza;->a:I

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_4
    iget v1, p0, Lbza;->c:I

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

    :goto_5
    invoke-virtual {v0, v1, p2}, Lbyl;->add(ILjava/lang/Object;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

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

    nop

    :goto_7
    add-int/lit8 p1, p1, 0x1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object p1, p0, Lbza;->b:Lbyl;

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

    :goto_9
    iput p1, p0, Lbza;->a:I

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iput p1, p0, Lbza;->d:I

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_b
    add-int/2addr v1, p1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_10

    nop

    :cond_0
    goto/32 :goto_f

    nop

    :goto_d
    invoke-virtual {p1}, Lbyl;->b()I

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_10

    nop

    nop

    :goto_f
    goto/32 :goto_12

    nop

    nop

    :goto_10
    goto/32 :goto_14

    nop

    nop

    nop

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
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_13
    const v0, 0x17

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-direct {p0}, Lbza;->f875135777c17da3cef2ea6eeff5be29m()V

    goto/32 :goto_0

    nop

    nop
.end method

.method public final add(Ljava/lang/Object;)Z
    .locals 2

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int/2addr p1, v0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1
    iput p1, p0, Lbza;->d:I

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
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

    :goto_3
    add-int/2addr v0, v1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_5
    return v0

    nop

    nop

    :goto_6
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput p1, p0, Lbza;->a:I

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_8
    const v1, 0x19

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_9
    goto/32 :goto_6

    nop

    nop

    :goto_a
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p1}, Lbyl;->b()I

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_c
    const v0, 0x13

    nop

    nop

    nop

    goto/32 :goto_8

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

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v1, p0, Lbza;->b:Lbyl;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object p1, p0, Lbza;->b:Lbyl;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_11
    iget p1, p0, Lbza;->a:I

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

    :goto_12
    iget v1, p0, Lbza;->a:I

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_a

    nop

    nop

    :goto_14
    invoke-direct {p0}, Lbza;->f875135777c17da3cef2ea6eeff5be29m()V

    goto/32 :goto_15

    nop

    nop

    :goto_15
    iget v0, p0, Lbza;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v1, v0, p1}, Lbyl;->add(ILjava/lang/Object;)V

    goto/32 :goto_11

    nop

    nop
.end method

.method public final addAll(ILjava/util/Collection;)Z
    .locals 2

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p2

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_1
    add-int/2addr p1, v1

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

    :goto_2
    invoke-virtual {v0, p1, p2}, Lbyl;->addAll(ILjava/util/Collection;)Z

    move-result p1

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_3
    iget-object v0, p0, Lbza;->b:Lbyl;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

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

    :goto_5
    iget v1, p0, Lbza;->c:I

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

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

    :goto_7
    if-nez p1, :cond_0

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

    :cond_0
    goto/32 :goto_12

    nop

    nop

    :goto_8
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0x2

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

    :goto_a
    return p1

    nop

    nop

    :goto_b
    goto/32 :goto_8

    nop

    nop

    :goto_c
    invoke-direct {p0}, Lbza;->f875135777c17da3cef2ea6eeff5be29m()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_1

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

    :cond_1
    goto/32 :goto_10

    nop

    :goto_e
    iput v0, p0, Lbza;->a:I

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_f
    add-int/2addr v0, p2

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget v0, p0, Lbza;->a:I

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

    :goto_13
    const v1, 0x10

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

    :goto_14
    invoke-virtual {p2}, Lbyl;->b()I

    move-result p2

    nop

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

    :goto_15
    iget-object p2, p0, Lbza;->b:Lbyl;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_16
    iput p2, p0, Lbza;->d:I

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, v0, p1}, Lbza;->addAll(ILjava/util/Collection;)Z

    move-result p0

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

    nop

    nop

    :goto_1
    iget v0, p0, Lbza;->a:I

    nop

    goto/32 :goto_0

    nop

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
.end method

.method public final clear()V
    .locals 11

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Lbza;->f875135777c17da3cef2ea6eeff5be29m()V

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_1
    invoke-interface {v3}, Lbtn;->a()Lbto;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0x1c

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

    :goto_4
    sget-object v3, Lbym;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_5
    iget-object v0, p0, Lbza;->b:Lbyl;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    monitor-exit v7

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_7
    iget-object v4, v0, Lbyl;->a:Lbyy;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_8
    throw p0

    nop

    nop

    :goto_9
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    monitor-enter v7

    nop

    nop

    :try_start_0
    invoke-static {}, Lbyg;->b()Lbxt;

    move-result-object v8

    nop

    invoke-static {v4, v0, v8}, Lbyg;->l(Lbyy;Lbyw;Lbxt;)Lbyy;

    move-result-object v4

    nop

    nop

    check-cast v4, Lbyi;

    nop

    nop

    nop

    nop

    sget-object v9, Lbym;->a:Ljava/lang/Object;

    nop

    monitor-enter v9

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget v10, v4, Lbyi;->b:I

    nop

    nop

    nop

    if-ne v10, v5, :cond_0

    nop

    iput-object v3, v4, Lbyi;->a:Lbto;

    nop

    nop

    nop

    nop

    add-int/lit8 v10, v10, 0x1

    nop

    nop

    nop

    iput v10, v4, Lbyi;->b:I

    nop

    nop

    iget v3, v4, Lbyi;->c:I

    nop

    nop

    const/4 v5, 0x1

    nop

    nop

    nop

    nop

    add-int/2addr v3, v5

    nop

    nop

    iput v3, v4, Lbyi;->c:I

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_c
    monitor-enter v3

    nop

    nop

    nop

    :try_start_2
    iget-object v4, v0, Lbyl;->a:Lbyy;

    nop

    nop

    nop

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Lbyg;->e(Lbyy;)Lbyy;

    move-result-object v4

    nop

    nop

    nop

    nop

    check-cast v4, Lbyi;

    nop

    nop

    nop

    nop

    iget v5, v4, Lbyi;->b:I

    nop

    nop

    iget-object v4, v4, Lbyi;->a:Lbto;

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iput v0, p0, Lbza;->d:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/16 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_f
    goto/16 :goto_9

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    :try_start_3
    monitor-exit v9

    nop

    nop

    nop

    nop

    throw p0

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_10
    if-gtz v0, :cond_1

    nop

    goto/32 :goto_2e

    nop

    :cond_1
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_11
    add-int/2addr v2, v1

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_13
    iput v6, p0, Lbza;->a:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_14
    iget v1, p0, Lbza;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_15
    iget-object v0, p0, Lbza;->b:Lbyl;

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

    :goto_16
    return-void

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_28

    nop

    nop

    :goto_18
    invoke-interface {v3, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_19
    iget v0, p0, Lbza;->a:I

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_1a
    goto/32 :goto_17

    nop

    :goto_1b
    goto/32 :goto_19

    nop

    nop

    :goto_1c
    invoke-static {v3, v4}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_1d
    monitor-exit v3

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_1e
    iget v2, p0, Lbza;->a:I

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_1f
    const/4 v6, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_20
    const v0, 0xc

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_21
    invoke-interface {v6}, Ljava/util/List;->clear()V

    goto/32 :goto_1

    nop

    nop

    :goto_22
    monitor-exit v3

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

    nop

    :goto_23
    invoke-static {v8, v0}, Lbyg;->t(Lbxt;Lbyw;)V

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_24
    add-int v0, v0, v1

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

    :goto_25
    if-nez v5, :cond_2

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_f

    nop

    nop

    :goto_26
    sget-object v7, Lbyg;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_27
    monitor-exit v7

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_29
    if-eqz v4, :cond_3

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {v0}, Lbyl;->b()I

    move-result v0

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    move v5, v6

    nop

    nop

    :goto_2c
    :try_start_4
    monitor-exit v9

    nop

    nop

    nop

    nop

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/32 :goto_6

    nop

    nop

    :goto_2d
    throw p0

    nop

    :goto_2e
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-interface {v4}, Lbto;->b()Lbtn;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_30
    return-void

    nop

    nop

    nop

    nop

    nop

    :catchall_2
    move-exception p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_31
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_2f

    nop

    nop

    :goto_32
    if-lez v0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :cond_4
    goto/32 :goto_1a

    nop
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 0

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-gez p0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return p0

    nop

    nop

    :goto_4
    const/4 p0, 0x1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_5
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0, p1}, Lbza;->indexOf(Ljava/lang/Object;)I

    move-result p0

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public final containsAll(Ljava/util/Collection;)Z
    .locals 2

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-eqz v0, :cond_0

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
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_3
    if-nez v0, :cond_1

    nop

    nop

    goto/32 :goto_11

    nop

    :cond_1
    goto/32 :goto_12

    nop

    nop

    :goto_4
    const/4 v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_5
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_2
    goto/32 :goto_19

    nop

    nop

    :goto_6
    if-lez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1

    nop

    :goto_7
    const v0, 0xa

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_9
    const/4 v1, 0x0

    nop

    :goto_a
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_b
    if-nez v0, :cond_4

    nop

    nop

    goto/32 :goto_11

    nop

    :cond_4
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_c
    const v1, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_d
    invoke-virtual {p0, v0}, Lbza;->contains(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    return v1

    nop

    :goto_f
    goto/32 :goto_15

    nop

    nop

    :goto_10
    goto :goto_a

    nop

    nop

    :goto_11
    goto/32 :goto_16

    nop

    nop

    :goto_12
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_16
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    nop

    :goto_17
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_18
    instance-of v0, p1, Ljava/util/Collection;

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

    :goto_19
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

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

.method public final get(I)Ljava/lang/Object;
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p1, v0}, Lbym;->a(II)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Lbza;->b:Lbyl;

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

    :goto_2
    return-object p0

    nop

    nop

    nop

    nop

    :goto_3
    iget v0, p0, Lbza;->a:I

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

    :goto_4
    invoke-virtual {v0, p0}, Lbyl;->get(I)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_5
    invoke-direct {p0}, Lbza;->f875135777c17da3cef2ea6eeff5be29m()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_6
    iget p0, p0, Lbza;->c:I

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_7
    add-int/2addr p0, p1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop
.end method

.method public final indexOf(Ljava/lang/Object;)I
    .locals 3

    goto/32 :goto_15

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1
    iget v0, p0, Lbza;->c:I

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

    :goto_2
    sub-int/2addr v1, p0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {p1, v2}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_4
    return p0

    nop

    :goto_5
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v0}, Ltzb;->a()I

    move-result v1

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

    :goto_7
    invoke-virtual {v2, v1}, Lbyl;->get(I)Ljava/lang/Object;

    move-result-object v2

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

    :goto_8
    invoke-static {v0, v1}, Lucd;->n(II)Ludl;

    move-result-object v0

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

    :goto_9
    return v1

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_14

    nop

    nop

    :goto_b
    if-nez v1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    :goto_c
    iget p0, p0, Lbza;->c:I

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

    :goto_d
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_19

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_10
    add-int/2addr v1, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_11
    iget v1, p0, Lbza;->a:I

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_12
    iget-object v2, p0, Lbza;->b:Lbyl;

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

    :goto_13
    const v1, 0x19

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_14
    const/4 p0, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_15
    const v0, 0x1f

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

    :goto_16
    iget-boolean v1, v0, Ltzb;->a:Z

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v0}, Ludk;->a()Ltzb;

    move-result-object v0

    nop

    :goto_18
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_5

    nop

    :goto_1a
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-direct {p0}, Lbza;->f875135777c17da3cef2ea6eeff5be29m()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    if-nez v2, :cond_2

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    :cond_2
    goto/32 :goto_c

    nop

    nop

    nop
.end method

.method public final isEmpty()Z
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iget p0, p0, Lbza;->a:I

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    if-eqz p0, :cond_0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2
    return p0

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return p0

    nop

    nop

    :goto_5
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_6
    const/4 p0, 0x1

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lbza;->listIterator()Ljava/util/ListIterator;

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

    nop

    :goto_1
    return-object p0

    nop
.end method

.method public final lastIndexOf(Ljava/lang/Object;)I
    .locals 3

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-ge v0, v2, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    :cond_0
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_1
    return v1

    nop

    :goto_2
    goto/32 :goto_b

    nop

    nop

    :goto_3
    const v1, 0x6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_4
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_4

    nop

    :goto_7
    if-nez v2, :cond_2

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

    :cond_2
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget v1, p0, Lbza;->a:I

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

    :goto_9
    add-int/lit8 v0, v0, -0x1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_a
    add-int/2addr v0, v1

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
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_c
    goto :goto_14

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget p0, p0, Lbza;->c:I

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_10
    iget v0, p0, Lbza;->c:I

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v2, v0}, Lbyl;->get(I)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_12
    const/4 v1, -0x1

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_13
    add-int/2addr v0, v1

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_15
    invoke-direct {p0}, Lbza;->f875135777c17da3cef2ea6eeff5be29m()V

    goto/32 :goto_10

    nop

    nop

    :goto_16
    invoke-static {p1, v2}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_17
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_19
    iget-object v2, p0, Lbza;->b:Lbyl;

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

    :goto_1a
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    sub-int/2addr v0, p0

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

    :goto_1c
    iget v2, p0, Lbza;->c:I

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

    :goto_1d
    const v0, 0x7

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final listIterator()Ljava/util/ListIterator;
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, v0}, Lbza;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public final listIterator(I)Ljava/util/ListIterator;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int/lit8 p1, p1, -0x1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Lbza;->f875135777c17da3cef2ea6eeff5be29m()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {v0}, Lucq;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    new-instance v0, Lucq;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput p1, v0, Lucq;->a:I

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_5
    return-object p1

    nop

    nop

    nop

    nop

    :goto_6
    new-instance p1, Lbyz;

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

    nop

    :goto_7
    invoke-direct {p1, v0, p0}, Lbyz;-><init>(Lucq;Lbza;)V

    goto/32 :goto_5

    nop

    nop
.end method

.method public final bridge remove(I)Ljava/lang/Object;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Lbza;->a(I)Ljava/lang/Object;

    move-result-object p0

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
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    :goto_1
    if-gez p1, :cond_0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, p1}, Lbza;->indexOf(Ljava/lang/Object;)I

    move-result p1

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

    :goto_3
    return p0

    nop

    nop

    :goto_4
    goto/32 :goto_5

    nop

    nop

    :goto_5
    const/4 p0, 0x0

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

    :goto_6
    invoke-virtual {p0, p1}, Lbza;->a(I)Ljava/lang/Object;

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 p0, 0x1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .locals 4

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return v1

    nop

    :goto_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_3
    const v1, 0x16

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_6

    nop

    nop

    :goto_5
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v3, 0x1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_9
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

    :goto_a
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_c
    if-nez v1, :cond_1

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :cond_1
    :goto_d
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_e
    move v1, v0

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto :goto_f

    nop

    :goto_11
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_12
    if-eqz v2, :cond_2

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_c

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

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    move v1, v3

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_15
    if-nez v2, :cond_3

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    :cond_3
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p0, v2}, Lbza;->remove(Ljava/lang/Object;)Z

    move-result v2

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const/4 v0, 0x0

    nop

    :goto_18
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_19
    const v0, 0xc

    nop

    goto/32 :goto_3

    nop

    nop
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .locals 13

    goto/32 :goto_29

    nop

    nop

    :goto_0
    invoke-static {v10, v2}, Lbyg;->t(Lbxt;Lbyw;)V

    goto/32 :goto_8

    nop

    nop

    :goto_1
    if-gtz v3, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :cond_0
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_2
    throw p0

    nop

    nop

    :goto_3
    goto/32 :goto_15

    nop

    nop

    :goto_4
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v8, 0x1

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_6
    iget-object v2, p0, Lbza;->b:Lbyl;

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_8
    if-nez v4, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :cond_1
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_9
    return v7

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_a
    invoke-static {v4, v5}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_b
    sget-object v9, Lbyg;->c:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_c
    monitor-exit v4

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_d
    move v4, v7

    nop

    nop

    nop

    nop

    nop

    :goto_e
    :try_start_0
    monitor-exit v11

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_f
    if-gtz v3, :cond_2

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

    :cond_2
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iput p1, p0, Lbza;->d:I

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_11
    sub-int/2addr v3, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto :goto_e

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_13
    invoke-direct {p0}, Lbza;->f875135777c17da3cef2ea6eeff5be29m()V

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/16 :goto_30

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception p0

    nop

    nop

    :try_start_1
    monitor-exit v11

    nop

    nop

    nop

    nop

    nop

    throw p0

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :catchall_2
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_19

    nop

    :goto_16
    monitor-exit v9

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p1}, Lbyl;->b()I

    move-result p1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_3

    nop

    nop

    :goto_19
    goto/32 :goto_13

    nop

    nop

    :goto_1a
    iput p1, p0, Lbza;->a:I

    nop

    nop

    :goto_1b
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    return v8

    nop

    :goto_1d
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_1f
    sub-int/2addr p1, v3

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_20
    invoke-interface {v7, p1}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_21
    monitor-enter v9

    nop

    nop

    nop

    nop

    :try_start_2
    invoke-static {}, Lbyg;->b()Lbxt;

    move-result-object v10

    nop

    nop

    nop

    nop

    nop

    invoke-static {v5, v2, v10}, Lbyg;->l(Lbyy;Lbyw;Lbxt;)Lbyy;

    move-result-object v5

    nop

    nop

    check-cast v5, Lbyi;

    nop

    nop

    nop

    sget-object v11, Lbym;->a:Ljava/lang/Object;

    nop

    monitor-enter v11

    nop

    nop

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    iget v12, v5, Lbyi;->b:I

    nop

    nop

    nop

    nop

    if-ne v12, v6, :cond_3

    nop

    nop

    iput-object v4, v5, Lbyi;->a:Lbto;

    nop

    nop

    add-int/lit8 v12, v12, 0x1

    nop

    nop

    nop

    nop

    nop

    iput v12, v5, Lbyi;->b:I

    nop

    iget v4, v5, Lbyi;->c:I

    nop

    nop

    nop

    nop

    nop

    add-int/2addr v4, v8

    nop

    nop

    nop

    nop

    nop

    iput v4, v5, Lbyi;->c:I

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iget-object p1, p0, Lbza;->b:Lbyl;

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

    :goto_23
    invoke-interface {v4}, Lbtn;->a()Lbto;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_24
    monitor-enter v4

    nop

    nop

    nop

    nop

    nop

    :try_start_4
    iget-object v5, v2, Lbyl;->a:Lbyy;

    nop

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5}, Lbyg;->e(Lbyy;)Lbyy;

    move-result-object v5

    nop

    nop

    nop

    nop

    check-cast v5, Lbyi;

    nop

    nop

    iget v6, v5, Lbyi;->b:I

    nop

    nop

    iget-object v5, v5, Lbyi;->a:Lbto;

    nop

    nop

    nop

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_25
    iget v0, p0, Lbza;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_26
    if-eqz v5, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_2b

    nop

    nop

    :goto_27
    invoke-virtual {v2}, Lbyl;->a()I

    move-result v3

    nop

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_34

    nop

    nop

    nop

    :goto_29
    const v0, 0x17

    nop

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

    :goto_2a
    monitor-exit v9

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_2b
    iget-object v5, v2, Lbyl;->a:Lbyy;

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    add-int/2addr v1, v0

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

    :goto_2d
    monitor-exit v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_2e
    const/4 v7, 0x0

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

    :goto_2f
    throw p0

    nop

    :goto_30
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-interface {v5}, Lbto;->b()Lbtn;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_32
    iget v1, p0, Lbza;->a:I

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    invoke-interface {v4, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v7

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_34
    sget-object v4, Lbym;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_35
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    if-lez v0, :cond_5

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_18

    nop

    :goto_37
    const v1, 0x1a

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_38
    move v4, v8

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

    :goto_39
    invoke-virtual {v2}, Lbyl;->a()I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_3a
    iget p1, p0, Lbza;->a:I

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop
.end method

.method public final set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    iget v0, p0, Lbza;->a:I

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v1, 0x1b

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_2
    const v0, 0x11

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_9

    nop

    :goto_5
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v1}, Lbyl;->b()I

    move-result p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_8
    return-object p1

    nop

    nop

    :goto_9
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-direct {p0}, Lbza;->f875135777c17da3cef2ea6eeff5be29m()V

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_b
    iget v0, p0, Lbza;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v1, p1, p2}, Lbyl;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_d
    iget-object v1, p0, Lbza;->b:Lbyl;

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_e
    iput p2, p0, Lbza;->d:I

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_f
    add-int v0, v0, v1

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

    :goto_10
    if-lez v0, :cond_0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_11
    invoke-static {p1, v0}, Lbym;->a(II)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_12
    add-int/2addr p1, v0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final size()I
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iget p0, p0, Lbza;->a:I

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

    :goto_1
    return p0

    nop

    nop

    nop

    nop
.end method

.method public final subList(II)Ljava/util/List;
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_0
    add-int/2addr p1, p0

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1
    iget v0, p0, Lbza;->a:I

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

    :goto_2
    invoke-static {v0}, Lbot;->a(Ljava/lang/String;)V

    :goto_3
    goto/32 :goto_c

    nop

    nop

    :goto_4
    iget-object v0, p0, Lbza;->b:Lbyl;

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_5
    if-gez p1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    :cond_0
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-gt p2, v0, :cond_1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :cond_1
    :goto_7
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_8
    iget p0, p0, Lbza;->c:I

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

    :goto_9
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_a
    add-int/2addr p2, p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct {p0, v0, p1, p2}, Lbza;-><init>(Lbyl;II)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-direct {p0}, Lbza;->f875135777c17da3cef2ea6eeff5be29m()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const-string v0, "fromIndex or toIndex are out of bounds"

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

    :goto_e
    if-le p1, p2, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    :cond_2
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_f
    new-instance p0, Lbza;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop
.end method

.method public final toArray()[Ljava/lang/Object;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    :goto_1
    invoke-static {p0}, Lucc;->a(Ljava/util/Collection;)[Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, p1}, Lucc;->b(Ljava/util/Collection;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop
.end method

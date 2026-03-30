.class public final Lrqz;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lrre;


# instance fields
.field public a:Lj$/util/Optional;

.field private final b:Lj$/util/Optional;

.field private final c:I


# direct methods
.method public constructor <init>(ILj$/util/Optional;)V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object v0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    iput-object v0, p0, Lrqz;->a:Lj$/util/Optional;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    :goto_3
    iput p1, p0, Lrqz;->c:I

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

    :goto_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p2, p0, Lrqz;->b:Lj$/util/Optional;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a([B)V
    .locals 2

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/16 v1, 0xa

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1
    new-instance v0, Lnaz;

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

    :goto_2
    goto/32 :goto_10

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    :goto_4
    invoke-virtual {p0, v0}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_5
    invoke-direct {v0, p1, v1}, Lnaz;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {v0, p1, v1}, Lnaz;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0, v0}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto/32 :goto_9

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    :goto_a
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object p0, p0, Lrqz;->b:Lj$/util/Optional;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_c
    iget-object p0, p0, Lrqz;->a:Lj$/util/Optional;

    nop

    goto/32 :goto_1

    nop

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

    nop

    nop

    :goto_e
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_a

    nop

    nop

    :goto_10
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget v0, p0, Lrqz;->c:I

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

    :goto_12
    const v1, 0xf

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_13
    if-eq v0, v1, :cond_1

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

    :cond_1
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_14
    const/16 v1, 0xb

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_15
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

    :goto_16
    const v0, 0xf

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

    :goto_17
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_18
    new-instance v0, Lnaz;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final b(I)V
    .locals 2

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, v0}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    invoke-direct {v0, p1, v1}, Lizv;-><init>(II)V

    goto/32 :goto_2

    nop

    nop

    :goto_2
    iget-object p0, p0, Lrqz;->b:Lj$/util/Optional;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    :goto_4
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_6

    nop

    :goto_6
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0x5

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

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
    const v1, 0x3

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_c
    const/4 v1, 0x3

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_d
    new-instance v0, Lizv;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_7

    nop

    nop

    nop
.end method

.method public final c()V
    .locals 2

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_0
    if-eq v0, v1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

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

    :goto_1
    const/4 v1, 0x1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {v0, v1}, Lrqy;-><init>(I)V

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_5
    const v1, 0x19

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_6
    iget-object p0, p0, Lrqz;->b:Lj$/util/Optional;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_8
    iget v0, p0, Lrqz;->c:I

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

    :goto_9
    invoke-virtual {p0, v0}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :goto_a
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_d
    new-instance v0, Lrqy;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    return-void

    nop

    nop

    :goto_f
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_1
    goto/32 :goto_3

    nop

    :goto_11
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_12
    const v0, 0x11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop
.end method

.method public final d()V
    .locals 2

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1
    new-instance v0, Lrqy;

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
    iget v0, p0, Lrqz;->c:I

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

    nop

    nop

    :goto_3
    if-eq v0, v1, :cond_0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0x1d

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_5
    const v0, 0x9

    nop

    nop

    nop

    goto/32 :goto_4

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

    goto/32 :goto_8

    nop

    nop

    :goto_7
    invoke-direct {v0, v1}, Lrqy;-><init>(I)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_1

    nop

    goto/32 :goto_e

    nop

    :cond_1
    goto/32 :goto_d

    nop

    :goto_9
    invoke-virtual {p0, v0}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :goto_a
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_10

    nop

    nop

    :goto_d
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_2

    nop

    nop

    :goto_f
    const/4 v1, 0x1

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
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object p0, p0, Lrqz;->b:Lj$/util/Optional;

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
.end method

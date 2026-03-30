.class public final Lrub;
.super Lscp;
.source "PG"


# instance fields
.field public a:I

.field final synthetic b:Ljava/util/Iterator;

.field final synthetic c:Lrsv;

.field private d:Ljava/lang/Object;


# direct methods
.method protected constructor <init>()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Lscp;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v0, 0x2

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    :goto_3
    iput v0, p0, Lrub;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method

.method public constructor <init>(Ljava/util/Iterator;Lrsv;)V
    .locals 0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p1, 0x2

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    invoke-direct {p0}, Lscp;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    iput p1, p0, Lrub;->a:I

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

    :goto_4
    iput-object p2, p0, Lrub;->c:Lrsv;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_5
    iput-object p1, p0, Lrub;->b:Ljava/util/Iterator;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop
.end method


# virtual methods
.method public final hasNext()Z
    .locals 6

    goto/32 :goto_23

    nop

    nop

    :goto_0
    iget v0, p0, Lrub;->a:I

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object v5, p0, Lrub;->d:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_2
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :cond_0
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v3, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

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
    iget v0, p0, Lrub;->a:I

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

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_8
    add-int/lit8 v4, v0, -0x1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_9
    iput v3, p0, Lrub;->a:I

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    move v0, v1

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const/4 v5, 0x0

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_e
    return v1

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const/4 v1, 0x0

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_11
    if-ne v0, v3, :cond_1

    nop

    goto/32 :goto_1c

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

    :goto_12
    return v2

    nop

    :goto_13
    goto/32 :goto_e

    nop

    nop

    :goto_14
    add-int v0, v0, v1

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

    :goto_15
    const/4 v0, 0x2

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    move v0, v2

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

    :goto_17
    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_18
    invoke-static {v0}, Lrrf;->x(Z)V

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget-object v0, p0, Lrub;->b:Ljava/util/Iterator;

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

    :goto_1a
    goto/32 :goto_26

    nop

    nop

    nop

    :goto_1b
    goto/16 :goto_c

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const/4 v3, 0x4

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_1e
    iget-object v0, p0, Lrub;->b:Ljava/util/Iterator;

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    :cond_2
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_20
    throw v5

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_1a

    nop

    nop

    :goto_22
    if-ne v4, v0, :cond_3

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

    :cond_3
    goto/32 :goto_31

    nop

    nop

    nop

    :goto_23
    const v0, 0x2

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_24
    if-ne v0, v3, :cond_4

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_28

    nop

    nop

    :goto_25
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_0

    nop

    nop

    :goto_27
    iget-object v4, p0, Lrub;->c:Lrsv;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_28
    iput v2, p0, Lrub;->a:I

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

    :goto_29
    if-lez v0, :cond_5

    nop

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

    :cond_5
    goto/32 :goto_25

    nop

    :goto_2a
    iget v0, p0, Lrub;->a:I

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_2b
    if-nez v4, :cond_6

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :cond_6
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_2c
    goto/16 :goto_a

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    if-nez v4, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    move-object v5, v0

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_30
    const v1, 0x13

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

    :goto_31
    iput v3, p0, Lrub;->a:I

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_33
    return v2

    nop

    nop

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_35
    invoke-interface {v4, v0}, Lrsv;->a(Ljava/lang/Object;)Z

    move-result v4

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

    nop

    nop
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    goto/32 :goto_e

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    goto/32 :goto_13

    nop

    nop

    :goto_1
    iget-object v0, p0, Lrub;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_14

    nop

    nop

    :goto_3
    goto/32 :goto_12

    nop

    nop

    :goto_4
    if-nez v0, :cond_0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_11

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput v0, p0, Lrub;->a:I

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

    :goto_8
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2

    nop

    :goto_a
    const v1, 0x8

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

    :goto_b
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_d
    iput-object v1, p0, Lrub;->d:Ljava/lang/Object;

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

    :goto_e
    const v0, 0x1b

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_f
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_10
    new-instance p0, Ljava/util/NoSuchElementException;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_11
    const/4 v0, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_12
    invoke-virtual {p0}, Lrub;->hasNext()Z

    move-result v0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_13
    throw p0

    nop

    :goto_14
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop
.end method

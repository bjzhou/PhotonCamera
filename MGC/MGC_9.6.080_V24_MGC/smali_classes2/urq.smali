.class public final Lurq;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:[B

.field public b:I

.field public c:I

.field public d:Z

.field public final e:Z

.field public f:Lurq;

.field public g:Lurq;


# direct methods
.method public constructor <init>()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    :goto_0
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-boolean v0, p0, Lurq;->e:Z

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    iput-boolean v0, p0, Lurq;->d:Z

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

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object v0, p0, Lurq;->a:[B

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    :goto_6
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_7
    new-array v0, v0, [B

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_8
    const/16 v0, 0x2000

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
.end method

.method public constructor <init>([BIIZ)V
    .locals 0

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p1, 0x0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    iput p2, p0, Lurq;->b:I

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_2
    iput-boolean p4, p0, Lurq;->d:Z

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lurq;->a:[B

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
    iput-boolean p1, p0, Lurq;->e:Z

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
    iput p3, p0, Lurq;->c:I

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
    return-void

    nop

    nop

    :goto_7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop
.end method


# virtual methods
.method public final a()Lurq;
    .locals 4

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v3, p0, Lurq;->g:Lurq;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_1
    iget-object v0, p0, Lurq;->f:Lurq;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object v1, p0, Lurq;->g:Lurq;

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_4
    const/4 v1, 0x0

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Lurq;->f:Lurq;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_6
    iput-object v1, p0, Lurq;->f:Lurq;

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
    iput-object v0, v3, Lurq;->f:Lurq;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_14

    nop

    nop

    :goto_9
    goto :goto_10

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    move-object v2, v0

    nop

    nop

    nop

    goto/32 :goto_9

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

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0x1a

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const v1, 0x16

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    move-object v2, v1

    nop

    nop

    :goto_10
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_11
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :cond_0
    goto/32 :goto_13

    nop

    :goto_12
    if-ne v0, p0, :cond_1

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
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_18

    nop

    :goto_14
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_16
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_17
    return-object v2

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iput-object v3, v0, Lurq;->g:Lurq;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop
.end method

.method public final b()Lurq;
    .locals 4

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0xa

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

    :goto_3
    iput-boolean v0, p0, Lurq;->d:Z

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

    :goto_4
    iget v3, p0, Lurq;->b:I

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

    :goto_5
    new-instance v1, Lurq;

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
    const v0, 0x1e

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

    :goto_7
    iget-object v2, p0, Lurq;->a:[B

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_8
    iget p0, p0, Lurq;->c:I

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

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_a
    return-object v1

    nop

    :goto_b
    goto/32 :goto_10

    nop

    nop

    :goto_c
    const/4 v0, 0x1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-direct {v1, v2, v3, p0, v0}, Lurq;-><init>([BIIZ)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_1

    nop

    nop
.end method

.method public final c(Lurq;I)V
    .locals 5

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int/2addr v0, p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_2
    iput v0, p1, Lurq;->c:I

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_3
    add-int v4, v3, p2

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_4
    add-int v1, v0, p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_5
    iget v1, p1, Lurq;->b:I

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1d

    nop

    :goto_7
    iput v0, p1, Lurq;->c:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_1e

    nop

    :goto_a
    iput v1, p1, Lurq;->b:I

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_b
    throw p0

    nop

    :goto_c
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_d
    iget v0, p1, Lurq;->c:I

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

    :goto_e
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-static {v1, v1, v3, v0}, Lrkm;->bi([B[BII)V

    goto/32 :goto_2c

    nop

    nop

    :goto_10
    iget-object v1, p1, Lurq;->a:[B

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_11
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    sub-int/2addr v1, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_13
    const-string p1, "only owner can write"

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

    :goto_14
    if-eqz v3, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const v0, 0x9

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_16
    iget-boolean v0, p1, Lurq;->e:Z

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_17
    iget v0, p1, Lurq;->c:I

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_18
    throw p0

    nop

    :goto_19
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-static {v1, v2, v0, v3, v4}, Lrkm;->be([B[BIII)V

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_1c
    new-instance p0, Ljava/lang/IllegalArgumentException;

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

    :goto_1d
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object v1, p0, Lurq;->a:[B

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_20
    add-int/2addr p1, p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_21
    rem-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_22
    iget-object v2, p1, Lurq;->a:[B

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_23
    const/16 v2, 0x2000

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

    nop

    :goto_24
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_25
    iget-boolean v3, p1, Lurq;->d:Z

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    if-gt v1, v2, :cond_2

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    iget v3, p0, Lurq;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_28
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    iget p1, p0, Lurq;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_2a
    return-void

    nop

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_28

    nop

    nop

    :goto_2c
    iget v0, p1, Lurq;->c:I

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2d
    sub-int/2addr v0, v1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2e
    goto :goto_34

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_30
    if-nez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_d

    nop

    nop

    :goto_31
    iget v3, p1, Lurq;->b:I

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_32
    const v1, 0x17

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

    :goto_33
    throw p0

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_1f

    nop

    nop

    :goto_35
    if-le v1, v2, :cond_4

    nop

    goto/32 :goto_2f

    nop

    :cond_4
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_36
    iput p1, p0, Lurq;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop
.end method

.method public final d(Lurq;)V
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lurq;->f:Lurq;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Lurq;->f:Lurq;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object v0, p1, Lurq;->f:Lurq;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Lurq;->f:Lurq;

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

    :goto_4
    iput-object p1, v0, Lurq;->g:Lurq;

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_5
    iput-object p0, p1, Lurq;->g:Lurq;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

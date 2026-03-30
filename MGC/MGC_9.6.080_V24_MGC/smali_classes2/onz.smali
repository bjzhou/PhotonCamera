.class public final Lonz;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:I

.field public b:Ljava/lang/Object;

.field private c:B

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 0

    goto/32 :goto_1

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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

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

    nop

    nop

    :goto_0
    iput-object v0, p0, Lonz;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    const-string v0, ""

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop
.end method

.method public final b()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    iput-byte v0, p0, Lonz;->c:B

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

    :goto_2
    return-void

    nop

    nop

    nop
.end method

.method public final c()V
    .locals 2

    goto/32 :goto_a

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-byte v0, p0, Lonz;->c:B

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_2
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_3

    nop

    nop

    :goto_6
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2

    nop

    :goto_7
    const/4 v1, 0x1

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

    :goto_8
    iget v0, p0, Lonz;->a:I

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_a
    const v0, 0xb

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_b
    if-eq v0, v1, :cond_2

    nop

    nop

    goto/32 :goto_f

    nop

    :cond_2
    goto/32 :goto_16

    nop

    nop

    :goto_c
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_d
    if-nez p0, :cond_3

    nop

    goto/32 :goto_f

    nop

    :cond_3
    goto/32 :goto_15

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
    goto/32 :goto_c

    nop

    nop

    :goto_10
    if-nez v0, :cond_4

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_11
    const v1, 0xf

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_12
    throw p0

    nop

    nop

    :goto_13
    goto/32 :goto_5

    nop

    nop

    :goto_14
    iget p0, p0, Lonz;->d:I

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_15
    sget p0, Looa;->a:I

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_16
    iget-object v0, p0, Lonz;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_17
    add-int v0, v0, v1

    nop

    goto/32 :goto_9

    nop

    nop
.end method

.method public final d()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    iput v0, p0, Lonz;->d:I

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final e()Lmeb;
    .locals 3

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_0
    check-cast v0, Lmek;

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_1
    const v1, 0x20

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v1, 0x3

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_4
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_d

    nop

    :goto_6
    iget-object v0, p0, Lonz;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_7
    new-instance v1, Lmeb;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_8
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    :goto_9
    if-eq v0, v1, :cond_1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :cond_1
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    throw p0

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
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_c

    nop

    :goto_f
    iget p0, p0, Lonz;->d:I

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

    nop

    :goto_10
    iget v2, p0, Lonz;->a:I

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_12
    return-object v1

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-direct {v1, v2, p0, v0}, Lmeb;-><init>(IILmek;)V

    goto/32 :goto_12

    nop

    nop

    :goto_15
    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_16
    iget-byte v0, p0, Lonz;->c:B

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

    :goto_17
    const v0, 0x17

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

.method public final f(I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput p1, p0, Lonz;->a:I

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-byte p1, p0, Lonz;->c:B

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

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    :goto_3
    iget-byte p1, p0, Lonz;->c:B

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

    :goto_4
    or-int/lit8 p1, p1, 0x1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_5
    int-to-byte p1, p1

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method public final g(I)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    iget-byte p1, p0, Lonz;->c:B

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_2
    int-to-byte p1, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    iput-byte p1, p0, Lonz;->c:B

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4
    iput p1, p0, Lonz;->d:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_5
    or-int/lit8 p1, p1, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method

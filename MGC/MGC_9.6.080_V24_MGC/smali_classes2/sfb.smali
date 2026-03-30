.class public final Lsfb;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field private b:I

.field private final synthetic c:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    iput p1, p0, Lsfb;->b:I

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    iput p2, p0, Lsfb;->c:I

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_4
    iput-object p1, p0, Lsfb;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_3

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

    goto/32 :goto_0

    nop

    nop

    nop
.end method


# virtual methods
.method public final hasNext()Z
    .locals 3

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    :goto_1
    iget-object v0, v0, Lqlz;->a:[I

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Lsfb;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget p0, p0, Lsfb;->b:I

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Lsfb;->a:Ljava/lang/Object;

    nop

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

    :goto_6
    array-length v0, v0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return v2

    nop

    :goto_8
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_9
    const/4 v1, 0x1

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

    :goto_a
    iget v0, p0, Lsfb;->c:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_b
    return v1

    nop

    nop

    :goto_c
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v0, v0, Lsfc;->a:Lsfe;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

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

    nop

    :goto_f
    const v1, 0x20

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_10
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    :cond_1
    goto/32 :goto_1c

    nop

    :goto_11
    const v0, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_12
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-lt p0, v0, :cond_2

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-lt p0, v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    :cond_3
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    return v2

    nop

    :goto_16
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_17
    iget v0, v0, Lsfe;->b:I

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_18
    check-cast v0, Lqlz;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_1a
    return v1

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_8

    nop

    :goto_1d
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    check-cast v0, Lsfc;

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

    :goto_1f
    iget p0, p0, Lsfb;->b:I

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 2

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_0
    iget v0, p0, Lsfb;->b:I

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, v0}, Lsfe;->e(I)Lsdr;

    move-result-object p0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2
    aget p0, p0, v0

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

    :goto_3
    add-int v0, v0, v1

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-object p0

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

    nop

    :goto_6
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    and-int/lit8 v0, v0, 0x1f

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_8
    iget-object v1, p0, Lsfe;->a:[I

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_9
    return-object p0

    nop

    nop

    :goto_a
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1a

    nop

    :goto_d
    iget-object p0, p0, Lqlz;->a:[I

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_e
    add-int/lit8 v1, v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_f
    iput v1, p0, Lsfb;->b:I

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object p0, p0, Lsfc;->a:Lsfe;

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

    :goto_11
    add-int/lit8 v1, v0, 0x1

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_12
    check-cast p0, Lsfc;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_14
    const v0, 0x14

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_15
    iget-object p0, p0, Lsfb;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_16
    iget v0, p0, Lsfb;->b:I

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

    :goto_17
    aget v0, v1, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_18
    check-cast p0, Lqlz;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iput v1, p0, Lsfb;->b:I

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_5

    nop

    nop

    :goto_1b
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object p0, p0, Lsfb;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_1d
    const v1, 0x8

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1e
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_1f
    iget v0, p0, Lsfb;->c:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop
.end method

.method public final remove()V
    .locals 1

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-nez p0, :cond_0

    nop

    nop

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
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_3
    throw p0

    nop

    :goto_4
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_5
    const-string v0, "IntSets are immutable!"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_6
    new-instance p0, Ljava/lang/UnsupportedOperationException;

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
    throw p0

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget p0, p0, Lsfb;->c:I

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

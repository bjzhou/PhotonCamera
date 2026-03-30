.class final Lshm;
.super Lshn;
.source "PG"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    iput p1, p0, Lshm;->a:I

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    invoke-direct {p0}, Lshn;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop
.end method


# virtual methods
.method public final a()I
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iget p0, p0, Lshm;->a:I

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
    return p0

    nop
.end method

.method public final b()I
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    nop

    :goto_1
    const/16 p0, 0x20

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final c()J
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    const-string v0, "this HashCode only has 32 bits; cannot create a long"

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    throw p0

    nop

    nop
.end method

.method public final d(Lshn;)Z
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    :goto_1
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget p0, p0, Lshm;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    if-eq p0, p1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1

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

    :goto_4
    invoke-virtual {p1}, Lshn;->a()I

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_5
    return p0

    nop

    nop

    nop

    nop

    :goto_6
    const/4 p0, 0x1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_7
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop
.end method

.method public final e()[B
    .locals 5

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    shr-int/lit8 v2, p0, 0x10

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object v3

    nop

    nop

    :goto_2
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_3
    int-to-byte p0, p0

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_5
    aput-byte v0, v3, v4

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_6
    aput-byte v1, v3, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_7
    const v1, 0x15

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
    add-int v0, v0, v1

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_9
    const/4 v0, 0x3

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_b
    int-to-byte v1, v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_2

    nop

    :goto_d
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const v0, 0x10

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const/4 v4, 0x0

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

    :goto_10
    const/4 v0, 0x2

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_11
    aput-byte p0, v3, v0

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

    :goto_12
    aput-byte v2, v3, v0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_14
    iget p0, p0, Lshm;->a:I

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

    nop

    :goto_15
    rem-int v0, v0, v1

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

    :goto_16
    new-array v3, v3, [B

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_17
    int-to-byte v0, p0

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    shr-int/lit8 v1, p0, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_19
    const/4 v3, 0x4

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

    :goto_1a
    shr-int/lit8 p0, p0, 0x18

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1b
    int-to-byte v2, v2

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop
.end method

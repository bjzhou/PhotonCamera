.class public final Lqln;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lqlo;


# instance fields
.field private final synthetic a:I

.field private final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput p2, p0, Lqln;->a:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lqln;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method private static b(III)I
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p0, p2}, Ljava/lang/Math;->max(II)I

    move-result p0

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    return p0

    nop

    nop

    nop

    nop
.end method

.method private static c(III)I
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

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

    :goto_1
    return p0

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {p0, p2}, Ljava/lang/Math;->min(II)I

    move-result p0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method private final da190e616797844b591057d0190e7728m(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V
    .locals 2

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x20

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

    :goto_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_14

    nop

    nop

    :goto_2
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_3
    const-string p1, "\' to \'"

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

    :goto_4
    const-string p1, "\'!"

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-nez p0, :cond_0

    nop

    goto/32 :goto_13

    nop

    nop

    :cond_0
    goto/32 :goto_12

    nop

    nop

    :goto_7
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_8
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

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

    :goto_b
    invoke-virtual {p0, p1, p2}, Lqln;->a(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_c
    const-string v1, "MemCopier does not support copying from buffer \'"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_d

    nop

    :goto_10
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_8

    nop

    nop

    :goto_12
    return-void

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_16
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const v0, 0x16

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_19
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_1a
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    add-int v0, v0, v1

    nop

    goto/32 :goto_19

    nop

    nop
.end method

.method private static e(II)V
    .locals 5

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const v0, 0xd

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
    const-string v1, "!"

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0x8

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_3
    invoke-static {p0, v0, v1, v2, v3}, La;->bq(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_4
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

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

    :goto_5
    if-gez p1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    :cond_0
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_6
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_7
    if-lez v0, :cond_1

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

    :cond_1
    goto/32 :goto_20

    nop

    :goto_8
    const-string v0, "Attempting to copy from negative buffer index "

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_a
    move v4, v0

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    move p1, v4

    nop

    nop

    :goto_c
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const-string v3, "-byte buffer!"

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

    :goto_e
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_f
    return-void

    nop

    :goto_10
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto :goto_c

    nop

    nop

    :goto_12
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const-string v2, " bytes at offset 0 on "

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

    :goto_14
    invoke-direct {p1, p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_16
    const-string v1, "Attempting to copy "

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

    :goto_17
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_18
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_19
    throw p0

    nop

    nop

    :goto_1a
    goto/32 :goto_e

    nop

    nop

    :goto_1b
    invoke-static {p1, v0, v1}, La;->br(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_1c
    if-ltz p1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    :cond_2
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    throw p1

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    if-ge p0, v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_22
    move v0, p1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_23
    neg-int v0, p1

    nop

    goto/32 :goto_11

    nop

    nop

    nop
.end method

.method private static f()V
    .locals 2

    goto/32 :goto_9

    nop

    nop

    :goto_0
    sget-object v1, Lcom/google/android/apps/camera/logging/PTc/RjdpW;->CKXPjIDRZcOvNzI:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_3
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_b

    nop

    :goto_7
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

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

    :goto_9
    const v0, 0x1c

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_a
    throw v0

    nop

    :goto_b
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

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

    :goto_d
    const v1, 0x17

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
.method public final a(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z
    .locals 4

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_0
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_1e

    nop

    nop

    :goto_2
    goto/32 :goto_16

    nop

    nop

    :goto_3
    if-lt v2, v3, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_0
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_4
    if-nez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/16 :goto_19

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    move v1, v0

    nop

    :goto_8
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1

    nop

    :goto_a
    invoke-interface {v3, p1, p2}, Lqlo;->a(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z

    move-result v3

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_b
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_5

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

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_d
    return p0

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_26

    nop

    nop

    :goto_f
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

    :goto_10
    const v1, 0xf

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto :goto_8

    nop

    :goto_12
    goto/32 :goto_b

    nop

    nop

    :goto_13
    if-nez v3, :cond_3

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

    :cond_3
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const/4 v3, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_15
    iget-object p0, p0, Lqln;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_16
    iget v0, p0, Lqln;->a:I

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_17
    invoke-interface {p0, p1, p2}, Lqlo;->a(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z

    move-result p0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_18
    move v2, v0

    nop

    nop

    :goto_19
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object v3, p0, Lqln;->b:Ljava/lang/Object;

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

    :goto_1b
    return v1

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_1d
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_20
    if-ne v0, v1, :cond_4

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iget-object p0, p0, Lqln;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_22
    const v0, 0x2

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_23
    aget-object v3, v3, v2

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_24
    invoke-interface {p0, p1, p2}, Lqlo;->a(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z

    move-result p0

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

    :goto_25
    check-cast v3, [Lqlo;

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_26
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop
.end method

.method public final copyBytes(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;III)V
    .locals 6

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-ne p3, p4, :cond_0

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
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Lqln;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_2
    if-lt p3, p4, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :cond_1
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_5
    move v5, p5

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_8
    move v5, p5

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_9
    const/4 p4, 0x3

    nop

    goto/32 :goto_2

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
    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_c
    move-object v1, p1

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

    :goto_d
    invoke-static {}, Lqln;->f()V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-interface/range {v0 .. v5}, Lqlo;->copyBytes(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;III)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_f
    move-object v2, p2

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

    :goto_10
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_11
    const v1, 0xb

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_12
    iget-object p4, p0, Lqln;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_13
    invoke-direct {p0, p1, p2}, Lqln;->da190e616797844b591057d0190e7728m(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    goto/32 :goto_1e

    nop

    nop

    :goto_14
    iget p3, p0, Lqln;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_15
    check-cast p4, [Lqlo;

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_16
    if-nez p4, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    :cond_2
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-interface/range {v0 .. v5}, Lqlo;->copyBytes(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;III)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_18
    return-void

    nop

    :goto_19
    goto/32 :goto_13

    nop

    nop

    :goto_1a
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    :cond_3
    goto/32 :goto_27

    nop

    :goto_1b
    const/4 v4, 0x0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_1c
    if-nez p3, :cond_4

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_1d
    const/4 v4, 0x0

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p3

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_1f
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_20
    goto/16 :goto_32

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_23
    move-object v1, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_24
    move-object v2, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    const/4 v4, 0x0

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_26
    invoke-interface/range {v0 .. v5}, Lqlo;->copyBytes(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;III)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    const/4 p4, 0x1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_28

    nop

    nop

    nop

    :goto_2b
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_2c
    invoke-static {p4, p5}, Lqln;->e(II)V

    goto/32 :goto_36

    nop

    nop

    :goto_2d
    const/4 v3, 0x0

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p4

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    add-int/lit8 p3, p3, 0x1

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_30
    const v0, 0x1d

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

    nop

    :goto_31
    const/4 p3, 0x0

    nop

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    aget-object v0, p4, p3

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

    :goto_34
    move v5, p5

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_35
    invoke-static {p3, p5}, Lqln;->e(II)V

    goto/32 :goto_2c

    nop

    nop

    :goto_36
    iget-object v0, p0, Lqln;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-interface {v0, p1, p2}, Lqlo;->a(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z

    move-result p4

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

    :goto_38
    move-object v1, p1

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_39
    move-object v2, p2

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop
.end method

.method public final copyBytes2D(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIIIII)V
    .locals 10

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v3, 0x0

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_1
    move/from16 p7, v1

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0, p1, p2}, Lqln;->da190e616797844b591057d0190e7728m(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    mul-int v1, p4, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_4
    const/4 v6, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-nez v1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    :cond_0
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_6
    move v4, p4

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_7
    move/from16 v8, p8

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :goto_8
    move/from16 v8, p8

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_9
    move v4, p4

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_a
    mul-int v2, v7, p4

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_b
    const/4 v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    :goto_c
    move-object v1, p1

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    move v3, p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_f
    const/4 v9, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_10
    iget-object v2, v0, Lqln;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual/range {p3 .. p8}, Lqln;->copyBytes(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;III)V

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    move/from16 v8, p8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_13
    move v5, v6

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_51

    nop

    nop

    :goto_15
    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    :goto_16
    move-object v5, p2

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    :goto_17
    move v5, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_18
    move-object v0, v2

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    move-object v1, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_1a
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1b
    invoke-static {}, Lqln;->f()V

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_1c
    move v6, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_1e
    invoke-interface/range {v0 .. v8}, Lqlo;->copyBytes2D(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIIIII)V

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_1f
    move/from16 v7, p7

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

    :goto_20
    iget v1, v0, Lqln;->a:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_21
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_22
    const v0, 0x5

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_23
    move/from16 v7, p7

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_24
    move v6, v9

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_25
    move-object v2, p2

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_26
    if-eq v7, v3, :cond_1

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :cond_1
    goto/32 :goto_1a

    nop

    nop

    :goto_27
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_28
    move-object p3, p0

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_29
    if-lt v1, v2, :cond_2

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    return-void

    nop

    :goto_2b
    goto/32 :goto_3a

    nop

    nop

    :goto_2c
    move/from16 v7, p7

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_2d
    move-object v2, p2

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_2f
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_43

    nop

    nop

    nop

    :goto_31
    const/4 v6, 0x0

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    move/from16 p6, v3

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

    :goto_33
    const/4 v5, 0x0

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_34
    if-eq v7, v8, :cond_3

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    :cond_3
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    move v4, p4

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_36
    move-object v5, p2

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_37
    const/4 v1, 0x0

    nop

    nop

    :goto_38
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    if-lez v0, :cond_4

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_14

    nop

    :goto_3a
    move-object v4, p1

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

    :goto_3b
    mul-int v6, p4, v7

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    move-object p4, p1

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-interface {v2, p1, p2}, Lqlo;->a(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z

    move-result v6

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    move-object v4, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_3f
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_40
    const v1, 0xd

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

    nop

    :goto_41
    invoke-static {v1, v6}, Lqln;->e(II)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_42
    move/from16 v8, p8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_43
    iget-object v0, v0, Lqln;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_44
    move-object v2, p2

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_45
    goto/16 :goto_38

    nop

    nop

    :goto_46
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    iget-object v0, v0, Lqln;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_48
    move-object p5, p2

    nop

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

    :goto_49
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    goto/32 :goto_1d

    nop

    nop

    :goto_4b
    const/4 v6, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_4c
    const/4 v9, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_4d
    return-void

    nop

    nop

    nop

    :goto_4e
    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :goto_4f
    const/4 v2, 0x3

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_50
    return-void

    nop

    nop

    nop

    :goto_51
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_52
    move/from16 p8, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_53
    move/from16 v7, p7

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_54
    move v3, p3

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_55
    move v3, p3

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_56
    aget-object v2, v2, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    move v3, p3

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_58
    move-object v1, p1

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_59
    if-nez v6, :cond_5

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :cond_5
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    invoke-interface/range {v0 .. v8}, Lqlo;->copyBytes2D(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIIIII)V

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_5b
    check-cast v2, [Lqlo;

    nop

    goto/32 :goto_56

    nop

    nop

    :goto_5c
    invoke-interface/range {v0 .. v8}, Lqlo;->copyBytes2D(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIIIII)V

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    move-object v0, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    move v3, p3

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_5f
    invoke-static {v2, v1}, Lqln;->e(II)V

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_60
    if-ne v1, v2, :cond_6

    nop

    nop

    goto/32 :goto_4e

    nop

    :cond_6
    goto/32 :goto_5e

    nop

    nop

    nop
.end method

.method public final copyBytes2D(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIIIIIII)V
    .locals 12

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v6, 0x0

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
    const/4 v8, 0x1

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_2
    check-cast v2, [Lqlo;

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_3
    move/from16 v7, p7

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_4
    move/from16 v7, p7

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_5
    move-object v2, p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {v1, v11}, Lqln;->e(II)V

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_7
    move/from16 v4, p4

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :goto_8
    invoke-interface/range {v0 .. v10}, Lqlo;->copyBytes2D(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIIIIIII)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_9
    mul-int v9, p9, v8

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

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

    :goto_b
    invoke-static {v6, v9, v10}, Lqln;->c(III)I

    move-result v11

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_c
    invoke-static {}, Lqln;->f()V

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_d
    add-int/lit8 v5, p3, -0x1

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_e
    const/4 v5, 0x0

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

    :goto_f
    move/from16 v7, p7

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-static {v6, v9, v10}, Lqln;->b(III)I

    move-result v6

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_11
    invoke-static {v5, v1, v6}, Lqln;->b(III)I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_12
    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_13
    move-object v0, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_14
    return-void

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    mul-int v6, v7, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_17
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_30

    nop

    nop

    :goto_19
    const v1, 0x1f

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_1a
    move-object v3, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_1c
    move-object v2, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    move v3, p3

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

    :goto_1e
    move-object v1, p1

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_1f
    add-int/lit8 v8, p4, -0x1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_20
    invoke-static {v5, v1, v6}, Lqln;->c(III)I

    move-result v8

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_21
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_22
    const/4 v5, 0x0

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iget-object v0, v0, Lqln;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_24
    invoke-static {v2, v8}, Lqln;->e(II)V

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_25
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_37

    nop

    nop

    :goto_27
    invoke-direct {p0, p1, p2}, Lqln;->da190e616797844b591057d0190e7728m(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_28
    move-object v4, p2

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_29
    move-object v0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_2a
    iget v1, v0, Lqln;->a:I

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-static {v2, v1}, Lqln;->e(II)V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    move/from16 v9, p9

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    :goto_2d
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_2e
    if-eq v7, v2, :cond_0

    nop

    goto/32 :goto_15

    nop

    nop

    :cond_0
    goto/32 :goto_58

    nop

    nop

    :goto_2f
    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_30
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_42

    nop

    nop

    :goto_32
    const/4 v6, 0x0

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_33
    move v3, p3

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_34
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_35
    const/4 v6, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_36
    move-object v1, p1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_37
    move-object v3, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    :goto_38
    move/from16 v4, p4

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    add-int v6, v1, v5

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-interface/range {v0 .. v10}, Lqlo;->copyBytes2D(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIIIIIII)V

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_44

    nop

    :goto_3c
    move/from16 v9, p9

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-virtual/range {v0 .. v8}, Lqln;->copyBytes2D(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIIIII)V

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_3e
    const/4 v8, 0x1

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

    :goto_3f
    const v0, 0x1d

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_40
    move/from16 v7, p9

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_41
    invoke-static {v1, v6}, Lqln;->e(II)V

    goto/32 :goto_62

    nop

    nop

    nop

    :goto_42
    const/4 v2, 0x3

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    iget-object v0, v0, Lqln;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_44
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_45
    goto/32 :goto_67

    nop

    nop

    nop

    nop

    :goto_46
    move/from16 v9, p9

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    if-ne v1, v2, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :cond_2
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    move/from16 v10, p10

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    move v3, p3

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_4a
    move-object v1, p1

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    :goto_4b
    const/4 v6, 0x0

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_4c
    move-object v1, p1

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    invoke-interface {v2, p1, p2}, Lqlo;->a(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z

    move-result v5

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    :goto_4e
    return-void

    nop

    nop

    :goto_4f
    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_51
    move/from16 v4, p4

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_52
    move/from16 v4, p4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_53
    const/4 v8, 0x1

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_54
    move/from16 v7, p7

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_55
    aget-object v2, v2, v1

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_56
    move/from16 v10, p10

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    move/from16 v10, p10

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_58
    const/4 v5, 0x0

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_59
    goto/16 :goto_31

    nop

    nop

    nop

    nop

    :goto_5a
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    move v3, p3

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    add-int v10, v9, v6

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

    :goto_5d
    move-object v4, p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_5e
    iget-object v2, v0, Lqln;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_5f
    move/from16 v8, p10

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_60
    return-void

    nop

    nop

    nop

    nop

    :goto_61
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_62
    mul-int v1, p10, v8

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_63
    if-nez v1, :cond_3

    nop

    nop

    goto/32 :goto_26

    nop

    :cond_3
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_64
    invoke-interface/range {v0 .. v10}, Lqlo;->copyBytes2D(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIIIIIII)V

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_65
    move-object v2, p2

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_66
    move-object v2, p2

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_67
    move-object v0, p0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_68
    if-nez v5, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    :cond_4
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_69
    if-lt v1, v2, :cond_5

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_5e

    nop

    nop

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_2
    sget-object v2, Lcom/google/android/apps/camera/legacy/lightcycle/panorama/RpD/WBNWZfrn;->gzCdpAgqetP:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_c

    nop

    nop

    :goto_4
    iget-object p0, p0, Lqln;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-object p0

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_1a

    nop

    nop

    :goto_7
    const v0, 0xa

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_2e

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
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v2, p0}, Lrpz;->c(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_e
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_f
    const v1, 0x1b

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

    :goto_10
    check-cast p0, [Ljava/lang/Object;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_13
    new-instance v0, Ljava/lang/StringBuilder;

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

    :goto_14
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_15
    return-object p0

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_17
    if-nez v0, :cond_0

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_0
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const/4 v2, 0x0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const-string v3, ","

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object p0, p0, Lqln;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_1b
    rem-int v0, v0, v1

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1e
    new-instance v2, Lrpz;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const-string v1, "]"

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_20
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-direct {v2, v3}, Lrpz;-><init>(Ljava/lang/String;)V

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_23
    new-instance v2, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_24
    const-string v2, "checked["

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_25
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1d

    nop

    nop

    :goto_26
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_27
    if-lez v0, :cond_1

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_28

    nop

    :goto_28
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

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

    :goto_2d
    iget-object p0, p0, Lqln;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_2e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_31
    const-string v0, "["

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_32
    if-ne v0, v2, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :cond_2
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_33
    iget v0, p0, Lqln;->a:I

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_34
    const/4 v2, 0x1

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop
.end method

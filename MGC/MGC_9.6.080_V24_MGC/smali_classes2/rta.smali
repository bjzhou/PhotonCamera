.class final Lrta;
.super Ljava/util/Random;
.source "PG"


# instance fields
.field private final a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    iput-boolean v0, p0, Lrta;->a:Z

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

    :goto_2
    const/4 v0, 0x1

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/util/Random;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method static final a()Ljava/security/SecureRandom;
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_0

    nop

    nop

    :goto_2
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

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

    :goto_3
    check-cast v0, Ljava/security/SecureRandom;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4
    sget-object v0, Lrtb;->b:Ljava/lang/ThreadLocal;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method


# virtual methods
.method protected final next(I)I
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

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
    throw p0

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final nextBoolean()Z
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Ljava/security/SecureRandom;->nextBoolean()Z

    move-result p0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    invoke-static {}, Lrta;->a()Ljava/security/SecureRandom;

    move-result-object p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    return p0

    nop

    nop

    nop
.end method

.method public final nextBytes([B)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-static {}, Lrta;->a()Ljava/security/SecureRandom;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    invoke-virtual {p0, p1}, Ljava/security/SecureRandom;->nextBytes([B)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final nextDouble()D
    .locals 2

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_6

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_3
    return-wide v0

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_1

    nop

    nop

    :goto_5
    goto/32 :goto_4

    nop

    nop

    :goto_6
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_7
    const v0, 0x8

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0}, Ljava/security/SecureRandom;->nextDouble()D

    move-result-wide v0

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_9
    const v1, 0x12

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {}, Lrta;->a()Ljava/security/SecureRandom;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_0
    goto/32 :goto_5

    nop
.end method

.method public final nextFloat()F
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Ljava/security/SecureRandom;->nextFloat()F

    move-result p0

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
    invoke-static {}, Lrta;->a()Ljava/security/SecureRandom;

    move-result-object p0

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
    return p0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final nextGaussian()D
    .locals 2

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_3

    nop

    nop

    :goto_1
    invoke-static {}, Lrta;->a()Ljava/security/SecureRandom;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_1

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Ljava/security/SecureRandom;->nextGaussian()D

    move-result-wide v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0x1b

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

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_9
    return-wide v0

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_0

    nop

    nop

    :goto_b
    const v1, 0x14

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop
.end method

.method public final nextInt()I
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

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Ljava/security/SecureRandom;->nextInt()I

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    invoke-static {}, Lrta;->a()Ljava/security/SecureRandom;

    move-result-object p0

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method public final nextInt(I)I
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result p0

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
    invoke-static {}, Lrta;->a()Ljava/security/SecureRandom;

    move-result-object p0

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

    :goto_2
    return p0

    nop

    nop

    nop

    nop
.end method

.method public final nextLong()J
    .locals 2

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_1
    invoke-static {}, Lrta;->a()Ljava/security/SecureRandom;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0x1d

    nop

    nop

    goto/32 :goto_7

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

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0x10

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_9
    return-wide v0

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop
.end method

.method public final setSeed(J)V
    .locals 1

    goto/32 :goto_3

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

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    nop

    nop

    nop

    goto/32 :goto_6

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
    iget-boolean v0, p0, Lrta;->a:Z

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-super {p0, p1, p2}, Ljava/util/Random;->setSeed(J)V

    goto/32 :goto_7

    nop

    nop

    :goto_5
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const-string p1, "Setting the seed on a thread-local Random object is not permitted"

    nop

    nop

    nop

    goto/32 :goto_5

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

    :goto_8
    goto/32 :goto_1

    nop

    nop
.end method

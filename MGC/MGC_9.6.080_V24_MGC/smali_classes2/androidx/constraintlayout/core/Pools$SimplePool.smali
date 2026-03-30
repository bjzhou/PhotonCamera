.class Landroidx/constraintlayout/core/Pools$SimplePool;
.super Ljava/lang/Object;
.source "Pools.java"

# interfaces
.implements Landroidx/constraintlayout/core/Pools$Pool;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/core/Pools;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SimplePool"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/constraintlayout/core/Pools$Pool<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final mPool:[Ljava/lang/Object;

.field private mPoolSize:I


# direct methods
.method constructor <init>(I)V
    .locals 2

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_b

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_2
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    :goto_4
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    throw v0

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_7
    new-array v0, p1, [Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_8
    const v0, 0xc

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

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
    goto/32 :goto_0

    nop

    nop

    :goto_b
    if-gtz p1, :cond_0

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

    :cond_0
    goto/32 :goto_7

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

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_9

    nop

    :goto_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_f
    const v1, 0xd

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_10
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_11
    iput-object v0, p0, Landroidx/constraintlayout/core/Pools$SimplePool;->mPool:[Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_12
    const-string v1, "The max pool size must be > 0"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop
.end method

.method private cf1971e09b464aa85e0cf88fae7a9242m(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_0
    goto :goto_b

    nop

    nop

    :goto_1
    goto/32 :goto_11

    nop

    nop

    :goto_2
    return v1

    nop

    nop

    :goto_3
    goto/32 :goto_14

    nop

    nop

    :goto_4
    if-eq v1, p1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_5
    iget v1, p0, Landroidx/constraintlayout/core/Pools$SimplePool;->mPoolSize:I

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-lt v0, v1, :cond_1

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

    :cond_1
    goto/32 :goto_17

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

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0x1c

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_a
    const/4 v0, 0x0

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v1, 0x7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_12

    nop

    :goto_e
    const/4 v1, 0x1

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

    :goto_f
    return v0

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_16

    nop

    nop

    :goto_11
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_12
    goto/32 :goto_10

    nop

    nop

    :goto_13
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    add-int/lit8 v0, v0, 0x1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_15
    aget-object v1, v1, v0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget-object v1, p0, Landroidx/constraintlayout/core/Pools$SimplePool;->mPool:[Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public acquire()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_0
    add-int/lit8 v2, v0, -0x1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v3, p0, Landroidx/constraintlayout/core/Pools$SimplePool;->mPool:[Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_14

    nop

    nop

    :goto_4
    goto/32 :goto_10

    nop

    nop

    :goto_5
    return-object v4

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
    if-gtz v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_3

    nop

    :goto_9
    aput-object v1, v3, v2

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_a
    const/4 v1, 0x0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0x1d

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_c
    aget-object v4, v3, v2

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

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

    :goto_e
    const v0, 0x18

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_f
    iput v0, p0, Landroidx/constraintlayout/core/Pools$SimplePool;->mPoolSize:I

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

    :goto_10
    iget v0, p0, Landroidx/constraintlayout/core/Pools$SimplePool;->mPoolSize:I

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

    :goto_11
    add-int/lit8 v0, v0, -0x1

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
    goto/32 :goto_4

    nop

    nop

    :goto_13
    return-object v1

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public release(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_1
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    iput v0, p0, Landroidx/constraintlayout/core/Pools$SimplePool;->mPoolSize:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_5
    const v1, 0x1f

    nop

    goto/32 :goto_8

    nop

    nop

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

    goto/32 :goto_2

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_7
    add-int/2addr v0, v1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

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

    :goto_9
    aput-object p1, v1, v0

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0x1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_c
    iget-object v1, p0, Landroidx/constraintlayout/core/Pools$SimplePool;->mPool:[Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_d
    return v0

    nop

    nop

    :goto_e
    goto/32 :goto_3

    nop

    nop

    :goto_f
    iget v0, p0, Landroidx/constraintlayout/core/Pools$SimplePool;->mPoolSize:I

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_10
    return v1

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-lt v0, v2, :cond_1

    nop

    goto/32 :goto_11

    nop

    nop

    :cond_1
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_13
    array-length v2, v1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_14
    const/4 v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop
.end method

.method public releaseAll([Ljava/lang/Object;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;I)V"
        }
    .end annotation

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_1
    array-length v4, v3

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_2
    aput-object v1, v3, v2

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_3
    array-length v0, p1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_4
    if-lt v0, p2, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget v2, p0, Landroidx/constraintlayout/core/Pools$SimplePool;->mPoolSize:I

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_6
    add-int/lit8 v0, v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_1

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_15

    nop

    :goto_a
    if-lt v2, v4, :cond_2

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_c
    aget-object v1, p1, v0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const/4 v0, 0x0

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_4

    nop

    nop

    :goto_f
    iput v2, p0, Landroidx/constraintlayout/core/Pools$SimplePool;->mPoolSize:I

    nop

    :goto_10
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-gt p2, v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    :cond_3
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    array-length p2, p1

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_8

    nop

    :goto_16
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_17
    iget-object v3, p0, Landroidx/constraintlayout/core/Pools$SimplePool;->mPool:[Ljava/lang/Object;

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

    :goto_18
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_19
    add-int/lit8 v2, v2, 0x1

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

    :goto_1a
    const v1, 0x9

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

    :goto_1b
    goto :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_7

    nop

    nop

    nop
.end method

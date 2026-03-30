.class final Lshg;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lshe;


# direct methods
.method public constructor <init>()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop
.end method

.method private static final c([Ljava/lang/StackTraceElement;Ljava/lang/Class;I)I
    .locals 2

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-nez v1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_2
    add-int/lit8 p2, p2, 0x1

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_3
    return p2

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto :goto_4

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

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
    array-length v1, p0

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_9
    return p0

    nop

    :goto_a
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v1

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_c
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_17

    nop

    :goto_d
    goto/32 :goto_18

    nop

    :goto_e
    const/4 v0, 0x0

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto :goto_f

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_12
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_13
    const v0, 0x1f

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_14
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_15
    if-lt p2, v1, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1c

    nop

    nop

    :goto_16
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_17
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const v1, 0x1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_1a
    const/4 p0, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_1b
    if-nez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    aget-object v1, p0, p2

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Ljava/lang/Class;I)Ljava/lang/StackTraceElement;
    .locals 2

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x0

    nop

    nop

    :goto_1
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_3
    invoke-static {v0, p1, p2}, Lshg;->c([Ljava/lang/StackTraceElement;Ljava/lang/Class;I)I

    move-result p0

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

    nop

    nop

    :goto_4
    aget-object p0, v0, p0

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_5
    if-gez p2, :cond_0

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

    :cond_0
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {v0, v1}, Lshf;->b(ZLjava/lang/String;)V

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_7
    const v0, 0xa

    nop

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
    if-ne p0, p1, :cond_1

    nop

    goto/32 :goto_b

    nop

    :cond_1
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_9
    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_a
    return-object p0

    nop

    nop

    :goto_b
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_c
    const v1, 0x9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_d
    goto/16 :goto_1

    nop

    nop

    :goto_e
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    move v0, p0

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

    :goto_10
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_19

    nop

    :goto_12
    add-int v0, v0, v1

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

    nop

    :goto_13
    return-object p0

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_18

    nop

    :goto_16
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_17
    const-string v1, "skipFrames must be >= 0"

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

    :goto_18
    goto/32 :goto_14

    nop

    nop

    :goto_19
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_1a
    add-int/2addr p2, p0

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

    :goto_1b
    const/4 p1, -0x1

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

    :goto_1c
    const/4 p0, 0x1

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1d
    new-instance v0, Ljava/lang/Throwable;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop
.end method

.method public final b(Ljava/lang/Class;II)[Ljava/lang/StackTraceElement;
    .locals 4

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x19

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_26

    nop

    nop

    nop

    :goto_2
    move p2, p3

    nop

    nop

    :goto_3
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-gtz p2, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    :cond_0
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_5
    const/4 v0, 0x1

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

    :goto_6
    if-lez v0, :cond_1

    nop

    goto/32 :goto_26

    nop

    nop

    :cond_1
    goto/32 :goto_25

    nop

    :goto_7
    array-length p3, v2

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

    :goto_8
    const-string v2, "skipFrames must be >= 0"

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_9
    if-ne p2, v1, :cond_2

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0x4

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_b
    goto :goto_13

    nop

    :goto_c
    goto/32 :goto_23

    nop

    nop

    :goto_d
    add-int/2addr p3, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_e
    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    return-object p3

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    sub-int/2addr p3, p1

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

    :goto_12
    goto :goto_1b

    nop

    :goto_13
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const/4 v1, -0x1

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

    :goto_15
    invoke-static {v2, v3}, Lshf;->b(ZLjava/lang/String;)V

    goto/32 :goto_8

    nop

    nop

    :goto_16
    if-gtz p2, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :cond_3
    goto/32 :goto_29

    nop

    nop

    :goto_17
    invoke-static {v2, p1, p3, p0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_18
    rem-int v0, v0, v1

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

    :goto_19
    invoke-static {v2, p1, p3}, Lshg;->c([Ljava/lang/StackTraceElement;Ljava/lang/Class;I)I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_1a
    move v2, v0

    nop

    nop

    :goto_1b
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    if-eq p1, v1, :cond_4

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    :cond_4
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const/4 p0, 0x0

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

    :goto_1e
    const-string v3, "maxDepth must be > 0 or -1"

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    return-object p0

    nop

    nop

    :goto_20
    goto/32 :goto_7

    nop

    nop

    :goto_21
    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_22
    new-instance v2, Ljava/lang/Throwable;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_23
    move v2, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_24
    invoke-static {v0, v2}, Lshf;->b(ZLjava/lang/String;)V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_10

    nop

    nop

    :goto_26
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_27
    new-array p0, p0, [Ljava/lang/StackTraceElement;

    nop

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

    :goto_28
    add-int v0, v0, v1

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

    :goto_29
    if-ge p2, p3, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_5
    :goto_2a
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2b
    new-array p3, p2, [Ljava/lang/StackTraceElement;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop
.end method

.class public final Lfqi;
.super Ljava/io/FilterInputStream;
.source "PG"

# interfaces
.implements Lj$/io/InputStreamRetargetInterface;


# instance fields
.field private volatile a:[B

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private final f:Lfmm;


# direct methods
.method private final 33f5b80483094659737b73d90f80a8a4m(Ljava/io/InputStream;[B)I
    .locals 5

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_0
    iput v0, p0, Lfqi;->e:I

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_1
    array-length v0, p2

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

    :goto_2
    array-length v2, p2

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget v3, p0, Lfqi;->e:I

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

    :goto_4
    invoke-virtual {p1, p2, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_6
    add-int/2addr p2, p1

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_40

    nop

    nop

    :goto_8
    const/4 v2, -0x1

    nop

    nop

    goto/32 :goto_2a

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

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_a
    iget p2, p0, Lfqi;->e:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_b
    iget v0, p0, Lfqi;->e:I

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_c
    sub-int/2addr v3, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_d
    sub-int/2addr v2, v0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-static {p2, v0, p2, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_f
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_10
    iget v2, p0, Lfqi;->d:I

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_11
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_14
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-gtz p1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :cond_0
    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_16
    iput-object v2, p0, Lfqi;->a:[B

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-gtz v0, :cond_1

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

    :cond_1
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :cond_2
    goto/32 :goto_32

    nop

    :goto_19
    return p1

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    check-cast v2, [B

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iput v1, p0, Lfqi;->d:I

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_1d
    const v0, 0x17

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_1e
    goto/16 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v2, v4, v3}, Lfmm;->a(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_21
    if-gt v4, v0, :cond_3

    nop

    goto/32 :goto_2e

    nop

    nop

    :cond_3
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    if-lez p1, :cond_4

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_23
    if-eqz v0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_1

    nop

    nop

    :goto_24
    sub-int/2addr v1, v0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iget-object v0, p0, Lfqi;->f:Lfmm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    if-gt v3, v4, :cond_6

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    sub-int/2addr v0, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_28
    invoke-static {p2, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    iget v2, p0, Lfqi;->b:I

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_2a
    if-ne v0, v2, :cond_7

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    iget-object v2, p0, Lfqi;->f:Lfmm;

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_2c
    iget v0, p0, Lfqi;->d:I

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    goto/16 :goto_f

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_2f
    iput v1, p0, Lfqi;->b:I

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-virtual {v0, p2}, Lfmm;->c(Ljava/lang/Object;)V

    goto/32 :goto_47

    nop

    nop

    :goto_31
    invoke-virtual {p1, p2}, Ljava/io/InputStream;->read([B)I

    move-result p1

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_32
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_33
    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_34
    array-length v1, p2

    nop

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

    :goto_35
    iput p1, p0, Lfqi;->b:I

    nop

    nop

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_37
    move v0, v1

    nop

    nop

    nop

    nop

    nop

    :goto_38
    goto/32 :goto_17

    nop

    nop

    :goto_39
    add-int v3, v0, v0

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_3a
    if-ge v3, v4, :cond_8

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_3b
    return p1

    nop

    nop

    nop

    :goto_3c
    goto/32 :goto_11

    nop

    nop

    :goto_3d
    iput v1, p0, Lfqi;->e:I

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_3e
    goto :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    iput p2, p0, Lfqi;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_41
    iget v4, p0, Lfqi;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_42
    const v1, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_43
    if-eq v2, v0, :cond_9

    nop

    nop

    goto/32 :goto_2e

    nop

    :cond_9
    goto/32 :goto_2b

    nop

    nop

    :goto_44
    move v4, v3

    nop

    nop

    nop

    nop

    nop

    :goto_45
    goto/32 :goto_46

    nop

    nop

    nop

    :goto_46
    const-class v3, [B

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

    nop

    :goto_47
    move-object p2, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_48
    iput v2, p0, Lfqi;->d:I

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop
.end method

.method public constructor <init>(Ljava/io/InputStream;Lfmm;)V
    .locals 5

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_0
    check-cast p1, [B

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_1
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput p1, p0, Lfqi;->d:I

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_4
    const/4 v3, 0x1

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

    :goto_5
    check-cast p1, Ljava/lang/Object;

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

    :goto_6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_7
    aput-object v0, v1, v3

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_19

    nop

    nop

    :goto_c
    new-array v1, v1, [Ljava/lang/Object;

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

    :goto_d
    const v0, 0x8

    nop

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

    :goto_e
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_f
    const/4 v1, 0x2

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_10
    const/4 p1, -0x1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-static {v3, p2, v1}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_12
    aput-object v2, v1, v4

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

    :goto_13
    const-class v0, [B

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_14
    iput-object p1, p0, Lfqi;->a:[B

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

    :goto_15
    const/4 v4, 0x0

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_16
    rem-int v0, v0, v1

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

    :goto_17
    const v1, 0x2

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

    :goto_18
    const/16 v3, 0x1f3

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

    :goto_19
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iput-object p2, p0, Lfqi;->f:Lfmm;

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_1b
    const/high16 p1, 0x10000

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method private static d()Ljava/io/IOException;
    .locals 2

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const v0, 0xe

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1
    const-string v1, "BufferedInputStream is closed"

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_2
    new-instance v0, Ljava/io/IOException;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_7

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

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

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_6
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_8
    throw v0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_b
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v1, 0xc

    nop

    goto/32 :goto_5

    nop

    nop
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    throw v0

    nop

    nop

    :goto_2
    monitor-enter p0

    nop

    :try_start_1
    iget-object v0, p0, Lfqi;->a:[B

    nop

    nop

    array-length v0, v0

    nop

    nop

    nop

    nop

    iput v0, p0, Lfqi;->c:I

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_3

    nop

    nop

    :goto_3
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public final declared-synchronized available()I
    .locals 3

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x1c

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_1

    nop

    :goto_5
    add-int/2addr v1, v0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0x14

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_8
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_9
    throw v0

    nop

    :goto_a
    goto/32 :goto_7

    nop

    nop

    :goto_b
    return v1

    nop

    nop

    :cond_1
    :try_start_0
    invoke-static {}, Lfqi;->d()Ljava/io/IOException;

    move-result-object v0

    nop

    nop

    nop

    throw v0

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_9

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_d
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    iget-object v0, p0, Lfqi;->in:Ljava/io/InputStream;

    nop

    nop

    nop

    iget-object v1, p0, Lfqi;->a:[B

    nop

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_1

    nop

    if-eqz v0, :cond_1

    nop

    iget v1, p0, Lfqi;->b:I

    nop

    nop

    nop

    iget v2, p0, Lfqi;->e:I

    nop

    sub-int/2addr v1, v2

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_5

    nop

    nop
.end method

.method public final declared-synchronized b()V
    .locals 2

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x17

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    const v1, 0xd

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_4
    throw v0

    nop

    nop

    :goto_5
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_5

    nop

    :goto_7
    goto/32 :goto_d

    nop

    nop

    :goto_8
    monitor-exit p0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    :try_start_0
    monitor-exit p0

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_c
    monitor-exit p0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_d
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    iget-object v0, p0, Lfqi;->a:[B

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_1

    nop

    nop

    iget-object v0, p0, Lfqi;->f:Lfmm;

    nop

    nop

    nop

    nop

    iget-object v1, p0, Lfqi;->a:[B

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v1}, Lfmm;->c(Ljava/lang/Object;)V

    const/4 v0, 0x0

    nop

    iput-object v0, p0, Lfqi;->a:[B

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_7

    nop

    nop

    nop
.end method

.method public final close()V
    .locals 3

    goto/32 :goto_3

    nop

    nop

    :goto_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :goto_1
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v2, p0, Lfqi;->a:[B

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0x16

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

    :goto_4
    if-nez v0, :cond_0

    nop

    goto/32 :goto_1

    nop

    nop

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

    nop

    :goto_5
    iput-object v1, p0, Lfqi;->in:Ljava/io/InputStream;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v0, p0, Lfqi;->f:Lfmm;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0x20

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_8
    const/4 v1, 0x0

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

    :goto_9
    iput-object v1, p0, Lfqi;->a:[B

    nop

    :goto_a
    goto/32 :goto_f

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v0, v2}, Lfmm;->c(Ljava/lang/Object;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_13

    nop

    nop

    :goto_f
    iget-object v0, p0, Lfqi;->in:Ljava/io/InputStream;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_10
    iget-object v0, p0, Lfqi;->a:[B

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_e

    nop

    :goto_12
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_12

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

    goto/32 :goto_b

    nop

    nop

    :goto_15
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_11

    nop

    :goto_16
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized mark(I)V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    :goto_0
    throw p1

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    monitor-exit p0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    monitor-enter p0

    nop

    nop

    nop

    :try_start_1
    iget v0, p0, Lfqi;->c:I

    nop

    nop

    nop

    nop

    nop

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    nop

    iput p1, p0, Lfqi;->c:I

    nop

    nop

    nop

    nop

    iget p1, p0, Lfqi;->e:I

    nop

    nop

    iput p1, p0, Lfqi;->d:I

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final markSupported()Z
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    :goto_1
    const/4 p0, 0x1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized read()I
    .locals 5

    goto/32 :goto_a

    nop

    nop

    :goto_0
    const v1, 0x14

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_1
    monitor-exit p0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    throw v0

    nop

    nop

    :goto_3
    goto/32 :goto_8

    nop

    nop

    :goto_4
    monitor-enter p0

    nop

    :try_start_0
    iget-object v0, p0, Lfqi;->a:[B

    nop

    nop

    nop

    nop

    nop

    iget-object v1, p0, Lfqi;->in:Ljava/io/InputStream;

    nop

    nop

    nop

    if-eqz v0, :cond_4

    nop

    if-eqz v1, :cond_4

    nop

    nop

    nop

    iget v2, p0, Lfqi;->e:I

    nop

    nop

    iget v3, p0, Lfqi;->b:I

    nop

    nop

    nop

    nop

    nop

    const/4 v4, -0x1

    nop

    nop

    nop

    nop

    if-lt v2, v3, :cond_0

    nop

    nop

    nop

    nop

    nop

    invoke-direct {p0, v1, v0}, Lfqi;->33f5b80483094659737b73d90f80a8a4m(Ljava/io/InputStream;[B)I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    if-eq v1, v4, :cond_5

    nop

    nop

    nop

    nop

    nop

    :cond_0
    iget-object v1, p0, Lfqi;->a:[B

    nop

    nop

    nop

    nop

    if-eq v0, v1, :cond_2

    nop

    nop

    nop

    iget-object v0, p0, Lfqi;->a:[B

    nop

    nop

    if-eqz v0, :cond_1

    nop

    goto :goto_5

    nop

    nop

    :cond_1
    invoke-static {}, Lfqi;->d()Ljava/io/IOException;

    move-result-object v0

    nop

    nop

    nop

    throw v0

    nop

    nop

    nop

    nop

    nop

    :cond_2
    :goto_5
    iget v1, p0, Lfqi;->b:I

    nop

    iget v2, p0, Lfqi;->e:I

    nop

    sub-int/2addr v1, v2

    nop

    nop

    nop

    nop

    if-lez v1, :cond_5

    nop

    nop

    nop

    nop

    add-int/lit8 v1, v2, 0x1

    nop

    nop

    nop

    iput v1, p0, Lfqi;->e:I

    nop

    aget-byte v0, v0, v2

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_3

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

    :cond_3
    goto/32 :goto_f

    nop

    :goto_7
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_10

    nop

    nop

    :goto_9
    and-int/lit16 v0, v0, 0xff

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_a
    const v0, 0x12

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

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_c
    return v4

    nop

    nop

    :cond_4
    :try_start_1
    invoke-static {}, Lfqi;->d()Ljava/io/IOException;

    move-result-object v0

    nop

    nop

    throw v0

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    monitor-exit p0

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_2

    nop

    nop

    :goto_d
    return v0

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_7

    nop

    nop

    :goto_e
    add-int v0, v0, v1

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

    :goto_f
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_4

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized read([BII)I
    .locals 5

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_0
    sub-int/2addr v2, v3

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

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

    :goto_3
    return p3

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_5
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_6
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/16 :goto_15

    nop

    nop

    nop

    :cond_1
    :goto_8
    goto/32 :goto_1e

    nop

    nop

    :goto_9
    if-eqz v2, :cond_2

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

    :cond_2
    goto/32 :goto_11

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

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_b
    return p0

    nop

    nop

    nop

    :goto_c
    :try_start_0
    iget-object v1, p0, Lfqi;->in:Ljava/io/InputStream;

    nop

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_10

    nop

    nop

    nop

    nop

    iget v2, p0, Lfqi;->e:I

    nop

    nop

    iget v3, p0, Lfqi;->b:I

    nop

    nop

    nop

    nop

    nop

    if-ge v2, v3, :cond_6

    nop

    sub-int/2addr v3, v2

    nop

    if-lt v3, p3, :cond_3

    nop

    move v3, p3

    nop

    :cond_3
    invoke-static {v0, v2, p1, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Lfqi;->e:I

    nop

    nop

    nop

    add-int/2addr v2, v3

    nop

    iput v2, p0, Lfqi;->e:I

    nop

    nop

    nop

    nop

    if-eq v3, p3, :cond_e

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v2

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_2a

    nop

    nop

    :goto_d
    sub-int/2addr p3, v2

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_e
    if-eqz p3, :cond_4

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    sub-int/2addr p3, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_10
    if-eqz v4, :cond_5

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_11
    monitor-exit p0

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
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    iget-object v0, p0, Lfqi;->a:[B

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    return v3

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_14
    move v2, p3

    nop

    nop

    :goto_15
    :try_start_2
    iget v3, p0, Lfqi;->d:I

    nop

    nop

    nop

    nop

    const/4 v4, -0x1

    nop

    nop

    nop

    nop

    nop

    if-ne v3, v4, :cond_7

    nop

    nop

    nop

    array-length v3, v0

    nop

    if-lt v2, v3, :cond_7

    nop

    nop

    nop

    invoke-virtual {v1, p1, p2, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    nop

    nop

    if-ne v3, v4, :cond_b

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_8

    nop

    nop

    nop

    :cond_7
    invoke-direct {p0, v1, v0}, Lfqi;->33f5b80483094659737b73d90f80a8a4m(Ljava/io/InputStream;[B)I

    move-result v3

    nop

    if-eq v3, v4, :cond_1

    nop

    nop

    iget-object v3, p0, Lfqi;->a:[B

    nop

    nop

    if-eq v0, v3, :cond_9

    nop

    nop

    nop

    nop

    iget-object v0, p0, Lfqi;->a:[B

    nop

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_8

    nop

    goto :goto_16

    nop

    :cond_8
    invoke-static {}, Lfqi;->d()Ljava/io/IOException;

    move-result-object p1

    nop

    nop

    nop

    throw p1

    nop

    nop

    nop

    :cond_9
    :goto_16
    iget v3, p0, Lfqi;->b:I

    nop

    nop

    nop

    nop

    nop

    iget v4, p0, Lfqi;->e:I

    nop

    nop

    sub-int/2addr v3, v4

    nop

    if-lt v3, v2, :cond_a

    nop

    nop

    move v3, v2

    nop

    :cond_a
    invoke-static {v0, v4, p1, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v4, p0, Lfqi;->e:I

    nop

    nop

    nop

    nop

    nop

    add-int/2addr v4, v3

    nop

    nop

    nop

    nop

    nop

    iput v4, p0, Lfqi;->e:I

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_b
    goto/32 :goto_0

    nop

    nop

    :goto_17
    return p3

    nop

    :goto_18
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v4

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const v1, 0x15

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_24

    nop

    :goto_1b
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_1c
    return v4

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    if-eq v2, p3, :cond_c

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const/4 p0, 0x0

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

    :goto_20
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_21
    goto :goto_29

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_2d

    nop

    nop

    :goto_23
    throw p1

    nop

    :goto_24
    goto/32 :goto_1

    nop

    nop

    :goto_25
    monitor-exit p0

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

    :goto_26
    add-int/2addr p2, v3

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_27
    if-lez v0, :cond_d

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_1a

    nop

    :goto_28
    goto/16 :goto_15

    nop

    nop

    nop

    nop

    :cond_e
    :goto_29
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_2a
    if-eqz v2, :cond_f

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    sub-int v2, p3, v3

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_2c
    monitor-exit p0

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_2d
    add-int/2addr p2, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_2e
    return p3

    nop

    nop

    nop

    nop

    nop

    :cond_10
    :try_start_4
    invoke-static {}, Lfqi;->d()Ljava/io/IOException;

    move-result-object p1

    nop

    nop

    nop

    nop

    throw p1

    nop

    nop

    :goto_2f
    invoke-static {}, Lfqi;->d()Ljava/io/IOException;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    throw p1

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    monitor-exit p0

    nop

    nop

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_30
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_31
    const v0, 0x1a

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop
.end method

.method public final declared-synchronized reset()V
    .locals 5

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_0
    throw v0

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_2
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v1, p0, Lfqi;->a:[B

    nop

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_1

    nop

    nop

    iget v1, p0, Lfqi;->d:I

    nop

    nop

    nop

    nop

    nop

    const/4 v2, -0x1

    nop

    nop

    nop

    if-eq v1, v2, :cond_0

    nop

    nop

    nop

    nop

    iput v1, p0, Lfqi;->e:I

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0x6

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    :cond_0
    :try_start_1
    new-instance v1, Lfqh;

    nop

    nop

    nop

    iget v2, p0, Lfqi;->e:I

    nop

    nop

    nop

    iget v3, p0, Lfqi;->c:I

    nop

    new-instance v4, Ljava/lang/StringBuilder;

    nop

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " markLimit: "

    nop

    nop

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    invoke-direct {v1, v0}, Lfqh;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    nop

    :cond_1
    new-instance v0, Ljava/io/IOException;

    nop

    nop

    nop

    const-string v1, "Stream is closed"

    nop

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    monitor-exit p0

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_6
    monitor-exit p0

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
    const-string v0, "Mark has been invalidated, pos: "

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

    :goto_8
    goto/32 :goto_1

    nop

    :goto_9
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0x19

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

    :goto_b
    if-lez v0, :cond_2

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

    :cond_2
    goto/32 :goto_8

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_9

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized skip(J)J
    .locals 10

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_0
    return-wide p1

    nop

    nop

    :cond_0
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    throw p1

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_5
    sub-long/2addr v8, v2

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-wide v8

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_8
    monitor-exit p0

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    add-long/2addr v8, p1

    nop

    nop

    :try_start_0
    iput v0, p0, Lfqi;->e:I

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_a
    if-eq v0, v5, :cond_2

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_8

    nop

    nop

    :goto_b
    return-wide v1

    nop

    nop

    nop

    nop

    :goto_c
    :try_start_1
    iget-object v0, p0, Lfqi;->a:[B

    nop

    nop

    nop

    if-eqz v0, :cond_7

    nop

    nop

    nop

    iget-object v3, p0, Lfqi;->in:Ljava/io/InputStream;

    nop

    if-eqz v3, :cond_6

    nop

    nop

    nop

    nop

    nop

    iget v4, p0, Lfqi;->b:I

    nop

    nop

    nop

    nop

    nop

    iget v5, p0, Lfqi;->e:I

    nop

    nop

    nop

    nop

    nop

    int-to-long v6, v5

    nop

    nop

    nop

    nop

    nop

    sub-int v5, v4, v5

    nop

    nop

    nop

    int-to-long v8, v5

    nop

    nop

    nop

    nop

    nop

    cmp-long v5, v8, p1

    nop

    nop

    nop

    nop

    nop

    if-ltz v5, :cond_4

    nop

    nop

    nop

    nop

    add-long/2addr v6, p1

    nop

    nop

    long-to-int v0, v6

    nop

    nop

    nop

    iput v0, p0, Lfqi;->e:I

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_1d

    nop

    nop

    :goto_d
    if-ltz v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    :cond_3
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_e
    const v0, 0x1d

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

    :goto_f
    return-wide p1

    nop

    :cond_4
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-lez v0, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_1

    nop

    :goto_11
    cmp-long v0, p1, v0

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_12
    return-wide v8

    nop

    nop

    nop

    nop

    :cond_6
    :try_start_2
    invoke-static {}, Lfqi;->d()Ljava/io/IOException;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    throw p1

    nop

    :cond_7
    invoke-static {}, Lfqi;->d()Ljava/io/IOException;

    move-result-object p1

    nop

    nop

    throw p1

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_13
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_14
    int-to-long p1, v0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_15
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

    nop

    nop

    :goto_16
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_17
    return-wide v8

    nop

    nop

    nop

    nop

    :goto_18
    :try_start_3
    iget v0, p0, Lfqi;->b:I

    nop

    nop

    iget v1, p0, Lfqi;->e:I

    nop

    int-to-long v2, v1

    nop

    nop

    nop

    nop

    nop

    sub-int v1, v0, v1

    nop

    nop

    nop

    nop

    nop

    sub-long v4, p1, v8

    nop

    int-to-long v6, v1

    nop

    nop

    nop

    nop

    cmp-long v1, v6, v4

    nop

    nop

    nop

    if-ltz v1, :cond_0

    nop

    add-long/2addr v2, p1

    nop

    nop

    nop

    nop

    nop

    sub-long/2addr v2, v8

    nop

    nop

    nop

    nop

    nop

    long-to-int v0, v2

    nop

    nop

    nop

    iput v0, p0, Lfqi;->e:I

    nop

    nop

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const-wide/16 v1, 0x0

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

    :goto_1a
    monitor-exit p0

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

    :goto_1b
    add-int v0, v0, v1

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_1c
    int-to-long v8, v4

    nop

    nop

    :try_start_4
    iput v4, p0, Lfqi;->e:I

    nop

    nop

    nop

    nop

    nop

    iget v4, p0, Lfqi;->d:I

    nop

    nop

    nop

    sub-long/2addr v8, v6

    nop

    const/4 v5, -0x1

    nop

    nop

    if-eq v4, v5, :cond_1

    nop

    nop

    iget v4, p0, Lfqi;->c:I

    nop

    nop

    nop

    int-to-long v6, v4

    nop

    nop

    nop

    nop

    nop

    cmp-long v4, p1, v6

    nop

    nop

    if-gtz v4, :cond_1

    nop

    nop

    nop

    invoke-direct {p0, v3, v0}, Lfqi;->33f5b80483094659737b73d90f80a8a4m(Ljava/io/InputStream;[B)I

    move-result v0

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1d
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_1e
    monitor-enter p0

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_1f
    sub-long/2addr p1, v8

    nop

    nop

    :try_start_5
    invoke-virtual {v3, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide p1

    nop

    nop

    nop

    nop

    cmp-long v0, p1, v1

    nop

    if-lez v0, :cond_8

    nop

    nop

    nop

    nop

    nop

    iput v5, p0, Lfqi;->d:I

    nop

    nop

    nop

    nop
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_8
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    const-wide/16 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_21
    add-long/2addr v8, p1

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_22
    monitor-exit p0

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

    :goto_23
    const v1, 0xf

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop
.end method

.method public final synthetic transferTo(Ljava/io/OutputStream;)J
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-wide p0

    nop

    :goto_1
    invoke-static {p0, p1}, Lj$/io/DesugarInputStream;->transferTo(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    move-result-wide p0

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
.end method

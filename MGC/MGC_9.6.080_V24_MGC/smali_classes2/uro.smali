.class public final Luro;
.super Ljava/io/InputStream;
.source "PG"

# interfaces
.implements Lj$/io/InputStreamRetargetInterface;


# instance fields
.field final synthetic a:Lurp;


# direct methods
.method public constructor <init>(Lurp;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Luro;->a:Lurp;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final available()I
    .locals 4

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Luro;->a:Lurp;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_3
    iget-boolean v0, p0, Lurp;->c:Z

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_1

    nop

    nop

    :goto_7
    const-string v0, "closed"

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

    :goto_8
    iget-object p0, p0, Lurp;->b:Lurh;

    nop

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

    :goto_9
    const-wide/32 v2, 0x7fffffff

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0x10

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_b
    new-instance p0, Ljava/io/IOException;

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

    :goto_c
    iget-wide v0, p0, Lurh;->b:J

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0x1e

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_e
    long-to-int p0, v0

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    return p0

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_11
    throw p0

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_13

    nop

    nop

    :goto_13
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_14
    if-eqz v0, :cond_0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_15
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_5

    nop

    :goto_16
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop
.end method

.method public final close()V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lurp;->close()V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Luro;->a:Lurp;

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final read()I
    .locals 6

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_0
    cmp-long v0, v0, v2

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1
    iget-object v1, v0, Lurp;->b:Lurh;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return p0

    nop

    :goto_3
    goto/32 :goto_23

    nop

    nop

    :goto_4
    iget-object p0, p0, Lurp;->b:Lurh;

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
    goto/32 :goto_20

    nop

    nop

    :goto_6
    return p0

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0}, Lurh;->b()B

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_a
    if-eqz v2, :cond_0

    nop

    goto/32 :goto_3

    nop

    :cond_0
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v0, p0, Luro;->a:Lurp;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_c
    if-eqz v0, :cond_1

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

    :cond_1
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const-wide/16 v2, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_f
    cmp-long v2, v2, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_10
    const-wide/16 v4, 0x0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_11
    const/4 p0, -0x1

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

    :goto_12
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_13
    invoke-interface {v0, v1, v2, v3}, Lurt;->e(Lurh;J)J

    move-result-wide v0

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_14
    iget-object v0, v0, Lurp;->a:Lurt;

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
    iget-wide v2, v1, Lurh;->b:J

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_16
    const-string v0, "closed"

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const-wide/16 v2, 0x2000

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

    :goto_18
    if-eqz v1, :cond_2

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

    :cond_2
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_19
    new-instance p0, Ljava/io/IOException;

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
    and-int/lit16 p0, p0, 0xff

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1b
    const v0, 0x12

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_1c
    iget-boolean v1, v0, Lurp;->c:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_1d
    if-lez v0, :cond_3

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1f

    nop

    :goto_1e
    const v1, 0xe

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_1f
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    throw p0

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_23
    iget-object p0, p0, Luro;->a:Lurp;

    nop

    goto/32 :goto_4

    nop

    nop
.end method

.method public final read([BII)I
    .locals 7

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_1c

    nop

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

    nop

    :goto_2
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_4
    int-to-long v5, p3

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

    :goto_5
    if-eqz v0, :cond_0

    nop

    goto/32 :goto_2

    nop

    nop

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

    :goto_6
    int-to-long v3, p2

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v0, p0, Luro;->a:Lurp;

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_9
    const-wide/16 v2, -0x1

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

    :goto_a
    throw p0

    nop

    nop

    :goto_b
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_c
    const-wide/16 v2, 0x2000

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    array-length v0, p1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_e
    int-to-long v1, v0

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-static/range {v1 .. v6}, Lucu;->D(JJJ)V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-eqz v0, :cond_1

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const/4 p0, -0x1

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
    cmp-long v2, v2, v4

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_13
    const-wide/16 v4, 0x0

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-object p0, p0, Lurp;->b:Lurh;

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    cmp-long v0, v0, v2

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

    :goto_17
    return p0

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    add-int v0, v0, v1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1a
    iget-wide v2, v1, Lurh;->b:J

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object p0, p0, Luro;->a:Lurp;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_1e
    const v1, 0xe

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1b

    nop

    :goto_20
    invoke-virtual {p0, p1, p2, p3}, Lurh;->c([BII)I

    move-result p0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_21
    if-eqz v2, :cond_3

    nop

    nop

    goto/32 :goto_18

    nop

    :cond_3
    goto/32 :goto_29

    nop

    nop

    :goto_22
    iget-object v0, p0, Luro;->a:Lurp;

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
    invoke-interface {v0, v1, v2, v3}, Lurt;->e(Lurh;J)J

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

    nop

    nop

    nop

    :goto_24
    const-string p1, "closed"

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_25
    iget-object v1, v0, Lurp;->b:Lurh;

    nop

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

    :goto_26
    iget-boolean v0, v0, Lurp;->c:Z

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

    :goto_27
    new-instance p0, Ljava/io/IOException;

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_28
    const v0, 0xa

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_29
    iget-object v0, v0, Lurp;->a:Lurt;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const-string v0, ".inputStream()"

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Luro;->a:Lurp;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_5
    return-object p0

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

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

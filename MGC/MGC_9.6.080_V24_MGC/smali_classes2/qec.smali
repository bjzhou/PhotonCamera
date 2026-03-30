.class public final Lqec;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Lrss;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v0}, Lsfj;->d(Ljava/lang/String;)Lsel;

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    const-string v0, "Mp4BoxFileSlicer"

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Lrss;)V
    .locals 0

    goto/32 :goto_2

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
    iput-object p1, p0, Lqec;->a:Lrss;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static b(Ljava/io/FileInputStream;)Lqec;
    .locals 8

    goto/32 :goto_14

    nop

    nop

    :goto_0
    move-object v1, v7

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    goto/32 :goto_1c

    nop

    :cond_0
    goto/32 :goto_1b

    nop

    :goto_2
    invoke-direct/range {v1 .. v6}, Lqee;-><init>(Ljava/io/FileInputStream;JJ)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_3
    new-instance v0, Lqec;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_4
    cmp-long v0, v5, v0

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

    :goto_5
    const-wide/16 v3, 0x0

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

    :goto_6
    invoke-static {v0}, Lj$/nio/channels/DesugarChannels;->convertMaybeLegacyFileChannelFromLibrary(Ljava/nio/channels/FileChannel;)Ljava/nio/channels/FileChannel;

    move-result-object v0

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

    :goto_7
    invoke-static {v7}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object p0

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_8
    const-wide/16 v0, 0x0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v5

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_b
    return-object p0

    nop

    nop

    :goto_c
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_d
    const v1, 0x1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

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

    :goto_f
    new-instance p0, Lqec;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_1c

    nop

    :goto_11
    new-instance v7, Lqee;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-direct {v0, p0}, Lqec;-><init>(Lrss;)V

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_13
    sget-object v0, Lrsa;->a:Lrsa;

    nop

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

    :goto_14
    const v0, 0x10

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_15
    invoke-direct {p0, v0}, Lqec;-><init>(Lrss;)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_16
    if-ltz v0, :cond_1

    nop

    nop

    goto/32 :goto_c

    nop

    :cond_1
    goto/32 :goto_f

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

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    move-object v2, p0

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

    :goto_1b
    goto/32 :goto_19

    nop

    nop

    :goto_1c
    goto/32 :goto_a

    nop

    nop

    nop
.end method

.method public static c(Lqee;)Lqec;
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p0}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    new-instance v0, Lqec;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {v0, p0}, Lqec;-><init>(Lrss;)V

    goto/32 :goto_0

    nop

    nop
.end method


# virtual methods
.method public final a()Lqec;
    .locals 7

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object p0

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_1
    throw v0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-object v0

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_30

    nop

    nop

    nop

    :goto_5
    invoke-static {p0}, Lqoe;->N(Lqee;)Lqed;

    move-result-object v1

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_6
    iget-boolean v1, v1, Lqed;->b:Z

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_7
    goto :goto_11

    nop

    nop

    :goto_8
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_9
    cmp-long p0, v3, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-ne v2, v1, :cond_0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_b
    return-object p0

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_d
    sget-object p0, Lrsa;->a:Lrsa;

    nop

    nop

    :goto_e
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p0}, Lqee;->b()Lqee;

    move-result-object v2

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

    :goto_10
    const/16 v1, 0x10

    nop

    nop

    :goto_11
    goto/32 :goto_f

    nop

    nop

    :goto_12
    goto :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_14
    iget-object p0, p0, Lqec;->a:Lrss;

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const/4 v2, 0x1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-static {v2, v1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_17
    iget-wide v2, v1, Lqed;->a:J

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

    :goto_18
    invoke-virtual {p0}, Lqee;->a()J

    move-result-wide v4

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_19
    filled-new-array {p0, v1}, [Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_1a
    add-int v0, v0, v1

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_1b
    sget-object v0, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_1c
    cmp-long v2, v2, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {p0}, Lrss;->c()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_20
    invoke-virtual {p0}, Lrss;->h()Z

    move-result v0

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_21
    iget-wide v5, v2, Lqee;->e:J

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    add-long/2addr v3, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_23
    iget-wide v3, p0, Lqee;->d:J

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_24
    new-instance v0, Lqec;

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_25
    const/16 v1, 0x8

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_27
    const v1, 0x14

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_28
    invoke-virtual {v2, v3, v4}, Lqee;->e(J)V

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_29
    if-lez p0, :cond_1

    nop

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

    :cond_1
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_2a
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :cond_2
    goto/32 :goto_1d

    nop

    :goto_2b
    invoke-virtual {p0}, Lqee;->a()J

    move-result-wide v3

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    if-eqz v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    check-cast p0, Lqee;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2e
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    const v0, 0x15

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_30
    new-instance v0, Lqeb;

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-direct {p0, v0}, Lqec;-><init>(Lrss;)V

    goto/32 :goto_b

    nop

    nop

    :goto_32
    iget-wide v3, v1, Lqed;->a:J

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

    :goto_33
    int-to-long v5, v1

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_34
    invoke-virtual {v2}, Lqee;->c()Lqee;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_35
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_36
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_37
    goto/32 :goto_1e

    nop

    :goto_38
    invoke-direct {v0, p0}, Lqeb;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    new-instance p0, Lqec;

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_3a
    const-string v1, "contents failed - argument has length %s but claims length of %s"

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_3b
    if-eqz v2, :cond_4

    nop

    goto/32 :goto_4

    nop

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

    :goto_3c
    invoke-direct {v0, p0}, Lqec;-><init>(Lrss;)V

    goto/32 :goto_3

    nop

    nop

    nop
.end method

.method public final d(Ljava/lang/String;)Lqec;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Lqec;->e(Ljava/lang/String;)Lqec;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lqec;->a()Lqec;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    return-object p0

    nop
.end method

.method public final e(Ljava/lang/String;)Lqec;
    .locals 3

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_4
    const/4 v0, 0x0

    nop

    nop

    :goto_5
    goto/32 :goto_26

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_2

    nop

    :goto_8
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_9
    new-instance p0, Lqec;

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_a
    const v1, 0xf

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_b
    if-eqz v0, :cond_1

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1a

    nop

    nop

    :goto_c
    sget-object p1, Lrsa;->a:Lrsa;

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p0}, Lrss;->c()Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_e
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    :cond_2
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p0}, Lrss;->h()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_10
    invoke-direct {p0, p1}, Lqec;-><init>(Lrss;)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_11
    return-object p0

    nop

    nop

    :goto_12
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_13
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-static {v1}, Lqoe;->P(Lqee;)[B

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_15
    invoke-static {p1}, Lqeg;->a(Ljava/lang/String;)[B

    move-result-object p1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_16
    move-object v0, v1

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    check-cast p0, Lqee;

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_18
    if-eqz v0, :cond_3

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

    nop

    :cond_3
    goto/32 :goto_16

    nop

    nop

    :goto_19
    const v0, 0x1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto :goto_12

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1c
    if-nez v1, :cond_4

    nop

    nop

    nop

    goto/32 :goto_1f

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

    nop

    nop

    :goto_1d
    invoke-direct {p0, p1}, Lqec;-><init>(Lrss;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1e
    goto/16 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_8

    nop

    :goto_21
    invoke-static {v0}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_22
    invoke-virtual {p0}, Lqee;->b()Lqee;

    move-result-object p0

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    if-nez v2, :cond_5

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_24
    new-instance p0, Lqec;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_25
    iget-object p0, p0, Lqec;->a:Lrss;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_26
    invoke-static {p0}, Lqoe;->O(Lqee;)Lqee;

    move-result-object v1

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final f()Lqee;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lqec;->a:Lrss;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Lrss;->c()Ljava/lang/Object;

    move-result-object p0

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

    :goto_3
    check-cast p0, Lqee;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

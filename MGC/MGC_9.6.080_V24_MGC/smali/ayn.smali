.class public final Layn;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:Ldhe;

.field public b:Ldij;

.field public c:Ldko;

.field public d:I

.field public e:Z

.field public f:I

.field public g:Ldpb;

.field public h:Ldhn;

.field public i:Ldpq;

.field public j:Ldif;

.field private k:J


# direct methods
.method private final 23ce148e54b083367f51e25c7971761em()V
    .locals 1

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

    :goto_1
    iput-object v0, p0, Layn;->h:Ldhn;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    iput-object v0, p0, Layn;->j:Ldif;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public synthetic constructor <init>(Ldhe;Ldij;Ldko;IZI)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    iput-object p2, p0, Layn;->b:Ldij;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2
    iput-boolean p5, p0, Layn;->e:Z

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_3
    iput p4, p0, Layn;->d:I

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    :goto_5
    iput p6, p0, Layn;->f:I

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_6
    iput-object p1, p0, Layn;->a:Ldhe;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_7
    sget-wide p1, Layl;->a:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_8
    iput-wide p1, p0, Layn;->k:J

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_9
    iput-object p3, p0, Layn;->c:Ldko;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()Ldif;
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_1
    if-nez p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    throw p0

    nop

    nop

    nop

    nop

    :goto_4
    iget-object p0, p0, Layn;->j:Ldif;

    nop

    nop

    goto/32 :goto_1

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

    :goto_6
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const-string v0, "You must call layoutWithConstraints first"

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
.end method

.method public final b(Ldpq;JLdhk;)Ldif;
    .locals 16

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-wide v8, 0xffffffffL

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

    :goto_1
    iget v3, v1, Ldhk;->c:F

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_2
    const/16 v2, 0x20

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_3
    move-object/from16 v12, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_4
    move-object/from16 v1, p4

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_5
    invoke-static {v2}, Layi;->a(F)I

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_6
    and-long/2addr v6, v8

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v6, v0, Layn;->b:Ldij;

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_8
    move-object/from16 v0, p0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v11, v0, Layn;->g:Ldpb;

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v5, v0, Layn;->a:Ldhe;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_c
    move-object v4, v14

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_d
    new-instance v3, Ldif;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget v10, v0, Layn;->d:I

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_11
    invoke-direct/range {v4 .. v15}, Ldie;-><init>(Ldhe;Ldij;Ljava/util/List;IZILdpb;Ldpq;Ldko;J)V

    goto/32 :goto_5

    nop

    nop

    :goto_12
    add-int v0, v0, v1

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

    :goto_13
    invoke-static {v6, v7, v4, v5}, Ldoz;->e(JJ)J

    move-result-wide v4

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v13, v0, Layn;->c:Ldko;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_15
    const v1, 0x1c

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

    nop

    :goto_16
    const v0, 0xc

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_17
    move-object v0, v14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-static {v2}, Layi;->a(F)I

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_19
    iget v8, v0, Layn;->f:I

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

    :goto_1a
    iget-boolean v9, v0, Layn;->e:Z

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_1b
    or-long/2addr v4, v6

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-direct {v3, v0, v1, v4, v5}, Ldif;-><init>(Ldie;Ldhk;J)V

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget v2, v1, Ldhk;->d:F

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

    :goto_1e
    shl-long/2addr v4, v2

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v2}, Ldhn;->a()F

    move-result v2

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_20
    int-to-long v6, v2

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_21
    goto/32 :goto_28

    nop

    :goto_22
    goto/32 :goto_8

    nop

    nop

    :goto_23
    iget-object v2, v1, Ldhk;->a:Ldhn;

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_24
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :cond_0
    goto/32 :goto_21

    nop

    :goto_25
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_14

    nop

    nop

    :goto_26
    new-instance v14, Ldie;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_27
    return-object v3

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    int-to-long v4, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_2a
    move-wide/from16 v6, p2

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_2b
    move-wide/from16 v14, p2

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_2c
    sget-object v7, Ltyw;->a:Ltyw;

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final c(Ldpb;)V
    .locals 5

    goto/32 :goto_12

    nop

    nop

    :goto_0
    invoke-direct {p0}, Layn;->23ce148e54b083367f51e25c7971761em()V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1
    if-nez p1, :cond_0

    nop

    nop

    goto/32 :goto_1c

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    :goto_2
    iget-wide v3, p0, Layn;->k:J

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-wide v1, p0, Layn;->k:J

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_19

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_11

    nop

    nop

    :goto_7
    goto/16 :goto_20

    nop

    nop

    :goto_8
    goto/32 :goto_1f

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-nez p1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_b
    if-eqz v0, :cond_3

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

    :cond_3
    goto/32 :goto_e

    nop

    nop

    :goto_c
    if-eqz v0, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    :cond_4
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iput-object p1, p0, Layn;->g:Ldpb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_e
    iput-object p1, p0, Layn;->g:Ldpb;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_10
    iput-wide v1, p0, Layn;->k:J

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_11
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const v0, 0x4

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const v1, 0xb

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_14
    return-void

    nop

    nop

    :goto_15
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_16
    invoke-static {v3, v4, v1, v2}, La;->q(JJ)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_17
    goto :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_1b

    nop

    nop

    :goto_19
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_1b
    return-void

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object v0, p0, Layn;->g:Ldpb;

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

    :goto_1e
    invoke-static {p1}, Layl;->a(Ldpb;)J

    move-result-wide v1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    sget-wide v1, Layl;->a:J

    nop

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
.end method

.method public final d(Ldhe;Ldij;Ldko;IZI)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    iput-object p3, p0, Layn;->c:Ldko;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    iput p6, p0, Layn;->f:I

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

    :goto_3
    iput-object p2, p0, Layn;->b:Ldij;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p1, p0, Layn;->a:Ldhe;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {p0}, Layn;->23ce148e54b083367f51e25c7971761em()V

    goto/32 :goto_1

    nop

    nop

    :goto_6
    iput p4, p0, Layn;->d:I

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

    :goto_7
    iput-boolean p5, p0, Layn;->e:Z

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method

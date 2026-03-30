.class public final Lgcb;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Lcom/google/googlex/gcam/InterleavedImageU8;

.field public final b:Lcom/google/googlex/gcam/ShotMetadata;

.field public final c:Z

.field public final d:Ljava/lang/String;

.field public final e:Lj$/util/Optional;

.field public final f:Lj$/util/Optional;

.field public final g:Lj$/util/Optional;

.field public final h:Llxc;

.field public final i:Lijd;

.field public final j:Llko;


# direct methods
.method public constructor <init>()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x0

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

    :goto_1
    throw p0

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Lcom/google/googlex/gcam/InterleavedImageU8;Lcom/google/googlex/gcam/ShotMetadata;Lijd;Llko;ZLjava/lang/String;Lj$/util/Optional;Lj$/util/Optional;Lj$/util/Optional;Llxc;)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    iput-object p3, p0, Lgcb;->i:Lijd;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_1
    iput-object p7, p0, Lgcb;->e:Lj$/util/Optional;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    iput-object p6, p0, Lgcb;->d:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p2, p0, Lgcb;->b:Lcom/google/googlex/gcam/ShotMetadata;

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

    :goto_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p8, p0, Lgcb;->f:Lj$/util/Optional;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_6
    iput-object p10, p0, Lgcb;->h:Llxc;

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

    nop

    :goto_7
    return-void

    nop

    :goto_8
    iput-boolean p5, p0, Lgcb;->c:Z

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

    :goto_9
    iput-object p9, p0, Lgcb;->g:Lj$/util/Optional;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_a
    iput-object p1, p0, Lgcb;->a:Lcom/google/googlex/gcam/InterleavedImageU8;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_b
    iput-object p4, p0, Lgcb;->j:Llko;

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
.end method

.method public static a()Lnew;
    .locals 2

    goto/32 :goto_2

    nop

    nop

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

    goto/32 :goto_3

    nop

    nop

    :goto_1
    sget-object v1, Lidb;->u:Lidb;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0xf

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v0, v1}, Lnew;->m(Z)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0x6

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_6
    goto/32 :goto_11

    nop

    nop

    :goto_7
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iput-object v1, v0, Lnew;->b:Ljava/lang/String;

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

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_c
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    new-instance v0, Lnew;

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

    nop

    :goto_e
    iput-object v1, v0, Lnew;->a:Ljava/lang/Object;

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

    :goto_f
    invoke-static {v1}, Lj$/util/Optional;->of(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_10
    return-object v0

    nop

    nop

    :goto_11
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const-string v1, ""

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

    :goto_13
    invoke-direct {v0, v1, v1}, Lnew;-><init>([B[B)V

    goto/32 :goto_0

    nop

    nop

    nop
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v3, p1, Lgcb;->i:Lijd;

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_3
    iget-object v1, p0, Lgcb;->e:Lj$/util/Optional;

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_4
    iget-object v3, p1, Lgcb;->f:Lj$/util/Optional;

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_5
    if-nez v1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_37

    nop

    nop

    :goto_6
    const v0, 0x17

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

    :goto_7
    iget-object v3, p1, Lgcb;->b:Lcom/google/googlex/gcam/ShotMetadata;

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

    :goto_8
    iget-object v1, p0, Lgcb;->i:Lijd;

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

    :goto_9
    iget-object v1, p0, Lgcb;->j:Llko;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v3, p1, Lgcb;->a:Lcom/google/googlex/gcam/InterleavedImageU8;

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-eq v1, v3, :cond_1

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
    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_c
    iget-object v3, p1, Lgcb;->d:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_d
    iget-object v1, p0, Lgcb;->g:Lj$/util/Optional;

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

    :goto_e
    const v1, 0x20

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v3, p1, Lgcb;->j:Llko;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_12
    if-nez v1, :cond_2

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_31

    nop

    nop

    :goto_13
    iget-object v1, p0, Lgcb;->f:Lj$/util/Optional;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_15
    if-nez v1, :cond_3

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_36

    nop

    nop

    :goto_18
    goto/32 :goto_2e

    nop

    nop

    :goto_19
    iget-object v3, p1, Lgcb;->e:Lj$/util/Optional;

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_1a
    if-lez v0, :cond_4

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

    :cond_4
    goto/32 :goto_17

    nop

    :goto_1b
    invoke-virtual {v1, v3}, Lj$/util/Optional;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    instance-of v1, p1, Lgcb;

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

    :goto_1d
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

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

    nop

    :goto_1e
    if-nez v1, :cond_5

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_2a

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

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iget-boolean v3, p1, Lgcb;->c:Z

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_21
    if-nez v1, :cond_6

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_32

    nop

    nop

    :goto_22
    if-nez v1, :cond_7

    nop

    goto/32 :goto_1

    nop

    :cond_7
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    return v0

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iget-object v3, p1, Lgcb;->g:Lj$/util/Optional;

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_26
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_27
    if-nez v1, :cond_8

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

    :cond_8
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_18

    nop

    :goto_29
    if-nez v1, :cond_9

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_9
    goto/32 :goto_13

    nop

    nop

    :goto_2a
    iget-boolean v1, p0, Lgcb;->c:Z

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_2b
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {v1, v3}, Lijd;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    if-eq p1, p0, :cond_a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :cond_a
    goto/32 :goto_23

    nop

    nop

    :goto_2e
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {v1, v3}, Lj$/util/Optional;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_30
    iget-object v1, p0, Lgcb;->a:Lcom/google/googlex/gcam/InterleavedImageU8;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_31
    check-cast p1, Lgcb;

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_32
    iget-object v1, p0, Lgcb;->b:Lcom/google/googlex/gcam/ShotMetadata;

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

    nop

    :goto_33
    invoke-virtual {v1, v3}, Lj$/util/Optional;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_34
    iget-object p1, p1, Lgcb;->h:Llxc;

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

    :goto_35
    return v2

    nop

    :goto_36
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_37
    iget-object p0, p0, Lgcb;->h:Llxc;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_38
    if-nez p0, :cond_b

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    if-nez v1, :cond_c

    nop

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

    :cond_c
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_3a
    iget-object v1, p0, Lgcb;->d:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop
.end method

.method public final hashCode()I
    .locals 4

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_0
    mul-int/2addr v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_1
    xor-int/2addr v0, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v2, p0, Lgcb;->j:Llko;

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

    nop

    nop

    :goto_3
    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_4
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

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
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

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

    :goto_6
    xor-int/2addr v0, v2

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_7
    xor-int/2addr v0, v2

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    mul-int/2addr v0, v1

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v2}, Lj$/util/Optional;->hashCode()I

    move-result v2

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

    :goto_a
    xor-int/2addr v0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-ne v2, v3, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_c
    xor-int/2addr v0, v2

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_d
    const/16 v2, 0x4d5

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

    nop

    :goto_e
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

    :goto_f
    mul-int/2addr v0, v1

    nop

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

    :goto_10
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :cond_1
    goto/32 :goto_24

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_12
    iget-object v0, p0, Lgcb;->a:Lcom/google/googlex/gcam/InterleavedImageU8;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v2}, Lijd;->hashCode()I

    move-result v2

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_14
    return p0

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_16
    xor-int/2addr p0, v0

    nop

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

    :goto_17
    invoke-virtual {v2}, Lj$/util/Optional;->hashCode()I

    move-result v2

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_18
    iget-object v2, p0, Lgcb;->f:Lj$/util/Optional;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_19
    mul-int/2addr v0, v1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const v1, 0xf4243

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

    :goto_1b
    xor-int/2addr v0, v1

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_1c
    const v1, 0xc

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v2}, Lj$/util/Optional;->hashCode()I

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_1e
    xor-int/2addr v0, v2

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iget-object p0, p0, Lgcb;->h:Llxc;

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_21
    iget-object v2, p0, Lgcb;->e:Lj$/util/Optional;

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_22
    iget-boolean v3, p0, Lgcb;->c:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_23
    const v0, 0x15

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_26
    xor-int/2addr v0, v2

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_27
    iget-object v2, p0, Lgcb;->d:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_28
    mul-int/2addr v0, v1

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_29
    mul-int/2addr v0, v1

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

    :goto_2a
    iget-object v2, p0, Lgcb;->b:Lcom/google/googlex/gcam/ShotMetadata;

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_2b
    goto :goto_2f

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    xor-int/2addr v0, v2

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    const/16 v2, 0x4cf

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_25

    nop

    :goto_31
    iget-object v2, p0, Lgcb;->g:Lj$/util/Optional;

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_32
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    nop

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

    :goto_33
    mul-int/2addr v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_34
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

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

    :goto_35
    mul-int/2addr v0, v1

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_36
    iget-object v2, p0, Lgcb;->i:Lijd;

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_37
    mul-int/2addr v0, v1

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 10

    goto/32 :goto_1

    nop

    nop

    :goto_0
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0x2

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_7

    nop

    nop

    :goto_5
    iget-object v1, p0, Lgcb;->g:Lj$/util/Optional;

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

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

    :goto_a
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_22

    nop

    nop

    :goto_c
    iget-object p0, p0, Lgcb;->d:Ljava/lang/String;

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
    new-instance v8, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_e
    iget-object v6, p0, Lgcb;->b:Lcom/google/googlex/gcam/ShotMetadata;

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    return-object p0

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_14
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget-object v5, p0, Lgcb;->i:Lijd;

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

    :goto_16
    iget-boolean v4, p0, Lgcb;->c:Z

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_17
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_18
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1c

    nop

    nop

    :goto_19
    iget-object v0, p0, Lgcb;->h:Llxc;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const-string p0, "}"

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_1d
    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_10

    nop

    nop

    :goto_1f
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2d

    nop

    :goto_20
    const-string v9, "{"

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iget-object v2, p0, Lgcb;->f:Lj$/util/Optional;

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_27
    iget-object v7, p0, Lgcb;->a:Lcom/google/googlex/gcam/InterleavedImageU8;

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

    :goto_28
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_29
    iget-object v3, p0, Lgcb;->e:Lj$/util/Optional;

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

    nop

    :goto_2a
    const v1, 0x18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_2c
    iget-object v4, p0, Lgcb;->j:Llko;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_12

    nop

    :goto_2e
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_2f
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_30
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

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

    :goto_31
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_32
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_33
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_34
    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_35
    const-string v7, ", "

    nop

    nop

    goto/32 :goto_25

    nop

    nop
.end method

.class public final Link;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:Lcom/google/googlex/gcam/InterleavedImageU8;

.field public b:Lcom/google/googlex/gcam/YuvImage;

.field public c:Landroid/hardware/HardwareBuffer;

.field public d:Lcom/google/googlex/gcam/JpgEncoderMetadata;

.field public e:Lsui;

.field public f:Lhxj;

.field public g:Lcom/google/googlex/gcam/InterleavedImageU8;

.field public h:Lltn;

.field public i:Lcom/google/googlex/gcam/ShotParams;

.field public j:Lj$/util/Optional;

.field public k:Liof;

.field private l:Lcom/google/googlex/gcam/ShotMetadata;

.field private m:Lpro;

.field private n:J

.field private o:Lj$/util/Optional;

.field private p:Lj$/util/Optional;

.field private q:B

.field private r:Lijd;

.field private s:Llko;


# direct methods
.method public constructor <init>()V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    throw p0

    nop

    nop

    :goto_1
    const/4 p0, 0x0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Linl;)V
    .locals 2

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_0
    iget-object v0, p1, Linl;->b:Lcom/google/googlex/gcam/YuvImage;

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_1
    iput-wide v0, p0, Link;->n:J

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_2
    iput-object v0, p0, Link;->c:Landroid/hardware/HardwareBuffer;

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_6
    iget-object v0, p1, Linl;->a:Lcom/google/googlex/gcam/InterleavedImageU8;

    nop

    nop

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

    :goto_7
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object v0

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_9
    iput-object v0, p0, Link;->i:Lcom/google/googlex/gcam/ShotParams;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_a
    iput-object v0, p0, Link;->m:Lpro;

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v0, 0x1

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_c
    iget-object v0, p1, Linl;->j:Lhxj;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iput-object v0, p0, Link;->g:Lcom/google/googlex/gcam/InterleavedImageU8;

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_f
    iput-object v0, p0, Link;->f:Lhxj;

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_10
    iput-object p1, p0, Link;->j:Lj$/util/Optional;

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v0, p1, Linl;->i:Lsui;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_12
    iget-object v0, p1, Linl;->q:Liof;

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_13
    iput-object v0, p0, Link;->r:Lijd;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_14
    iput-object v0, p0, Link;->o:Lj$/util/Optional;

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_15
    iget-object v0, p1, Linl;->n:Lj$/util/Optional;

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_16
    iget-object v0, p1, Linl;->e:Lcom/google/googlex/gcam/JpgEncoderMetadata;

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_17
    iget-object v0, p1, Linl;->h:Lj$/util/Optional;

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_18
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :cond_0
    goto/32 :goto_34

    nop

    :goto_19
    iget-object v0, p1, Linl;->c:Landroid/hardware/HardwareBuffer;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1a
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object v0, p1, Linl;->p:Lijd;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iput-object v0, p0, Link;->p:Lj$/util/Optional;

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

    :goto_1d
    iput-object v0, p0, Link;->h:Lltn;

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_1e
    iget-object v0, p1, Linl;->m:Lcom/google/googlex/gcam/ShotParams;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_20
    iput-object v0, p0, Link;->b:Lcom/google/googlex/gcam/YuvImage;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iput-byte p1, p0, Link;->q:B

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_22
    iput-object v0, p0, Link;->e:Lsui;

    nop

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

    :goto_23
    iput-object v0, p0, Link;->l:Lcom/google/googlex/gcam/ShotMetadata;

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_24
    iget-object v0, p1, Linl;->l:Lltn;

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_25
    const/4 p1, 0x1

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_26
    iget-object p1, p1, Linl;->o:Lj$/util/Optional;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_27
    iput-object v0, p0, Link;->k:Liof;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_28
    iput-object v0, p0, Link;->o:Lj$/util/Optional;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_29
    iput-object v0, p0, Link;->d:Lcom/google/googlex/gcam/JpgEncoderMetadata;

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

    :goto_2a
    iput-object v0, p0, Link;->s:Llko;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_2b
    const v1, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_2c
    iget-object v0, p1, Linl;->r:Llko;

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_2d
    iget-wide v0, p1, Linl;->g:J

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_2e
    iget-object v0, p1, Linl;->k:Lcom/google/googlex/gcam/InterleavedImageU8;

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

    :goto_2f
    iput-object v0, p0, Link;->a:Lcom/google/googlex/gcam/InterleavedImageU8;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_30
    iget-object v0, p1, Linl;->f:Lpro;

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
    iget-object v0, p1, Linl;->d:Lcom/google/googlex/gcam/ShotMetadata;

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_32
    iput-object v0, p0, Link;->j:Lj$/util/Optional;

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

    :goto_33
    iput-object v0, p0, Link;->p:Lj$/util/Optional;

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_34
    goto/32 :goto_5

    nop

    nop

    :goto_35
    goto/32 :goto_3

    nop

    nop

    :goto_36
    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object v0

    nop

    goto/32 :goto_32

    nop

    nop

    nop
.end method

.method public constructor <init>([B)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Link;->o:Lj$/util/Optional;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_4
    iput-object p1, p0, Link;->j:Lj$/util/Optional;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p1, p0, Link;->p:Lj$/util/Optional;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_6
    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object p1

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

    :goto_7
    return-void

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()Linl;
    .locals 24

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-nez v15, :cond_0

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_34

    nop

    nop

    :goto_1
    move-object/from16 v20, v2

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_2
    iget-object v8, v0, Link;->d:Lcom/google/googlex/gcam/JpgEncoderMetadata;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_3
    if-eq v1, v2, :cond_1

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    :cond_1
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-nez v1, :cond_2

    nop

    goto/32 :goto_20

    nop

    :cond_2
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_25

    nop

    nop

    :goto_6
    goto/32 :goto_18

    nop

    nop

    :goto_7
    move-object/from16 v19, v2

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_8
    move-object/from16 v17, v2

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

    :goto_9
    iget-object v2, v0, Link;->g:Lcom/google/googlex/gcam/InterleavedImageU8;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v4, v0, Link;->a:Lcom/google/googlex/gcam/InterleavedImageU8;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_b
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_1b

    nop

    nop

    :goto_d
    iget-wide v10, v0, Link;->n:J

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const v0, 0xa

    nop

    nop

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

    :goto_f
    const-string v2, "We need exactly one image set; we have "

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v0, v0, Link;->j:Lj$/util/Optional;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_11
    if-lez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_17

    nop

    :goto_12
    move-object/from16 v21, v2

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-nez v1, :cond_4

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

    :cond_4
    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v2, v0, Link;->h:Lltn;

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

    :goto_15
    invoke-direct/range {v3 .. v22}, Linl;-><init>(Lcom/google/googlex/gcam/InterleavedImageU8;Lcom/google/googlex/gcam/YuvImage;Landroid/hardware/HardwareBuffer;Lcom/google/googlex/gcam/ShotMetadata;Lcom/google/googlex/gcam/JpgEncoderMetadata;Lpro;JLijd;Lj$/util/Optional;Liof;Lsui;Llko;Lhxj;Lcom/google/googlex/gcam/InterleavedImageU8;Lltn;Lcom/google/googlex/gcam/ShotParams;Lj$/util/Optional;Lj$/util/Optional;)V

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_16
    move-object/from16 v0, v23

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_39

    nop

    nop

    :goto_19
    move-object/from16 v18, v2

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    move-object/from16 v16, v1

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

    nop

    :goto_1b
    iget-object v2, v0, Linl;->c:Landroid/hardware/HardwareBuffer;

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-static {v1, v2}, La;->bi(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

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

    :goto_1d
    iget-object v9, v0, Link;->m:Lpro;

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_1e
    iget-object v7, v0, Link;->l:Lcom/google/googlex/gcam/ShotMetadata;

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

    :goto_1f
    goto/16 :goto_31

    nop

    nop

    :goto_20
    goto/32 :goto_30

    nop

    nop

    nop

    :goto_21
    const/4 v2, 0x1

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

    :goto_22
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_23
    iget-object v15, v0, Link;->e:Lsui;

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

    :goto_24
    if-nez v7, :cond_5

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_25
    throw v0

    nop

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_27
    iget-object v12, v0, Link;->r:Lijd;

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    iget-object v6, v0, Link;->c:Landroid/hardware/HardwareBuffer;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_29
    if-nez v12, :cond_6

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    iget-object v2, v0, Linl;->b:Lcom/google/googlex/gcam/YuvImage;

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_2b
    if-nez v2, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :cond_7
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    const v1, 0x4

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

    nop

    :goto_30
    const/4 v1, 0x0

    nop

    :goto_31
    goto/32 :goto_2a

    nop

    nop

    :goto_32
    if-nez v9, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_27

    nop

    nop

    :goto_33
    if-nez v2, :cond_9

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

    :cond_9
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_34
    iget-object v1, v0, Link;->s:Llko;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_35
    iget-object v2, v0, Link;->f:Lhxj;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_36
    add-int v0, v0, v1

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_37
    new-instance v0, Ljava/lang/IllegalStateException;

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_38
    if-eq v1, v2, :cond_a

    nop

    goto/32 :goto_3e

    nop

    nop

    :cond_a
    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_39
    move-object/from16 v0, p0

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    iget-object v13, v0, Link;->o:Lj$/util/Optional;

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_3b
    throw v0

    nop

    nop

    nop

    :goto_3c
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_3d
    return-object v0

    nop

    :goto_3e
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_3f
    move-object/from16 v22, v0

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_40
    const/4 v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_41
    iget-byte v1, v0, Link;->q:B

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_42
    iget-object v2, v0, Link;->i:Lcom/google/googlex/gcam/ShotParams;

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

    :goto_43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_44
    iget-object v5, v0, Link;->b:Lcom/google/googlex/gcam/YuvImage;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_45
    move-object v14, v2

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_46
    iget-object v2, v0, Link;->k:Liof;

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_47
    iget-object v1, v0, Linl;->a:Lcom/google/googlex/gcam/InterleavedImageU8;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_48
    move-object v3, v14

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_49
    move-object/from16 v23, v14

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_4a
    new-instance v14, Linl;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_4b
    iget-object v2, v0, Link;->p:Lj$/util/Optional;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_4c
    const/4 v2, 0x1

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
.end method

.method public final b()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    iput-object v0, p0, Link;->b:Lcom/google/googlex/gcam/YuvImage;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v0, 0x0

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
    iput-object v0, p0, Link;->a:Lcom/google/googlex/gcam/InterleavedImageU8;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    iput-object v0, p0, Link;->c:Landroid/hardware/HardwareBuffer;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop
.end method

.method public final c(Lioy;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p1}, Lj$/util/Optional;->of(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object p1

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

    :goto_1
    iput-object p1, p0, Link;->o:Lj$/util/Optional;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

.method public final d(Lijd;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Link;->r:Lijd;

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

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

.method public final e(Lpro;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_2

    nop

    nop

    :goto_2
    iput-object p1, p0, Link;->m:Lpro;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final f(Lcom/google/googlex/gcam/ShotMetadata;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Link;->l:Lcom/google/googlex/gcam/ShotMetadata;

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
    return-void

    nop

    nop

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final g(Lj$/util/Optional;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    iput-object p1, p0, Link;->p:Lj$/util/Optional;

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

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop
.end method

.method public final h(J)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-byte p1, p0, Link;->q:B

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    iput-wide p1, p0, Link;->n:J

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    :goto_3
    const/4 p1, 0x1

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final i(Llko;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_2

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

    :goto_2
    iput-object p1, p0, Link;->s:Llko;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method

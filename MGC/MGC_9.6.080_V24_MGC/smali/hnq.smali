.class public final Lhnq;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lhmo;

.field public static final b:Lhmo;

.field public static final c:Lhmn;

.field public static final d:Lhmn;

.field public static final e:Lhmn;

.field public static final f:Lhmn;

.field public static final g:Lhmn;

.field public static final h:Lhmn;

.field public static final i:Lhmn;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-string v1, "camera.artemis_tpu"

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const-string v1, "camera.artemis_mc"

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    :cond_0
    goto/32 :goto_41

    nop

    :goto_3
    iput-object v1, v0, Lstm;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_4
    iput-object v1, v0, Lstm;->b:Ljava/lang/Object;

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

    :goto_5
    new-instance v0, Lstm;

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_6
    sput-object v0, Lhnq;->i:Lhmn;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_7
    sput-object v0, Lhnq;->g:Lhmn;

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
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

    :goto_9
    new-instance v0, Lstm;

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_a
    new-instance v0, Lstm;

    nop

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

    :goto_b
    const-string v1, "camera.artemis_dsp_in_video"

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v0}, Lstm;->j()Lhmo;

    move-result-object v0

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_d
    iput-object v1, v0, Lstm;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_e
    iput-object v1, v0, Lstm;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_f
    iput-object v1, v0, Lstm;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_10
    const-string v1, "camera.artemis_skip_listeners"

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_11
    return-void

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_21

    nop

    nop

    :goto_13
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_14
    const-string v1, "General"

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v0}, Lstm;->r()Lhmn;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_16
    invoke-virtual {v0}, Lstm;->j()Lhmo;

    move-result-object v0

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

    :goto_17
    const v0, 0xb

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v0}, Lstm;->r()Lhmn;

    move-result-object v0

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_19
    iput-object v1, v0, Lstm;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_1a
    new-instance v0, Lstm;

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_1b
    iput-object v1, v0, Lstm;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_1c
    const-string v1, "camera.artemis_idx_in_video"

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iput-object v1, v0, Lstm;->b:Ljava/lang/Object;

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

    :goto_1e
    invoke-direct {v0}, Lstm;-><init>()V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_1f
    iput-object v1, v0, Lstm;->c:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_20
    invoke-direct {v0}, Lstm;-><init>()V

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_42

    nop

    :goto_22
    new-instance v0, Lstm;

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v0}, Lstm;->r()Lhmn;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {v0}, Lstm;->s()Lhmn;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_25
    iput-object v1, v0, Lstm;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_26
    new-instance v0, Lstm;

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-direct {v0}, Lstm;-><init>()V

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_28
    const-string v1, "camera.artemis_idx"

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_29
    iput-object v1, v0, Lstm;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_2a
    new-instance v0, Lstm;

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

    :goto_2b
    invoke-direct {v0}, Lstm;-><init>()V

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-direct {v0}, Lstm;-><init>()V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-direct {v0}, Lstm;-><init>()V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    const-string v1, "enable_optical_flow_dsp_in_video"

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_2f
    const-string v1, "camera.artemis_e2e_model_name"

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_30
    new-instance v0, Lstm;

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_31
    sput-object v0, Lhnq;->h:Lhmn;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-direct {v0}, Lstm;-><init>()V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    new-instance v0, Lstm;

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_34
    const-string v1, "camera.artemis_eis_in_gyro"

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

    :goto_35
    const-string v1, "camera.artemis_dsp"

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_36
    sput-object v0, Lhnq;->f:Lhmn;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_37
    sput-object v0, Lhnq;->a:Lhmo;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_38
    invoke-virtual {v0}, Lstm;->r()Lhmn;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_39
    invoke-direct {v0}, Lstm;-><init>()V

    goto/32 :goto_35

    nop

    nop

    :goto_3a
    sput-object v0, Lhnq;->b:Lhmo;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_3b
    new-instance v0, Lstm;

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-direct {v0}, Lstm;-><init>()V

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    sput-object v0, Lhnq;->e:Lhmn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_3e
    new-instance v0, Lstm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_3f
    const v1, 0x11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_40
    const-string v1, "camera.artemis_fe_model_name"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_41
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_42
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_43
    new-instance v0, Lstm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_44
    iput-object v1, v0, Lstm;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_45
    invoke-direct {v0}, Lstm;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    sput-object v0, Lhnq;->d:Lhmn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_47
    invoke-virtual {v0}, Lstm;->s()Lhmn;

    move-result-object v0

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_48
    invoke-direct {v0}, Lstm;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_49
    invoke-direct {v0}, Lstm;-><init>()V

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.class public final Lhnv;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lhmn;

.field public static final b:Lhmn;

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

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0}, Lstm;-><init>()V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0}, Lstm;->o()Lhmn;

    move-result-object v0

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

    :goto_2
    const-string v1, "camera.enable_uranus_front_outer_camera"

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_3
    iput-object v1, v0, Lstm;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_4
    sput-object v0, Lhnv;->i:Lhmn;

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_5
    const-string v1, "camera.enable_uranus_debug"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_6
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    new-instance v0, Lstm;

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_8
    new-instance v0, Lstm;

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_9
    iput-object v1, v0, Lstm;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_a
    iput-object v1, v0, Lstm;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_b
    invoke-virtual {v0}, Lstm;->q()Lhmn;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_c
    sput-object v0, Lhnv;->f:Lhmn;

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_d
    new-instance v0, Lstm;

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

    :goto_e
    const v1, 0x16

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_f
    const v0, 0x1c

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

    :goto_10
    new-instance v0, Lstm;

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_11
    const-string v1, "camera.uranus_debug.hint_upper_threshold"

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

    :goto_12
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_13
    sput-object v0, Lhnv;->d:Lhmn;

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
    const-string v1, "camera.enable_uranus_mdd"

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_15
    invoke-direct {v0}, Lstm;-><init>()V

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_16
    iput-object v1, v0, Lstm;->b:Ljava/lang/Object;

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

    nop

    :goto_17
    new-instance v0, Lstm;

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_18
    const-string v1, "camera.enable_uranus_sound"

    nop

    nop

    goto/32 :goto_a

    nop

    nop

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

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-direct {v0}, Lstm;-><init>()V

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    sput-object v0, Lhnv;->e:Lhmn;

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_1c
    invoke-direct {v0}, Lstm;-><init>()V

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2d

    nop

    :goto_1e
    new-instance v0, Lstm;

    nop

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

    :goto_1f
    invoke-direct {v0}, Lstm;-><init>()V

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_20
    iput-object v1, v0, Lstm;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_21
    iput-object v1, v0, Lstm;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-direct {v0}, Lstm;-><init>()V

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    sput-object v0, Lhnv;->g:Lhmn;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_24
    sget-object v1, Lcom/google/android/clockwork/common/wearable/wearmaterial/drawable/uK/JLjgPsjc;->SlgsazIcu:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_25
    const-string v1, "camera.enable_uranus"

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    const-string v1, "camera.uranus_debug.hint_lower_threshold"

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_27
    return-void

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_46

    nop

    nop

    :goto_29
    const-string v1, "camera.uranus_debug.idle_upper_threshold"

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {v0}, Lstm;->q()Lhmn;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    iput-object v1, v0, Lstm;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_2c
    iput-object v1, v0, Lstm;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_32

    nop

    nop

    :goto_2f
    sput-object v0, Lhnv;->c:Lhmn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_30
    invoke-direct {v0}, Lstm;-><init>()V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-virtual {v0}, Lstm;->q()Lhmn;

    move-result-object v0

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_32
    new-instance v0, Lstm;

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_33
    invoke-virtual {v0}, Lstm;->q()Lhmn;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_34
    const-string v1, "camera.uranus_debug.surprise_lower_threshold"

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_35
    invoke-virtual {v0}, Lstm;->q()Lhmn;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_36
    invoke-virtual {v0}, Lstm;->o()Lhmn;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_37
    const-string v1, "camera.uranus_debug.idle_lower_threshold"

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_38
    new-instance v0, Lstm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_39
    invoke-direct {v0}, Lstm;-><init>()V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {v0}, Lstm;->r()Lhmn;

    move-result-object v0

    nop

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

    :goto_3b
    sput-object v0, Lhnv;->b:Lhmn;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_3c
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_3d
    sput-object v0, Lhnv;->a:Lhmn;

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_3e
    new-instance v0, Lstm;

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_3f
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

    :goto_40
    invoke-direct {v0}, Lstm;-><init>()V

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_41
    iput-object v1, v0, Lstm;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_42
    sput-object v0, Lhnv;->h:Lhmn;

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_43
    invoke-direct {v0}, Lstm;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    new-instance v0, Lstm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    invoke-direct {v0}, Lstm;-><init>()V

    goto/32 :goto_5

    nop

    nop

    :goto_46
    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_47
    iput-object v1, v0, Lstm;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    invoke-virtual {v0}, Lstm;->q()Lhmn;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop
.end method

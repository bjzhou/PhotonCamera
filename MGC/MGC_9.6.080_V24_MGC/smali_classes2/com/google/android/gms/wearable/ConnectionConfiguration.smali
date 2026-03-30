.class public Lcom/google/android/gms/wearable/ConnectionConfiguration;
.super Lolk;
.source "PG"

# interfaces
.implements Lcom/google/android/gms/common/internal/ReflectedParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:I

.field public final d:I

.field public final e:Z

.field public final f:Z

.field public volatile g:Ljava/lang/String;

.field public final h:Z

.field public final i:Ljava/lang/String;

.field public final j:Ljava/lang/String;

.field public final k:I

.field public final l:Ljava/util/List;

.field public final m:Z

.field public final n:Z

.field public final o:Lose;

.field public final p:Z

.field public final q:Losd;

.field public final r:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0}, Losc;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    sput-object v0, Lcom/google/android/gms/wearable/ConnectionConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2
    new-instance v0, Losc;

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

    :goto_3
    return-void

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILjava/util/List;ZZLose;ZLosd;I)V
    .locals 2

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    move v1, p5

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

    :goto_1
    move v1, p13

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_2
    iput-object v1, v0, Lcom/google/android/gms/wearable/ConnectionConfiguration;->l:Ljava/util/List;

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

    :goto_3
    move-object v1, p7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_6
    iput v1, v0, Lcom/google/android/gms/wearable/ConnectionConfiguration;->k:I

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput-boolean v1, v0, Lcom/google/android/gms/wearable/ConnectionConfiguration;->e:Z

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    move v1, p3

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_9
    iput-boolean v1, v0, Lcom/google/android/gms/wearable/ConnectionConfiguration;->n:Z

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

    :goto_a
    move-object/from16 v1, p15

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    move v1, p4

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

    :goto_e
    move-object v1, p12

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_f
    move/from16 v1, p16

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_10
    iput v1, v0, Lcom/google/android/gms/wearable/ConnectionConfiguration;->r:I

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iput v1, v0, Lcom/google/android/gms/wearable/ConnectionConfiguration;->d:I

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_12
    move/from16 v1, p14

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
    iput-object v1, v0, Lcom/google/android/gms/wearable/ConnectionConfiguration;->i:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_14
    move-object v1, p10

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_15
    iput-object v1, v0, Lcom/google/android/gms/wearable/ConnectionConfiguration;->g:Ljava/lang/String;

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_16
    const v1, 0x11

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iput-object v1, v0, Lcom/google/android/gms/wearable/ConnectionConfiguration;->j:Ljava/lang/String;

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

    :goto_18
    move v1, p8

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_19
    move-object v0, p0

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_1a
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_1b
    move v1, p11

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

    :goto_1c
    move-object/from16 v1, p17

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_1d
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1e
    iput-object v1, v0, Lcom/google/android/gms/wearable/ConnectionConfiguration;->q:Losd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_1f
    iput-boolean v1, v0, Lcom/google/android/gms/wearable/ConnectionConfiguration;->m:Z

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

    :goto_20
    move-object v1, p2

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

    nop

    :goto_21
    move-object v1, p9

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iput-boolean v1, v0, Lcom/google/android/gms/wearable/ConnectionConfiguration;->h:Z

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    move v1, p6

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iput-boolean v1, v0, Lcom/google/android/gms/wearable/ConnectionConfiguration;->p:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_25
    iput-object v1, v0, Lcom/google/android/gms/wearable/ConnectionConfiguration;->b:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_26
    const v0, 0x17

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_27
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_28
    move-object v1, p1

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-direct {p0}, Lolk;-><init>()V

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_2a
    iput-object v1, v0, Lcom/google/android/gms/wearable/ConnectionConfiguration;->o:Lose;

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
    iput v1, v0, Lcom/google/android/gms/wearable/ConnectionConfiguration;->c:I

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_2c
    iput-object v1, v0, Lcom/google/android/gms/wearable/ConnectionConfiguration;->a:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_2d
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    iput-boolean v1, v0, Lcom/google/android/gms/wearable/ConnectionConfiguration;->f:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2f
    move/from16 v1, p18

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


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget v0, p0, Lcom/google/android/gms/wearable/ConnectionConfiguration;->d:I

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {v0, v2}, La;->aw(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

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

    :goto_2
    if-eqz v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    :cond_0
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_3
    return p0

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-boolean v2, p1, Lcom/google/android/gms/wearable/ConnectionConfiguration;->e:Z

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_6
    iget-boolean v2, p1, Lcom/google/android/gms/wearable/ConnectionConfiguration;->m:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_7
    iget-boolean p0, p0, Lcom/google/android/gms/wearable/ConnectionConfiguration;->n:Z

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_8
    iget-boolean v0, p0, Lcom/google/android/gms/wearable/ConnectionConfiguration;->h:Z

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-boolean v0, p0, Lcom/google/android/gms/wearable/ConnectionConfiguration;->e:Z

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

    nop

    :goto_a
    invoke-static {v0, v2}, La;->aw(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_b
    invoke-static {v0, v2}, La;->aw(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-nez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_d
    invoke-static {v0, v2}, La;->aw(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_e
    const/4 v1, 0x0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

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

    :goto_10
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_34

    nop

    nop

    :goto_12
    const v1, 0x14

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-static {p0, p1}, La;->aw(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_14
    if-lez v0, :cond_2

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

    :cond_2
    goto/32 :goto_10

    nop

    :goto_15
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_16
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_17
    invoke-static {v0, v2}, La;->aw(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

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

    nop

    :goto_18
    invoke-static {v0, v2}, La;->aw(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_19
    if-nez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

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

    :goto_1b
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_1c
    return v1

    nop

    nop

    :goto_1d
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    return v1

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_20
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_22
    rem-int v0, v0, v1

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

    :goto_23
    if-nez v0, :cond_4

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_11

    nop

    nop

    :goto_25
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_26
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

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

    :goto_27
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_28
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_29
    iget v0, p0, Lcom/google/android/gms/wearable/ConnectionConfiguration;->c:I

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    const v0, 0x20

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_2c
    invoke-static {v0, v2}, La;->aw(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_2d
    if-nez v0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    if-nez v0, :cond_6

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_6
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_2f
    iget-object v0, p0, Lcom/google/android/gms/wearable/ConnectionConfiguration;->a:Ljava/lang/String;

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_30
    iget-boolean p1, p1, Lcom/google/android/gms/wearable/ConnectionConfiguration;->n:Z

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

    :goto_31
    check-cast p1, Lcom/google/android/gms/wearable/ConnectionConfiguration;

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_32
    if-nez v0, :cond_7

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_7
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_33
    iget-object v2, p1, Lcom/google/android/gms/wearable/ConnectionConfiguration;->b:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_34
    instance-of v0, p1, Lcom/google/android/gms/wearable/ConnectionConfiguration;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_35
    iget-boolean v0, p0, Lcom/google/android/gms/wearable/ConnectionConfiguration;->m:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_36
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_37
    iget v2, p1, Lcom/google/android/gms/wearable/ConnectionConfiguration;->c:I

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

    :goto_38
    if-nez p0, :cond_8

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_39
    if-nez v0, :cond_9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_9
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_3a
    iget-object v0, p0, Lcom/google/android/gms/wearable/ConnectionConfiguration;->b:Ljava/lang/String;

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_3b
    iget-boolean v2, p1, Lcom/google/android/gms/wearable/ConnectionConfiguration;->h:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_3c
    iget-object v2, p1, Lcom/google/android/gms/wearable/ConnectionConfiguration;->a:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_3d
    const/4 p0, 0x1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3e
    iget v2, p1, Lcom/google/android/gms/wearable/ConnectionConfiguration;->d:I

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final hashCode()I
    .locals 8

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-boolean v6, p0, Lcom/google/android/gms/wearable/ConnectionConfiguration;->m:Z

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

    :goto_2
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_6
    iget-boolean v4, p0, Lcom/google/android/gms/wearable/ConnectionConfiguration;->e:Z

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_7
    iget v3, p0, Lcom/google/android/gms/wearable/ConnectionConfiguration;->d:I

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0x8

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

    :goto_9
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_a
    const v1, 0x1f

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_e
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v0, p0, Lcom/google/android/gms/wearable/ConnectionConfiguration;->a:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_10
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_11
    return p0

    nop

    :goto_12
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_13
    iget-boolean v5, p0, Lcom/google/android/gms/wearable/ConnectionConfiguration;->h:Z

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_14
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget-boolean p0, p0, Lcom/google/android/gms/wearable/ConnectionConfiguration;->n:Z

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_16
    filled-new-array/range {v0 .. v7}, [Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

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

    :goto_18
    iget v2, p0, Lcom/google/android/gms/wearable/ConnectionConfiguration;->c:I

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget-object v1, p0, Lcom/google/android/gms/wearable/ConnectionConfiguration;->b:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_3
    iget v1, p0, Lcom/google/android/gms/wearable/ConnectionConfiguration;->c:I

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

    :goto_4
    const-string v1, "ConnectionConfiguration[ Name="

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_5
    const-string v1, ", Address="

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_8
    iget v1, p0, Lcom/google/android/gms/wearable/ConnectionConfiguration;->k:I

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_9
    iget-object v1, p0, Lcom/google/android/gms/wearable/ConnectionConfiguration;->a:Ljava/lang/String;

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_b
    const-string v1, ", BtlePriority="

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

    :goto_c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_d
    return-object p0

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v1, p0, Lcom/google/android/gms/wearable/ConnectionConfiguration;->j:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const-string v1, ", PeerNodeId="

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/32 :goto_23

    nop

    nop

    :goto_16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    add-int v0, v0, v1

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

    nop

    :goto_18
    const-string v1, ", removeConnectionWhenBondRemovedByUser="

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    :goto_19
    const-string v1, ", allowedConfigPackages="

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

    :goto_1a
    iget-boolean v1, p0, Lcom/google/android/gms/wearable/ConnectionConfiguration;->n:Z

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_1b
    iget-boolean v1, p0, Lcom/google/android/gms/wearable/ConnectionConfiguration;->e:Z

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

    :goto_1c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/32 :goto_18

    nop

    nop

    :goto_1d
    iget-object v1, p0, Lcom/google/android/gms/wearable/ConnectionConfiguration;->l:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_1e
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_22
    iget p0, p0, Lcom/google/android/gms/wearable/ConnectionConfiguration;->r:I

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_23
    const-string v1, ", Migrating="

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_38

    nop

    nop

    :goto_25
    const-string v1, ", Enabled="

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iget-object v1, p0, Lcom/google/android/gms/wearable/ConnectionConfiguration;->o:Lose;

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_27
    iget-object v1, p0, Lcom/google/android/gms/wearable/ConnectionConfiguration;->b:Ljava/lang/String;

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

    nop

    :goto_28
    const-string v1, ", Role="

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

    :goto_29
    iget-boolean v1, p0, Lcom/google/android/gms/wearable/ConnectionConfiguration;->f:Z

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_2a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    const-string v1, ", maxSupportedRemoteAndroidSdkVersion="

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_2c
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    :goto_2d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_25

    nop

    nop

    :goto_2e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    const-string v1, ", DataItemSyncEnabled="

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_35
    const-string v1, ", NodeId="

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

    :goto_36
    const-string v1, ", IsConnected="

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

    :goto_37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_3

    nop

    nop

    :goto_38
    iget-object v1, p0, Lcom/google/android/gms/wearable/ConnectionConfiguration;->g:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    const v1, 0x8

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_3c
    const-string v1, ", ConnectionRestrictions="

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_3d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_40

    nop

    nop

    :goto_3e
    const-string v1, ", ConnectionRetryStrategy="

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

    :goto_3f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_40
    iget-boolean v1, p0, Lcom/google/android/gms/wearable/ConnectionConfiguration;->m:Z

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_41
    const-string p0, "]"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_42
    iget-boolean v1, p0, Lcom/google/android/gms/wearable/ConnectionConfiguration;->h:Z

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_43
    iget v1, p0, Lcom/google/android/gms/wearable/ConnectionConfiguration;->d:I

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    iget-object v1, p0, Lcom/google/android/gms/wearable/ConnectionConfiguration;->i:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_46
    const v0, 0x3

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_47
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_48
    const-string v1, ", PackageName="

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

    :goto_49
    iget-boolean v1, p0, Lcom/google/android/gms/wearable/ConnectionConfiguration;->p:Z

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    goto/32 :goto_32

    nop

    :goto_4b
    const-string v1, ", Type="

    nop

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

    nop

    :goto_4c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_4d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_4f
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_31

    nop

    :goto_50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_51
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p1, v1, v2}, Lolx;->v(Landroid/os/Parcel;ILjava/lang/String;)V

    goto/32 :goto_2a

    nop

    nop

    :goto_1
    invoke-static {p1, v1, v2}, Lolx;->v(Landroid/os/Parcel;ILjava/lang/String;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v2, p0, Lcom/google/android/gms/wearable/ConnectionConfiguration;->l:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {p1, v1, v2}, Lolx;->j(Landroid/os/Parcel;IZ)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v2, p0, Lcom/google/android/gms/wearable/ConnectionConfiguration;->q:Losd;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_5
    iget v2, p0, Lcom/google/android/gms/wearable/ConnectionConfiguration;->k:I

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

    :goto_6
    const/16 v1, 0x12

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

    :goto_7
    invoke-static {p1, p2, p0}, Lolx;->m(Landroid/os/Parcel;II)V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {p1, v1, v2, p2}, Lolx;->u(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {p1, v1, v2, p2}, Lolx;->u(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v2, p0, Lcom/google/android/gms/wearable/ConnectionConfiguration;->o:Lose;

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

    :goto_b
    invoke-static {p1, v1, v2}, Lolx;->j(Landroid/os/Parcel;IZ)V

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_c
    invoke-static {p1, v1, v2}, Lolx;->j(Landroid/os/Parcel;IZ)V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_d
    const/16 v1, 0xb

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-boolean v2, p0, Lcom/google/android/gms/wearable/ConnectionConfiguration;->e:Z

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_f
    const/4 v1, 0x6

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_10
    iget p0, p0, Lcom/google/android/gms/wearable/ConnectionConfiguration;->r:I

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_11
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_33

    nop

    :goto_12
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_14
    iget-boolean v2, p0, Lcom/google/android/gms/wearable/ConnectionConfiguration;->n:Z

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_15
    const/16 v1, 0xf

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_16
    const/4 v1, 0x2

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget-boolean v2, p0, Lcom/google/android/gms/wearable/ConnectionConfiguration;->p:Z

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

    nop

    :goto_18
    const/16 v1, 0xa

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

    :goto_19
    iget-boolean v2, p0, Lcom/google/android/gms/wearable/ConnectionConfiguration;->h:Z

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_1a
    const v1, 0x1c

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_1b
    const/16 v1, 0x11

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object v2, p0, Lcom/google/android/gms/wearable/ConnectionConfiguration;->b:Ljava/lang/String;

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

    :goto_1d
    const/16 v1, 0xd

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

    :goto_1e
    invoke-static {p1}, Lolx;->g(Landroid/os/Parcel;)I

    move-result v0

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-static {p1, v1, v2}, Lolx;->j(Landroid/os/Parcel;IZ)V

    goto/32 :goto_35

    nop

    nop

    :goto_20
    invoke-static {p1, v0}, Lolx;->i(Landroid/os/Parcel;I)V

    goto/32 :goto_2e

    nop

    nop

    :goto_21
    const/16 p2, 0x13

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

    :goto_22
    iget v2, p0, Lcom/google/android/gms/wearable/ConnectionConfiguration;->c:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_23
    iget-object v2, p0, Lcom/google/android/gms/wearable/ConnectionConfiguration;->a:Ljava/lang/String;

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

    :goto_24
    invoke-static {p1, v1, v2}, Lolx;->x(Landroid/os/Parcel;ILjava/util/List;)V

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_25
    const v0, 0x18

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_26
    invoke-static {p1, v1, v2}, Lolx;->m(Landroid/os/Parcel;II)V

    goto/32 :goto_f

    nop

    nop

    :goto_27
    invoke-static {p1, v1, v2}, Lolx;->j(Landroid/os/Parcel;IZ)V

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_28
    iget v2, p0, Lcom/google/android/gms/wearable/ConnectionConfiguration;->d:I

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    iget-object v2, p0, Lcom/google/android/gms/wearable/ConnectionConfiguration;->g:Ljava/lang/String;

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

    :goto_2a
    const/16 v1, 0xc

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

    :goto_2b
    iget-boolean v2, p0, Lcom/google/android/gms/wearable/ConnectionConfiguration;->f:Z

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_2c
    invoke-static {p1, v1, v2}, Lolx;->v(Landroid/os/Parcel;ILjava/lang/String;)V

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    iget-object v2, p0, Lcom/google/android/gms/wearable/ConnectionConfiguration;->i:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_2e
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-static {p1, v1, v2}, Lolx;->v(Landroid/os/Parcel;ILjava/lang/String;)V

    goto/32 :goto_3e

    nop

    nop

    :goto_31
    const/4 v1, 0x5

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_32
    invoke-static {p1, v1, v2}, Lolx;->m(Landroid/os/Parcel;II)V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_33
    goto/32 :goto_2f

    nop

    nop

    :goto_34
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    const/4 v1, 0x7

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_36
    const/4 v1, 0x4

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    const/16 v1, 0x9

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

    :goto_38
    invoke-static {p1, v1, v2}, Lolx;->v(Landroid/os/Parcel;ILjava/lang/String;)V

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    iget-boolean v2, p0, Lcom/google/android/gms/wearable/ConnectionConfiguration;->m:Z

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    goto/32 :goto_34

    nop

    :goto_3b
    invoke-static {p1, v1, v2}, Lolx;->m(Landroid/os/Parcel;II)V

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    iget-object v2, p0, Lcom/google/android/gms/wearable/ConnectionConfiguration;->j:Ljava/lang/String;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3d
    const/16 v1, 0xe

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    const/4 v1, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_3f
    invoke-static {p1, v1, v2}, Lolx;->j(Landroid/os/Parcel;IZ)V

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_40
    const/16 v1, 0x10

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_41
    const/16 v1, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop
.end method

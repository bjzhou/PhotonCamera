.class public final Liwv;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:F

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field private final d:Ljava/lang/Object;

.field private e:J

.field private f:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 2

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    :cond_0
    goto/32 :goto_12

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_0

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

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Liwv;->c:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v0, 0x14

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

    :goto_5
    const/4 v0, 0x4

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_6
    const v1, 0x9

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

    :goto_7
    iput-object p1, p0, Liwv;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_8
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_9
    const/4 v0, 0x0

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

    :goto_a
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iput v0, p0, Liwv;->a:F

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_c
    iput-wide v0, p0, Liwv;->e:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_d
    iput v0, p0, Liwv;->f:I

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

    :goto_e
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_f
    iput-object p1, p0, Liwv;->d:Ljava/lang/Object;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_10
    return-void

    nop

    nop

    nop

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
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()V
    .locals 2

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Liwv;->d:Ljava/lang/Object;

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

    :goto_5
    const/4 v0, 0x0

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

    :goto_6
    const v1, 0xd

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

    :goto_7
    iput-wide v0, p0, Liwv;->e:J

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
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_9
    const/4 v0, 0x4

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iput v0, p0, Liwv;->a:F

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

    :goto_b
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iput-object v0, p0, Liwv;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iput-object v0, p0, Liwv;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_10
    iput v0, p0, Liwv;->f:I

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

    :goto_11
    goto/32 :goto_3

    nop

    nop

    :goto_12
    const v0, 0x10

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop
.end method

.method public final b()V
    .locals 9

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_0
    if-ne v1, v7, :cond_0

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_41

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

    :goto_2
    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_2e

    nop

    nop

    :goto_5
    return-void

    nop

    :goto_6
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_7
    iput-object v0, p0, Liwv;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_8
    iput v1, p0, Liwv;->a:F

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    :goto_9
    iget-object v1, p0, Liwv;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-nez v0, :cond_1

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const-string v1, "Unhandled FadeState: "

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget v0, p0, Liwv;->a:F

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget v1, p0, Liwv;->a:F

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_e
    iget v0, p0, Liwv;->f:I

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_f
    return-void

    nop

    :goto_10
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iput v8, p0, Liwv;->f:I

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_12
    return-void

    nop

    :goto_13
    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_14
    if-ne v0, v1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :cond_2
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_15
    iput v1, p0, Liwv;->a:F

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_3

    nop

    :goto_17
    iget-object v0, p0, Liwv;->c:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_18
    cmpg-float v1, v1, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    return-void

    nop

    nop

    :goto_1a
    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_1b
    goto/16 :goto_3e

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_3f

    nop

    nop

    :goto_1d
    if-ne v0, v1, :cond_4

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

    :cond_4
    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_1e
    throw p0

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_20
    if-gez v0, :cond_5

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

    :cond_5
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    const-string v0, "FADED_OUT"

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    if-ne v0, v5, :cond_6

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const/4 v8, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_24
    iget-object v2, p0, Liwv;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_25
    sub-long v2, v0, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_26
    throw p0

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_33

    nop

    nop

    nop

    :goto_28
    if-lez v1, :cond_7

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    iput v5, p0, Liwv;->f:I

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_2b
    iput v6, p0, Liwv;->a:F

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_2c
    iput-object v0, p0, Liwv;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_2d
    const/4 v7, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    :goto_2e
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_2f
    iput v6, p0, Liwv;->a:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    :goto_30
    iget-object v1, p0, Liwv;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_31
    if-ne v1, v8, :cond_8

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_46

    nop

    nop

    :goto_32
    add-float/2addr v1, v0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_33
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_34
    rem-int v0, v0, v1

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    iput v8, p0, Liwv;->f:I

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_36
    cmpl-float v0, v0, v6

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

    :goto_37
    iput v7, p0, Liwv;->f:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_38
    iput v1, p0, Liwv;->f:I

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_39
    iget-wide v2, p0, Liwv;->e:J

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_3a
    const/high16 v6, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_3b
    iget-object v0, p0, Liwv;->c:Ljava/lang/Object;

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

    :goto_3c
    add-int/lit8 v1, v0, -0x1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_3d
    sget-object v0, Lcom/google/android/apps/camera/imax/cyclops/metadata/vUwG/ZKDLyMOUoobPIS;->bKoNiSsjnnCEG:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    const-string v0, "FADED_IN"

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    sub-float/2addr v1, v0

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

    :goto_41
    new-instance p0, Ljava/lang/RuntimeException;

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_42
    div-float/2addr v0, v4

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

    :goto_43
    if-ne v0, v8, :cond_9

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_44
    iput-wide v0, p0, Liwv;->e:J

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_45
    const v0, 0x5

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    :goto_46
    if-ne v1, v5, :cond_a

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_0

    nop

    nop

    :goto_47
    if-gez v0, :cond_b

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_48
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_49
    add-float/2addr v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    :goto_4a
    const/4 v2, 0x0

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

    :goto_4b
    iput v2, p0, Liwv;->a:F

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    const-string v0, "FADING_OUT"

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    if-eq v0, v2, :cond_c

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_4f
    if-ne v0, v7, :cond_d

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_21

    nop

    nop

    :goto_50
    cmpl-float v0, v1, v6

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_51
    div-float/2addr v1, v4

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_52
    return-void

    nop

    nop

    :goto_53
    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_54
    const/4 v1, 0x4

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_55
    if-nez v1, :cond_e

    nop

    nop

    goto/32 :goto_2

    nop

    :cond_e
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_56
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    iput v7, p0, Liwv;->f:I

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_58
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_59
    const/high16 v4, 0x43480000    # 200.0f

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    long-to-float v0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    :goto_5b
    const/4 v5, 0x2

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    long-to-float v1, v2

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    goto/16 :goto_3e

    nop

    nop

    :goto_5e
    goto/32 :goto_48

    nop

    nop

    :goto_5f
    div-float/2addr v0, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_60
    iget-object v0, p0, Liwv;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_61
    iget-object v0, p0, Liwv;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_62
    add-int v0, v0, v1

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_63
    iput v0, p0, Liwv;->a:F

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_64
    iget-object v1, p0, Liwv;->d:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_65
    iget v1, p0, Liwv;->a:F

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_66
    long-to-float v0, v2

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_67
    if-ne v0, v1, :cond_f

    nop

    goto/32 :goto_6

    nop

    :cond_f
    goto/32 :goto_57

    nop

    nop

    nop

    :goto_68
    const v1, 0x12

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_69
    goto/16 :goto_3e

    nop

    nop

    nop

    :goto_6a
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop
.end method

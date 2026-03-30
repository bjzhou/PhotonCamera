.class public Lnip;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final a:Lsdb;


# instance fields
.field private b:Lpck;

.field private final c:Ljava/lang/String;

.field private final d:Lhoh;

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_d

    nop

    nop

    :goto_1
    sget-object v0, Lcom/google/android/apps/camera/legacy/lightcycle/panorama/RpD/WBNWZfrn;->RRhIFoZNhr:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    sput-object v0, Lnip;->a:Lsdb;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    aput-object v0, v1, v3

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

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_5
    return-void

    nop

    nop

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

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_8
    const v0, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_9
    const/4 v4, 0x0

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
    const v1, 0x1b

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_b
    check-cast v0, Lsdb;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_13

    nop

    nop

    :goto_e
    new-array v1, v1, [Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_10
    const/16 v3, 0x11f

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_11
    invoke-static {v3, v4, v1}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_12
    const/4 v3, 0x0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_13
    const/4 v0, 0x0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_14
    const/4 v1, 0x1

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
.end method

.method public constructor <init>(Landroid/view/WindowManager;Lhoh;Ljava/lang/String;)V
    .locals 2

    goto/32 :goto_6

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_2
    new-instance p1, Lpck;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_4
    new-instance v0, Landroid/graphics/Point;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v1, 0x0

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0xa

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0x15

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

    :goto_8
    invoke-direct {p1, v1, v0}, Lpck;-><init>(II)V

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_16

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

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iput v1, p0, Lnip;->e:I

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :cond_0
    goto/32 :goto_15

    nop

    :goto_d
    iget v0, v0, Landroid/graphics/Point;->y:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_e
    iget v1, v0, Landroid/graphics/Point;->x:I

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_f
    iput-object p3, p0, Lnip;->c:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_11
    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    goto/32 :goto_2

    nop

    nop

    :goto_13
    const/4 v1, -0x1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_14
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_17
    iput-object p1, p0, Lnip;->b:Lpck;

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

    :goto_18
    iput-object p2, p0, Lnip;->d:Lhoh;

    nop

    nop

    goto/32 :goto_f

    nop

    nop
.end method


# virtual methods
.method final a(Ljava/util/List;D)Lpck;
    .locals 16

    goto/32 :goto_5f

    nop

    nop

    :goto_0
    move v6, v7

    nop

    :goto_1
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget v3, v1, Lpck;->a:I

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    :goto_3
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_39

    nop

    nop

    :goto_4
    if-ltz v14, :cond_0

    nop

    goto/32 :goto_51

    nop

    nop

    :cond_0
    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_6
    move-object/from16 v1, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-interface {v7, v8, v0}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_8
    const-string v8, "No preview size match the aspect ratio. available sizes: %s"

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

    :goto_9
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_a
    int-to-double v4, v4

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_b
    iget v14, v11, Lpck;->b:I

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

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_d
    if-gtz v12, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_e
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    nop

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

    :goto_f
    cmpl-double v12, v12, v14

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v11

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_11
    check-cast v7, Lscz;

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

    :goto_12
    goto/16 :goto_66

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_68

    nop

    nop

    nop

    nop

    :goto_14
    sub-int/2addr v12, v1

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_15
    move v7, v3

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_17
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    :goto_18
    goto/32 :goto_3b

    nop

    :goto_19
    const/16 v8, 0x13bd

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_1a
    sub-int/2addr v9, v1

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_1b
    int-to-double v12, v12

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_1c
    move-wide v9, v4

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    move v8, v6

    nop

    nop

    :goto_1e
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    move-object/from16 v1, p0

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    add-int/lit8 v7, v7, 0x1

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iget v11, v11, Lpck;->b:I

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    move-wide v9, v12

    nop

    :goto_23
    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_24
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :cond_2
    goto/32 :goto_3a

    nop

    :goto_25
    xor-int/2addr v1, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_26
    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_27
    int-to-double v9, v9

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    :goto_28
    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_29
    if-eqz v14, :cond_3

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :cond_3
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-interface {v7, v8}, Lscz;->M(I)Lsdo;

    move-result-object v7

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_2c
    int-to-double v14, v14

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    if-lez v1, :cond_4

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    :cond_4
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    check-cast v11, Lpck;

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_2f
    if-gez v8, :cond_5

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_57

    nop

    nop

    :goto_30
    goto/16 :goto_16

    nop

    nop

    :goto_31
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    sub-int/2addr v4, v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_33
    move v8, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_34
    invoke-static {v1}, La;->au(Z)V

    goto/32 :goto_6

    nop

    nop

    :goto_35
    iget v9, v8, Lpck;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_36
    const/4 v2, 0x1

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

    :goto_37
    iput-object v0, v1, Lnip;->b:Lpck;

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    :goto_38
    invoke-virtual {v7}, Lscs;->c()Lsdo;

    move-result-object v7

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

    :goto_39
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

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

    :goto_3a
    goto/32 :goto_64

    nop

    nop

    nop

    :goto_3b
    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    if-ltz v9, :cond_6

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_6
    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    move v7, v3

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_3f
    move v2, v3

    nop

    nop

    nop

    nop

    nop

    :goto_40
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    goto/16 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_42
    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :goto_43
    invoke-static {v2}, Lrrf;->x(Z)V

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_44
    if-lt v11, v1, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :cond_7
    :goto_45
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    iget v12, v11, Lpck;->a:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_47
    div-double/2addr v12, v14

    nop

    goto/32 :goto_5e

    nop

    nop

    :goto_48
    iget v4, v8, Lpck;->b:I

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_49
    const/4 v6, -0x1

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    const-wide v14, 0x3f947ae147ae147bL    # 0.02

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_4b
    move-object/from16 v0, p1

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

    :goto_4c
    iget-object v1, v1, Lnip;->b:Lpck;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    move-object/from16 v1, p0

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    const/4 v3, 0x0

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_4f
    if-lt v7, v11, :cond_8

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :cond_8
    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_50
    goto/16 :goto_45

    nop

    nop

    :goto_51
    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_52
    if-lt v7, v8, :cond_9

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :cond_9
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_53
    iget v1, v1, Lnip;->e:I

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

    nop

    :goto_54
    iget v12, v11, Lpck;->b:I

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_55
    check-cast v0, Lpck;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_56
    cmpg-double v14, v12, v9

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_57
    goto/16 :goto_40

    nop

    nop

    :goto_58
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_59
    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_5a
    sget-object v7, Lnip;->a:Lsdb;

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    int-to-double v12, v12

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_5c
    add-int/lit8 v7, v7, 0x1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_5d
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_5e
    sub-double v12, v12, p2

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    const v0, 0x9

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    :goto_60
    cmpl-double v14, v12, v9

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_61
    cmpg-double v9, v9, v4

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_62
    iget v1, v1, Lpck;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    :goto_63
    return-object v0

    nop

    nop

    nop

    nop

    :goto_64
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_65
    move v8, v6

    nop

    nop

    :goto_66
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_67
    const v1, 0x1a

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_68
    if-eq v8, v6, :cond_a

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_69
    check-cast v8, Lpck;

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_6a
    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public b(Ljava/util/List;Lpby;Lpog;Lnne;Lpnx;)Lpck;
    .locals 7

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    if-nez v6, :cond_0

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    :cond_0
    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    :goto_1
    add-int/lit8 v5, v5, 0x1

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p4}, Landroid/media/MediaCodecList;->getCodecInfos()[Landroid/media/MediaCodecInfo;

    move-result-object p4

    nop

    nop

    nop

    nop

    goto/32 :goto_b5

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0x19

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_4
    iget v1, p5, Lpck;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p2}, Lpby;->a()D

    move-result-wide p2

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p4, p5}, Lhoh;->e(Lhmn;)Ljava/lang/String;

    move-result-object p4

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

    :goto_7
    invoke-virtual {p3}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object p3

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p2, p3}, Lpby;->m(Lpby;)Z

    move-result p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_9
    sget-object p5, Lpog;->a:Lpog;

    nop

    nop

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    new-instance p4, Landroid/media/MediaCodecList;

    nop

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    :goto_b
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-ne p4, p5, :cond_1

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    :cond_1
    goto/32 :goto_71

    nop

    nop

    :goto_d
    sget-object p5, Lcom/a;->camera_min_viewfinder_res:Lhmo;

    nop

    nop

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    :goto_e
    goto/16 :goto_6c

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_6b

    nop

    nop

    :goto_10
    sget-object v3, Lhmu;->as:Lhmn;

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    :goto_11
    new-instance p5, Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget v0, p5, Lpck;->a:I

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_13
    sub-double/2addr v1, p3

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-ltz v1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_7b

    nop

    nop

    nop

    :goto_15
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    :goto_16
    goto/16 :goto_6a

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_67

    nop

    nop

    :goto_18
    if-nez p3, :cond_3

    nop

    nop

    goto/32 :goto_bb

    nop

    nop

    :cond_3
    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    sget-object p5, Lnne;->c:Lnne;

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    :goto_1a
    if-eqz p3, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    :goto_1c
    xor-int/lit8 p5, p5, 0x1

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_1d
    new-instance p1, Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {p4, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    :goto_20
    const-wide v3, 0x3f9999999999999aL    # 0.025

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iget-object p4, p0, Lnip;->d:Lhoh;

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v1, p3}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object p3

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

    :goto_23
    sget-object p4, Lnip;->a:Lsdb;

    nop

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    :goto_24
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p5

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_25
    move-object p1, p4

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_27
    const/4 v1, 0x0

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result p3

    nop

    nop

    nop

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    move p4, v2

    nop

    :goto_2b
    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_2c
    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-static {p4}, Lolx;->aH(Ljava/lang/String;)Lpck;

    move-result-object p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b6

    nop

    nop

    nop

    :goto_2e
    goto :goto_39

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    if-le p5, v1, :cond_5

    nop

    goto/32 :goto_80

    nop

    :cond_5
    goto/32 :goto_33

    nop

    nop

    :goto_31
    iget-object p1, p0, Lnip;->d:Lhoh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_32
    cmpg-double v1, v1, v3

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

    :goto_33
    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_34
    move v0, v2

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_b1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    new-instance p4, Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    :goto_37
    iget-object p3, p0, Lnip;->c:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_38
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    nop

    nop

    nop

    nop

    :goto_39
    goto/32 :goto_96

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    if-nez v0, :cond_6

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_1e

    nop

    nop

    :goto_3b
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_3c
    const v1, 0x5

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_3d
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    if-nez p4, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    :cond_7
    goto/32 :goto_bc

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-interface {p4, p5, p3}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_40
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    nop

    :goto_41
    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    sget-object p5, Lhmq;->ad:Lhmn;

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    goto/32 :goto_79

    nop

    nop

    nop

    nop

    :goto_44
    invoke-interface {p4, p5}, Lscz;->M(I)Lsdo;

    move-result-object p4

    nop

    nop

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    goto/16 :goto_26

    nop

    :goto_46
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_47
    sget-object p5, Lhmq;->aV:Lhmn;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_48
    return-object p0

    nop

    nop

    nop

    :goto_49
    goto/32 :goto_43

    nop

    nop

    nop

    :goto_4a
    sget-object p5, Lhmq;->ac:Lhmn;

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    :goto_4b
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    nop

    goto/32 :goto_b8

    nop

    nop

    nop

    :goto_4c
    const-string p5, "No codec info found for codec \'%s\'! Will not filter preview sizes!"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_4d
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    invoke-static {p5}, La;->au(Z)V

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_4f
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    if-ne p4, p5, :cond_8

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_b4

    nop

    nop

    :goto_51
    goto/16 :goto_80

    nop

    nop

    :goto_52
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    invoke-virtual {v1}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v3

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_54
    const/16 v0, 0x438

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    :goto_55
    goto/16 :goto_28

    nop

    nop

    nop

    nop

    :catchall_0
    :goto_56
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    goto :goto_62

    nop

    nop

    :goto_58
    goto/32 :goto_21

    nop

    nop

    :goto_59
    if-nez v6, :cond_9

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    if-eqz v1, :cond_a

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_23

    nop

    nop

    :goto_5b
    const-string p1, "aGRyX25ldF9rZXk="

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    :goto_5c
    if-nez p4, :cond_b

    nop

    nop

    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    if-nez v0, :cond_c

    nop

    goto/32 :goto_9e

    nop

    nop

    :cond_c
    goto/32 :goto_8c

    nop

    nop

    nop

    :goto_5e
    move p4, v0

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    :goto_5f
    invoke-static {v1, p4}, Ljava/lang/Math;->max(II)I

    move-result v1

    nop

    nop

    nop

    :goto_60
    goto/32 :goto_1d

    nop

    nop

    :goto_61
    invoke-virtual {p4, p5}, Lhoh;->e(Lhmn;)Ljava/lang/String;

    move-result-object p4

    nop

    nop

    nop

    nop

    :goto_62
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_63
    check-cast v1, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    :goto_64
    iget p5, p4, Lpck;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b9

    nop

    nop

    nop

    :goto_65
    move v1, p4

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_66
    sget-object v4, Lhmu;->p:Lhmo;

    nop

    nop

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    :goto_67
    add-int/lit8 v0, v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    :goto_68
    iput p4, p0, Lnip;->e:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    :goto_69
    move v5, v2

    nop

    nop

    nop

    nop

    :goto_6a
    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    move v1, v0

    nop

    nop

    nop

    nop

    :goto_6c
    goto/32 :goto_4d

    nop

    nop

    :goto_6d
    iget-object v3, p0, Lnip;->d:Lhoh;

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    :goto_6e
    if-lt v5, v4, :cond_d

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_94

    nop

    nop

    :goto_6f
    invoke-virtual {p0, p1, p2, p3}, Lnip;->a(Ljava/util/List;D)Lpck;

    move-result-object p0

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_70
    if-lez v0, :cond_e

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_78

    nop

    :goto_71
    sget-object p4, Lpog;->a:Lpog;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    :goto_72
    move-object/from16 p1, v3

    nop

    nop

    nop

    nop

    nop

    :goto_73
    goto/32 :goto_37

    nop

    nop

    nop

    :goto_74
    if-nez p1, :cond_f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_a0

    nop

    nop

    :goto_75
    if-nez v6, :cond_10

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    :cond_10
    :try_start_0
    invoke-virtual {v1}, Landroid/media/MediaCodecInfo;->isHardwareAccelerated()Z

    move-result v6

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_76
    invoke-virtual {p4}, Lscs;->c()Lsdo;

    move-result-object p4

    nop

    nop

    nop

    goto/32 :goto_b3

    nop

    nop

    nop

    nop

    :goto_77
    invoke-virtual {p1, v3}, Lhoh;->p(Lhmn;)Z

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    :goto_78
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_79
    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    :goto_7a
    if-lez p3, :cond_11

    nop

    nop

    goto/32 :goto_f

    nop

    :cond_11
    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    invoke-virtual {p5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    :goto_7c
    const/16 p4, 0x5a0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :goto_7d
    if-nez p5, :cond_12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :cond_12
    goto/32 :goto_4b

    nop

    nop

    :goto_7e
    invoke-virtual {p2}, Lpby;->a()D

    move-result-wide p3

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    :goto_7f
    move/from16 v1, p4

    nop

    nop

    :goto_80
    goto/32 :goto_91

    nop

    nop

    nop

    nop

    nop

    :goto_81
    invoke-virtual {v1}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v6

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    :goto_82
    invoke-virtual {p4, p5}, Lhoh;->a(Lhmo;)Lj$/util/Optional;

    move-result-object p4

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    :goto_83
    iget-object p4, p0, Lnip;->d:Lhoh;

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_84
    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_85
    invoke-virtual {p3, v0, v1}, Landroid/media/MediaCodecInfo$VideoCapabilities;->isSizeSupported(II)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_86
    if-eq p3, p4, :cond_13

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    :cond_13
    goto/32 :goto_83

    nop

    nop

    :goto_87
    invoke-static {p1}, Lcom/a;->aa_mb(Ljava/lang/Object;)I

    move-result p1

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_88
    float-to-double v1, v1

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

    :goto_89
    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_8a
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_8b
    check-cast p4, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_8c
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_bd

    nop

    nop

    nop

    nop

    nop

    :goto_8d
    array-length v4, v3

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    :goto_8e
    invoke-virtual {v6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_8f
    invoke-static {p1, p4}, Lkav;->A(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    nop

    nop

    nop

    :goto_90
    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    nop

    :goto_91
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_92
    new-instance v3, Ljava/util/ArrayList;

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    nop

    :goto_93
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    :goto_94
    aget-object v6, v3, v5

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    :goto_95
    invoke-virtual {p4}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object p4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    :goto_96
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    :goto_97
    invoke-direct {p4, v2}, Landroid/media/MediaCodecList;-><init>(I)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_98
    invoke-virtual {v0}, Lpck;->a()F

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    :goto_99
    cmpl-double p3, p3, v0

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9a
    if-eq p3, p5, :cond_14

    nop

    nop

    nop

    nop

    goto/32 :goto_bb

    nop

    nop

    nop

    :cond_14
    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :goto_9b
    goto/16 :goto_35

    nop

    :goto_9c
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_9d
    goto/16 :goto_41

    nop

    nop

    nop

    :goto_9e
    goto/32 :goto_7e

    nop

    nop

    nop

    :goto_9f
    invoke-virtual {v3, v4}, Lhoh;->a(Lhmo;)Lj$/util/Optional;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    :goto_a0
    if-gtz p3, :cond_15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :cond_15
    goto/32 :goto_5e

    nop

    nop

    :goto_a1
    iget-object p4, p0, Lnip;->d:Lhoh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_a2
    invoke-direct {p5}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a3
    if-gez p4, :cond_16

    nop

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    :cond_16
    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    :goto_a4
    invoke-virtual {p2}, Lpby;->a()D

    move-result-wide p3

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

    :goto_a5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    nop

    nop

    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a6
    iget-object p4, p0, Lnip;->d:Lhoh;

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a7
    goto/16 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_a8
    goto/32 :goto_2a

    nop

    nop

    :goto_a9
    invoke-static {p3}, Lpby;->j(Lpck;)Lpby;

    move-result-object p3

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_aa
    invoke-virtual {v3, v1}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ab
    check-cast p4, Lscz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_ac
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ad
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    :goto_ae
    if-nez p3, :cond_17

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    :cond_17
    goto/32 :goto_72

    nop

    nop

    nop

    :goto_af
    aget-object v1, p4, v0

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_b0
    check-cast p4, Lpck;

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    :goto_b1
    if-lt v0, p5, :cond_18

    nop

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    :cond_18
    goto/32 :goto_af

    nop

    nop

    nop

    :goto_b2
    if-nez p1, :cond_19

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    :cond_19
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_b3
    const/16 p5, 0x13bf

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_b4
    sget-object p5, Lnne;->i:Lnne;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_b5
    array-length p5, p4

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_b6
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b7
    invoke-virtual {p4, p5}, Lhoh;->e(Lhmn;)Ljava/lang/String;

    move-result-object p4

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    :goto_b8
    check-cast p5, Lpck;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_b9
    invoke-virtual {v3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_ba
    sget-object p2, Lpby;->a:Lpby;

    nop

    nop

    :goto_bb
    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    nop

    :goto_bc
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    :goto_bd
    check-cast v0, Lpck;

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop
.end method

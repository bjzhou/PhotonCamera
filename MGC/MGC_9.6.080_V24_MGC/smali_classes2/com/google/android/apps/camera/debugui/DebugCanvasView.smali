.class public Lcom/google/android/apps/camera/debugui/DebugCanvasView;
.super Lhsd;
.source "PG"


# instance fields
.field public final a:Landroid/graphics/Paint;

.field public final b:Landroid/graphics/Paint;

.field public final c:Landroid/graphics/Paint;

.field public volatile d:Z

.field private final f:Landroid/graphics/Paint;

.field private final g:Landroid/graphics/Paint;

.field private final h:Landroid/graphics/Paint;

.field private final i:Landroid/graphics/Paint;

.field private final j:Landroid/graphics/Paint;

.field private final k:Landroid/graphics/Paint;

.field private final l:Landroid/graphics/Paint;

.field private volatile m:Ljava/util/List;

.field private volatile n:Ljava/util/List;

.field private volatile o:Ljava/util/List;

.field private volatile p:Landroid/hardware/camera2/params/MeteringRectangle;

.field private volatile q:Lrrr;

.field private volatile r:Ljava/util/List;

.field private volatile s:Ljava/util/List;

.field private volatile t:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 13

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object v0, p0, Lcom/google/android/apps/camera/debugui/DebugCanvasView;->c:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    :goto_1
    new-instance v3, Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_2
    invoke-virtual {v3, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_3
    new-instance v7, Landroid/graphics/Paint;

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

    :goto_4
    invoke-virtual {v3, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p1, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_6
    new-instance v0, Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p2, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    goto/32 :goto_7b

    nop

    nop

    :goto_8
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto/32 :goto_62

    nop

    nop

    nop

    :goto_b
    const/high16 v0, 0x42800000    # 64.0f

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iput-object v1, p0, Lcom/google/android/apps/camera/debugui/DebugCanvasView;->f:Landroid/graphics/Paint;

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

    :goto_d
    invoke-virtual {p1, v10}, Landroid/graphics/Paint;->setColor(I)V

    goto/32 :goto_41

    nop

    nop

    :goto_e
    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const p1, -0xff0100

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_10
    invoke-virtual {p1, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    goto/32 :goto_5d

    nop

    nop

    :goto_11
    const/4 v12, 0x0

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_13
    sget-object v8, Lsbh;->a:Lryb;

    nop

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-direct {p0, p1, p2}, Lhsd;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v6, p2}, Landroid/graphics/Paint;->setColor(I)V

    goto/32 :goto_60

    nop

    nop

    nop

    :goto_17
    sget v8, Lryb;->d:I

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_18
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-direct {p1, v11, v12}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    goto/32 :goto_77

    nop

    nop

    :goto_1a
    iput-object v4, p0, Lcom/google/android/apps/camera/debugui/DebugCanvasView;->i:Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v0, v11}, Landroid/graphics/Paint;->setTextSize(F)V

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_1c
    const v1, 0xe

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iput-object p1, p0, Lcom/google/android/apps/camera/debugui/DebugCanvasView;->q:Lrrr;

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

    :goto_1e
    iput-object v8, p0, Lcom/google/android/apps/camera/debugui/DebugCanvasView;->o:Ljava/util/List;

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

    :goto_1f
    sget-object v8, Lsbh;->a:Lryb;

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    :goto_20
    invoke-virtual {v1, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    goto/32 :goto_2e

    nop

    nop

    :goto_21
    iput-object p1, p0, Lcom/google/android/apps/camera/debugui/DebugCanvasView;->a:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const/4 p2, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_24
    invoke-virtual {v4, v10}, Landroid/graphics/Paint;->setTextSize(F)V

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_25
    iput-object v6, p0, Lcom/google/android/apps/camera/debugui/DebugCanvasView;->k:Landroid/graphics/Paint;

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

    nop

    :goto_26
    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_27
    invoke-virtual {v4, p2}, Landroid/graphics/Paint;->setColor(I)V

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_28
    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_29
    new-instance p1, Landroid/graphics/RectF;

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

    :goto_2a
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    :goto_2b
    invoke-virtual {v5, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto/32 :goto_16

    nop

    nop

    :goto_2c
    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    goto/32 :goto_65

    nop

    nop

    nop

    :goto_2d
    iput-object v5, p0, Lcom/google/android/apps/camera/debugui/DebugCanvasView;->j:Landroid/graphics/Paint;

    nop

    goto/32 :goto_59

    nop

    nop

    :goto_2e
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_2f
    iput-object v3, p0, Lcom/google/android/apps/camera/debugui/DebugCanvasView;->h:Landroid/graphics/Paint;

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    :goto_30
    new-instance v2, Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-virtual {v3, v10}, Landroid/graphics/Paint;->setTextSize(F)V

    goto/32 :goto_27

    nop

    nop

    :goto_33
    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    :goto_34
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_35
    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_36
    const v0, -0xffff01

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_38
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    :goto_39
    invoke-virtual {v4, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto/32 :goto_24

    nop

    nop

    :goto_3a
    const/high16 v1, 0x41800000    # 16.0f

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-virtual {p1, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    const v0, 0x2

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

    :goto_3d
    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_3f
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_40
    const/4 v8, 0x1

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

    :goto_41
    const/high16 v10, 0x42400000    # 48.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_42
    invoke-virtual {v3, p1}, Landroid/graphics/Paint;->setColor(I)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_43
    iput-object p2, p0, Lcom/google/android/apps/camera/debugui/DebugCanvasView;->b:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_44
    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

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

    :goto_45
    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    goto/32 :goto_43

    nop

    nop

    :goto_46
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    :goto_48
    return-void

    nop

    nop

    :array_0
    .array-data 4
        0x40800000    # 4.0f
        0x40800000    # 4.0f
    .end array-data

    :goto_49
    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_4a
    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    invoke-virtual {v7, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_4d
    invoke-virtual {p1, v10}, Landroid/graphics/Paint;->setTextSize(F)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    const/high16 p1, 0x40800000    # 4.0f

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    iput-object v7, p0, Lcom/google/android/apps/camera/debugui/DebugCanvasView;->l:Landroid/graphics/Paint;

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_50
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_51
    const/16 v10, -0x100

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_52
    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    goto/32 :goto_54

    nop

    nop

    :goto_53
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_54
    iput-object v2, p0, Lcom/google/android/apps/camera/debugui/DebugCanvasView;->g:Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_55
    const/high16 p1, 0x41c00000    # 24.0f

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_56
    const/high16 v11, 0x41f00000    # 30.0f

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_57
    invoke-virtual {v7, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto/32 :goto_33

    nop

    nop

    :goto_58
    invoke-virtual {v7, p2}, Landroid/graphics/Paint;->setColor(I)V

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_59
    new-instance v6, Landroid/graphics/Paint;

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_5a
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    new-array v11, v11, [F

    nop

    nop

    nop

    nop

    fill-array-data v11, :array_0

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    const/4 p1, 0x0

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    :goto_5d
    sget-object v9, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_5e
    invoke-virtual {p2, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    invoke-virtual {v6, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    :goto_60
    const/high16 p1, 0x40000000    # 2.0f

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_61
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_8

    nop

    :goto_62
    const v0, 0x3f19999a    # 0.6f

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_63
    const/high16 v9, 0x40400000    # 3.0f

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

    :goto_64
    const/high16 v0, 0x40c00000    # 6.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_65
    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_66
    new-instance p2, Landroid/graphics/Paint;

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_67
    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_68
    new-instance v1, Landroid/graphics/Paint;

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    :goto_69
    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto/32 :goto_58

    nop

    nop

    :goto_6a
    new-instance v5, Landroid/graphics/Paint;

    nop

    goto/32 :goto_67

    nop

    nop

    :goto_6b
    sget-object v8, Lsbh;->a:Lryb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_6c
    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_6d
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto/32 :goto_b

    nop

    nop

    :goto_6e
    iput-object p1, p0, Lcom/google/android/apps/camera/debugui/DebugCanvasView;->p:Landroid/hardware/camera2/params/MeteringRectangle;

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_6f
    invoke-virtual {v5, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_70
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_71
    iput-object v8, p0, Lcom/google/android/apps/camera/debugui/DebugCanvasView;->n:Ljava/util/List;

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    :goto_72
    const/high16 v0, -0x10000

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    :goto_73
    const/4 v11, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_74
    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_75
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    :goto_76
    new-instance p1, Landroid/graphics/DashPathEffect;

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    :goto_77
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    goto/32 :goto_5e

    nop

    nop

    :goto_78
    invoke-virtual {v7, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_79
    iput-object v8, p0, Lcom/google/android/apps/camera/debugui/DebugCanvasView;->m:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_7a
    new-instance p1, Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_7b
    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    new-instance v4, Landroid/graphics/Paint;

    nop

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

    :goto_7d
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iget-object p0, p0, Lhsd;->e:Lpdl;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lpdl;->f()Z

    goto/32 :goto_2

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

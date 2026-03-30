.class public Lcom/google/android/libraries/memorymonitor/MemoryMonitorView;
.super Landroid/view/View;
.source "PG"


# static fields
.field public static final a:F

.field private static final h:Ljava/lang/Runtime;


# instance fields
.field public final b:J

.field public final c:J

.field public final d:J

.field public final e:F

.field public final f:Lqdi;

.field public volatile g:Lqdh;

.field private final i:Landroid/content/res/Resources;

.field private j:I

.field private k:I

.field private final l:Landroid/graphics/Paint;

.field private final m:Landroid/graphics/Paint;

.field private final n:Landroid/graphics/Paint;

.field private o:F

.field private final p:F

.field private final q:F

.field private final r:Landroid/view/GestureDetector;

.field private final s:Lqdk;


# direct methods
.method private final 23ce148e54b083367f51e25c7971761em(ILandroid/graphics/Canvas;I)V
    .locals 7

    goto/32 :goto_5

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

    goto/32 :goto_9

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_1
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

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

    nop

    :goto_4
    goto/32 :goto_1

    nop

    nop

    :goto_5
    const v0, 0x1f

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const-wide/16 v1, 0x0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_7
    move-object v5, p2

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_8
    goto/32 :goto_4

    nop

    nop

    :goto_9
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    move-object v0, p0

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-direct/range {v0 .. v6}, Lcom/google/android/libraries/memorymonitor/MemoryMonitorView;->da190e616797844b591057d0190e7728m(JIILandroid/graphics/Canvas;I)F

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v1, 0x19

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    move v6, p3

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_f
    move v4, p1

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

    :goto_10
    const/4 v3, 0x0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop
.end method

.method private final 33f5b80483094659737b73d90f80a8a4m(J)F
    .locals 4

    goto/32 :goto_d

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_1
    const-wide/16 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_a

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
    iget p0, p0, Lcom/google/android/libraries/memorymonitor/MemoryMonitorView;->o:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_5
    return p0

    nop

    nop

    :goto_6
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_7
    mul-float/2addr p1, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_8
    const/4 p0, 0x0

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

    :goto_9
    return p1

    nop

    :goto_a
    goto/32 :goto_11

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_d
    const v0, 0xb

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_e
    div-float/2addr p1, p2

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

    :goto_f
    iget-wide v0, p0, Lcom/google/android/libraries/memorymonitor/MemoryMonitorView;->d:J

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_10
    const v1, 0x1e

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_11
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_12
    long-to-float p2, v0

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

    nop

    :goto_13
    if-eqz v2, :cond_1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_14
    cmp-long v2, v0, v2

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_15
    long-to-float p1, p1

    nop

    goto/32 :goto_4

    nop

    nop

    nop
.end method

.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_2
    const v0, 0x16

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_e

    nop

    :goto_4
    long-to-float v0, v0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_5
    sput v0, Lcom/google/android/libraries/memorymonitor/MemoryMonitorView;->a:F

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0x9

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

    :goto_7
    sput-object v0, Lcom/google/android/libraries/memorymonitor/MemoryMonitorView;->h:Ljava/lang/Runtime;

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_8
    long-to-double v0, v0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_9
    return-void

    nop

    :goto_a
    goto/32 :goto_3

    nop

    nop

    :goto_b
    invoke-static {v0, v1}, Lcom/google/android/libraries/memorymonitor/MemoryMonitorView;->b(D)J

    move-result-wide v0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

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
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput v2, p0, Lcom/google/android/libraries/memorymonitor/MemoryMonitorView;->q:F

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_1
    iput-object p2, p0, Lcom/google/android/libraries/memorymonitor/MemoryMonitorView;->g:Lqdh;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_2
    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v2}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v2

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_4
    const-string v3, "activity"

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

    :goto_5
    iput-object v0, p0, Lcom/google/android/libraries/memorymonitor/MemoryMonitorView;->i:Landroid/content/res/Resources;

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

    :goto_6
    new-instance v1, Landroid/graphics/Paint;

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

    :goto_7
    invoke-static {p1, v2}, Lcom/google/android/libraries/memorymonitor/MemoryMonitorView;->a(Landroid/content/Context;I)I

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_8
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_9
    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_a
    new-instance p2, Lqdk;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_b
    iput-object v1, p0, Lcom/google/android/libraries/memorymonitor/MemoryMonitorView;->m:Landroid/graphics/Paint;

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

    :goto_c
    const/high16 v4, -0x1000000

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_d
    int-to-float v2, v2

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-direct {v0, p1, p2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    goto/32 :goto_10

    nop

    nop

    :goto_f
    int-to-long v2, v2

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iput-object v0, p0, Lcom/google/android/libraries/memorymonitor/MemoryMonitorView;->r:Landroid/view/GestureDetector;

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

    :goto_11
    div-int/2addr v0, v1

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

    :goto_12
    invoke-direct {p2, p0}, Lqdk;-><init>(Lcom/google/android/libraries/memorymonitor/MemoryMonitorView;)V

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    new-instance v0, Landroid/view/GestureDetector;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const v1, 0xe

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_15
    check-cast v2, Landroid/app/ActivityManager;

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

    :goto_16
    iput v1, p0, Lcom/google/android/libraries/memorymonitor/MemoryMonitorView;->k:I

    nop

    goto/32 :goto_6

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

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    new-instance p2, Lqdi;

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_34

    nop

    :goto_1a
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-static {p1, v1}, Lcom/google/android/libraries/memorymonitor/MemoryMonitorView;->a(Landroid/content/Context;I)I

    move-result v2

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_1c
    iput-object p2, p0, Lcom/google/android/libraries/memorymonitor/MemoryMonitorView;->f:Lqdi;

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_1d
    const/4 v2, 0x7

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_1e
    rem-int v0, v0, v1

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_1f
    iput v0, p0, Lcom/google/android/libraries/memorymonitor/MemoryMonitorView;->e:F

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

    :goto_20
    iput-object v1, p0, Lcom/google/android/libraries/memorymonitor/MemoryMonitorView;->l:Landroid/graphics/Paint;

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_21
    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_22
    const/4 v1, 0x2

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

    :goto_23
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_19

    nop

    :goto_24
    invoke-static {p1, v1}, Lcom/google/android/libraries/memorymonitor/MemoryMonitorView;->a(Landroid/content/Context;I)I

    move-result v1

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

    :goto_25
    int-to-long v3, v3

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

    :goto_26
    int-to-float v2, v2

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_27
    const/16 v1, 0x8c

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_28
    invoke-virtual {v2}, Landroid/app/ActivityManager;->getLargeMemoryClass()I

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_29
    iput-wide v2, p0, Lcom/google/android/libraries/memorymonitor/MemoryMonitorView;->c:J

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

    :goto_2a
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_2b
    const/16 v1, 0x2d

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

    :goto_2c
    int-to-float v0, v0

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

    :goto_2d
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

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

    :goto_2e
    invoke-virtual {p0}, Lcom/google/android/libraries/memorymonitor/MemoryMonitorView;->getContext()Landroid/content/Context;

    move-result-object v2

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    new-instance v3, Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_30
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_31
    int-to-float v2, v2

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-direct {p2}, Lqdi;-><init>()V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    return-void

    nop

    nop

    :goto_34
    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_35
    sget-object v2, Lcom/google/android/libraries/memorymonitor/MemoryMonitorView;->h:Ljava/lang/Runtime;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_36
    invoke-direct {p2}, Lqdh;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_37
    const v0, 0x1e

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_38
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_39
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

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

    :goto_3a
    iput v2, p0, Lcom/google/android/libraries/memorymonitor/MemoryMonitorView;->p:F

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_3b
    iput-wide v3, p0, Lcom/google/android/libraries/memorymonitor/MemoryMonitorView;->b:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_3c
    iput-wide v2, p0, Lcom/google/android/libraries/memorymonitor/MemoryMonitorView;->d:J

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_3d
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_3e
    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-static {p1, v2}, Lcom/google/android/libraries/memorymonitor/MemoryMonitorView;->a(Landroid/content/Context;I)I

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_40
    iput v1, p0, Lcom/google/android/libraries/memorymonitor/MemoryMonitorView;->j:I

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_41
    new-instance v1, Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_42
    iput-object p2, p0, Lcom/google/android/libraries/memorymonitor/MemoryMonitorView;->s:Lqdk;

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_43
    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_44
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    new-instance p2, Lqdh;

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_46
    iput-object v3, p0, Lcom/google/android/libraries/memorymonitor/MemoryMonitorView;->n:Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    invoke-static {p1, v1}, Lcom/google/android/libraries/memorymonitor/MemoryMonitorView;->a(Landroid/content/Context;I)I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_48
    invoke-virtual {v2}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop
.end method

.method public static a(Landroid/content/Context;I)I
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

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
    mul-float/2addr p1, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_2
    int-to-float p1, p1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

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

    :goto_4
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_5
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_6
    return p0

    nop

    nop

    nop

    nop
.end method

.method public static b(D)J
    .locals 2

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const-wide/high16 v0, 0x4130000000000000L    # 1048576.0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_2
    const v1, 0x4

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

    :goto_3
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_4
    div-double/2addr p0, v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_8
    return-wide p0

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0x1d

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method

.method private final da190e616797844b591057d0190e7728m(JIILandroid/graphics/Canvas;I)F
    .locals 6

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_0
    return p6

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Lcom/google/android/libraries/memorymonitor/MemoryMonitorView;->getWidth()I

    move-result v0

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_3
    add-float v4, v1, p6

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Lcom/google/android/libraries/memorymonitor/MemoryMonitorView;->getHeight()I

    move-result v1

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_5
    new-instance v2, Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_6
    div-float/2addr v0, v5

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_7
    invoke-virtual {v0, p6}, Landroid/graphics/Paint;->setColor(I)V

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_8
    const-string p1, "M"

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

    :goto_9
    sub-float/2addr v1, v2

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_a
    mul-int/2addr p4, p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_b
    div-float/2addr v3, v5

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

    nop

    :goto_c
    int-to-float p2, p4

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

    :goto_d
    iget v0, p0, Lcom/google/android/libraries/memorymonitor/MemoryMonitorView;->p:F

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_e
    add-float/2addr p3, p4

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_f
    new-instance v2, Ljava/lang/StringBuilder;

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_10
    mul-int/2addr v0, p4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_11
    int-to-float v2, p3

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

    :goto_12
    int-to-float p3, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_13
    long-to-double p1, p1

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_14
    div-float v1, p6, v0

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
    invoke-virtual {p5, v2, v0, v0, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto/32 :goto_17

    nop

    nop

    :goto_16
    const/high16 v0, 0x40000000    # 2.0f

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p0}, Lcom/google/android/libraries/memorymonitor/MemoryMonitorView;->getHeight()I

    move-result v0

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_18
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-direct {v2, v0, v1, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    sub-int/2addr v0, p3

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_1c
    iget p4, p0, Lcom/google/android/libraries/memorymonitor/MemoryMonitorView;->q:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_1d
    div-float/2addr p4, v0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_1

    nop

    :goto_1f
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_20
    add-float/2addr p3, v1

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_21
    int-to-float v0, v0

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_22
    sub-float/2addr v1, p6

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_23
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_24
    invoke-virtual {p5, p1, p2, p3, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iget-object v1, p0, Lcom/google/android/libraries/memorymonitor/MemoryMonitorView;->l:Landroid/graphics/Paint;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_26
    add-float/2addr v3, v0

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_1f

    nop

    :goto_28
    const v1, 0xa

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

    :goto_29
    const/high16 v5, 0x40400000    # 3.0f

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

    :goto_2a
    iget-object p0, p0, Lcom/google/android/libraries/memorymonitor/MemoryMonitorView;->n:Landroid/graphics/Paint;

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_2b
    int-to-float v3, v3

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2c
    div-float/2addr p2, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto/32 :goto_8

    nop

    nop

    :goto_2e
    invoke-virtual {p0}, Lcom/google/android/libraries/memorymonitor/MemoryMonitorView;->getWidth()I

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_2f
    if-lez v0, :cond_0

    nop

    goto/32 :goto_1f

    nop

    nop

    :cond_0
    goto/32 :goto_1e

    nop

    :goto_30
    sub-float/2addr p3, p6

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_31
    rem-int v0, v0, v1

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_32
    iget-object v0, p0, Lcom/google/android/libraries/memorymonitor/MemoryMonitorView;->l:Landroid/graphics/Paint;

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

    :goto_33
    invoke-static {p1, p2}, Lcom/google/android/libraries/memorymonitor/MemoryMonitorView;->b(D)J

    move-result-wide p1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_34
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_19

    nop

    nop

    :goto_35
    const v0, 0x1b

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

    :goto_36
    invoke-direct {p0, p1, p2}, Lcom/google/android/libraries/memorymonitor/MemoryMonitorView;->33f5b80483094659737b73d90f80a8a4m(J)F

    move-result p6

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_37
    int-to-float v1, v1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_38
    invoke-virtual {p0}, Lcom/google/android/libraries/memorymonitor/MemoryMonitorView;->getWidth()I

    move-result p2

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/libraries/memorymonitor/MemoryMonitorView;->getContext()Landroid/content/Context;

    move-result-object p1

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

    nop

    :goto_1
    invoke-static {p1, v0}, Lcom/google/android/libraries/memorymonitor/MemoryMonitorView;->a(Landroid/content/Context;I)I

    move-result p1

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_2
    const/16 v0, 0x8c

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    :goto_4
    invoke-static {p1, v0}, Lcom/google/android/libraries/memorymonitor/MemoryMonitorView;->a(Landroid/content/Context;I)I

    move-result p1

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

    :goto_5
    const/16 v0, 0x2d

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_6
    iput p1, p0, Lcom/google/android/libraries/memorymonitor/MemoryMonitorView;->k:I

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_7
    iput p1, p0, Lcom/google/android/libraries/memorymonitor/MemoryMonitorView;->j:I

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

    :goto_8
    invoke-virtual {p0}, Lcom/google/android/libraries/memorymonitor/MemoryMonitorView;->getContext()Landroid/content/Context;

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
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 15

    goto/32 :goto_35

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/libraries/memorymonitor/MemoryMonitorView;->getHeight()I

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_1
    div-float v3, v0, v6

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_28

    nop

    :goto_3
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct/range {v0 .. v6}, Lcom/google/android/libraries/memorymonitor/MemoryMonitorView;->da190e616797844b591057d0190e7728m(JIILandroid/graphics/Canvas;I)F

    move-result v0

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_5
    move-object/from16 v5, p1

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0}, Lcom/google/android/libraries/memorymonitor/MemoryMonitorView;->getHeight()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_8
    move-object/from16 v0, p1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_9
    new-instance v0, Landroid/graphics/RectF;

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

    nop

    :goto_a
    invoke-direct {v0, v9, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v5, v7, Lcom/google/android/libraries/memorymonitor/MemoryMonitorView;->m:Landroid/graphics/Paint;

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v1, -0xc76804

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_d
    cmp-long v1, v11, v13

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_e
    invoke-virtual {p0}, Lcom/google/android/libraries/memorymonitor/MemoryMonitorView;->getHeight()I

    move-result v1

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    sub-float v4, v0, v1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p0}, Lcom/google/android/libraries/memorymonitor/MemoryMonitorView;->getHeight()I

    move-result v0

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-wide v0, v10, Lqdh;->c:J

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-object v0, v7, Lcom/google/android/libraries/memorymonitor/MemoryMonitorView;->m:Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-direct {p0, v0, v8, v1}, Lcom/google/android/libraries/memorymonitor/MemoryMonitorView;->23ce148e54b083367f51e25c7971761em(ILandroid/graphics/Canvas;I)V

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_14
    move v2, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_15
    const/4 v9, 0x0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_16
    iget v1, v7, Lcom/google/android/libraries/memorymonitor/MemoryMonitorView;->p:F

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const/high16 v1, -0x1000000

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_18
    sub-float/2addr v1, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_19
    mul-float/2addr v0, v1

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

    nop

    :goto_1a
    move-object/from16 v5, p1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const v6, -0xff0100

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_1c
    const-wide/16 v13, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_1d
    iput v0, v7, Lcom/google/android/libraries/memorymonitor/MemoryMonitorView;->o:F

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const/4 v0, 0x2

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

    :goto_1f
    invoke-virtual {v8, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto/32 :goto_37

    nop

    nop

    :goto_20
    float-to-int v3, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    :goto_22
    if-gtz v1, :cond_0

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

    :cond_0
    goto/32 :goto_20

    nop

    nop

    :goto_23
    move-object/from16 v8, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    :goto_24
    invoke-direct {p0, v0, v8, v1}, Lcom/google/android/libraries/memorymonitor/MemoryMonitorView;->23ce148e54b083367f51e25c7971761em(ILandroid/graphics/Canvas;I)V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_25
    invoke-direct {p0, v13, v14}, Lcom/google/android/libraries/memorymonitor/MemoryMonitorView;->33f5b80483094659737b73d90f80a8a4m(J)F

    move-result v1

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

    :goto_26
    const/4 v0, 0x1

    nop

    goto/32 :goto_4f

    nop

    nop

    :goto_27
    return-void

    nop

    nop

    :goto_28
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_29
    div-float v3, v0, v6

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

    :goto_2a
    iget-wide v0, v10, Lqdh;->a:J

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_2b
    invoke-virtual {p0}, Lcom/google/android/libraries/memorymonitor/MemoryMonitorView;->getWidth()I

    move-result v0

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_2c
    move-object v0, p0

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    iget-object v2, v7, Lcom/google/android/libraries/memorymonitor/MemoryMonitorView;->l:Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    int-to-float v0, v0

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    const v1, -0x777778

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    int-to-float v0, v0

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_31
    int-to-float v0, v0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_32
    sub-float v4, v0, v1

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    :goto_33
    const/high16 v6, 0x40400000    # 3.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_34
    iget v2, v7, Lcom/google/android/libraries/memorymonitor/MemoryMonitorView;->o:F

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_35
    const v0, 0x1c

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_36
    int-to-float v0, v0

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

    :goto_37
    iget-object v10, v7, Lcom/google/android/libraries/memorymonitor/MemoryMonitorView;->g:Lqdh;

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    :goto_38
    iget-wide v11, v0, Lqdi;->c:J

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

    :goto_39
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_3a
    add-float/2addr v0, v9

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

    :goto_3b
    int-to-float v3, v3

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

    :goto_3c
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/32 :goto_27

    nop

    nop

    :goto_3d
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    :goto_3e
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_3f
    const/4 v4, 0x0

    nop

    goto/32 :goto_54

    nop

    nop

    :goto_40
    iget-wide v1, v10, Lqdh;->e:J

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_41
    const v1, 0x20

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

    :goto_42
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/32 :goto_48

    nop

    nop

    :goto_43
    move-object v7, p0

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_44
    iget-wide v0, v10, Lqdh;->b:J

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto/32 :goto_10

    nop

    nop

    :goto_46
    move-object/from16 v0, p1

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    :goto_47
    const/high16 v1, 0x3f000000    # 0.5f

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

    :goto_48
    invoke-virtual {p0}, Lcom/google/android/libraries/memorymonitor/MemoryMonitorView;->getHeight()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_49
    const/4 v3, 0x0

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_4a
    invoke-direct/range {v0 .. v6}, Lcom/google/android/libraries/memorymonitor/MemoryMonitorView;->da190e616797844b591057d0190e7728m(JIILandroid/graphics/Canvas;I)F

    :goto_4b
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_4c
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_4d
    move-object v0, p0

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_4e
    neg-long v1, v11

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    :goto_4f
    const/16 v1, -0x100

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_50
    iget-object v5, v7, Lcom/google/android/libraries/memorymonitor/MemoryMonitorView;->m:Landroid/graphics/Paint;

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

    :goto_51
    move v2, v4

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    invoke-direct {p0, v13, v14}, Lcom/google/android/libraries/memorymonitor/MemoryMonitorView;->33f5b80483094659737b73d90f80a8a4m(J)F

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_53
    invoke-virtual {p0}, Lcom/google/android/libraries/memorymonitor/MemoryMonitorView;->getWidth()I

    move-result v2

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    :goto_54
    const v6, -0x2dbfe3

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_55
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_56
    const v1, -0x2dbfe3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_57
    iget-object v0, v7, Lcom/google/android/libraries/memorymonitor/MemoryMonitorView;->m:Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_58
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2

    nop

    :goto_59
    int-to-float v0, v0

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_5a
    iget-object v0, v7, Lcom/google/android/libraries/memorymonitor/MemoryMonitorView;->l:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_5b
    int-to-float v1, v1

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

    :goto_5c
    const/4 v4, 0x0

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    invoke-virtual {p0}, Lcom/google/android/libraries/memorymonitor/MemoryMonitorView;->getWidth()I

    move-result v0

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

    :goto_5e
    iget-object v0, v7, Lcom/google/android/libraries/memorymonitor/MemoryMonitorView;->f:Lqdi;

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_5f
    iget-wide v1, v10, Lqdh;->d:J

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    :goto_60
    int-to-float v2, v2

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

    :goto_61
    move-wide v1, v11

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

    nop
.end method

.method protected final onMeasure(II)V
    .locals 4

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

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

    nop

    nop

    :goto_2
    goto/16 :goto_18

    nop

    :goto_3
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/16 :goto_18

    nop

    nop

    :goto_5
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_6
    goto :goto_d

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_9
    const/high16 v2, -0x80000000

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_a
    iget v0, p0, Lcom/google/android/libraries/memorymonitor/MemoryMonitorView;->j:I

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_c
    iget p1, p0, Lcom/google/android/libraries/memorymonitor/MemoryMonitorView;->j:I

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_e
    goto :goto_d

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_1b

    nop

    nop

    :goto_12
    const v0, 0x15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_13
    if-eq v0, v2, :cond_0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_14
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_16
    if-eq v0, v3, :cond_1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_17
    iget p2, p0, Lcom/google/android/libraries/memorymonitor/MemoryMonitorView;->k:I

    nop

    nop

    :goto_18
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p0, p1, p2}, Lcom/google/android/libraries/memorymonitor/MemoryMonitorView;->setMeasuredDimension(II)V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

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

    :goto_1c
    const v1, 0x1e

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    if-eq v1, v3, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_2
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1e
    if-lez v0, :cond_3

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_10

    nop

    :goto_1f
    return-void

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_8

    nop

    nop

    :goto_21
    if-eq v1, v2, :cond_4

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    const/high16 v3, 0x40000000    # 2.0f

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_23
    iget v0, p0, Lcom/google/android/libraries/memorymonitor/MemoryMonitorView;->k:I

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_24
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_0
    const-string v2, "Inflating heap utilization to %.2f%% (%.2f MB)"

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_3
    iput-wide v4, v1, Lqdi;->c:J

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_28

    nop

    nop

    :goto_5
    invoke-direct {v3, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_7
    const/4 v1, 0x1

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_8
    mul-float/2addr v2, v3

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

    :goto_9
    invoke-static {v6, v7}, Lcom/google/android/libraries/memorymonitor/MemoryMonitorView;->b(D)J

    move-result-wide v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_a
    iget-wide v2, v1, Lqdh;->d:J

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_b
    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    :goto_c
    add-long/2addr v4, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    :goto_e
    iget-object v3, v0, Lqdk;->c:Lcom/google/android/libraries/memorymonitor/MemoryMonitorView;

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_f
    check-cast v0, [B

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_10
    cmpl-float v2, v1, v2

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const-string v12, "Red: Artificially inflated Dalvik heap alloc.\nGreen: Dalvik heap alloc.\nYellow: Native heap alloc\nBlue: Other private dirty (GL RAM)\nBlack line: Dalvik heap size: "

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

    nop

    :goto_12
    sub-float/2addr v0, v2

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    :goto_13
    sub-long/2addr v4, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    :goto_14
    iget-wide v8, v3, Lcom/google/android/libraries/memorymonitor/MemoryMonitorView;->b:J

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :goto_16
    int-to-long v6, v0

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

    :goto_17
    iget-wide v4, v1, Lqdi;->c:J

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_18
    new-array v2, v2, [Ljava/lang/Object;

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    :goto_19
    long-to-float v2, v2

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v0, v2, v1}, Lqdk;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const v0, 0x15

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    :goto_1c
    iget-object v1, v1, Lcom/google/android/libraries/memorymonitor/MemoryMonitorView;->g:Lqdh;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1d
    invoke-static {v2, v3}, Lcom/google/android/libraries/memorymonitor/MemoryMonitorView;->b(D)J

    move-result-wide v1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_1e
    new-instance v3, Ljava/lang/StringBuilder;

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

    :goto_1f
    long-to-int v0, v4

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_21
    iget-object v0, v1, Lqdi;->b:Ljava/util/Stack;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iget-wide v6, v3, Lcom/google/android/libraries/memorymonitor/MemoryMonitorView;->d:J

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    mul-float/2addr v0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_24
    return p0

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_26
    const-string v1, " MB"

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_27
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto/32 :goto_26

    nop

    nop

    :goto_29
    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto/32 :goto_2b

    nop

    nop

    :goto_2a
    invoke-virtual {p0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_2b
    const-string v1, "MB (should be the same as the red line)\nDefault heap: "

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_2c
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    :cond_0
    goto/32 :goto_55

    nop

    nop

    :goto_2d
    const-string v1, " MB; large heap: "

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_6c

    nop

    :goto_2f
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_30
    iget-wide v2, v1, Lqdi;->c:J

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_31
    long-to-double v6, v6

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_32
    iget-object v4, v1, Lqdi;->b:Ljava/util/Stack;

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    :goto_33
    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_34
    iget-wide v10, v3, Lcom/google/android/libraries/memorymonitor/MemoryMonitorView;->c:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_35
    iget-wide v4, v1, Lqdi;->c:J

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_36
    goto/16 :goto_42

    nop

    :goto_37
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_38
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_39
    cmp-long v0, v4, v2

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_3a
    if-ltz v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    :cond_2
    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    const-wide/16 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    cmp-long v0, v4, v2

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_3d
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    if-eq v0, v1, :cond_3

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_71

    nop

    nop

    nop

    nop

    :goto_3f
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_40
    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

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

    :goto_41
    add-long/2addr v2, v4

    nop

    :goto_42
    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    float-to-long v4, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_44
    iget-wide v4, v1, Lqdi;->c:J

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_45
    const-string v1, "MB\nGrey background bounds: large heap size: "

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_46
    int-to-long v6, v0

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    iget-object v3, v0, Lqdk;->c:Lcom/google/android/libraries/memorymonitor/MemoryMonitorView;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    sub-long v4, v2, v4

    nop

    goto/32 :goto_59

    nop

    nop

    :goto_49
    iput-wide v4, v1, Lqdi;->c:J

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    invoke-virtual {v4, v5}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_4b
    mul-float/2addr v1, v2

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    sget v3, Lcom/google/android/libraries/memorymonitor/MemoryMonitorView;->a:F

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_4e
    array-length v0, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_4f
    const/high16 v2, 0x42c80000    # 100.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_50
    invoke-static {v2, v3}, Lcom/google/android/libraries/memorymonitor/MemoryMonitorView;->b(D)J

    move-result-wide v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    :goto_51
    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_52
    iget-wide v6, v1, Lqdh;->e:J

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_53
    iget v2, v0, Lqdk;->b:F

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_54
    iget v0, v0, Lqdk;->b:F

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    :goto_55
    goto/16 :goto_37

    nop

    nop

    nop

    :goto_56
    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    iget v2, v0, Lqdk;->a:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_58
    iget-object v0, v1, Lqdi;->b:Ljava/util/Stack;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_59
    const-wide/32 v6, 0x100000

    nop

    goto/32 :goto_5c

    nop

    nop

    :goto_5a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    const v1, 0x19

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_5c
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_5d
    iget v1, v0, Lqdk;->b:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_5e
    iget-wide v4, v1, Lqdi;->c:J

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_5f
    const-string v4, "MB\nRed line: Max Dalvik heap memory: "

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    :goto_60
    iget-object p0, p0, Lcom/google/android/libraries/memorymonitor/MemoryMonitorView;->r:Landroid/view/GestureDetector;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_61
    sget v1, Lqdk;->d:I

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    :goto_62
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_63
    goto/16 :goto_37

    nop

    nop

    :goto_64
    goto/32 :goto_70

    nop

    nop

    :goto_65
    invoke-virtual {v0, v1, v2}, Lqdk;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_66
    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_67
    iget-object v1, v0, Lqdk;->c:Lcom/google/android/libraries/memorymonitor/MemoryMonitorView;

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    :goto_68
    iget-object v1, v1, Lcom/google/android/libraries/memorymonitor/MemoryMonitorView;->f:Lqdi;

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_69
    invoke-static {}, Lqdi;->a()F

    move-result v2

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_6a
    if-nez v2, :cond_4

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    :cond_4
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_6b
    if-eqz v0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    goto/32 :goto_25

    nop

    nop

    :goto_6d
    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_6e
    new-array v5, v0, [B

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_6f
    iget-wide v2, v1, Lqdi;->a:J

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_70
    iget-object v1, v0, Lqdk;->c:Lcom/google/android/libraries/memorymonitor/MemoryMonitorView;

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_71
    iget-object v0, p0, Lcom/google/android/libraries/memorymonitor/MemoryMonitorView;->s:Lqdk;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop
.end method

.class public Lju;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lgm;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/widget/ListAdapter;

.field private c:I

.field private d:I

.field public e:Ljb;

.field public f:I

.field public g:I

.field public h:Z

.field public i:Z

.field public j:I

.field public k:I

.field public l:Landroid/view/View;

.field public m:Landroid/widget/AdapterView$OnItemClickListener;

.field public n:Landroid/widget/AdapterView$OnItemSelectedListener;

.field public final o:Landroid/os/Handler;

.field public p:Z

.field public q:Landroid/widget/PopupWindow;

.field public final r:Lau;

.field private s:I

.field private t:Z

.field private u:Landroid/database/DataSetObserver;

.field private final v:Ljt;

.field private final w:Landroid/graphics/Rect;

.field private x:Landroid/graphics/Rect;

.field private final y:Lgko;

.field private final z:Lau;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const/4 v0, 0x0

    nop

    goto/32 :goto_2

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
    invoke-direct {p0, p1, p2, p3, v0}, Lju;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I[B)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I[B)V
    .locals 4

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-nez p4, :cond_0

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v1, 0x1

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_2
    iput p4, p0, Lju;->j:I

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

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

    :goto_4
    iput v0, p0, Lju;->k:I

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

    nop

    :goto_5
    const/4 p4, 0x0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_7
    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    goto/32 :goto_26

    nop

    nop

    :goto_8
    iput-object v0, p0, Lju;->v:Ljt;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_a
    new-instance v0, Landroid/os/Handler;

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
    new-instance p4, Lhr;

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v0, p4, p4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_d
    iput-object p1, p0, Lju;->a:Landroid/content/Context;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_f
    invoke-direct {v0, p0, v3, v2}, Lau;-><init>(Ljava/lang/Object;I[B)V

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_10
    return-void

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_12
    invoke-direct {v0, p0}, Ljt;-><init>(Lju;)V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_13
    const v0, 0x7fffffff

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_14
    iput-object v0, p0, Lju;->r:Lau;

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_15
    new-instance v0, Landroid/graphics/Rect;

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v0, v1, p4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p4

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_17
    new-instance v0, Lau;

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const v1, 0xb

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p4, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    goto/32 :goto_10

    nop

    nop

    :goto_1a
    new-instance v0, Lau;

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_1b
    invoke-direct {v0, p0, v1}, Lgko;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_1c
    iput p4, p0, Lju;->s:I

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1d
    iput-object v0, p0, Lju;->w:Landroid/graphics/Rect;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1e
    const/16 v3, 0x13

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1f
    invoke-direct {v0, p0, v1, v2}, Lau;-><init>(Ljava/lang/Object;I[B)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_20
    invoke-direct {p4, p1, p2, p3}, Lhr;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    goto/32 :goto_2e

    nop

    nop

    :goto_21
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iput p4, p0, Lju;->f:I

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

    nop

    :goto_24
    const/4 p4, -0x2

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

    nop

    :goto_25
    const/16 p4, 0x3ea

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_26
    iput-object v0, p0, Lju;->o:Landroid/os/Handler;

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    iput-boolean v1, p0, Lju;->t:Z

    nop

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_29
    rem-int v0, v0, v1

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

    :goto_2a
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_11

    nop

    :goto_2c
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_2d
    const v0, 0x12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_2e
    iput-object p4, p0, Lju;->q:Landroid/widget/PopupWindow;

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_2f
    new-instance v0, Lgko;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_30
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    :cond_1
    goto/32 :goto_2b

    nop

    :goto_31
    sget-object v0, Lew;->o:[I

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    iput-object v0, p0, Lju;->y:Lgko;

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    iput p4, p0, Lju;->c:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_34
    const/16 v1, 0x14

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_35
    iput v2, p0, Lju;->g:I

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_36
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_37
    iput-object v0, p0, Lju;->z:Lau;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_38
    iput p4, p0, Lju;->d:I

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

    :goto_39
    new-instance v0, Ljt;

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
.end method


# virtual methods
.method public final a()I
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    :goto_1
    iget p0, p0, Lju;->g:I

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final b()I
    .locals 1

    goto/32 :goto_4

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    :goto_1
    const/4 p0, 0x0

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

    :goto_2
    return p0

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-boolean v0, p0, Lju;->t:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_5
    iget p0, p0, Lju;->d:I

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_6
    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final bU()Landroid/widget/ListView;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    :goto_1
    iget-object p0, p0, Lju;->e:Ljb;

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

    nop
.end method

.method public final c()Landroid/graphics/drawable/Drawable;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lju;->q:Landroid/widget/PopupWindow;

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

    :goto_1
    return-object p0

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public e(Landroid/widget/ListAdapter;)V
    .locals 2

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x8

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

    :goto_1
    iget-object v1, p0, Lju;->b:Landroid/widget/ListAdapter;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_17

    nop

    nop

    :goto_3
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p1, p0}, Ljb;->setAdapter(Landroid/widget/ListAdapter;)V

    :goto_5
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0x13

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_7
    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :goto_8
    goto/32 :goto_1a

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v0, p0, Lju;->u:Landroid/database/DataSetObserver;

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_b
    invoke-direct {v0, p0}, Ljs;-><init>(Lju;)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-nez v1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-nez p1, :cond_1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iput-object v0, p0, Lju;->u:Landroid/database/DataSetObserver;

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

    :goto_f
    iget-object v0, p0, Lju;->u:Landroid/database/DataSetObserver;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_11
    add-int v0, v0, v1

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
    iget-object p1, p0, Lju;->e:Ljb;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_13
    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :goto_14
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_15
    new-instance v0, Ljs;

    nop

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

    :goto_16
    return-void

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-nez p1, :cond_2

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_19
    if-lez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_3
    goto/32 :goto_2

    nop

    :goto_1a
    iput-object p1, p0, Lju;->b:Landroid/widget/ListAdapter;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_1b
    if-eqz v0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object p0, p0, Lju;->b:Landroid/widget/ListAdapter;

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

    :goto_1d
    goto/16 :goto_8

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_1

    nop

    nop
.end method

.method public final f(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

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
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lju;->q:Landroid/widget/PopupWindow;

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public final g(I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput p1, p0, Lju;->g:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop
.end method

.method public final j(I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput p1, p0, Lju;->d:I

    nop

    nop

    goto/32 :goto_3

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

    nop

    :goto_2
    iput-boolean p1, p0, Lju;->t:Z

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 p1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method

.method public final k()V
    .locals 2

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0x17

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Lju;->o:Landroid/os/Handler;

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
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_4
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_6
    iget-object p0, p0, Lju;->r:Lau;

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
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_8
    iget-object v0, p0, Lju;->q:Landroid/widget/PopupWindow;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_9
    iget-object v0, p0, Lju;->q:Landroid/widget/PopupWindow;

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

    nop

    :goto_a
    iput-object v1, p0, Lju;->e:Ljb;

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

    :goto_b
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_7

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_8

    nop

    nop

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

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    :goto_12
    const v1, 0xe

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop
.end method

.method public final o()I
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lju;->e:Ljb;

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
    invoke-virtual {p0}, Ljb;->getSelectedItemPosition()I

    move-result p0

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

    nop

    :goto_2
    invoke-virtual {p0}, Lju;->u()Z

    move-result v0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_4
    return p0

    nop

    nop

    nop

    :goto_5
    const/4 p0, -0x1

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

    :goto_6
    return p0

    nop

    nop

    :goto_7
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public p(Landroid/content/Context;Z)Ljb;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    new-instance p0, Ljb;

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
    invoke-direct {p0, p1, p2}, Ljb;-><init>(Landroid/content/Context;Z)V

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final q()V
    .locals 1

    goto/32 :goto_2

    nop

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
    iput-boolean v0, p0, Ljb;->a:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lju;->e:Ljb;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    if-nez p0, :cond_0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    :goto_4
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0}, Ljb;->requestLayout()V

    :goto_6
    goto/32 :goto_0

    nop

    nop
.end method

.method public final r(I)V
    .locals 2

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    goto/32 :goto_3

    nop

    nop

    :goto_1
    iput p1, p0, Lju;->f:I

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

    nop

    :goto_2
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Lju;->w:Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0xc

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_8
    iput v1, p0, Lju;->f:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_9
    iget-object v0, p0, Lju;->q:Landroid/widget/PopupWindow;

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
    iget v0, v0, Landroid/graphics/Rect;->right:I

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_c
    iget-object v1, p0, Lju;->w:Landroid/graphics/Rect;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_f
    add-int/2addr v1, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_10
    const v0, 0x18

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_11
    iget v1, v0, Landroid/graphics/Rect;->left:I

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_12
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_9

    nop

    nop

    :goto_14
    return-void

    nop

    :goto_15
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-lez v0, :cond_1

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

    :cond_1
    goto/32 :goto_12

    nop

    :goto_17
    add-int/2addr v1, v0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop
.end method

.method public final s()V
    .locals 13

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x10

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Lju;->q:Landroid/widget/PopupWindow;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f3

    nop

    nop

    :goto_2
    iget-object v2, p0, Lju;->e:Ljb;

    nop

    nop

    nop

    goto/32 :goto_b9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-eq v3, v6, :cond_0

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_58

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v4}, Ljb;->getPaddingTop()I

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_6
    move v0, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0}, Lju;->q()V

    :goto_8
    goto/32 :goto_e1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v1, p0, Lju;->l:Landroid/view/View;

    nop

    nop

    nop

    nop

    goto/32 :goto_103

    nop

    nop

    nop

    :goto_a
    iget v4, p0, Lju;->j:I

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v0, p0, Lju;->e:Ljb;

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    :goto_c
    if-eqz v0, :cond_1

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_bc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    nop

    nop

    goto/32 :goto_10a

    nop

    nop

    nop

    :goto_e
    if-eq v3, v6, :cond_2

    nop

    nop

    goto/32 :goto_9a

    nop

    :cond_2
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v4, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    goto/32 :goto_101

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v4, p0, Lju;->e:Ljb;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v4, p0, Lju;->q:Landroid/widget/PopupWindow;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_12
    iget-object v8, p0, Lju;->l:Landroid/view/View;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f4

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setEpicenterBounds(Landroid/graphics/Rect;)V

    goto/32 :goto_a5

    nop

    nop

    nop

    :goto_14
    goto/16 :goto_7f

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_98

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget v3, v0, Landroid/graphics/Rect;->top:I

    nop

    nop

    nop

    nop

    goto/32 :goto_dd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-nez v4, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_102

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_94

    nop

    nop

    nop

    nop

    :goto_18
    iget-object v7, p0, Lju;->q:Landroid/widget/PopupWindow;

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/16 :goto_ed

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget v3, p0, Lju;->f:I

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1c
    iget-object v2, p0, Lju;->q:Landroid/widget/PopupWindow;

    nop

    nop

    nop

    goto/32 :goto_f8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object v3, p0, Lju;->l:Landroid/view/View;

    nop

    goto/32 :goto_7e

    nop

    nop

    :goto_1e
    iget-object v2, p0, Lju;->l:Landroid/view/View;

    nop

    nop

    nop

    goto/32 :goto_d4

    nop

    nop

    nop

    nop

    :goto_1f
    if-eq v0, v4, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f0

    nop

    :cond_4
    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iget-object v1, p0, Lju;->x:Landroid/graphics/Rect;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_21
    iget-object v2, p0, Lju;->q:Landroid/widget/PopupWindow;

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_22
    move v12, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_d2

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    const/4 v4, 0x2

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iget-object v0, p0, Lju;->e:Ljb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_27
    iget v3, p0, Lju;->c:I

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_28
    iget-boolean v1, p0, Lju;->h:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_d6

    nop

    nop

    :goto_29
    iget-object v0, p0, Lju;->w:Landroid/graphics/Rect;

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    :goto_2a
    neg-int v0, v0

    nop

    goto/32 :goto_f9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    iget-object v7, p0, Lju;->e:Ljb;

    nop

    nop

    goto/32 :goto_c0

    nop

    nop

    :goto_2c
    invoke-virtual {v7}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v7

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    if-lez v0, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    :cond_5
    goto/32 :goto_23

    nop

    :goto_2e
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_2f
    goto/16 :goto_e9

    nop

    :goto_30
    goto/32 :goto_dc

    nop

    nop

    nop

    nop

    :goto_31
    iget-object v0, p0, Lju;->e:Ljb;

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_32
    goto/16 :goto_63

    nop

    :goto_33
    goto/32 :goto_62

    nop

    nop

    :goto_34
    iget-object v0, p0, Lju;->q:Landroid/widget/PopupWindow;

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_35
    const v1, 0x9

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    :goto_36
    add-int/2addr v9, v8

    nop

    nop

    goto/32 :goto_f1

    nop

    nop

    nop

    :goto_37
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setIsClippedToScreen(Z)V

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :goto_38
    iget-object v4, p0, Lju;->q:Landroid/widget/PopupWindow;

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    iget-object p0, p0, Lju;->z:Lau;

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    :goto_3a
    move v2, v6

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    check-cast v0, Landroid/view/ViewGroup;

    nop

    nop

    :goto_3c
    goto/32 :goto_b3

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-virtual {v0, v1}, Ljb;->setFocusable(Z)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_3e
    iget v4, p0, Lju;->c:I

    nop

    nop

    goto/32 :goto_c3

    nop

    nop

    :goto_3f
    iget v8, v7, Landroid/graphics/Rect;->left:I

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    :goto_40
    add-int/2addr v0, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f7

    nop

    nop

    :goto_41
    add-int/2addr v8, v7

    nop

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    :goto_42
    iget-boolean v0, p0, Lju;->i:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c1

    nop

    nop

    :goto_43
    iget-object v2, p0, Lju;->b:Landroid/widget/ListAdapter;

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    :goto_44
    move v2, v6

    nop

    :goto_45
    goto/32 :goto_f6

    nop

    nop

    nop

    nop

    nop

    :goto_46
    invoke-virtual {v2, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    goto/32 :goto_72

    nop

    nop

    :goto_47
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    nop

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

    :goto_48
    if-ne v1, v4, :cond_6

    nop

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    const/high16 v7, -0x80000000

    nop

    goto/32 :goto_106

    nop

    nop

    nop

    :goto_4a
    const/4 v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_4b
    if-gtz v0, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    :cond_7
    goto/32 :goto_10

    nop

    nop

    :goto_4c
    invoke-virtual {v0, v6}, Ljb;->setSelection(I)V

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    :goto_4d
    iget-boolean v2, p0, Lju;->p:Z

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4f
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_50
    invoke-virtual/range {v7 .. v12}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_51
    if-ne v4, v5, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_fd

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_c7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    invoke-virtual {v3, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_53
    if-eqz v0, :cond_9

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_54
    move v5, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_fa

    nop

    nop

    nop

    :goto_55
    iget-object v7, p0, Lju;->q:Landroid/widget/PopupWindow;

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_56
    iget-object v0, p0, Lju;->e:Ljb;

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_57
    iget v5, p0, Lju;->f:I

    nop

    nop

    nop

    goto/32 :goto_105

    nop

    nop

    nop

    :goto_58
    move v3, v6

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_59
    goto/16 :goto_e9

    nop

    nop

    :goto_5a
    goto/32 :goto_e8

    nop

    nop

    :goto_5b
    goto/16 :goto_107

    nop

    nop

    :goto_5c
    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :goto_5d
    invoke-virtual {p0}, Lju;->w()Z

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    :goto_5e
    iget-object v0, p0, Lju;->e:Ljb;

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_5f
    iget-object v3, p0, Lju;->w:Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_60
    iget v9, v8, Landroid/graphics/Rect;->left:I

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_61
    iget-object v4, p0, Lju;->a:Landroid/content/Context;

    nop

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

    :goto_62
    move v11, v3

    nop

    nop

    nop

    :goto_63
    goto/32 :goto_c9

    nop

    nop

    nop

    nop

    nop

    :goto_64
    iget-object v7, p0, Lju;->e:Ljb;

    nop

    nop

    nop

    goto/32 :goto_de

    nop

    nop

    nop

    nop

    :goto_65
    iget-object v0, p0, Lju;->q:Landroid/widget/PopupWindow;

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_66
    iget-object v0, p0, Lju;->e:Ljb;

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    :goto_67
    move v11, v6

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_68
    iget v5, p0, Lju;->d:I

    nop

    nop

    goto/32 :goto_ca

    nop

    nop

    nop

    nop

    :goto_69
    iget-object v0, p0, Lju;->q:Landroid/widget/PopupWindow;

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_6a
    move v0, v1

    nop

    goto/32 :goto_ef

    nop

    nop

    nop

    :goto_6b
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;III)V

    goto/32 :goto_26

    nop

    nop

    :goto_6c
    iget v7, v7, Landroid/graphics/Rect;->right:I

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_6d
    invoke-virtual {v0, v2}, Ljb;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    goto/32 :goto_df

    nop

    nop

    nop

    :goto_6e
    invoke-virtual {v6, v4, v5, v0}, Landroid/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;IZ)I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_6f
    iget-object v7, p0, Lju;->w:Landroid/graphics/Rect;

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_70
    iget-object v2, p0, Lju;->q:Landroid/widget/PopupWindow;

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    :goto_71
    invoke-virtual {v0, v1}, Ljb;->setFocusableInTouchMode(Z)V

    goto/32 :goto_ea

    nop

    nop

    nop

    :goto_72
    goto/16 :goto_3c

    nop

    nop

    nop

    :goto_73
    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    nop

    :goto_74
    iget-object v2, p0, Lju;->m:Landroid/widget/AdapterView$OnItemClickListener;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    :goto_75
    invoke-virtual {v2, v6}, Landroid/widget/PopupWindow;->setHeight(I)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_76
    if-ne v7, v5, :cond_a

    nop

    goto/32 :goto_ed

    nop

    nop

    :cond_a
    goto/32 :goto_ec

    nop

    nop

    :goto_77
    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_78
    goto/32 :goto_d1

    nop

    nop

    :goto_79
    iget-object v0, p0, Lju;->n:Landroid/widget/AdapterView$OnItemSelectedListener;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ff

    nop

    nop

    nop

    :goto_7a
    iget v0, v0, Landroid/graphics/Rect;->top:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_7b
    goto/16 :goto_d5

    nop

    nop

    :goto_7c
    goto/32 :goto_cf

    nop

    nop

    :goto_7d
    iget-object v4, p0, Lju;->l:Landroid/view/View;

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    :goto_7e
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    goto/32 :goto_b8

    nop

    nop

    nop

    :goto_80
    iget-object v2, p0, Lju;->q:Landroid/widget/PopupWindow;

    nop

    goto/32 :goto_f5

    nop

    nop

    nop

    nop

    :goto_81
    iget v8, v8, Landroid/graphics/Rect;->right:I

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_82
    move v0, v3

    nop

    nop

    nop

    nop

    nop

    :goto_83
    goto/32 :goto_108

    nop

    nop

    nop

    nop

    nop

    :goto_84
    move v5, v2

    nop

    nop

    :goto_85
    goto/32 :goto_9f

    nop

    nop

    nop

    :goto_86
    iget-object v0, p0, Lju;->w:Landroid/graphics/Rect;

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_87
    iget-object v3, p0, Lju;->l:Landroid/view/View;

    nop

    goto/32 :goto_eb

    nop

    nop

    nop

    :goto_88
    iget-object v7, p0, Lju;->q:Landroid/widget/PopupWindow;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    :goto_89
    iget v2, p0, Lju;->f:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8a
    return-void

    nop

    nop

    nop

    :goto_8b
    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8c
    iget-object v0, p0, Lju;->o:Landroid/os/Handler;

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_8d
    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_8e
    move v3, v2

    nop

    nop

    nop

    nop

    :goto_8f
    goto/32 :goto_d3

    nop

    nop

    nop

    nop

    :goto_90
    const/4 v6, -0x1

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_91
    xor-int/2addr v2, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_cd

    nop

    nop

    nop

    nop

    nop

    :goto_92
    if-eq v4, v6, :cond_b

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_93
    new-instance v2, Ljr;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c2

    nop

    nop

    nop

    nop

    :goto_94
    iget-object v4, p0, Lju;->q:Landroid/widget/PopupWindow;

    nop

    goto/32 :goto_100

    nop

    nop

    :goto_95
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    :goto_96
    move v0, v2

    nop

    nop

    nop

    nop

    :goto_97
    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    :goto_98
    if-eq v3, v5, :cond_c

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    :cond_c
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_99
    goto/16 :goto_83

    nop

    nop

    :goto_9a
    goto/32 :goto_b7

    nop

    nop

    nop

    :goto_9b
    invoke-virtual {v0, v2}, Ljb;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_9c
    iget-object v0, p0, Lju;->q:Landroid/widget/PopupWindow;

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_9d
    iget-boolean v0, p0, Lju;->p:Z

    nop

    nop

    goto/32 :goto_e4

    nop

    nop

    nop

    nop

    :goto_9e
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9f
    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setWidth(I)V

    goto/32 :goto_11

    nop

    nop

    :goto_a0
    invoke-virtual {v0, v2}, Ljb;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    goto/32 :goto_79

    nop

    nop

    nop

    :goto_a1
    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    nop

    nop

    nop

    goto/32 :goto_b6

    nop

    nop

    :goto_a2
    sub-int/2addr v4, v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_a3
    invoke-static {v4, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_a4
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_c4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a5
    iget-object v0, p0, Lju;->q:Landroid/widget/PopupWindow;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_a6
    iget v10, p0, Lju;->d:I

    nop

    nop

    goto/32 :goto_bd

    nop

    nop

    nop

    nop

    nop

    :goto_a7
    if-eq v7, v6, :cond_d

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    :cond_d
    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a8
    move v0, v6

    nop

    nop

    :goto_a9
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_aa
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v0

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ab
    iget v8, p0, Lju;->s:I

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    nop

    :goto_ac
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_b5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ad
    iget-object v4, p0, Lju;->a:Landroid/content/Context;

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_ae
    invoke-virtual {v0, v2}, Ljb;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/32 :goto_66

    nop

    nop

    nop

    :goto_af
    goto/16 :goto_78

    nop

    nop

    :goto_b0
    goto/32 :goto_1b

    nop

    nop

    :goto_b1
    goto/16 :goto_db

    nop

    nop

    nop

    :goto_b2
    goto/32 :goto_da

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b3
    iget-object v0, p0, Lju;->q:Landroid/widget/PopupWindow;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    nop

    :goto_b4
    if-eq v2, v6, :cond_e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    :cond_e
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_b5
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_b6
    iget-object v8, p0, Lju;->w:Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    :goto_b7
    if-ne v3, v5, :cond_f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_82

    nop

    nop

    nop

    nop

    :goto_b8
    iget v7, p0, Lju;->c:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    nop

    :goto_b9
    invoke-virtual {v2, v0}, Ljb;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    :goto_ba
    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bb
    if-eqz v0, :cond_10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_8c

    nop

    nop

    :goto_bc
    iget-object v0, p0, Lju;->a:Landroid/content/Context;

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_bd
    if-ltz v3, :cond_11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_be
    iget-object v2, p0, Lju;->v:Ljt;

    nop

    nop

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    :goto_bf
    add-int/2addr v3, v0

    nop

    nop

    nop

    goto/32 :goto_109

    nop

    nop

    nop

    :goto_c0
    invoke-virtual {v7}, Ljb;->getPaddingBottom()I

    move-result v7

    nop

    goto/32 :goto_e0

    nop

    nop

    :goto_c1
    if-nez v0, :cond_12

    nop

    nop

    goto/32 :goto_d7

    nop

    nop

    nop

    nop

    :cond_12
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c2
    invoke-direct {v2, p0}, Ljr;-><init>(Lju;)V

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    :goto_c3
    const/4 v5, -0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c4
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e3

    nop

    nop

    nop

    :goto_c5
    iput-object v0, p0, Lju;->e:Ljb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_c6
    iget-object v0, p0, Lju;->e:Ljb;

    nop

    goto/32 :goto_ce

    nop

    nop

    :goto_c7
    const/high16 v7, 0x40000000    # 2.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d0

    nop

    nop

    nop

    :goto_c8
    iget-object v0, p0, Lju;->w:Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    :goto_c9
    if-ltz v0, :cond_13

    nop

    nop

    goto/32 :goto_b2

    nop

    nop

    nop

    :cond_13
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_ca
    iget-object v6, p0, Lju;->q:Landroid/widget/PopupWindow;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_cb
    iget v3, p0, Lju;->d:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_cc
    iget-object v0, p0, Lju;->q:Landroid/widget/PopupWindow;

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_cd
    invoke-virtual {p0, v0, v2}, Lju;->p(Landroid/content/Context;Z)Ljb;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_c5

    nop

    nop

    nop

    nop

    :goto_ce
    invoke-virtual {v0}, Ljb;->isInTouchMode()Z

    move-result v0

    nop

    nop

    goto/32 :goto_e6

    nop

    nop

    nop

    :goto_cf
    if-eq v2, v5, :cond_14

    nop

    nop

    nop

    nop

    goto/32 :goto_d5

    nop

    nop

    nop

    :cond_14
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_d0
    if-ne v4, v6, :cond_15

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :cond_15
    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    :goto_d1
    return-void

    nop

    nop

    nop

    :goto_d2
    goto/32 :goto_ee

    nop

    nop

    :goto_d3
    iget-object v0, p0, Lju;->q:Landroid/widget/PopupWindow;

    nop

    nop

    nop

    nop

    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d4
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    nop

    nop

    :goto_d5
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d6
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOverlapAnchor(Z)V

    :goto_d7
    goto/32 :goto_69

    nop

    nop

    :goto_d8
    goto/16 :goto_8f

    nop

    nop

    nop

    :goto_d9
    goto/32 :goto_c8

    nop

    nop

    nop

    :goto_da
    move v12, v0

    nop

    nop

    nop

    nop

    :goto_db
    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_dc
    iget v4, p0, Lju;->f:I

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

    nop

    :goto_dd
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    nop

    nop

    goto/32 :goto_bf

    nop

    nop

    nop

    :goto_de
    invoke-virtual {v7, v4, v0}, Ljb;->b(II)I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_df
    iget-object v0, p0, Lju;->e:Ljb;

    nop

    goto/32 :goto_be

    nop

    nop

    :goto_e0
    add-int/2addr v4, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e5

    nop

    nop

    nop

    nop

    nop

    :goto_e1
    iget-boolean v0, p0, Lju;->p:Z

    nop

    nop

    nop

    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    :goto_e2
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_e3
    if-nez v0, :cond_16

    nop

    nop

    nop

    nop

    goto/32 :goto_d9

    nop

    :cond_16
    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_e4
    if-nez v0, :cond_17

    nop

    nop

    nop

    goto/32 :goto_e7

    nop

    :cond_17
    goto/32 :goto_c6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e5
    add-int/2addr v3, v4

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_e6
    if-nez v0, :cond_18

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_18
    :goto_e7
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_e8
    move v3, v2

    nop

    :goto_e9
    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ea
    iget-object v0, p0, Lju;->e:Ljb;

    nop

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    :goto_eb
    invoke-virtual {v3}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v3

    nop

    nop

    goto/32 :goto_104

    nop

    nop

    :goto_ec
    move v0, v7

    nop

    nop

    nop

    nop

    :goto_ed
    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    :goto_ee
    goto/32 :goto_24

    nop

    :goto_ef
    goto/16 :goto_97

    nop

    nop

    nop

    nop

    :goto_f0
    goto/32 :goto_96

    nop

    nop

    nop

    nop

    :goto_f1
    sub-int/2addr v4, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_f2

    nop

    nop

    nop

    :goto_f2
    invoke-static {v4, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_fc

    nop

    nop

    :goto_f3
    iget-object v1, p0, Lju;->y:Lgko;

    nop

    nop

    nop

    nop

    goto/32 :goto_e2

    nop

    nop

    nop

    nop

    :goto_f4
    iget v9, p0, Lju;->g:I

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    :goto_f5
    invoke-virtual {v2, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    goto/32 :goto_55

    nop

    nop

    :goto_f6
    invoke-virtual {v4, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    goto/32 :goto_70

    nop

    nop

    :goto_f7
    if-nez v7, :cond_19

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    :cond_19
    goto/32 :goto_87

    nop

    nop

    :goto_f8
    invoke-virtual {v2, v0}, Landroid/widget/PopupWindow;->setHeight(I)V

    goto/32 :goto_cc

    nop

    nop

    nop

    nop

    nop

    :goto_f9
    iput v0, p0, Lju;->d:I

    nop

    nop

    nop

    nop

    goto/32 :goto_d8

    nop

    nop

    nop

    nop

    nop

    :goto_fa
    goto/16 :goto_85

    nop

    nop

    nop

    :goto_fb
    goto/32 :goto_84

    nop

    nop

    nop

    nop

    :goto_fc
    goto :goto_107

    nop

    nop

    nop

    nop

    :goto_fd
    goto/32 :goto_ad

    nop

    nop

    :goto_fe
    if-eq v5, v6, :cond_1a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_fb

    nop

    nop

    nop

    :cond_1a
    goto/32 :goto_54

    nop

    nop

    nop

    :goto_ff
    if-nez v0, :cond_1b

    nop

    nop

    nop

    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    nop

    :cond_1b
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_100
    iget v5, p0, Lju;->f:I

    nop

    goto/32 :goto_fe

    nop

    nop

    :goto_101
    goto/16 :goto_ed

    nop

    nop

    nop

    nop

    :goto_102
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_103
    iget v2, p0, Lju;->g:I

    nop

    goto/32 :goto_cb

    nop

    nop

    nop

    nop

    :goto_104
    if-eqz v3, :cond_1c

    nop

    nop

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    :cond_1c
    goto/32 :goto_af

    nop

    nop

    nop

    :goto_105
    if-eq v5, v6, :cond_1d

    nop

    goto/32 :goto_45

    nop

    :cond_1d
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_106
    invoke-static {v4, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    nop

    nop

    nop

    :goto_107
    goto/32 :goto_64

    nop

    nop

    nop

    :goto_108
    iget-object v3, p0, Lju;->q:Landroid/widget/PopupWindow;

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_109
    iget-boolean v0, p0, Lju;->t:Z

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

    :goto_10a
    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop
.end method

.method public final t(Landroid/graphics/Rect;)V
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x0

    nop

    nop

    :goto_1
    goto/32 :goto_2

    nop

    nop

    :goto_2
    iput-object v0, p0, Lju;->x:Landroid/graphics/Rect;

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_3
    new-instance v0, Landroid/graphics/Rect;

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

    :goto_4
    return-void

    nop

    nop

    nop

    :goto_5
    if-nez p1, :cond_0

    nop

    goto/32 :goto_8

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    :goto_6
    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto/32 :goto_7

    nop

    nop

    :goto_7
    goto :goto_1

    nop

    :goto_8
    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final u()Z
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lju;->q:Landroid/widget/PopupWindow;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final v(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    goto/32 :goto_1

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
    iget-object p0, p0, Lju;->q:Landroid/widget/PopupWindow;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final w()Z
    .locals 1

    goto/32 :goto_8

    nop

    nop

    :goto_0
    const/4 p0, 0x1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v0, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_2
    return p0

    nop

    nop

    :goto_3
    return p0

    nop

    :goto_4
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result p0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-eq p0, v0, :cond_0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    :goto_7
    const/4 p0, 0x0

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

    :goto_8
    iget-object p0, p0, Lju;->q:Landroid/widget/PopupWindow;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final x()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lju;->q:Landroid/widget/PopupWindow;

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

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v0, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final y()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    goto/32 :goto_1

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

    :goto_2
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lju;->q:Landroid/widget/PopupWindow;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4
    iput-boolean v0, p0, Lju;->p:Z

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop
.end method

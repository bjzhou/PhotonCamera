.class public final Lnij;
.super Landroid/view/ViewGroup;
.source "PG"

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field private final A:I

.field private final B:I

.field private final C:I

.field private final D:I

.field private final E:I

.field private final F:I

.field private G:Z

.field private H:I

.field private I:I

.field public final a:[I

.field public final b:Landroid/graphics/Paint;

.field public final c:Landroid/graphics/Paint;

.field public final d:Ljava/util/List;

.field public final e:Ljava/util/concurrent/atomic/AtomicInteger;

.field public f:Landroid/widget/PopupWindow;

.field public g:Z

.field public h:Ljava/lang/Runnable;

.field public i:Landroid/view/View;

.field public j:I

.field public k:Landroid/view/View;

.field public l:Landroid/graphics/Rect;

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public final q:Ljava/lang/Object;

.field public r:J

.field public s:J

.field public t:J

.field public u:Ljava/util/List;

.field public final v:Ljava/util/List;

.field public final w:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private final x:Landroid/graphics/Path;

.field private final y:Landroid/graphics/RectF;

.field private final z:I


# direct methods
.method private final 23ce148e54b083367f51e25c7971761em(Landroid/graphics/Canvas;)V
    .locals 4

    goto/32 :goto_9

    nop

    nop

    :goto_0
    const/4 v1, 0x5

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Lnij;->x:Landroid/graphics/Path;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_4
    iget-object v1, p0, Lnij;->a:[I

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v3, 0x0

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_6
    if-nez v1, :cond_0

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

    :cond_0
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {v0}, Lnic;->k(I)Z

    move-result v1

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0x4

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_a
    iget-object p0, p0, Lnij;->c:Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_1e

    nop

    nop

    :goto_d
    const v1, 0x1a

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_e
    sub-int/2addr v0, v1

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    goto/32 :goto_19

    nop

    nop

    :goto_10
    invoke-virtual {p0, v0}, Lnij;->getLocationOnScreen([I)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_24

    nop

    nop

    :goto_13
    if-lez v0, :cond_1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_11

    nop

    :goto_14
    iget v0, p0, Lnij;->j:I

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_16
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    sub-int/2addr v0, v1

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_18
    aget v1, v1, v3

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

    :goto_19
    goto :goto_16

    nop

    :goto_1a
    goto/32 :goto_0

    nop

    nop

    :goto_1b
    iget-object v1, p0, Lnij;->a:[I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1c
    iget v0, p0, Lnij;->p:I

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_1d
    int-to-float v0, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_1f
    int-to-float v0, v0

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

    :goto_20
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_21
    iget v0, p0, Lnij;->p:I

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

    nop

    :goto_22
    if-eq v0, v1, :cond_2

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :cond_2
    :goto_23
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iget-object v0, p0, Lnij;->a:[I

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_25
    if-ne v0, v1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    :cond_3
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_26
    const/4 v2, 0x0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_27
    const/4 v3, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_28
    aget v1, v1, v3

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_29
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_2a
    const/4 v1, 0x6

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    goto/32 :goto_5c

    nop

    nop

    :goto_0
    iput-object v0, p0, Lnij;->v:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    :goto_2
    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_4
    invoke-direct {p1, v0}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_5
    iput-object v0, p0, Lnij;->q:Ljava/lang/Object;

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_7
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    goto/32 :goto_24

    nop

    nop

    :goto_8
    iput v2, p0, Lnij;->p:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_9
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    goto/32 :goto_3e

    nop

    nop

    :goto_a
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_b
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

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

    :goto_c
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_d
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_59

    nop

    :goto_f
    const/4 v4, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_10
    invoke-static {v0}, Lj$/util/DesugarCollections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_11
    int-to-float v0, v0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_13
    iput v4, p0, Lnij;->E:I

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

    :goto_14
    const v1, 0x11

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iput-object v1, p0, Lnij;->c:Landroid/graphics/Paint;

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const/high16 v1, -0x80000000

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_18
    rem-int v0, v0, v1

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_19
    iput v2, p0, Lnij;->B:I

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

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

    :goto_1d
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const v4, 0x7f0401d1

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_20
    iput v2, p0, Lnij;->A:I

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

    :goto_21
    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {p0}, Lnij;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_23
    const v5, 0x7f0708ab

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_24
    new-instance p1, Landroid/graphics/CornerPathEffect;

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_25
    new-instance v0, Ljava/lang/Object;

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_26
    const v5, 0x7f0708ac

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_27
    const v4, 0x7f0708b3

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_28
    const v3, 0x7f0708b1

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    iput-object v0, p0, Lnij;->y:Landroid/graphics/RectF;

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

    :goto_2b
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    goto/32 :goto_29

    nop

    nop

    :goto_2c
    if-lez v0, :cond_0

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_58

    nop

    :goto_2d
    iput-object v0, p0, Lnij;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_2e
    const v2, 0x7f0708ad

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_2f
    new-instance v0, Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :goto_30
    new-instance v0, Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_31
    new-instance v1, Landroid/graphics/Paint;

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

    :goto_32
    add-int v0, v0, v1

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

    :goto_33
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_34
    const v3, 0x7f0708b4

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_35
    const/4 v1, 0x2

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    :goto_36
    const v5, 0x7f0708ae

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_37
    int-to-float v2, v2

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    :goto_38
    invoke-virtual {p1, v5}, Landroid/content/Context;->getColor(I)I

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :goto_39
    iput-object v0, p0, Lnij;->a:[I

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_3b
    iput v4, p0, Lnij;->D:I

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    iput-boolean v4, p0, Lnij;->g:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_3d
    const v3, 0x7f0708b2

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_3e
    iput-object v0, p0, Lnij;->x:Landroid/graphics/Path;

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

    :goto_3f
    iput-object v0, p0, Lnij;->d:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    :goto_40
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_41
    iput v2, p0, Lnij;->z:I

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_42
    invoke-static {p0, v4}, Lrgw;->f(Landroid/view/View;I)I

    move-result v4

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_43
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_45
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    const-wide/16 v0, 0x0

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_47
    iput-wide v0, p0, Lnij;->r:J

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :goto_48
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_49
    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    iput v2, p0, Lnij;->C:I

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

    :goto_4b
    new-instance v0, Landroid/graphics/Path;

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

    :goto_4c
    const v5, 0x7f060a85

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_4d
    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_4e
    new-instance v0, Ljava/util/ArrayList;

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

    :goto_4f
    new-array v0, v1, [I

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_50
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_51
    invoke-direct {v0, p0, v1}, Lkeb;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_62

    nop

    nop

    nop

    :goto_52
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    :goto_53
    int-to-float v3, v3

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_54
    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_55
    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    :goto_56
    const v3, 0x7f0708b6

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_57
    iput v4, p0, Lnij;->F:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_58
    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    :goto_59
    goto/32 :goto_60

    nop

    nop

    nop

    :goto_5a
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    const v3, 0x7f0708b5

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_5c
    const v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_5d
    iput-object v0, p0, Lnij;->b:Landroid/graphics/Paint;

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_5e
    new-instance v0, Lkeb;

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_5f
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    goto/32 :goto_5d

    nop

    nop

    :goto_60
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_61
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_62
    iput-object v0, p0, Lnij;->w:Landroid/hardware/display/DisplayManager$DisplayListener;

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_63
    return-void

    nop

    nop

    nop

    :goto_64
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_65
    const v3, 0x7f0708af

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_66
    invoke-virtual {v0, v3, v2, v2, p1}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_67
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    nop

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
.end method

.method private static c(III)I
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

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
    invoke-static {p2, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    return p0

    nop

    nop

    nop
.end method

.method private final da190e616797844b591057d0190e7728m()Landroid/graphics/Point;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    check-cast p0, Landroid/view/WindowManager;

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
    invoke-virtual {p0}, Lnij;->getContext()Landroid/content/Context;

    move-result-object p0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_2
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

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

    :goto_3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_4
    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    goto/32 :goto_6

    nop

    nop

    :goto_5
    new-instance v0, Landroid/graphics/Point;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_6
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const-string v0, "window"

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop
.end method


# virtual methods
.method public final a()I
    .locals 2

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_0
    iget v0, v0, Lnbh;->e:I

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lnij;->e:Ljava/util/concurrent/atomic/AtomicInteger;

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
    if-nez v0, :cond_0

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
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v1, p0, Lnij;->k:Landroid/view/View;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_4
    goto/32 :goto_c

    nop

    :goto_5
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_1

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

    :cond_1
    goto/32 :goto_4

    nop

    :goto_7
    invoke-static {v0, v1}, Lnnr;->i(Landroid/view/Display;Landroid/content/Context;)Lnbh;

    move-result-object v0

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_8
    return p0

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v0, p0, Lnij;->k:Landroid/view/View;

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_b
    return p0

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v1, 0x1c

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
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result p0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v0}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object v0

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_11
    iget-object v0, p0, Lnij;->k:Landroid/view/View;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_12
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

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

    :goto_13
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_14
    iget-object p0, p0, Lnij;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_15
    rem-int v0, v0, v1

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

    :goto_16
    invoke-virtual {v0}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_17
    if-nez v0, :cond_2

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const v0, 0x1b

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_5

    nop

    nop

    nop
.end method

.method public final b(Z)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    if-nez p1, :cond_0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    const/4 v0, 0x4

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

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0, v0}, Lnij;->setVisibility(I)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_6
    iget-object p1, p0, Lnij;->f:Landroid/widget/PopupWindow;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-eqz p1, :cond_1

    nop

    goto/32 :goto_a

    nop

    :cond_1
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0}, Lnij;->clearAnimation()V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0, v0}, Lnij;->setVisibility(I)V

    :goto_a
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    goto/32 :goto_3

    nop

    nop
.end method

.method public final close()V
    .locals 2

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_1
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto/32 :goto_b

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
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0, v0}, Lnij;->setVisibility(I)V

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_5
    iput-object v0, p0, Lnij;->i:Landroid/view/View;

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

    :goto_6
    add-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    :goto_8
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_9
    check-cast v1, Ljava/lang/Runnable;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/16 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_14

    nop

    nop

    :goto_d
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

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

    :goto_f
    if-nez v1, :cond_0

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

    :cond_0
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v1, p0, Lnij;->d:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_11
    const v0, 0xc

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_12
    iget-object v1, p0, Lnij;->f:Landroid/widget/PopupWindow;

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p0}, Lnij;->removeAllViews()V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-object p0, p0, Lnij;->v:Ljava/util/List;

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const v1, 0x1e

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_17
    iput-object v0, p0, Lnij;->k:Landroid/view/View;

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p0, v0}, Lnij;->b(Z)V

    goto/32 :goto_25

    nop

    nop

    :goto_19
    if-nez v1, :cond_1

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_1
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object v0, p0, Lnij;->v:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_1b
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_1c
    invoke-interface {p0}, Ljava/util/List;->clear()V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1d
    iput-object v0, p0, Lnij;->f:Landroid/widget/PopupWindow;

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

    :goto_1e
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    :cond_2
    goto/32 :goto_21

    nop

    :goto_1f
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    :goto_20
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const/16 v0, 0x8

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_24
    invoke-virtual {p0, v0}, Lnij;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_25
    const/4 v0, 0x0

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop
.end method

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    goto/32 :goto_1d

    nop

    nop

    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    goto/32 :goto_2

    nop

    nop

    :goto_1
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

    :goto_2
    iget v0, p0, Lnij;->j:I

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_20

    nop

    :goto_4
    goto/32 :goto_21

    nop

    nop

    :goto_5
    if-eq v0, v1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    :cond_0
    :goto_6
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_7
    iget v1, p0, Lnij;->F:I

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_8
    int-to-float v1, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_9
    const/4 v1, 0x6

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_a
    if-nez v0, :cond_1

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_16

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

    goto/32 :goto_18

    nop

    nop

    :goto_c
    iget-object v0, p0, Lnij;->y:Landroid/graphics/RectF;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-ne v0, v1, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :cond_2
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_e
    invoke-direct {p0, p1}, Lnij;->23ce148e54b083367f51e25c7971761em(Landroid/graphics/Canvas;)V

    :goto_f
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-ne v0, v1, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_11
    const v1, 0x14

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

    :goto_12
    invoke-direct {p0, p1}, Lnij;->23ce148e54b083367f51e25c7971761em(Landroid/graphics/Canvas;)V

    :goto_13
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const/4 v1, 0x5

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const/4 v1, 0x2

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_16
    return-void

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-lez v0, :cond_4

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_3

    nop

    :goto_19
    if-eq v0, v1, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :cond_5
    :goto_1a
    goto/32 :goto_e

    nop

    nop

    :goto_1b
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_1c
    iget v0, p0, Lnij;->j:I

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_1d
    const v0, 0xd

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_1e
    iget-object v2, p0, Lnij;->b:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_1f
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {p0}, Lnij;->getVisibility()I

    move-result v0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_4

    nop

    nop

    :goto_24
    const/4 v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop
.end method

.method protected final onLayout(ZIIII)V
    .locals 17

    goto/32 :goto_f2

    nop

    nop

    :goto_0
    iget-object v11, v0, Lnij;->l:Landroid/graphics/Rect;

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_1
    iput v1, v0, Lnij;->I:I

    nop

    nop

    :goto_2
    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget v10, v0, Lnij;->z:I

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    goto/32 :goto_17a

    nop

    nop

    :cond_0
    goto/32 :goto_179

    nop

    :goto_5
    sget-object v11, Ldwd;->a:[I

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    :goto_6
    sub-int/2addr v7, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_199

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    sub-int/2addr v8, v1

    nop

    nop

    nop

    goto/32 :goto_132

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    add-int/2addr v10, v2

    nop

    nop

    nop

    goto/32 :goto_13c

    nop

    nop

    nop

    :goto_a
    add-float/2addr v3, v1

    nop

    nop

    nop

    goto/32 :goto_cb

    nop

    nop

    nop

    nop

    :goto_b
    if-eq v11, v4, :cond_1

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_c
    neg-int v11, v14

    nop

    goto/32 :goto_109

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-static {v9}, Lnnr;->m(Landroid/view/View;)[I

    move-result-object v9

    nop

    nop

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    :goto_e
    iget-object v7, v0, Lnij;->l:Landroid/graphics/Rect;

    nop

    nop

    goto/32 :goto_e4

    nop

    nop

    nop

    :goto_f
    iget v2, v0, Lnij;->j:I

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_10
    add-int/2addr v9, v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_11
    if-eq v8, v2, :cond_2

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_ec

    nop

    nop

    :goto_12
    goto/16 :goto_27

    nop

    :goto_13
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget v3, v0, Lnij;->D:I

    nop

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    :goto_15
    sub-int/2addr v7, v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    sub-int/2addr v11, v12

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-eq v11, v6, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_10f

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_18
    iget v9, v9, Landroid/graphics/Rect;->top:I

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_19
    add-int/2addr v9, v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    :goto_1a
    add-int/2addr v8, v9

    nop

    nop

    nop

    goto/32 :goto_ce

    nop

    nop

    nop

    :goto_1b
    int-to-float v2, v2

    nop

    goto/32 :goto_13e

    nop

    nop

    :goto_1c
    sub-int/2addr v12, v13

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_1d
    iget v2, v0, Lnij;->E:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e0

    nop

    nop

    :goto_1e
    int-to-float v2, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_114

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    move/from16 v16, v12

    nop

    nop

    nop

    goto/32 :goto_1ba

    nop

    nop

    nop

    :goto_20
    div-int/2addr v3, v6

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    :goto_21
    div-int/2addr v8, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_157

    nop

    nop

    nop

    nop

    :goto_22
    if-eq v2, v4, :cond_4

    nop

    nop

    goto/32 :goto_74

    nop

    :cond_4
    goto/32 :goto_ca

    nop

    nop

    :goto_23
    iget v9, v0, Lnij;->p:I

    nop

    nop

    :goto_24
    goto/32 :goto_129

    nop

    nop

    nop

    nop

    :goto_25
    if-nez v9, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_5
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_26
    move v11, v5

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_eb

    nop

    nop

    nop

    nop

    :goto_28
    iget v11, v0, Lnij;->D:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_29
    iget v7, v0, Lnij;->p:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1b8

    nop

    nop

    :goto_2a
    if-eq v8, v2, :cond_6

    nop

    nop

    nop

    goto/32 :goto_197

    nop

    :cond_6
    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :goto_2b
    iget-object v2, v0, Lnij;->l:Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    :goto_2c
    add-int/2addr v8, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_2d
    div-int/2addr v12, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_e7

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    sub-int/2addr v9, v10

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_e1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    int-to-float v3, v3

    nop

    nop

    goto/32 :goto_d2

    nop

    nop

    nop

    :goto_31
    sub-int v12, p4, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_154

    nop

    nop

    nop

    nop

    :goto_32
    invoke-virtual {v0, v8, v9}, Lnij;->measure(II)V

    goto/32 :goto_14d

    nop

    nop

    nop

    nop

    :goto_33
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    nop

    :goto_34
    iget v8, v0, Lnij;->p:I

    nop

    nop

    nop

    nop

    goto/32 :goto_17e

    nop

    nop

    nop

    nop

    :goto_35
    iget-object v1, v0, Lnij;->x:Landroid/graphics/Path;

    nop

    nop

    nop

    nop

    goto/32 :goto_17d

    nop

    nop

    nop

    nop

    :goto_36
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    goto/32 :goto_188

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    const/4 v15, 0x3

    nop

    nop

    nop

    goto/32 :goto_190

    nop

    nop

    nop

    :goto_38
    int-to-float v2, v2

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

    :goto_39
    move/from16 v11, v16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_138

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    int-to-float v3, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    iget v8, v0, Lnij;->p:I

    nop

    nop

    nop

    goto/32 :goto_cc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    if-ne v8, v6, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_fa

    nop

    nop

    :cond_7
    goto/32 :goto_ae

    nop

    nop

    :goto_3d
    goto/16 :goto_116

    nop

    nop

    nop

    nop

    :goto_3e
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-virtual/range {p0 .. p0}, Lnij;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c9

    nop

    nop

    nop

    nop

    nop

    :goto_40
    invoke-virtual/range {p0 .. p0}, Lnij;->getRootView()Landroid/view/View;

    move-result-object v9

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_41
    iget-object v1, v0, Lnij;->x:Landroid/graphics/Path;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_42
    iget v3, v0, Lnij;->D:I

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    :goto_43
    neg-int v2, v2

    nop

    nop

    goto/32 :goto_1a7

    nop

    nop

    nop

    :goto_44
    iget-object v1, v0, Lnij;->i:Landroid/view/View;

    nop

    nop

    nop

    nop

    goto/32 :goto_12e

    nop

    nop

    :goto_45
    new-instance v0, Ljava/lang/IllegalStateException;

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_46
    add-int/2addr v8, v8

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_47
    div-int/2addr v7, v6

    nop

    nop

    goto/32 :goto_da

    nop

    nop

    nop

    nop

    nop

    :goto_48
    sub-int/2addr v12, v14

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_49
    int-to-float v3, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19b

    nop

    nop

    nop

    :goto_4a
    sub-int/2addr v8, v1

    nop

    nop

    nop

    goto/32 :goto_d0

    nop

    nop

    :goto_4b
    invoke-static {v2}, Lnic;->k(I)Z

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    :goto_4c
    sub-int v9, v1, v9

    nop

    goto/32 :goto_145

    nop

    nop

    nop

    nop

    :goto_4d
    iget v8, v0, Lnij;->D:I

    nop

    goto/32 :goto_174

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    iget v10, v0, Lnij;->p:I

    nop

    :goto_4f
    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_50
    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10a

    nop

    nop

    :goto_51
    iget v2, v0, Lnij;->E:I

    nop

    nop

    nop

    nop

    goto/32 :goto_198

    nop

    nop

    nop

    nop

    nop

    :goto_52
    if-ne v10, v2, :cond_8

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_1ae

    nop

    nop

    nop

    nop

    nop

    :goto_53
    throw v0

    nop

    nop

    nop

    :goto_54
    goto/32 :goto_125

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_55
    invoke-direct/range {p0 .. p0}, Lnij;->da190e616797844b591057d0190e7728m()Landroid/graphics/Point;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_178

    nop

    nop

    :goto_56
    iget-object v2, v0, Lnij;->l:Landroid/graphics/Rect;

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    :goto_57
    iget-object v2, v0, Lnij;->x:Landroid/graphics/Path;

    nop

    goto/32 :goto_122

    nop

    nop

    nop

    nop

    nop

    :goto_58
    add-int/2addr v5, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_be

    nop

    nop

    :goto_59
    add-int/2addr v11, v12

    nop

    nop

    nop

    goto/32 :goto_10e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    add-int/2addr v8, v12

    nop

    nop

    nop

    :goto_5b
    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    sub-int/2addr v7, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_186

    nop

    nop

    :goto_5d
    int-to-float v2, v2

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_5e
    move v13, v5

    nop

    nop

    :goto_5f
    goto/32 :goto_126

    nop

    nop

    nop

    :goto_60
    iget v2, v0, Lnij;->E:I

    nop

    nop

    nop

    goto/32 :goto_1bb

    nop

    nop

    nop

    nop

    nop

    :goto_61
    iget v3, v0, Lnij;->E:I

    nop

    goto/32 :goto_ee

    nop

    nop

    nop

    nop

    :goto_62
    const/4 v4, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10b

    nop

    nop

    nop

    :goto_63
    iget-object v8, v0, Lnij;->l:Landroid/graphics/Rect;

    nop

    nop

    nop

    goto/32 :goto_dc

    nop

    nop

    nop

    nop

    nop

    :goto_64
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    nop

    nop

    nop

    :goto_65
    goto/32 :goto_f7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_66
    add-int/2addr v8, v1

    nop

    nop

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    :goto_67
    int-to-float v2, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_68
    if-ne v7, v4, :cond_9

    nop

    goto/32 :goto_1ad

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_134

    nop

    nop

    nop

    nop

    nop

    :goto_69
    invoke-virtual {v1, v5, v2}, Landroid/graphics/Path;->rLineTo(FF)V

    goto/32 :goto_13d

    nop

    nop

    nop

    :goto_6a
    invoke-virtual {v2, v3, v1}, Landroid/graphics/Path;->moveTo(FF)V

    goto/32 :goto_118

    nop

    nop

    :goto_6b
    invoke-static {v8, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    nop

    nop

    nop

    goto/32 :goto_176

    nop

    nop

    :goto_6c
    iget v12, v0, Lnij;->n:I

    nop

    nop

    goto/32 :goto_192

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    sub-int/2addr v7, v10

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_6e
    move v8, v15

    nop

    goto/32 :goto_110

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    iget v7, v0, Lnij;->E:I

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_70
    if-nez v2, :cond_a

    nop

    nop

    nop

    goto/32 :goto_15e

    nop

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_f6

    nop

    nop

    nop

    nop

    :goto_71
    iget v9, v9, Landroid/graphics/Rect;->top:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_72
    iget-object v1, v0, Lnij;->x:Landroid/graphics/Path;

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    :goto_73
    return-void

    nop

    nop

    :goto_74
    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_75
    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    nop

    nop

    goto/32 :goto_f0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_76
    iget-object v11, v0, Lnij;->l:Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_77
    iget v2, v0, Lnij;->D:I

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    :goto_78
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_194

    nop

    nop

    :goto_79
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    goto/32 :goto_124

    nop

    nop

    nop

    :goto_7a
    return-void

    nop

    :goto_7b
    goto/32 :goto_102

    nop

    nop

    nop

    :goto_7c
    iget v12, v0, Lnij;->B:I

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    iget v1, v0, Lnij;->p:I

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    sub-int v8, v7, v8

    nop

    nop

    nop

    goto/32 :goto_1b0

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    int-to-float v2, v2

    nop

    goto/32 :goto_191

    nop

    nop

    nop

    nop

    nop

    :goto_80
    sub-int v8, v7, v8

    nop

    nop

    goto/32 :goto_d9

    nop

    nop

    nop

    nop

    nop

    :goto_81
    if-eq v2, v6, :cond_b

    nop

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    :cond_b
    goto/32 :goto_11f

    nop

    nop

    nop

    :goto_82
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_14e

    nop

    nop

    nop

    nop

    :goto_83
    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    nop

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    :goto_84
    neg-int v2, v2

    nop

    nop

    goto/32 :goto_fb

    nop

    nop

    nop

    nop

    nop

    :goto_85
    sget-object v9, Ldwd;->a:[I

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_86
    return-void

    nop

    nop

    :goto_87
    goto/32 :goto_18c

    nop

    nop

    nop

    nop

    nop

    :goto_88
    iget v2, v0, Lnij;->p:I

    nop

    nop

    nop

    goto/32 :goto_b3

    nop

    nop

    nop

    nop

    nop

    :goto_89
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->rLineTo(FF)V

    goto/32 :goto_187

    nop

    nop

    nop

    nop

    nop

    :goto_8a
    iget-object v1, v0, Lnij;->x:Landroid/graphics/Path;

    nop

    nop

    goto/32 :goto_12c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8b
    int-to-float v3, v3

    nop

    nop

    goto/32 :goto_103

    nop

    nop

    :goto_8c
    sub-int/2addr v7, v13

    nop

    goto/32 :goto_130

    nop

    nop

    nop

    nop

    :goto_8d
    if-eq v8, v6, :cond_c

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_8e
    add-int/2addr v8, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    :goto_8f
    neg-int v2, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_90
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    :goto_91
    iget v3, v0, Lnij;->D:I

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

    :goto_92
    int-to-float v2, v2

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_93
    const/4 v5, 0x0

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_94
    add-int/2addr v7, v8

    nop

    :goto_95
    goto/32 :goto_16d

    nop

    nop

    nop

    nop

    nop

    :goto_96
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v9

    nop

    nop

    nop

    nop

    goto/32 :goto_c6

    nop

    nop

    nop

    :goto_97
    goto/16 :goto_162

    nop

    :goto_98
    goto/32 :goto_161

    nop

    nop

    nop

    :goto_99
    add-int/2addr v7, v9

    nop

    nop

    goto/32 :goto_16b

    nop

    nop

    nop

    nop

    :goto_9a
    add-int/2addr v8, v8

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    :goto_9b
    iget-object v1, v0, Lnij;->x:Landroid/graphics/Path;

    nop

    nop

    nop

    nop

    goto/32 :goto_1b1

    nop

    nop

    nop

    nop

    :goto_9c
    iget v1, v0, Lnij;->H:I

    nop

    nop

    goto/32 :goto_f1

    nop

    nop

    nop

    nop

    nop

    :goto_9d
    int-to-float v2, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_172

    nop

    nop

    nop

    nop

    :goto_9e
    add-int/2addr v9, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_9f
    div-int/2addr v7, v6

    nop

    nop

    nop

    goto/32 :goto_166

    nop

    nop

    nop

    nop

    nop

    :goto_a0
    sub-int/2addr v11, v12

    nop

    nop

    nop

    :goto_a1
    goto/32 :goto_c1

    nop

    nop

    nop

    :goto_a2
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    goto/32 :goto_13a

    nop

    nop

    nop

    nop

    :goto_a3
    iget v2, v0, Lnij;->E:I

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    :goto_a4
    sub-int v9, v1, v9

    nop

    nop

    goto/32 :goto_f9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a5
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v11

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_a6
    iget v3, v3, Landroid/graphics/RectF;->left:F

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_a7
    if-ne v7, v8, :cond_d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_142

    nop

    nop

    :cond_d
    goto/32 :goto_1a8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a8
    iget v10, v0, Lnij;->H:I

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_a9
    invoke-virtual/range {p0 .. p0}, Lnij;->getMeasuredWidth()I

    move-result v13

    nop

    nop

    nop

    goto/32 :goto_bc

    nop

    nop

    :goto_aa
    iget v2, v0, Lnij;->D:I

    nop

    goto/32 :goto_171

    nop

    nop

    :goto_ab
    iget-object v1, v0, Lnij;->x:Landroid/graphics/Path;

    nop

    nop

    goto/32 :goto_156

    nop

    nop

    :goto_ac
    goto/16 :goto_5b

    nop

    nop

    :goto_ad
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_ae
    if-ne v8, v3, :cond_e

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_2a

    nop

    nop

    :goto_af
    int-to-float v1, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b0
    int-to-float v3, v3

    nop

    nop

    goto/32 :goto_d8

    nop

    nop

    nop

    :goto_b1
    iget v2, v0, Lnij;->E:I

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    :goto_b2
    neg-int v3, v3

    nop

    nop

    nop

    goto/32 :goto_b5

    nop

    nop

    nop

    nop

    nop

    :goto_b3
    sub-int/2addr v7, v2

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    :goto_b4
    iget v13, v0, Lnij;->D:I

    nop

    nop

    goto/32 :goto_146

    nop

    nop

    :goto_b5
    div-int/2addr v3, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c8

    nop

    nop

    :goto_b6
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    :goto_b7
    iget-object v9, v0, Lnij;->l:Landroid/graphics/Rect;

    nop

    nop

    nop

    goto/32 :goto_123

    nop

    nop

    :goto_b8
    if-nez v1, :cond_f

    nop

    nop

    goto/32 :goto_18f

    nop

    nop

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_165

    nop

    nop

    nop

    nop

    nop

    :goto_b9
    iget v1, v1, Landroid/graphics/Point;->y:I

    nop

    nop

    goto/32 :goto_152

    nop

    nop

    nop

    :goto_ba
    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ef

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bb
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_bc
    invoke-virtual/range {p0 .. p0}, Lnij;->getMeasuredHeight()I

    move-result v14

    nop

    goto/32 :goto_160

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bd
    neg-int v11, v13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1af

    nop

    nop

    nop

    :goto_be
    aget v1, v9, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_150

    nop

    nop

    nop

    nop

    nop

    :goto_bf
    iget v3, v0, Lnij;->E:I

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c0
    div-int/2addr v2, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    :goto_c1
    move v12, v5

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_c2
    move-object/from16 v0, p0

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_c3
    div-int/2addr v3, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_c4
    sub-int v7, v9, v7

    nop

    nop

    nop

    nop

    :goto_c5
    goto/32 :goto_148

    nop

    nop

    :goto_c6
    if-eq v9, v4, :cond_10

    nop

    nop

    nop

    goto/32 :goto_c5

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_ff

    nop

    nop

    nop

    nop

    :goto_c7
    sub-int v8, v7, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_193

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c8
    neg-int v2, v2

    nop

    goto/32 :goto_5d

    nop

    nop

    :goto_c9
    const v2, 0x7f0708b0

    nop

    goto/32 :goto_82

    nop

    nop

    :goto_ca
    iget-object v1, v0, Lnij;->x:Landroid/graphics/Path;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_128

    nop

    nop

    nop

    :goto_cb
    iget v1, v0, Lnij;->p:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1a0

    nop

    nop

    nop

    nop

    nop

    :goto_cc
    add-int/2addr v8, v8

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    :goto_cd
    int-to-float v2, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_155

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ce
    invoke-static/range {p0 .. p0}, Lnnr;->j(Landroid/view/View;)Z

    move-result v9

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_cf
    iget-object v3, v0, Lnij;->y:Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :goto_d0
    iget v1, v0, Lnij;->E:I

    nop

    nop

    nop

    goto/32 :goto_1b7

    nop

    nop

    nop

    nop

    nop

    :goto_d1
    sub-int/2addr v11, v12

    nop

    goto/32 :goto_12d

    nop

    nop

    nop

    :goto_d2
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->rLineTo(FF)V

    goto/32 :goto_140

    nop

    nop

    nop

    nop

    :goto_d3
    invoke-virtual/range {v10 .. v15}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    :goto_d4
    goto/32 :goto_143

    nop

    nop

    nop

    nop

    :goto_d5
    move v11, v5

    nop

    nop

    goto/32 :goto_115

    nop

    nop

    nop

    :goto_d6
    const/4 v6, 0x2

    nop

    nop

    nop

    goto/32 :goto_b8

    nop

    nop

    nop

    :goto_d7
    int-to-float v3, v3

    nop

    nop

    nop

    goto/32 :goto_149

    nop

    nop

    nop

    :goto_d8
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->rLineTo(FF)V

    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d9
    iget-object v9, v0, Lnij;->l:Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    :goto_da
    iget v8, v0, Lnij;->p:I

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    :goto_db
    iget v2, v0, Lnij;->E:I

    nop

    nop

    nop

    nop

    goto/32 :goto_121

    nop

    nop

    nop

    nop

    nop

    :goto_dc
    iget v8, v8, Landroid/graphics/Rect;->left:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_dd
    iget v8, v0, Lnij;->E:I

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_de
    iget v2, v0, Lnij;->E:I

    nop

    nop

    nop

    nop

    goto/32 :goto_18b

    nop

    nop

    nop

    :goto_df
    add-int/2addr v11, v12

    nop

    nop

    nop

    goto/32 :goto_164

    nop

    nop

    nop

    nop

    nop

    :goto_e0
    int-to-float v2, v2

    nop

    nop

    goto/32 :goto_183

    nop

    nop

    nop

    nop

    nop

    :goto_e1
    const/high16 v10, -0x80000000

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    :goto_e2
    iget-object v1, v0, Lnij;->x:Landroid/graphics/Path;

    nop

    nop

    goto/32 :goto_de

    nop

    nop

    :goto_e3
    invoke-virtual {v1, v2, v5}, Landroid/graphics/Path;->rLineTo(FF)V

    goto/32 :goto_113

    nop

    nop

    nop

    :goto_e4
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    nop

    nop

    nop

    goto/32 :goto_dd

    nop

    nop

    nop

    nop

    :goto_e5
    if-ne v8, v4, :cond_11

    nop

    nop

    nop

    nop

    goto/32 :goto_1b6

    nop

    nop

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_3c

    nop

    nop

    :goto_e6
    iget-object v1, v0, Lnij;->x:Landroid/graphics/Path;

    nop

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    :goto_e7
    goto/16 :goto_1a5

    nop

    nop

    nop

    nop

    nop

    :goto_e8
    goto/32 :goto_d5

    nop

    nop

    nop

    nop

    :goto_e9
    iget v2, v0, Lnij;->j:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    :goto_ea
    const v1, 0x16

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_eb
    add-int/2addr v11, v10

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

    nop

    :goto_ec
    iget v9, v0, Lnij;->D:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ed
    move v8, v7

    nop

    nop

    goto/32 :goto_141

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ee
    neg-int v3, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_170

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ef
    sub-int/2addr v12, v14

    nop

    nop

    nop

    goto/32 :goto_1a4

    nop

    nop

    nop

    nop

    :goto_f0
    sub-int/2addr v9, v10

    nop

    nop

    goto/32 :goto_fe

    nop

    nop

    nop

    nop

    :goto_f1
    add-int/2addr v7, v1

    nop

    nop

    goto/32 :goto_19c

    nop

    nop

    nop

    nop

    nop

    :goto_f2
    const v0, 0x1e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ea

    nop

    nop

    :goto_f3
    iget-object v7, v0, Lnij;->l:Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f4
    goto/16 :goto_d4

    nop

    nop

    nop

    nop

    nop

    :goto_f5
    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    nop

    :goto_f6
    iget v2, v0, Lnij;->m:I

    nop

    goto/32 :goto_163

    nop

    nop

    nop

    nop

    :goto_f7
    add-int/2addr v8, v2

    nop

    goto/32 :goto_18d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f8
    iget v8, v0, Lnij;->j:I

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

    :goto_f9
    goto/16 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_fa
    goto/32 :goto_3b

    nop

    nop

    :goto_fb
    int-to-float v2, v2

    nop

    nop

    goto/32 :goto_e3

    nop

    nop

    :goto_fc
    iget v2, v0, Lnij;->p:I

    nop

    goto/32 :goto_120

    nop

    nop

    nop

    nop

    :goto_fd
    iget-object v12, v0, Lnij;->l:Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10c

    nop

    nop

    nop

    :goto_fe
    iget v10, v0, Lnij;->p:I

    nop

    goto/32 :goto_1b5

    nop

    nop

    nop

    nop

    :goto_ff
    iget-object v9, v0, Lnij;->l:Landroid/graphics/Rect;

    nop

    nop

    goto/32 :goto_15a

    nop

    nop

    nop

    nop

    :goto_100
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    :goto_101
    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_102
    goto/32 :goto_17a

    nop

    nop

    nop

    nop

    :goto_103
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->rLineTo(FF)V

    goto/32 :goto_15f

    nop

    nop

    nop

    :goto_104
    move v1, v5

    nop

    nop

    goto/32 :goto_10d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_105
    iget v9, v9, Landroid/graphics/Rect;->left:I

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_106
    const/4 v7, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_107
    iget-object v2, v0, Lnij;->x:Landroid/graphics/Path;

    nop

    nop

    goto/32 :goto_11c

    nop

    nop

    nop

    nop

    nop

    :goto_108
    sub-int/2addr v1, v14

    nop

    nop

    goto/32 :goto_17c

    nop

    nop

    nop

    :goto_109
    iget v12, v0, Lnij;->o:I

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_10a
    iget v12, v0, Lnij;->o:I

    nop

    nop

    nop

    goto/32 :goto_df

    nop

    nop

    nop

    :goto_10b
    const/4 v5, 0x0

    nop

    nop

    goto/32 :goto_d6

    nop

    nop

    :goto_10c
    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v12

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

    :goto_10d
    move v2, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_133

    nop

    nop

    nop

    :goto_10e
    goto/16 :goto_a1

    nop

    :goto_10f
    goto/32 :goto_153

    nop

    nop

    nop

    :goto_110
    move v15, v7

    nop

    nop

    nop

    goto/32 :goto_d3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_111
    if-eq v11, v2, :cond_12

    nop

    nop

    nop

    nop

    goto/32 :goto_e8

    nop

    nop

    nop

    nop

    nop

    :cond_12
    goto/32 :goto_76

    nop

    nop

    nop

    nop

    :goto_112
    iget v2, v0, Lnij;->E:I

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

    :goto_113
    iget-object v1, v0, Lnij;->x:Landroid/graphics/Path;

    nop

    nop

    nop

    goto/32 :goto_db

    nop

    nop

    nop

    nop

    nop

    :goto_114
    invoke-virtual {v1, v2, v5}, Landroid/graphics/Path;->rLineTo(FF)V

    goto/32 :goto_8a

    nop

    nop

    nop

    :goto_115
    move v12, v11

    nop

    nop

    nop

    nop

    :goto_116
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_117
    div-int/2addr v1, v6

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    :goto_118
    iget-object v1, v0, Lnij;->x:Landroid/graphics/Path;

    nop

    nop

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    nop

    nop

    :goto_119
    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    goto/32 :goto_e9

    nop

    nop

    nop

    :goto_11a
    iget v8, v8, Landroid/graphics/Rect;->left:I

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

    nop

    :goto_11b
    sub-int v7, p5, p3

    nop

    goto/32 :goto_168

    nop

    nop

    nop

    :goto_11c
    iget-object v3, v0, Lnij;->y:Landroid/graphics/RectF;

    nop

    goto/32 :goto_1a9

    nop

    nop

    :goto_11d
    iget v3, v0, Lnij;->D:I

    nop

    nop

    goto/32 :goto_1aa

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11e
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    goto/32 :goto_e6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11f
    iget-object v1, v0, Lnij;->x:Landroid/graphics/Path;

    nop

    nop

    nop

    goto/32 :goto_fc

    nop

    nop

    :goto_120
    sub-int/2addr v7, v2

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    :goto_121
    div-int/2addr v2, v6

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

    nop

    :goto_122
    iget-object v3, v0, Lnij;->y:Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    :goto_123
    iget v9, v9, Landroid/graphics/Rect;->top:I

    nop

    nop

    goto/32 :goto_15b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_124
    iget-object v1, v0, Lnij;->x:Landroid/graphics/Path;

    nop

    goto/32 :goto_112

    nop

    nop

    nop

    nop

    nop

    :goto_125
    iget-object v8, v0, Lnij;->l:Landroid/graphics/Rect;

    nop

    goto/32 :goto_11a

    nop

    nop

    nop

    nop

    nop

    :goto_126
    sub-int/2addr v12, v7

    nop

    nop

    goto/32 :goto_11b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_127
    add-int/2addr v7, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    :goto_128
    iget v2, v0, Lnij;->p:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a2

    nop

    nop

    nop

    nop

    :goto_129
    sub-int/2addr v8, v9

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_12a
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    nop

    goto/32 :goto_18a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12b
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->rLineTo(FF)V

    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12c
    iget v2, v0, Lnij;->E:I

    nop

    nop

    nop

    nop

    goto/32 :goto_131

    nop

    nop

    nop

    nop

    nop

    :goto_12d
    iget-object v12, v0, Lnij;->l:Landroid/graphics/Rect;

    nop

    nop

    nop

    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    :goto_12e
    const/4 v2, 0x6

    nop

    nop

    nop

    nop

    goto/32 :goto_19d

    nop

    nop

    nop

    nop

    nop

    :goto_12f
    const/4 v3, 0x6

    nop

    nop

    nop

    nop

    goto/32 :goto_1b2

    nop

    nop

    nop

    nop

    :goto_130
    invoke-static {v8, v2, v7}, Lnij;->c(III)I

    move-result v2

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_131
    neg-int v2, v2

    nop

    nop

    goto/32 :goto_1ab

    nop

    nop

    nop

    nop

    nop

    :goto_132
    int-to-float v1, v8

    nop

    goto/32 :goto_173

    nop

    nop

    :goto_133
    move v8, v15

    nop

    nop

    nop

    nop

    goto/32 :goto_f4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_134
    if-ne v7, v6, :cond_13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19a

    nop

    nop

    :cond_13
    goto/32 :goto_a7

    nop

    nop

    nop

    :goto_135
    goto/16 :goto_65

    nop

    nop

    nop

    nop

    :goto_136
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_137
    neg-int v2, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_167

    nop

    nop

    :goto_138
    goto/16 :goto_116

    nop

    :goto_139
    goto/32 :goto_111

    nop

    nop

    nop

    nop

    :goto_13a
    return-void

    nop

    nop

    nop

    :goto_13b
    goto/32 :goto_12f

    nop

    nop

    :goto_13c
    aget v2, v9, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13d
    iget-object v1, v0, Lnij;->x:Landroid/graphics/Path;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_aa

    nop

    nop

    :goto_13e
    int-to-float v3, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_182

    nop

    nop

    nop

    nop

    nop

    :goto_13f
    iput v2, v0, Lnij;->H:I

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_140
    iget-object v0, v0, Lnij;->x:Landroid/graphics/Path;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_100

    nop

    nop

    nop

    nop

    :goto_141
    goto/16 :goto_16e

    nop

    :goto_142
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_143
    iget v7, v0, Lnij;->m:I

    nop

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

    :goto_144
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    nop

    nop

    nop

    nop

    goto/32 :goto_1a1

    nop

    nop

    nop

    nop

    nop

    :goto_145
    iget-object v10, v0, Lnij;->l:Landroid/graphics/Rect;

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    :goto_146
    goto/16 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_147
    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_148
    iget-object v9, v0, Lnij;->l:Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    goto/32 :goto_105

    nop

    nop

    nop

    nop

    nop

    :goto_149
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->rLineTo(FF)V

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14a
    neg-int v3, v3

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    :goto_14b
    iget v8, v8, Landroid/graphics/Rect;->left:I

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    :goto_14c
    iget v9, v0, Lnij;->p:I

    nop

    goto/32 :goto_196

    nop

    nop

    nop

    nop

    nop

    :goto_14d
    iget-object v8, v0, Lnij;->l:Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14e
    iget-object v2, v0, Lnij;->x:Landroid/graphics/Path;

    nop

    nop

    nop

    nop

    goto/32 :goto_119

    nop

    nop

    nop

    :goto_14f
    new-instance v0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    goto/32 :goto_158

    nop

    nop

    nop

    nop

    :goto_150
    if-ne v5, v1, :cond_14

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_14
    goto/32 :goto_13f

    nop

    nop

    :goto_151
    iget-object v2, v0, Lnij;->l:Landroid/graphics/Rect;

    nop

    goto/32 :goto_1a6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_152
    iget v8, v0, Lnij;->j:I

    nop

    nop

    nop

    goto/32 :goto_e5

    nop

    nop

    nop

    nop

    nop

    :goto_153
    if-eq v11, v3, :cond_15

    nop

    nop

    goto/32 :goto_139

    nop

    :cond_15
    goto/32 :goto_bd

    nop

    nop

    nop

    :goto_154
    if-eq v8, v3, :cond_16

    nop

    nop

    nop

    nop

    goto/32 :goto_147

    nop

    nop

    nop

    :cond_16
    goto/32 :goto_b4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_155
    int-to-float v3, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_12b

    nop

    nop

    nop

    nop

    nop

    :goto_156
    iget v2, v0, Lnij;->E:I

    nop

    goto/32 :goto_137

    nop

    nop

    :goto_157
    sub-int/2addr v7, v8

    nop

    nop

    goto/32 :goto_1b9

    nop

    nop

    :goto_158
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_159
    iget-object v3, v0, Lnij;->y:Landroid/graphics/RectF;

    nop

    nop

    goto/32 :goto_127

    nop

    nop

    nop

    :goto_15a
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    nop

    nop

    nop

    goto/32 :goto_c4

    nop

    nop

    :goto_15b
    iget-object v10, v0, Lnij;->f:Landroid/widget/PopupWindow;

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_15c
    move v12, v1

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

    :goto_15d
    goto/16 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_15e
    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15f
    iget-object v0, v0, Lnij;->x:Landroid/graphics/Path;

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    :goto_160
    iget v11, v0, Lnij;->j:I

    nop

    nop

    nop

    nop

    goto/32 :goto_17b

    nop

    nop

    :goto_161
    move v9, v5

    nop

    nop

    :goto_162
    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    :goto_163
    if-ne v2, v4, :cond_17

    nop

    goto/32 :goto_ad

    nop

    :cond_17
    goto/32 :goto_19e

    nop

    nop

    :goto_164
    iget v12, v0, Lnij;->B:I

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    :goto_165
    iget v7, v0, Lnij;->A:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f8

    nop

    nop

    nop

    nop

    nop

    :goto_166
    iget-object v8, v0, Lnij;->l:Landroid/graphics/Rect;

    nop

    nop

    goto/32 :goto_144

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_167
    div-int/2addr v2, v6

    nop

    nop

    nop

    goto/32 :goto_11d

    nop

    nop

    nop

    nop

    :goto_168
    if-eq v8, v4, :cond_18

    nop

    nop

    nop

    goto/32 :goto_175

    nop

    :cond_18
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_169
    move v8, v5

    nop

    nop

    nop

    nop

    :goto_16a
    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16b
    iget-object v9, v0, Lnij;->l:Landroid/graphics/Rect;

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_16c
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    goto/32 :goto_86

    nop

    nop

    :goto_16d
    move v8, v5

    nop

    nop

    :goto_16e
    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16f
    int-to-float v1, v1

    nop

    nop

    goto/32 :goto_107

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_170
    div-int/2addr v3, v6

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

    :goto_171
    iget v3, v0, Lnij;->E:I

    nop

    goto/32 :goto_c3

    nop

    nop

    nop

    :goto_172
    iget v3, v3, Landroid/graphics/RectF;->top:F

    nop

    goto/32 :goto_11e

    nop

    nop

    nop

    nop

    :goto_173
    invoke-virtual {v2, v3, v1}, Landroid/graphics/Path;->moveTo(FF)V

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_174
    goto :goto_16a

    nop

    nop

    nop

    :goto_175
    goto/32 :goto_169

    nop

    nop

    nop

    nop

    :goto_176
    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

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

    :goto_177
    iget v1, v0, Lnij;->E:I

    nop

    nop

    nop

    goto/32 :goto_117

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_178
    iget v7, v1, Landroid/graphics/Point;->x:I

    nop

    nop

    nop

    goto/32 :goto_b9

    nop

    nop

    nop

    :goto_179
    goto/32 :goto_7b

    nop

    nop

    nop

    :goto_17a
    goto/32 :goto_c2

    nop

    nop

    :goto_17b
    if-eq v11, v4, :cond_19

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :cond_19
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_17c
    invoke-static {v9, v7, v1}, Lnij;->c(III)I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_106

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17d
    iget v2, v0, Lnij;->D:I

    nop

    nop

    nop

    goto/32 :goto_bf

    nop

    nop

    :goto_17e
    add-int/2addr v8, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    :goto_17f
    if-eq v2, v15, :cond_1a

    nop

    nop

    nop

    goto/32 :goto_136

    nop

    nop

    nop

    :cond_1a
    goto/32 :goto_1b3

    nop

    nop

    nop

    nop

    nop

    :goto_180
    iget v3, v0, Lnij;->E:I

    nop

    nop

    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    :goto_181
    sub-float/2addr v3, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    :goto_182
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->rLineTo(FF)V

    goto/32 :goto_1a3

    nop

    nop

    nop

    nop

    nop

    :goto_183
    invoke-virtual {v1, v5, v2}, Landroid/graphics/Path;->rLineTo(FF)V

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_184
    goto/16 :goto_5b

    nop

    :goto_185
    goto/32 :goto_151

    nop

    nop

    nop

    nop

    :goto_186
    int-to-float v2, v7

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    :goto_187
    iget-object v0, v0, Lnij;->x:Landroid/graphics/Path;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    :goto_188
    throw v0

    nop

    nop

    nop

    nop

    :goto_189
    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_18a
    sub-int/2addr v8, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_14c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18b
    div-int/2addr v2, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18c
    if-eq v2, v3, :cond_1b

    nop

    nop

    nop

    nop

    goto/32 :goto_13b

    nop

    :cond_1b
    goto/32 :goto_16f

    nop

    nop

    nop

    :goto_18d
    sub-int/2addr v8, v13

    nop

    nop

    nop

    goto/32 :goto_15d

    nop

    nop

    nop

    nop

    :goto_18e
    invoke-virtual {v1, v9, v11, v12, v7}, Landroid/view/View;->layout(IIII)V

    :goto_18f
    goto/32 :goto_55

    nop

    nop

    :goto_190
    if-eqz v10, :cond_1c

    nop

    nop

    nop

    nop

    goto/32 :goto_f5

    nop

    nop

    :cond_1c
    goto/32 :goto_104

    nop

    nop

    nop

    nop

    nop

    :goto_191
    neg-int v3, v3

    nop

    goto/32 :goto_49

    nop

    nop

    :goto_192
    add-int/2addr v11, v12

    nop

    nop

    nop

    goto/32 :goto_fd

    nop

    nop

    nop

    nop

    nop

    :goto_193
    iget-object v9, v0, Lnij;->l:Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12a

    nop

    nop

    nop

    nop

    :goto_194
    sub-int/2addr v2, v13

    nop

    nop

    nop

    nop

    goto/32 :goto_c0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_195
    iget v9, v9, Landroid/graphics/Rect;->top:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_196
    goto/16 :goto_24

    nop

    nop

    nop

    :goto_197
    goto/32 :goto_14f

    nop

    nop

    nop

    nop

    :goto_198
    div-int/2addr v2, v6

    nop

    nop

    goto/32 :goto_cf

    nop

    nop

    nop

    nop

    nop

    :goto_199
    goto/16 :goto_95

    nop

    :goto_19a
    goto/32 :goto_f3

    nop

    nop

    :goto_19b
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->rLineTo(FF)V

    goto/32 :goto_e2

    nop

    nop

    :goto_19c
    iget v1, v0, Lnij;->I:I

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19d
    const/4 v3, 0x5

    nop

    goto/32 :goto_62

    nop

    nop

    :goto_19e
    if-ne v2, v6, :cond_1d

    nop

    nop

    goto/32 :goto_189

    nop

    nop

    nop

    nop

    :cond_1d
    goto/32 :goto_17f

    nop

    nop

    :goto_19f
    int-to-float v1, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_1a0
    sub-int/2addr v8, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_177

    nop

    nop

    nop

    :goto_1a1
    div-int/2addr v8, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1ac

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a2
    sub-int/2addr v7, v2

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a3
    iget-object v0, v0, Lnij;->x:Landroid/graphics/Path;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16c

    nop

    nop

    nop

    nop

    nop

    :goto_1a4
    div-int/2addr v12, v6

    nop

    nop

    nop

    :goto_1a5
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_1a6
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_135

    nop

    nop

    nop

    nop

    nop

    :goto_1a7
    int-to-float v2, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_d7

    nop

    nop

    nop

    :goto_1a8
    move v7, v5

    nop

    goto/32 :goto_ed

    nop

    nop

    nop

    nop

    nop

    :goto_1a9
    iget v3, v3, Landroid/graphics/RectF;->right:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_181

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1aa
    int-to-float v2, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14a

    nop

    nop

    nop

    nop

    nop

    :goto_1ab
    div-int/2addr v2, v6

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_1ac
    goto/16 :goto_16e

    nop

    nop

    nop

    nop

    :goto_1ad
    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    :goto_1ae
    iget v5, v0, Lnij;->I:I

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1af
    iget v12, v0, Lnij;->n:I

    nop

    nop

    nop

    goto/32 :goto_d1

    nop

    nop

    :goto_1b0
    iget-object v9, v0, Lnij;->l:Landroid/graphics/Rect;

    nop

    nop

    nop

    goto/32 :goto_195

    nop

    nop

    nop

    nop

    :goto_1b1
    iget v2, v0, Lnij;->D:I

    nop

    nop

    nop

    goto/32 :goto_180

    nop

    nop

    nop

    nop

    nop

    :goto_1b2
    if-eq v2, v3, :cond_1e

    nop

    nop

    goto/32 :goto_101

    nop

    nop

    nop

    nop

    :cond_1e
    goto/32 :goto_19f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b3
    if-eq v11, v4, :cond_1f

    nop

    nop

    nop

    nop

    goto/32 :goto_185

    nop

    nop

    nop

    nop

    :cond_1f
    goto/32 :goto_184

    nop

    nop

    nop

    :goto_1b4
    move v11, v2

    nop

    nop

    nop

    goto/32 :goto_15c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b5
    goto/16 :goto_4f

    nop

    nop

    nop

    nop

    :goto_1b6
    goto/32 :goto_34

    nop

    nop

    nop

    :goto_1b7
    div-int/2addr v1, v6

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

    :goto_1b8
    sub-int/2addr v1, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_108

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b9
    iget v8, v0, Lnij;->p:I

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_1ba
    move v12, v11

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_1bb
    div-int/2addr v2, v6

    nop

    goto/32 :goto_159

    nop

    nop

    nop

    nop

    nop
.end method

.method protected final onMeasure(II)V
    .locals 9

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    float-to-int v1, v1

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_1
    goto/16 :goto_4b

    nop

    :goto_2
    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v1, p0, Lnij;->y:Landroid/graphics/RectF;

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    :goto_4
    iput-boolean v0, p0, Lnij;->G:Z

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_8
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    :goto_9
    if-nez v2, :cond_0

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    :cond_0
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0x10

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget v1, p0, Lnij;->z:I

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_c
    iget v2, p0, Lnij;->C:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_d
    iget-object p2, p0, Lnij;->i:Landroid/view/View;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_e
    iget p2, p0, Lnij;->D:I

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_f
    const/4 v0, 0x5

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-nez v2, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget p2, p0, Lnij;->C:I

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_12
    iget-object v1, p0, Lnij;->i:Landroid/view/View;

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget p2, p0, Lnij;->D:I

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    add-int/2addr v1, p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_15
    invoke-virtual {p0, p1, v1}, Lnij;->setMeasuredDimension(II)V

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    :goto_16
    add-int/2addr p2, p2

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    sub-int/2addr p2, v1

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_18
    iget-object p1, p0, Lnij;->i:Landroid/view/View;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    :goto_19
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget v2, p0, Lnij;->j:I

    nop

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

    :goto_1b
    if-eq v2, v7, :cond_2

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    :cond_2
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_1c
    iget v1, p0, Lnij;->j:I

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    :goto_1d
    iget v5, p0, Lnij;->D:I

    nop

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iget-object v1, p0, Lnij;->i:Landroid/view/View;

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_1f
    add-int/2addr p1, p2

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_20
    move v8, v4

    nop

    nop

    :goto_21
    goto/32 :goto_4c

    nop

    nop

    :goto_22
    invoke-static {p1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    :goto_23
    sub-int/2addr p2, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    add-int/2addr p2, v1

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    :goto_25
    if-nez v0, :cond_3

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_7b

    nop

    nop

    nop

    :goto_26
    float-to-int p1, p1

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

    :goto_27
    invoke-virtual {v1, p1, p2}, Landroid/view/View;->measure(II)V

    :goto_28
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_2a
    goto/16 :goto_3e

    nop

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    int-to-float v1, v1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2d
    iget p2, p0, Lnij;->A:I

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-static {p2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    :goto_2f
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_30
    add-int/2addr v1, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_31
    int-to-float v6, v6

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

    :goto_32
    sub-int/2addr p1, v1

    nop

    nop

    nop

    :goto_33
    goto/32 :goto_37

    nop

    nop

    nop

    :goto_34
    add-int/2addr v1, v1

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_35
    iget v4, p0, Lnij;->j:I

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_36
    iget-object p1, p0, Lnij;->y:Landroid/graphics/RectF;

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_37
    invoke-direct {p0}, Lnij;->da190e616797844b591057d0190e7728m()Landroid/graphics/Point;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    const/4 v7, 0x2

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_39
    if-eq v2, v7, :cond_4

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    :cond_4
    goto/32 :goto_68

    nop

    nop

    nop

    :goto_3a
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    :goto_3b
    goto/32 :goto_64

    nop

    nop

    nop

    nop

    :goto_3c
    if-gt v1, p2, :cond_5

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_12

    nop

    nop

    :goto_3d
    add-int/2addr p1, p2

    nop

    nop

    nop

    :goto_3e
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_3f
    if-lez v0, :cond_6

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_63

    nop

    :goto_40
    iget-boolean v0, p0, Lnij;->G:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    :goto_41
    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_42
    const/4 v5, 0x0

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_43
    sub-int/2addr p2, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    :goto_44
    iget v1, p0, Lnij;->D:I

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_45
    iget v0, p0, Lnij;->C:I

    nop

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    sub-int/2addr p1, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_47
    iget v8, p0, Lnij;->D:I

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    :goto_48
    int-to-float p2, p2

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    :goto_49
    invoke-static {p2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    move v6, v5

    nop

    nop

    nop

    nop

    :goto_4b
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    add-int/2addr p1, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_4d
    add-int/2addr p1, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    iget v1, v1, Landroid/graphics/Point;->x:I

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_4f
    if-nez v5, :cond_7

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    invoke-static {v4}, Lnic;->k(I)Z

    move-result v5

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

    :goto_51
    invoke-virtual {v2, v1, v6}, Landroid/view/View;->measure(II)V

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_52
    if-eq v1, v3, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    :cond_8
    :goto_53
    goto/32 :goto_72

    nop

    nop

    nop

    :goto_54
    const v0, 0x1c

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

    :goto_55
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_56
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_57
    if-eq v2, v3, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_79

    nop

    nop

    :goto_58
    if-eqz v0, :cond_a

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    :goto_59
    const/4 v3, 0x6

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    const/4 v4, 0x0

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    iget v0, p0, Lnij;->A:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    if-ne v4, v0, :cond_b

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    add-int/2addr v0, v0

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_5e
    add-int/2addr v1, v1

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

    :goto_5f
    iput v0, p0, Lnij;->j:I

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    :goto_60
    goto/16 :goto_21

    nop

    nop

    nop

    :goto_61
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_62
    const/high16 v5, -0x80000000

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_63
    goto/32 :goto_6c

    nop

    nop

    nop

    :goto_64
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_65
    iget-object v1, p0, Lnij;->y:Landroid/graphics/RectF;

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_66
    sub-int/2addr p1, v0

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_67
    iget-object v2, p0, Lnij;->i:Landroid/view/View;

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_68
    iget v4, p0, Lnij;->D:I

    nop

    nop

    nop

    nop

    :goto_69
    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    if-nez p1, :cond_c

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    :cond_c
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    return-void

    nop

    :goto_6c
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    if-eq v4, v3, :cond_d

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    :cond_d
    :goto_6e
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    iget v0, p0, Lnij;->j:I

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_70
    if-ne v1, v0, :cond_e

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_71
    float-to-int v1, v1

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

    :goto_72
    iget v1, p0, Lnij;->D:I

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

    :goto_73
    iget v1, p0, Lnij;->z:I

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :goto_74
    goto/16 :goto_33

    nop

    :goto_75
    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    :goto_76
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_77
    if-eq v2, v3, :cond_f

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    :cond_f
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_78
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    :goto_79
    iget v6, p0, Lnij;->D:I

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_7a
    add-int/2addr p2, v4

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_7b
    invoke-static {v0, p0}, Lnic;->a(ILandroid/view/View;)I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :goto_7c
    int-to-float p1, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    :goto_7d
    invoke-static {v1}, Lnic;->k(I)Z

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_7e
    invoke-virtual {v1, v6, v5, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    :goto_7f
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_80
    int-to-float v5, v5

    nop

    nop

    nop

    nop

    nop

    :goto_81
    goto/32 :goto_77

    nop

    nop

    nop

    nop
.end method

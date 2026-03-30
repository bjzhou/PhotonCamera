.class public final Lbhs;
.super Landroid/view/View;
.source "PG"


# static fields
.field public static final a:[I

.field private static final f:[I


# instance fields
.field public b:Lbib;

.field public c:Ljava/lang/Boolean;

.field public d:Ljava/lang/Runnable;

.field public e:Luaz;

.field private g:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_a

    nop

    nop

    :goto_0
    const v1, 0x101009e

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

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0x12

    nop

    goto/32 :goto_b

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

    :goto_4
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_4

    nop

    :goto_6
    goto/32 :goto_c

    nop

    nop

    :goto_7
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_8
    sput-object v0, Lbhs;->f:[I

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
    sput-object v0, Lbhs;->a:[I

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_a
    const v0, 0x20

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0x10100a7

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_e
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_f
    new-array v0, v0, [I

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

    :goto_10
    filled-new-array {v0, v1}, [I

    move-result-object v0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()V
    .locals 2

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0xd

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_2
    goto/16 :goto_1d

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_7
    if-nez v0, :cond_0

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

    :cond_0
    goto/32 :goto_1f

    nop

    nop

    :goto_8
    invoke-virtual {p0, v0}, Lbhs;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_f

    nop

    nop

    :goto_9
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_4

    nop

    nop

    :goto_b
    if-lez v0, :cond_1

    nop

    goto/32 :goto_a

    nop

    :cond_1
    goto/32 :goto_9

    nop

    :goto_c
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_11

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_e
    iput-object v0, p0, Lbhs;->e:Luaz;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_f
    return-void

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_11
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-object v0, p0, Lbhs;->d:Ljava/lang/Runnable;

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

    :goto_13
    iget-object v0, p0, Lbhs;->d:Ljava/lang/Runnable;

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

    :goto_14
    return-void

    nop

    nop

    :goto_15
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_16
    iget-object v0, p0, Lbhs;->b:Lbib;

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_17
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    :cond_2
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v0, v1, v1}, Lbib;->setVisible(ZZ)Z

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_19
    sget-object v1, Lbhs;->a:[I

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object v0, p0, Lbhs;->b:Lbib;

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_1b
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_1c
    invoke-virtual {v0, v1}, Lbib;->setState([I)Z

    :goto_1d
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_1e
    if-eqz v0, :cond_3

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

    :cond_3
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {p0, v0}, Lbhs;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final b(JJF)V
    .locals 3

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

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

    :goto_1
    invoke-static {p4}, Luda;->q(F)I

    move-result p4

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p3, p2, p2, p4, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    goto/32 :goto_1f

    nop

    nop

    :goto_3
    new-instance p3, Landroid/graphics/Rect;

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0, p1}, Lbhs;->setRight(I)V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p5, v0, Lbib;->a:Lcel;

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0, p1}, Lbhs;->setLeft(I)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_7
    goto/16 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_2c

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

    :goto_c
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-static {v1, v2, p3, p4}, La;->q(JJ)Z

    move-result p5

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

    :goto_e
    invoke-static {p3, p4, p5}, Lcel;->h(JF)J

    move-result-wide p3

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-wide v1, p5, Lcel;->g:J

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-static {p1}, Luda;->q(F)I

    move-result p1

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p0, p1}, Lbhs;->setBottom(I)V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_12
    iget p1, p3, Landroid/graphics/Rect;->top:I

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_13
    const/4 p2, 0x0

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

    :goto_14
    const/high16 v1, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_15
    invoke-static {p1, p2}, Lcdn;->a(J)F

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_16
    if-eqz p5, :cond_0

    nop

    nop

    goto/32 :goto_8

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

    :goto_17
    invoke-static {p3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_18
    if-eqz p5, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    :cond_1
    :goto_19
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-static {p1, p2}, Lcdn;->c(J)F

    move-result p4

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-static {p5, v1}, Lucd;->f(FF)F

    move-result p5

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_1c
    iget p1, p3, Landroid/graphics/Rect;->bottom:I

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_1d
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_1e
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_2a

    nop

    :goto_1f
    iget p1, p3, Landroid/graphics/Rect;->left:I

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_20
    const v1, 0x1c

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_21
    const v0, 0x20

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_22
    if-eqz v0, :cond_3

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v0, p3}, Lbib;->setBounds(Landroid/graphics/Rect;)V

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_24
    invoke-virtual {p0, p1}, Lbhs;->setTop(I)V

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    new-instance p5, Lcel;

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_26
    invoke-static {p3, p4}, Lcen;->b(J)I

    move-result p3

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_27
    invoke-virtual {v0, p3}, Lbib;->setColor(Landroid/content/res/ColorStateList;)V

    :goto_28
    goto/32 :goto_3

    nop

    nop

    :goto_29
    iput-object p5, v0, Lbib;->a:Lcel;

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_2a
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    iget-object v0, p0, Lbhs;->b:Lbib;

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-direct {p5, p3, p4}, Lcel;-><init>(J)V

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_2f
    iget p1, p3, Landroid/graphics/Rect;->right:I

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
.end method

.method public final c(Z)V
    .locals 6

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_0
    cmp-long p1, v2, v4

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

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

    :goto_2
    const-wide/16 v4, 0x5

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto :goto_8

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-ltz p1, :cond_0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_0
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_14

    nop

    :goto_7
    invoke-virtual {v2, p1}, Lbib;->setState([I)Z

    :goto_8
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_9
    if-eqz p1, :cond_1

    nop

    goto/32 :goto_2a

    nop

    nop

    :cond_1
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_a
    iput-object p1, p0, Lbhs;->d:Ljava/lang/Runnable;

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

    :goto_b
    goto/16 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_1f

    nop

    nop

    :goto_d
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_13

    nop

    :goto_e
    const-wide/16 v2, 0x32

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_f
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    :goto_10
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p0, v2}, Lbhs;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const v0, 0x14

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

    :goto_13
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_21

    nop

    nop

    :goto_15
    iput-object p1, p0, Lbhs;->g:Ljava/lang/Long;

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

    :goto_16
    iget-object v2, p0, Lbhs;->g:Ljava/lang/Long;

    nop

    nop

    goto/32 :goto_26

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

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_18
    if-nez v2, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_7

    nop

    nop

    :goto_19
    const v1, 0x8

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    if-nez v2, :cond_4

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

    :cond_4
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_1b
    return-void

    nop

    nop

    :goto_1c
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    new-instance p1, Lbhr;

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {p0, p1, v2, v3}, Lbhs;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const-wide/16 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

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

    :goto_22
    sub-long v2, v0, v2

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_23
    sget-object p1, Lbhs;->a:[I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_24
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_25
    iget-object v2, p0, Lbhs;->d:Ljava/lang/Runnable;

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_26
    if-nez v2, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_28

    nop

    nop

    :goto_27
    invoke-direct {p1, p0}, Lbhr;-><init>(Lbhs;)V

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_28
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_29
    goto :goto_2d

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_2c

    nop

    nop

    :goto_2b
    iget-object v2, p0, Lbhs;->b:Lbib;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_2c
    sget-object p1, Lbhs;->f:[I

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop
.end method

.method public final invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lbhs;->e:Luaz;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    if-nez p0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    invoke-interface {p0}, Luaz;->a()Ljava/lang/Object;

    :goto_4
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method protected final onLayout(ZIIII)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop
.end method

.method protected final onMeasure(II)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const/4 p1, 0x0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    invoke-virtual {p0, p1, p1}, Lbhs;->setMeasuredDimension(II)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final refreshDrawableState()V
    .locals 0

    goto/32 :goto_0

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
.end method

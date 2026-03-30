.class final Lbs;
.super Landroid/view/animation/AnimationSet;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Landroid/view/ViewGroup;

.field private final b:Landroid/view/View;

.field private c:Z

.field private d:Z

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/view/animation/Animation;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p2, p0, Lbs;->a:Landroid/view/ViewGroup;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1
    const/4 v0, 0x1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-boolean v0, p0, Lbs;->e:Z

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    :goto_5
    invoke-virtual {p2, p0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0, p1}, Lbs;->addAnimation(Landroid/view/animation/Animation;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {p0, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iput-object p3, p0, Lbs;->b:Landroid/view/View;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop
.end method


# virtual methods
.method public final getTransformation(JLandroid/view/animation/Transformation;)Z
    .locals 2

    goto/32 :goto_f

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

    goto/32 :goto_c

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_1
    add-int v0, v0, v1

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

    nop

    :goto_2
    invoke-static {p1, p0}, Ldvp;->b(Landroid/view/View;Ljava/lang/Runnable;)V

    :goto_3
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_4
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_5
    iput-boolean v0, p0, Lbs;->e:Z

    nop

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

    :goto_6
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_7
    iput-boolean v0, p0, Lbs;->c:Z

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

    :goto_8
    return v0

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_a
    iget-boolean p0, p0, Lbs;->d:Z

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_9

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

    :goto_d
    const v1, 0x9

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_e
    if-eqz p1, :cond_1

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

    :cond_1
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const v0, 0x1c

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_10
    if-eqz p0, :cond_2

    nop

    goto/32 :goto_18

    nop

    nop

    :cond_2
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object p1, p0, Lbs;->a:Landroid/view/ViewGroup;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_13
    return p0

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-super {p0, p1, p2, p3}, Landroid/view/animation/AnimationSet;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result p1

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

    :goto_16
    iget-boolean v1, p0, Lbs;->c:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_17
    return v0

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_4

    nop

    nop

    :goto_19
    rem-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_1a
    if-nez v1, :cond_3

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

    :cond_3
    goto/32 :goto_a

    nop

    nop

    nop
.end method

.method public final getTransformation(JLandroid/view/animation/Transformation;F)Z
    .locals 2

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    :goto_1
    goto/32 :goto_1a

    nop

    nop

    :goto_2
    if-eqz p1, :cond_0

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_3
    iget-boolean p0, p0, Lbs;->d:Z

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_4
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_5
    iget-object p1, p0, Lbs;->a:Landroid/view/ViewGroup;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_1

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

    :cond_1
    goto/32 :goto_e

    nop

    :goto_7
    if-nez v1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_3

    nop

    nop

    :goto_8
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_9
    return p0

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_15

    nop

    nop

    :goto_b
    const v1, 0xf

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_c
    iput-boolean v0, p0, Lbs;->c:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-static {p1, p0}, Ldvp;->b(Landroid/view/View;Ljava/lang/Runnable;)V

    :goto_11
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const v0, 0xc

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_13
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/AnimationSet;->getTransformation(JLandroid/view/animation/Transformation;F)Z

    move-result p1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_16
    iput-boolean v0, p0, Lbs;->e:Z

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget-boolean v1, p0, Lbs;->c:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_18
    if-eqz p0, :cond_3

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_19
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_1a
    goto/32 :goto_f

    nop
.end method

.method public final run()V
    .locals 2

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x12

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Lbs;->a:Landroid/view/ViewGroup;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_2
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    nop

    :goto_3
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_4
    iput-boolean v0, p0, Lbs;->e:Z

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

    :goto_5
    iget-object v0, p0, Lbs;->a:Landroid/view/ViewGroup;

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

    :goto_6
    iget-boolean v0, p0, Lbs;->c:Z

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_7
    iget-boolean v0, p0, Lbs;->e:Z

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v1, p0, Lbs;->b:Landroid/view/View;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_9
    const/4 v0, 0x1

    nop

    goto/32 :goto_14

    nop

    nop

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

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    :goto_d
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_17

    nop

    :goto_f
    const/4 v0, 0x0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_10
    add-int v0, v0, v1

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

    :goto_11
    if-eqz v0, :cond_1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_7

    nop

    nop

    :goto_12
    return-void

    nop

    :goto_13
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iput-boolean v0, p0, Lbs;->d:Z

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const v1, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_16
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_16

    nop
.end method

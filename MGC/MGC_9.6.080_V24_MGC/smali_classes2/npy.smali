.class public final Lnpy;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lj$/time/Duration;

.field private static final b:Lj$/time/Duration;

.field private static final c:Lj$/time/Duration;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_12

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

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_b

    nop

    nop

    :goto_2
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_5
    sput-object v0, Lnpy;->b:Lj$/time/Duration;

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

    :goto_6
    sput-object v0, Lnpy;->c:Lj$/time/Duration;

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

    :goto_7
    const-wide/16 v0, 0xc8

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_8
    invoke-static {v0, v1}, Lj$/time/Duration;->ofMillis(J)Lj$/time/Duration;

    move-result-object v0

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

    nop

    :goto_9
    sput-object v0, Lnpy;->a:Lj$/time/Duration;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_c
    invoke-static {v0, v1}, Lj$/time/Duration;->ofMillis(J)Lj$/time/Duration;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_d
    invoke-static {v0, v1}, Lj$/time/Duration;->ofMillis(J)Lj$/time/Duration;

    move-result-object v0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const-wide/16 v0, 0x96

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_f
    const v1, 0x8

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

    :goto_10
    const-wide/16 v0, 0x64

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_12
    const v0, 0x4

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
.end method

.method public static a(ILandroid/view/View;)V
    .locals 4

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v1, 0x1

    nop

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

    :goto_1
    invoke-virtual {v2, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_2
    const-wide/16 v2, 0x0

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_4
    if-nez v1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_35

    nop

    nop

    nop

    :goto_5
    const/4 v0, 0x0

    nop

    :goto_6
    goto/32 :goto_f

    nop

    nop

    :goto_7
    invoke-direct {v2, p1, v1, p0, v3}, Ljnx;-><init>(Landroid/view/View;ZII)V

    goto/32 :goto_16

    nop

    nop

    :goto_8
    goto :goto_11

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_10

    nop

    nop

    :goto_a
    const/high16 v0, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_b
    move v1, v0

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_4

    nop

    nop

    :goto_d
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    :cond_1
    goto/32 :goto_26

    nop

    :goto_e
    invoke-direct {v2}, Leac;-><init>()V

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

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

    :goto_10
    sget-object v2, Lnpy;->a:Lj$/time/Duration;

    nop

    nop

    :goto_11
    goto/32 :goto_2f

    nop

    nop

    :goto_12
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

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

    :goto_13
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_27

    nop

    :goto_15
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_18
    if-nez v1, :cond_2

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_29

    nop

    nop

    :goto_19
    const/4 v3, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1a
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1b
    if-nez v1, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    goto/32 :goto_1e

    nop

    nop

    :goto_1d
    invoke-virtual {v2}, Lj$/time/Duration;->toMillis()J

    move-result-wide v2

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_1e
    if-eqz p0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    :cond_4
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_1f
    const v1, 0x1d

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_20
    new-instance v2, Leac;

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

    :goto_21
    const/4 v0, 0x0

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_22
    goto/16 :goto_c

    nop

    nop

    :goto_23
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_24
    goto/16 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_28
    sget-object v2, Lnpy;->c:Lj$/time/Duration;

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_29
    sget-object v2, Lnpy;->b:Lj$/time/Duration;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_2a
    return-void

    nop

    nop

    :goto_2b
    goto/32 :goto_14

    nop

    nop

    :goto_2c
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    new-instance v2, Ljnx;

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {v2}, Lj$/time/Duration;->toMillis()J

    move-result-wide v2

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_30
    if-eqz p0, :cond_5

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

    :cond_5
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_31
    goto/16 :goto_3

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    const v0, 0x7

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_34
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_35
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_36
    goto/32 :goto_30

    nop

    nop
.end method

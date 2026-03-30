.class public final Lrer;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Landroid/animation/TimeInterpolator;

.field public static final b:Landroid/animation/TimeInterpolator;

.field public static final c:Landroid/animation/TimeInterpolator;

.field public static final d:Landroid/animation/TimeInterpolator;

.field public static final e:Landroid/animation/TimeInterpolator;


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
    invoke-direct {v0}, Leac;-><init>()V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {v0}, Leab;-><init>()V

    goto/32 :goto_5

    nop

    nop

    :goto_2
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_3
    sput-object v0, Lrer;->d:Landroid/animation/TimeInterpolator;

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_4
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

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

    :goto_5
    sput-object v0, Lrer;->c:Landroid/animation/TimeInterpolator;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_6
    new-instance v0, Lead;

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

    :goto_7
    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_8
    invoke-direct {v0}, Lead;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    sput-object v0, Lrer;->e:Landroid/animation/TimeInterpolator;

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
    new-instance v0, Leac;

    nop

    nop

    goto/32 :goto_0

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

    :goto_c
    sput-object v0, Lrer;->a:Landroid/animation/TimeInterpolator;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_d
    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_e
    new-instance v0, Leab;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_f
    sput-object v0, Lrer;->b:Landroid/animation/TimeInterpolator;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop
.end method

.method public static a(FFFFF)F
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    sub-float/2addr p1, p0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    div-float/2addr p4, p3

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_3
    cmpg-float v0, p4, p2

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    cmpl-float v0, p4, p3

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_5
    return p0

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-gez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_1
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_8
    return p0

    nop

    nop

    :goto_9
    return p1

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_b
    mul-float/2addr p4, p1

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

    :goto_c
    sub-float/2addr p4, p2

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_d
    sub-float/2addr p3, p2

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_e
    add-float/2addr p0, p4

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop
.end method

.method public static b(IIF)I
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    int-to-float p1, p1

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

    :goto_1
    sub-int/2addr p1, p0

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

    :goto_2
    return p0

    nop

    nop

    nop

    :goto_3
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p1

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_4
    mul-float/2addr p2, p1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_5
    add-int/2addr p0, p1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method

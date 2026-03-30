.class public final Lems;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:F

.field public b:F

.field public c:F


# direct methods
.method public constructor <init>()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

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
.end method

.method public static synthetic b(Lenc;)V
    .locals 1

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    add-int/lit8 v0, v0, -0x1

    nop

    nop

    goto/32 :goto_6

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
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    throw p0

    nop

    nop

    nop

    :goto_6
    if-ltz v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_7
    check-cast p0, Landroidx/wear/ambient/SharedLibraryVersion;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_8
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_9
    iget-object p0, p0, Lenc;->a:Ljava/util/ArrayList;

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

    :goto_a
    iget-object v0, p0, Lenc;->a:Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public static synthetic c(Landroidx/wear/widget/SwipeDismissFrameLayout;)V
    .locals 6

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    iget-object v1, p0, Landroidx/wear/widget/SwipeDismissFrameLayout;->b:Ljava/util/ArrayList;

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
    check-cast v1, Landroidx/wear/ambient/WearableControllerProvider;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v5, 0x0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {v4, v5, v2}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_7
    if-gez v0, :cond_0

    nop

    goto/32 :goto_9

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto :goto_11

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_a
    new-array v2, v2, [Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_b
    aput-object p0, v2, v4

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v0, p0, Landroidx/wear/widget/SwipeDismissFrameLayout;->b:Ljava/util/ArrayList;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const v1, 0xd

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_1

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

    :cond_1
    goto/32 :goto_5

    nop

    :goto_10
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    nop

    :goto_11
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const v0, 0xf

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
    add-int/lit8 v0, v0, -0x1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_14
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_15
    const/4 v2, 0x1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_6

    nop

    nop

    :goto_17
    const/16 v4, 0x96

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_18
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    return-void

    nop

    :goto_1a
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()F
    .locals 2

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-float/2addr v0, p0

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

    :goto_1
    goto/32 :goto_9

    nop

    nop

    :goto_2
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    goto/32 :goto_2

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_5
    const v0, 0x4

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_2

    nop

    :goto_7
    iget v1, p0, Lems;->b:F

    nop

    goto/32 :goto_c

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
    iget v0, p0, Lems;->a:F

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

    :goto_b
    const v1, 0x1d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_c
    add-float/2addr v0, v1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget p0, p0, Lems;->c:F

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
.end method

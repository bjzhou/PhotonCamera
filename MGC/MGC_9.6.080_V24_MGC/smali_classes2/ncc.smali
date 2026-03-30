.class public Lncc;
.super Ljava/lang/Object;
.source "PG"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final a:Lsdb;


# instance fields
.field private final b:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const-string v0, "ncc"

    nop

    nop

    goto/32 :goto_2

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

    :goto_2
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    sput-object v0, Lncc;->a:Lsdb;

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

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    :goto_2
    iput-object p1, p0, Lncc;->b:Landroid/app/Activity;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()Landroid/graphics/RectF;
    .locals 3

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0, p0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_37

    nop

    :goto_2
    new-instance p0, Landroid/graphics/RectF;

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_3
    goto/16 :goto_11

    nop

    :goto_4
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_5
    return-object p0

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_3f

    nop

    nop

    :goto_7
    new-instance p0, Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_8
    const/16 v0, 0x1308

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_9
    if-nez v1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_1
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v1, v2}, Lnbe;->equals(Ljava/lang/Object;)Z

    move-result v2

    nop

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

    nop

    :goto_b
    sget-object p0, Lncc;->a:Lsdb;

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_c
    iget-object p0, p0, Lnbs;->d:Lnca;

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

    :goto_d
    if-eqz v2, :cond_2

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_e
    if-eqz p0, :cond_3

    nop

    goto/32 :goto_1a

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

    nop

    :goto_f
    new-instance v0, Landroid/graphics/RectF;

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_10
    return-object v0

    nop

    :goto_11
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    check-cast p0, Lscz;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p0}, Lscs;->c()Lsdo;

    move-result-object p0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const-string v0, "Preview rectangle is not available now"

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_15
    sget-object v2, Lnbe;->c:Lnbe;

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_16
    iget-object v2, p0, Lnca;->j:Landroid/util/Size;

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_17
    const v1, 0xa

    nop

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

    :goto_18
    invoke-interface {p0, v0}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_19
    return-object p0

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_f

    nop

    nop

    :goto_1b
    const/high16 v1, 0x3f800000    # 1.0f

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object v1, v1, Lnbr;->i:Lnbe;

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_1d
    return-object v0

    nop

    nop

    :goto_1e
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object v1, p0, Lnca;->k:Landroid/util/Size;

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

    :goto_20
    invoke-direct {v0, p0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    :goto_21
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_22
    check-cast p0, Lscz;

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_23
    const/4 v2, 0x0

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

    nop

    :goto_24
    sget-object v2, Lnbe;->b:Lnbe;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_25
    goto :goto_21

    nop

    :goto_26
    goto/32 :goto_3c

    nop

    nop

    :goto_27
    invoke-virtual {p0}, Lscs;->c()Lsdo;

    move-result-object p0

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-direct {p0, v2, v2, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_29
    const v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_2a
    iget-object p0, p0, Lnbs;->b:Lnbp;

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {p0, v1, v2}, Lnca;->h(Landroid/util/Size;Landroid/util/Size;)Landroid/graphics/Rect;

    move-result-object p0

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

    :goto_2c
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_2d
    if-eqz p0, :cond_4

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :cond_4
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_2e
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    const/16 v0, 0x1309

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-interface {p0, v0}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_31
    invoke-direct {p0, v2, v2, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto/32 :goto_5

    nop

    nop

    :goto_32
    if-eqz v0, :cond_5

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    invoke-virtual {v1, v2}, Lnbe;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_34
    new-instance v0, Landroid/graphics/RectF;

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_35
    sget-object p0, Lncc;->a:Lsdb;

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_36
    iget-object v1, p0, Lnbs;->a:Lnbr;

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

    :goto_37
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_38
    goto/32 :goto_41

    nop

    nop

    nop

    :goto_39
    invoke-interface {p0, v0}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_3a
    goto/32 :goto_38

    nop

    nop

    :goto_3b
    iget-object p0, p0, Lnbp;->e:Landroid/graphics/Rect;

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_3c
    new-instance v0, Landroid/graphics/RectF;

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_3d
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3e
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/layout/MainActivityLayout;->g()Lnbs;

    move-result-object p0

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

    :goto_3f
    invoke-virtual {p0}, Lncc;->b()Lcom/google/android/apps/camera/ui/layout/MainActivityLayout;

    move-result-object p0

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

    :goto_40
    const-string v0, "Preview rectangle is not available yet. Main activity layout is not available."

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

    :goto_41
    invoke-virtual {p0}, Lncc;->b()Lcom/google/android/apps/camera/ui/layout/MainActivityLayout;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_42
    invoke-interface {p0, v0}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop
.end method

.method public final b()Lcom/google/android/apps/camera/ui/layout/MainActivityLayout;
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    :goto_1
    const v0, 0x7f0b0057

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

    :goto_2
    iget-object p0, p0, Lncc;->b:Landroid/app/Activity;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

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

    :goto_4
    check-cast p0, Lcom/google/android/apps/camera/ui/layout/MainActivityLayout;

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

.method public final c()Z
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iget-object p0, p0, Lncc;->b:Landroid/app/Activity;

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

    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result p0

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

    :goto_2
    return p0

    nop

    nop

    nop

    nop

    nop
.end method

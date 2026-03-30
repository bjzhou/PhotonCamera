.class public Lnam;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lsdb;


# instance fields
.field public final b:Lrss;

.field public c:Z

.field public d:Loyn;

.field public final e:Lhoh;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    const-string v0, "nam"

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    sput-object v0, Lnam;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/view/ViewStub;Lhoh;)V
    .locals 2

    goto/32 :goto_a

    nop

    nop

    :goto_0
    iput-object v1, p0, Lnam;->d:Loyn;

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_19

    nop

    :cond_0
    goto/32 :goto_18

    nop

    :goto_2
    return-void

    nop

    :goto_3
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p2, v0}, Lhoh;->p(Lhmn;)Z

    move-result p2

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_6
    const/4 v0, 0x0

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_7
    const v1, 0x3

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
    invoke-direct {v1, v0}, Loxv;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_9
    iput-object p1, p0, Lnam;->b:Lrss;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0xf

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

    :goto_b
    goto/32 :goto_19

    nop

    nop

    :goto_c
    new-instance v1, Loxv;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_d
    goto/16 :goto_1b

    nop

    nop

    :goto_e
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    check-cast p1, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    sget-object v0, Lhmv;->a:Lhmn;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_12
    sget-object p1, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_13
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

    nop

    :goto_14
    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

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

    :goto_15
    iput-boolean v0, p0, Lnam;->c:Z

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_16
    if-nez p2, :cond_1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    new-array v0, v0, [Lnak;

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_18
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-static {p1}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object p1

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1c
    iput-object p2, p0, Lnam;->e:Lhoh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Landroid/graphics/Rect;)V
    .locals 3

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v1, v0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->m:Ljava/util/Map;

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_1
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

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

    :goto_2
    if-ltz v1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    :cond_0
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result p0

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

    :goto_4
    iput p0, v0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->f:F

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v2, 0x3ccccccd    # 0.025f

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_6
    iput-object p1, v0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->h:Landroid/graphics/Rect;

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

    :goto_7
    check-cast v0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;

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

    :goto_8
    goto/16 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_21

    nop

    nop

    :goto_a
    int-to-float v1, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_b
    move-object v0, p0

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

    :goto_c
    iget-object p0, v0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->b:Landroid/graphics/RectF;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-eqz p1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    :cond_1
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v1, p1}, Lpdl;->g(Landroid/graphics/Rect;)V

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_f
    sget-object p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_10
    invoke-virtual {p0}, Lscs;->c()Lsdo;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

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

    :goto_12
    iget-object v0, p0, Lnam;->b:Lrss;

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-nez v1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_35

    nop

    nop

    :goto_14
    iget-object v1, v0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->h:Landroid/graphics/Rect;

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result p1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_16
    if-nez v0, :cond_3

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    check-cast p0, Lhsd;

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const-string p1, "lengthOfScreenShortSide should not be zero."

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_19
    const v1, 0x1

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const v0, 0x3

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

    :goto_1b
    const/16 p1, 0x12d4

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_1c
    const/high16 p0, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_1d
    new-instance v2, Landroid/graphics/RectF;

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_1e
    add-float/2addr v1, v2

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    if-nez v0, :cond_4

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_b

    nop

    nop

    :goto_20
    iget-object v1, p0, Lhsd;->e:Lpdl;

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
    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_22
    int-to-float v2, v2

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_23
    invoke-direct {v2, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {v1}, Lpdl;->f()Z

    move-result v1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_25
    if-nez p0, :cond_5

    nop

    nop

    goto/32 :goto_50

    nop

    :cond_5
    goto/32 :goto_c

    nop

    nop

    :goto_26
    div-float/2addr v1, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_27
    iget-boolean p0, p0, Lnam;->c:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_28
    if-eqz p0, :cond_6

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

    :cond_6
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {p0}, Lpdl;->a()Landroid/graphics/Matrix;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_2a
    invoke-interface {p0, p1}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    iget-object v1, v0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->b:Landroid/graphics/RectF;

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_2c
    if-nez v1, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_2d
    cmpl-float p0, p0, p1

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_2e
    iget-object v1, p0, Lhsd;->e:Lpdl;

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    if-lez v0, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    :cond_8
    goto/32 :goto_46

    nop

    :goto_30
    check-cast p0, Lscz;

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-static {p1, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_32
    if-eqz v1, :cond_9

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_6

    nop

    nop

    :goto_33
    const/4 v1, 0x1

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_34
    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    iget-object p0, p0, Lhsd;->e:Lpdl;

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_36
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

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

    nop

    :goto_37
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_38
    add-int v0, v0, v1

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

    :goto_39
    iput-boolean v1, v0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->q:Z

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

    :goto_3a
    invoke-virtual {p0, v1, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_3b
    iget-boolean p0, v0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->d:Z

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_3d
    return-void

    nop

    nop

    :goto_3e
    goto/32 :goto_45

    nop

    nop

    :goto_3f
    const v2, -0x401c71c7

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

    :goto_40
    if-nez p0, :cond_a

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    :cond_a
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_41
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    :goto_42
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_43
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

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

    nop

    :goto_44
    cmpg-float v1, v1, v2

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_45
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_46
    goto/32 :goto_3e

    nop

    nop

    :goto_47
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_48
    const/4 v1, 0x0

    nop

    nop

    :goto_49
    goto/32 :goto_39

    nop

    nop

    :goto_4a
    goto :goto_49

    nop

    :goto_4b
    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    invoke-interface {p0, p1}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    invoke-virtual {v0}, Lrss;->h()Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    iput p0, v0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->f:F

    nop

    nop

    nop

    nop

    :goto_50
    goto/32 :goto_3d

    nop

    nop

    nop
.end method

.method public final b(I)V
    .locals 1

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_0
    invoke-interface {p0, p1}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_9

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lrss;->h()Z

    move-result v0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Lrss;->c()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_3
    sget-object p0, Lnam;->a:Lsdb;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0, p1}, Lpdl;->d(I)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0}, Lscs;->b()Lsdo;

    move-result-object p0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    check-cast p0, Lhsd;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/16 p1, 0x12da

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

    :goto_9
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const-string p1, "setSensorOrientation, view is not present."

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-interface {p0, p1}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_d
    iget-object p0, p0, Lhsd;->e:Lpdl;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_f
    check-cast p0, Lscz;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_10
    iget-object p0, p0, Lnam;->b:Lrss;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public final c(Z)V
    .locals 2

    goto/32 :goto_15

    nop

    nop

    :goto_0
    goto/16 :goto_10

    nop

    nop

    :goto_1
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, p1}, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->setVisibility(I)V

    :goto_3
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-ne v1, p1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0}, Lrss;->c()Ljava/lang/Object;

    move-result-object p0

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

    :goto_7
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-nez v1, :cond_1

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_1
    goto/32 :goto_5

    nop

    nop

    :goto_9
    invoke-virtual {v0}, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->getVisibility()I

    move-result v0

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_12

    nop

    nop

    :goto_c
    check-cast v0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;

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

    :goto_d
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_a

    nop

    :goto_e
    invoke-virtual {v0}, Lrss;->h()Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_f
    const/4 p1, 0x0

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const v1, 0x19

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_12
    iget-object v0, p0, Lnam;->b:Lrss;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_13
    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_14
    rem-int v0, v0, v1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const v0, 0x4

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

    nop

    :goto_16
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const/4 p1, 0x4

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_18
    iget-object p0, p0, Lnam;->b:Lrss;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_19
    check-cast p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1a
    if-ne v0, p1, :cond_3

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

    :cond_3
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_1b
    return-void

    nop

    nop

    :goto_1c
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop
.end method

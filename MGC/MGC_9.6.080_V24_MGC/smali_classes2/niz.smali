.class public final synthetic Lniz;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lrtm;


# instance fields
.field public final synthetic a:Lnjb;

.field public final synthetic b:Landroid/view/SurfaceView;

.field public final synthetic c:Lpcg;

.field public final synthetic d:Z

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Lnjb;Landroid/view/SurfaceView;Lpcg;ZI)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    :goto_0
    iput-object p1, p0, Lniz;->a:Lnjb;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    iput-object p2, p0, Lniz;->b:Landroid/view/SurfaceView;

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

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p3, p0, Lniz;->c:Lpcg;

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

    :goto_5
    iput-boolean p4, p0, Lniz;->d:Z

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput p5, p0, Lniz;->e:I

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 7

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_0
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

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

    nop

    :goto_1
    check-cast p0, Lscz;

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-boolean v4, p0, Lniz;->d:Z

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/16 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_16

    nop

    nop

    :goto_5
    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v5

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_6
    if-lez v4, :cond_0

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

    :goto_7
    invoke-virtual {v1, v0, v2}, Lnpc;->a(Landroid/view/SurfaceView;Landroid/graphics/Bitmap;)V

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_8
    invoke-interface {p0, v0}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget v3, p0, Lniz;->e:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    :goto_a
    invoke-interface {v3}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v3

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object p0, p0, Lniz;->c:Lpcg;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_1a

    nop

    nop

    :goto_d
    goto/32 :goto_23

    nop

    nop

    :goto_e
    sget-object p0, Lnjb;->a:Lsdb;

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
    invoke-virtual {p0}, Lscs;->c()Lsdo;

    move-result-object p0

    nop

    nop

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

    :goto_10
    if-eqz v3, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    :cond_1
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-static {v5, v2, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

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

    :goto_14
    invoke-static {p0}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object p0

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_16
    iget-object v1, v1, Lnjb;->e:Lnpc;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_17
    sget-object p0, Lnjb;->a:Lsdb;

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v3

    nop

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
    return-object p0

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_3f

    nop

    nop

    :goto_1b
    invoke-static {v2, p0, v4}, Lnjb;->a(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_1c
    if-eqz v3, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :cond_2
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object v1, p0, Lniz;->a:Lnjb;

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-static {p0, v3}, Lnjh;->b(Landroid/graphics/Bitmap;I)Lnjh;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v3}, Landroid/view/Surface;->isValid()Z

    move-result v3

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

    nop

    :goto_21
    sget-object p0, Lnjb;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    sget-object p0, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_23
    iget-object v0, p0, Lniz;->b:Landroid/view/SurfaceView;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_24
    goto/16 :goto_33

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v5

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    rem-int v0, v0, v1

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

    nop

    :goto_28
    const/16 v0, 0x13d0

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_29
    const v0, 0x19

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_2a
    sget-object p0, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-interface {p0, v0}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_2c
    check-cast p0, Lscz;

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    goto :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    iget-object v2, v1, Lnjb;->l:Llad;

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-virtual {p0}, Lscs;->c()Lsdo;

    move-result-object p0

    nop

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

    :goto_31
    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_32
    sget-object p0, Lrsa;->a:Lrsa;

    nop

    nop

    :goto_33
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    check-cast p0, Lscz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-virtual {p0}, Lpcg;->a()I

    move-result p0

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

    :goto_36
    invoke-interface {v3}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v3

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

    :goto_37
    const/16 v0, 0x13d1

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_38
    invoke-interface {p0, v0}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_39
    invoke-interface {p0, v0}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_3a
    const-string v0, "getScreenshotFrom(): the surface size is invalid"

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-interface {p0, v0}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    const-string v0, "This shouldn\'t happen outside unit test"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_3d
    invoke-interface {p0, v0}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-virtual {v2}, Llad;->b()Lpcg;

    move-result-object v2

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_3f
    goto/32 :goto_d

    nop

    :goto_40
    if-gtz v4, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_41
    const v1, 0x8

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_42
    goto/16 :goto_33

    nop

    nop

    nop

    nop

    :goto_43
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_44
    if-lez v0, :cond_4

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_c

    nop

    :goto_45
    invoke-virtual {p0}, Lscs;->c()Lsdo;

    move-result-object p0

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_46
    invoke-static {v4, v5, v2, v3}, Lnjb;->c(IILpcg;I)Landroid/util/Size;

    move-result-object v2

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

    :goto_47
    const/16 v0, 0x13d2

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_48
    const-string v0, "getScreenshotFrom(): the surface is not valid"

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_49
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v4

    nop

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
.end method

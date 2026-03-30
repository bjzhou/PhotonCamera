.class final Lfpz;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final a:Lfmf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    new-instance v0, Lfpy;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    sput-object v0, Lfpz;->a:Lfmf;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    invoke-direct {v0}, Lfpy;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method static a(Lfmf;Landroid/graphics/drawable/Drawable;II)Lflx;
    .locals 7

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_0
    if-lez v6, :cond_0

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_0
    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_1
    throw p0

    nop

    :goto_2
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_4
    if-eq p2, v4, :cond_1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_45

    nop

    nop

    :goto_5
    goto/16 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_6
    invoke-static {v5, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    move-object p1, v2

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {p1, v0, p2}, Lfey;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_9
    goto/32 :goto_34

    nop

    :goto_a
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_a

    nop

    nop

    :goto_c
    goto/16 :goto_3b

    nop

    nop

    :goto_d
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_f
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_10
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    :cond_2
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_13
    if-eqz v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_3
    goto/32 :goto_15

    nop

    nop

    :goto_14
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_15
    const-string v0, "Unable to draw "

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const/4 v1, 0x0

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

    :goto_17
    invoke-static {v5, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_18
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-static {p1, p0}, Lfqg;->g(Landroid/graphics/Bitmap;Lfmf;)Lfqg;

    move-result-object p0

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_1a
    add-int v0, v0, v1

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

    :goto_1b
    const/4 v3, 0x5

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_1c
    goto/16 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_28

    nop

    nop

    :goto_1e
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-static {v5, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-interface {p0, p2, p3, v3}, Lfmf;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    nop

    nop

    :try_start_0
    new-instance v4, Landroid/graphics/Canvas;

    nop

    nop

    nop

    nop

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, v1, v1, p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p1, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v4, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    if-eq p3, v4, :cond_4

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_22
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    nop

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

    :goto_24
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_25
    if-gtz v0, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_29

    nop

    nop

    :goto_26
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p3

    nop

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_28
    instance-of v0, p1, Landroid/graphics/drawable/Animatable;

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_2b
    const-string p2, " to Bitmap with Target.SIZE_ORIGINAL because the Drawable has no intrinsic width"

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    const v1, 0x7

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_2d
    sget-object p0, Lfpz;->a:Lfmf;

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-static {p1, v0, p2}, Lfey;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_30
    const v0, 0x17

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_31
    const/4 v1, 0x1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_32
    sget-object v0, Lfqm;->c:Ljava/util/concurrent/locks/Lock;

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

    :goto_33
    return-object p0

    nop

    :goto_34
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_35
    if-eqz v1, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_36
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_37
    if-nez p2, :cond_7

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_38
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_39
    const/high16 v4, -0x80000000

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_3a
    move-object p1, v3

    nop

    nop

    :goto_3b
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    if-lez v0, :cond_8

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_9

    nop

    :goto_3d
    move-object p1, v2

    nop

    nop

    nop

    nop

    :goto_3e
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-static {v5, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_40
    if-lez v4, :cond_9

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_41
    if-gtz v0, :cond_a

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    goto/16 :goto_18

    nop

    nop

    nop

    :goto_43
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_44
    if-nez p2, :cond_b

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    :cond_b
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_45
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_46
    const-string v5, "DrawableToBitmap"

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

    nop

    :goto_47
    const-string p2, " to Bitmap with Target.SIZE_ORIGINAL because the Drawable has no intrinsic height"

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

    :goto_48
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop
.end method

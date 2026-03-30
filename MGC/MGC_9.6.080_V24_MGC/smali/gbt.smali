.class public final synthetic Lgbt;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ljava/lang/Object;

.field private final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lgbt;->a:Ljava/lang/Object;

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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput p3, p0, Lgbt;->c:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    return-void

    nop

    :goto_4
    iput-object p2, p0, Lgbt;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I[B)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    iput p3, p0, Lgbt;->c:I

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2
    iput-object p2, p0, Lgbt;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    iput-object p1, p0, Lgbt;->b:Ljava/lang/Object;

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
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 7

    goto/32 :goto_113

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lhot;->t()V

    :goto_1
    goto/32 :goto_69

    nop

    nop

    :goto_2
    check-cast v0, Landroid/view/Window;

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    :goto_3
    if-le v4, p1, :cond_0

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget v0, p0, Lgbt;->c:I

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

    :goto_5
    check-cast p1, Lrss;

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_6
    check-cast p1, Ljcd;

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_7
    check-cast p1, [B

    nop

    nop

    nop

    goto/32 :goto_cb

    nop

    nop

    :goto_8
    check-cast p1, Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    goto/32 :goto_c8

    nop

    nop

    nop

    :goto_9
    if-eqz p1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_9f

    nop

    nop

    :goto_a
    check-cast v0, Lgfq;

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    :goto_b
    check-cast v0, Ljbg;

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v0, v0, Lhut;->k:Lcom/google/android/apps/camera/evcomp/EvCompView;

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

    :goto_d
    iget-object p0, p0, Lgbt;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_db

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v2, p1, v1, v0}, Lhpl;->a(Landroid/net/Uri;Llxm;Llxp;)Lhpk;

    move-result-object p1

    nop

    goto/32 :goto_21

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

    nop

    :pswitch_0
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/16 :goto_a2

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_4a

    nop

    nop

    :goto_12
    invoke-virtual {p1, p0}, Lezm;->draw(Landroid/graphics/Canvas;)V

    :goto_13
    goto/32 :goto_88

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    goto/32 :goto_cd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    move v2, p1

    nop

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    :goto_16
    check-cast p1, Ljava/util/Map$Entry;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ea

    nop

    nop

    nop

    :goto_17
    iget-object v2, p0, Lgbv;->i:Lhpl;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_18
    sget-object p1, Lsxp;->i:Lsxp;

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

    :goto_19
    invoke-static {}, Llxm;->a()Llxm;

    move-result-object v1

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object p1, p1, Llxc;->b:Lpsf;

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_1b
    invoke-interface {p1}, Lpsf;->b()Landroid/net/Uri;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_137

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    return-void

    nop

    nop

    nop

    :pswitch_1
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_2
    goto/32 :goto_80

    nop

    nop

    nop

    :goto_1e
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_f5

    nop

    nop

    :goto_1f
    iget-object v0, v0, Llxg;->b:Llxp;

    nop

    nop

    nop

    goto/32 :goto_fd

    nop

    nop

    nop

    nop

    :goto_20
    check-cast p0, Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iget-object v0, p0, Lgbv;->m:Lhot;

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    goto/16 :goto_12e

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_24
    iget-object v0, p0, Lgbt;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_4e

    nop

    nop

    :goto_25
    iput-object p1, p0, Lpsg;->e:Ljava/lang/Object;

    nop

    goto/32 :goto_139

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    goto/32 :goto_101

    nop

    nop

    nop

    nop

    nop

    :goto_27
    if-nez p1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_146

    nop

    nop

    nop

    :goto_28
    return-void

    nop

    nop

    :pswitch_3
    goto/32 :goto_13a

    nop

    nop

    nop

    nop

    nop

    :goto_29
    iget-object v0, p0, Lgbt;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d2

    nop

    nop

    nop

    nop

    :goto_2a
    check-cast p1, Ljava/lang/Float;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    :goto_2b
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    :goto_2d
    iget-wide v0, p1, Lcom/google/googlex/gcam/ArkInfo;->a:J

    nop

    nop

    goto/32 :goto_fb

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {v0, v1}, Landroid/view/Window;->setDecorFitsSystemWindows(Z)V

    :goto_2f
    goto/32 :goto_9c

    nop

    nop

    :goto_30
    invoke-interface {v0, p1}, Lprk;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    nop

    goto/32 :goto_120

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    iget-object v4, v0, Lhut;->h:Loyn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_32
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    nop

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

    :goto_33
    invoke-virtual {p0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/32 :goto_f9

    nop

    nop

    nop

    nop

    nop

    :goto_34
    invoke-virtual {p0}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_dd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-interface {v4}, Loyn;->cM()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    :goto_36
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_12f

    nop

    nop

    nop

    nop

    :goto_37
    invoke-virtual {v2, v0, v1}, Ljbi;->f(Ljbg;Ljbf;)V

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_38
    invoke-virtual {v0, p0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_39
    check-cast p1, [B

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    iget-object p0, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->m:Ljava/util/Set;

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    :goto_3b
    check-cast p0, Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-virtual {p1}, Ljava/lang/Float;->intValue()I

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_3d
    check-cast p0, Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_3e
    iget-object p0, p0, Lgcb;->b:Lcom/google/googlex/gcam/ShotMetadata;

    nop

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    :goto_3f
    check-cast p0, Lpsg;

    nop

    goto/32 :goto_13c

    nop

    nop

    nop

    nop

    :goto_40
    iget-object p0, p0, Lgbv;->m:Lhot;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_41
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_da

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_43
    check-cast p0, Lnbe;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    :goto_44
    if-nez p1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_10f

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_b3

    nop

    nop

    :goto_45
    iget-object v0, p0, Lgbt;->b:Ljava/lang/Object;

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

    :goto_46
    invoke-virtual {v2, p0, v0, p1}, Ljbi;->c(Ljbh;Ljbg;Ljbf;)V

    goto/32 :goto_13b

    nop

    nop

    nop

    nop

    :goto_47
    iget-object v3, p0, Lgcb;->a:Lcom/google/googlex/gcam/InterleavedImageU8;

    nop

    nop

    nop

    nop

    goto/32 :goto_11f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    iget-object v3, p0, Lgcb;->j:Llko;

    nop

    nop

    nop

    nop

    goto/32 :goto_132

    nop

    nop

    nop

    nop

    :goto_49
    sget-object p1, Lsxp;->g:Lsxp;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_cf

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    mul-int/2addr v4, p1

    nop

    nop

    nop

    goto/32 :goto_131

    nop

    nop

    nop

    :goto_4b
    invoke-interface {v0, p1}, Lprk;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_4c
    sget-object v0, Lila;->b:Lpck;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_fe

    nop

    nop

    nop

    nop

    :goto_4d
    if-nez p1, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_144

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    iget-object p0, p0, Lgbt;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_4f
    invoke-virtual {v3}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    :goto_50
    int-to-float v1, v3

    nop

    nop

    goto/32 :goto_ff

    nop

    nop

    nop

    :goto_51
    check-cast p1, Lgsa;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    :goto_52
    if-gt v4, v5, :cond_5

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_67

    nop

    nop

    :goto_53
    int-to-float v1, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    :goto_54
    iget-object p0, p0, Lgbt;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_55
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ee

    nop

    nop

    :goto_56
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    :goto_57
    check-cast p1, Ljava/util/Map$Entry;

    nop

    nop

    goto/32 :goto_ef

    nop

    nop

    nop

    nop

    nop

    :goto_58
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_126

    nop

    nop

    nop

    :goto_59
    if-nez v2, :cond_6

    nop

    nop

    nop

    goto/32 :goto_148

    nop

    :cond_6
    goto/32 :goto_147

    nop

    nop

    :goto_5a
    check-cast v0, Lhut;

    nop

    nop

    nop

    goto/32 :goto_128

    nop

    nop

    nop

    :goto_5b
    if-eq p1, v0, :cond_7

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_130

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    sget-object p1, Lcom/google/android/apps/camera/bottombar/BottomBar;->j:Lryy;

    nop

    goto/32 :goto_117

    nop

    nop

    nop

    :goto_5d
    check-cast p0, Ljbh;

    nop

    nop

    nop

    goto/32 :goto_e5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    iget-object p0, p0, Lgbt;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_d3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    iget-object p0, p0, Lgbt;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_60
    check-cast v4, Llfw;

    nop

    nop

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    nop

    :goto_61
    check-cast p1, Ljava/lang/Integer;

    nop

    nop

    goto/32 :goto_114

    nop

    nop

    :goto_62
    iget-object p0, p0, Lgbt;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_63
    check-cast p1, Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_64
    check-cast v0, Lnbh;

    nop

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    :goto_65
    if-le v5, p1, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :cond_8
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_66
    iget-object v3, v0, Lhut;->h:Loyn;

    nop

    nop

    nop

    nop

    goto/32 :goto_12a

    nop

    nop

    nop

    :goto_67
    mul-int/2addr v5, p1

    nop

    nop

    goto/32 :goto_d8

    nop

    nop

    nop

    :goto_68
    check-cast v0, Lhut;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    :goto_69
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_3
        :pswitch_2
        :pswitch_e
        :pswitch_5
        :pswitch_b
        :pswitch_11
        :pswitch_f
        :pswitch_1
        :pswitch_9
        :pswitch_12
        :pswitch_10
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_13
        :pswitch_4
        :pswitch_a
        :pswitch_c
        :pswitch_6
    .end packed-switch

    :goto_6a
    goto/32 :goto_d7

    nop

    nop

    :goto_6b
    const/16 v1, 0x5a

    nop

    nop

    nop

    goto/32 :goto_143

    nop

    nop

    nop

    :goto_6c
    sget-object v0, Lgni;->a:Lsdb;

    nop

    goto/32 :goto_f1

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    invoke-virtual {v0, p1}, Lcom/google/android/apps/camera/evcomp/EvCompView;->f(F)V

    goto/32 :goto_12b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    check-cast v3, Llfw;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c4

    nop

    nop

    :goto_6f
    iget-object v0, v0, Lgbc;->a:Lfdn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    :goto_70
    check-cast p0, Lgbv;

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

    :goto_71
    check-cast p0, Lcom/google/android/apps/camera/bottombar/BottomBar;

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    :goto_72
    check-cast p0, Lpsg;

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

    nop

    :goto_73
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    :goto_74
    iget-object p0, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->m:Ljava/util/Set;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10a

    nop

    nop

    :goto_75
    invoke-interface {v0, p1}, Lprk;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_76
    iget-object p0, p0, Lgbt;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f3

    nop

    nop

    :goto_77
    iget-object v0, v0, Lgfq;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_a3

    nop

    nop

    :goto_78
    invoke-virtual {p0}, Lcom/google/googlex/gcam/ShotMetadata;->e()Lsxp;

    move-result-object p0

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    :goto_79
    invoke-virtual {v0, p1}, Lhot;->w(Lggk;)V

    goto/32 :goto_40

    nop

    nop

    :goto_7a
    invoke-virtual {p1, v0}, Lcom/google/googlex/gcam/ArkInfo;->e(Lsxi;)V

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_7b
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_cc

    nop

    nop

    nop

    nop

    :goto_7c
    iget-object v0, v0, Lhut;->k:Lcom/google/android/apps/camera/evcomp/EvCompView;

    nop

    nop

    nop

    nop

    goto/32 :goto_d4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    iget-object p0, p0, Lgbt;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_ce

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    iget-object p0, p0, Lgbt;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_10b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    iget-object p0, p0, Lgbt;->a:Ljava/lang/Object;

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

    :goto_80
    check-cast p1, Lglk;

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    :goto_81
    invoke-virtual {v0, p1}, Lcom/google/android/apps/camera/evcomp/EvCompView;->f(F)V

    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_82
    iget-object v0, p0, Lgbt;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_83
    invoke-interface {v3}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_84
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    nop

    goto/32 :goto_116

    nop

    nop

    :goto_85
    invoke-virtual {p1}, Lrss;->h()Z

    move-result p1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_86
    iget-object v0, p0, Lgbt;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_87
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_88
    return-void

    nop

    nop

    nop

    :pswitch_4
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_89
    iget-object v0, p0, Lgbt;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    :goto_8a
    return-void

    nop

    :pswitch_5
    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_8b
    iget-object v1, v0, Lhut;->h:Loyn;

    nop

    nop

    nop

    goto/32 :goto_115

    nop

    nop

    nop

    nop

    nop

    :goto_8c
    iget-object p0, p0, Lgbt;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_aa

    nop

    nop

    :goto_8d
    iget-object v0, p0, Lgbt;->b:Ljava/lang/Object;

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

    :goto_8e
    long-to-float p0, v0

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_8f
    invoke-virtual {v0}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    :goto_90
    invoke-interface {p1, p0, v0}, Ljcd;->d(Lnbe;Lnbh;)V

    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    :goto_91
    iget-object v0, p0, Lgbt;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_f7

    nop

    nop

    :goto_92
    sget-object p1, Lcom/google/android/apps/camera/bottombar/BottomBar;->i:Lryy;

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    :goto_93
    check-cast v0, Llxg;

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_94
    check-cast v2, Ljbi;

    nop

    nop

    goto/32 :goto_145

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_95
    if-nez v1, :cond_9

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_ec

    nop

    nop

    nop

    nop

    :goto_96
    return-void

    nop

    nop

    nop

    nop

    :pswitch_6
    goto/32 :goto_f8

    nop

    nop

    nop

    :goto_97
    check-cast p0, Lenm;

    nop

    nop

    nop

    goto/32 :goto_be

    nop

    nop

    nop

    :goto_98
    const/16 v1, 0xb4

    nop

    nop

    nop

    nop

    :goto_99
    goto/32 :goto_d6

    nop

    nop

    nop

    nop

    nop

    :goto_9a
    iget-object p0, p0, Lgbt;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_119

    nop

    nop

    :goto_9b
    check-cast p1, Ljbf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    :goto_9c
    return-void

    nop

    nop

    nop

    :pswitch_7
    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    :goto_9d
    invoke-interface {p1, v3}, Ljcd;->a(Landroid/graphics/Rect;)Landroid/view/View;

    move-result-object p1

    nop

    goto/32 :goto_127

    nop

    nop

    nop

    :goto_9e
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_9f
    goto/16 :goto_13f

    nop

    nop

    nop

    nop

    nop

    :goto_a0
    goto/32 :goto_13e

    nop

    nop

    nop

    nop

    :goto_a1
    move p1, v6

    nop

    :goto_a2
    goto/32 :goto_12d

    nop

    nop

    nop

    nop

    :goto_a3
    iput-object v0, p1, Lgsa;->a:Lpak;

    nop

    goto/32 :goto_b8

    nop

    nop

    nop

    :goto_a4
    iget v4, v4, Llfw;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_111

    nop

    nop

    :goto_a5
    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    nop

    :goto_a6
    iget-object v2, p0, Lgbt;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    :goto_a7
    invoke-interface {p0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    goto/32 :goto_1d

    nop

    nop

    :goto_a8
    invoke-interface {v0}, Lpnu;->d()F

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_a9
    return-void

    nop

    nop

    nop

    :pswitch_8
    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    nop

    :goto_aa
    check-cast p0, Landroid/graphics/Canvas;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ab
    check-cast p1, Ljcd;

    nop

    nop

    goto/32 :goto_102

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ac
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    :goto_ad
    check-cast v0, Ljbg;

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ae
    iget-object p0, p0, Lgbt;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_135

    nop

    nop

    :goto_af
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_107

    nop

    nop

    nop

    nop

    nop

    :goto_b0
    check-cast v0, Ljbg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    :goto_b1
    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b2
    invoke-virtual {p0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/32 :goto_125

    nop

    nop

    :goto_b3
    const/16 v1, -0x5a

    nop

    nop

    goto/32 :goto_10e

    nop

    nop

    :goto_b4
    invoke-static {v0, v1, p1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->ArkInfo_exposure_time_ms_set(JLcom/google/googlex/gcam/ArkInfo;F)V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b5
    iput-object p1, p0, Lpsg;->d:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_105

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b6
    sget-object p1, Lsxp;->d:Lsxp;

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

    nop

    nop

    :goto_b7
    check-cast v0, Ljbg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_af

    nop

    nop

    :goto_b8
    iget-object p0, p0, Lgbt;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_c6

    nop

    nop

    :goto_b9
    if-nez p0, :cond_a

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :cond_a
    goto/32 :goto_b1

    nop

    nop

    nop

    :goto_ba
    goto/32 :goto_6a

    nop

    nop

    nop

    :goto_bb
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_bc
    if-nez v1, :cond_b

    nop

    nop

    nop

    nop

    goto/32 :goto_109

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_bd
    iget-object p0, p0, Lgbt;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_5c

    nop

    nop

    :goto_be
    invoke-virtual {p0, p1}, Lenm;->b(Landroid/view/View;)V

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    :goto_bf
    sget-object v0, Lidb;->u:Lidb;

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    :goto_c0
    iget-object p0, p0, Ljrz;->e:Lj$/util/Optional;

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_c1
    check-cast p1, Ljava/lang/Long;

    nop

    nop

    nop

    nop

    goto/32 :goto_f0

    nop

    nop

    nop

    :goto_c2
    return-void

    nop

    nop

    :pswitch_9
    goto/32 :goto_c1

    nop

    nop

    :goto_c3
    div-float/2addr p0, v2

    nop

    goto/32 :goto_b4

    nop

    nop

    nop

    nop

    :goto_c4
    iget v3, v3, Llfw;->c:I

    nop

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

    :goto_c5
    iget-object p0, p0, Lgbt;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    :goto_c6
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_e9

    nop

    nop

    nop

    nop

    :goto_c7
    check-cast p1, Lgwo;

    nop

    goto/32 :goto_14a

    nop

    nop

    nop

    nop

    nop

    :goto_c8
    iget-object v0, p0, Lgbt;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    :goto_c9
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    nop

    nop

    goto/32 :goto_eb

    nop

    nop

    :goto_ca
    return-void

    nop

    :pswitch_a
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_cb
    iget-object p0, p0, Lgbt;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    :goto_cc
    check-cast p1, Lezm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_cd
    iget-object v0, p0, Lgbt;->a:Ljava/lang/Object;

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

    :goto_ce
    check-cast p0, Landroid/animation/Animator;

    nop

    goto/32 :goto_142

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_cf
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_d0
    return-void

    nop

    nop

    nop

    nop

    :pswitch_b
    goto/32 :goto_c7

    nop

    nop

    nop

    nop

    nop

    :goto_d1
    check-cast v1, Llfw;

    nop

    nop

    nop

    nop

    goto/32 :goto_df

    nop

    nop

    nop

    :goto_d2
    check-cast v0, Ljbs;

    nop

    nop

    goto/32 :goto_140

    nop

    nop

    nop

    nop

    :goto_d3
    check-cast p0, Lgvg;

    nop

    nop

    nop

    nop

    goto/32 :goto_11e

    nop

    nop

    nop

    nop

    nop

    :goto_d4
    sub-float/2addr p1, v1

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_d5
    return-void

    nop

    :pswitch_c
    goto/32 :goto_112

    nop

    nop

    nop

    nop

    :goto_d6
    invoke-interface {v3, v0, v1}, Llxa;->ac(Landroid/graphics/Bitmap;I)V

    goto/32 :goto_de

    nop

    nop

    :goto_d7
    goto/32 :goto_bb

    nop

    nop

    :goto_d8
    div-int/2addr v5, v4

    nop

    nop

    goto/32 :goto_13d

    nop

    nop

    nop

    nop

    nop

    :goto_d9
    check-cast p1, Llxc;

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_da
    invoke-virtual {p1}, Lrss;->h()Z

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_12c

    nop

    nop

    nop

    nop

    nop

    :goto_db
    check-cast p0, Ljrz;

    nop

    nop

    goto/32 :goto_c0

    nop

    nop

    nop

    nop

    nop

    :goto_dc
    const v1, 0x17

    nop

    nop

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    :goto_dd
    check-cast p0, Ljava/lang/Long;

    nop

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    :goto_de
    return-void

    nop

    nop

    nop

    nop

    :pswitch_d
    goto/32 :goto_d9

    nop

    nop

    nop

    :goto_df
    iget v1, v1, Llfw;->b:I

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_e0
    iget-object v0, p0, Lgbt;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_e1
    return-void

    nop

    nop

    nop

    nop

    :goto_e2
    goto/32 :goto_c5

    nop

    nop

    nop

    :goto_e3
    int-to-float p1, p1

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    :goto_e4
    iget-object v0, p0, Lgbt;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_e5
    invoke-virtual {v2, p0, v0, p1}, Ljbi;->c(Ljbh;Ljbg;Ljbf;)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e6
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    nop

    goto/32 :goto_129

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e7
    check-cast p1, Lcom/google/googlex/gcam/ArkInfo;

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    :goto_e8
    invoke-interface {p1, p0, v0}, Ljbr;->a(Landroid/animation/Animator;Ljay;)V

    goto/32 :goto_ca

    nop

    nop

    nop

    nop

    :goto_e9
    return-void

    nop

    nop

    nop

    nop

    :pswitch_e
    goto/32 :goto_104

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ea
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    :goto_eb
    move v6, v2

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

    nop

    :goto_ec
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

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

    nop

    :goto_ed
    iget-object p0, p0, Lgbt;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_11a

    nop

    nop

    nop

    :goto_ee
    check-cast p1, Ljbf;

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    :goto_ef
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    nop

    :goto_f0
    iget-object p1, p0, Lgbt;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_f1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_f2
    check-cast v0, Lhut;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_f3
    check-cast p0, Lfdo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f4
    check-cast p1, Ljbq;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    :goto_f5
    if-nez v1, :cond_c

    nop

    nop

    goto/32 :goto_13f

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_124

    nop

    nop

    nop

    nop

    :goto_f6
    iget-object v0, p0, Lgbt;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    :goto_f7
    check-cast v0, Lgbc;

    nop

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f8
    check-cast p1, Ljbq;

    nop

    nop

    goto/32 :goto_f6

    nop

    nop

    nop

    :goto_f9
    return-void

    nop

    nop

    :pswitch_f
    goto/32 :goto_11b

    nop

    nop

    nop

    nop

    nop

    :goto_fa
    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    packed-switch v0, :pswitch_data_0

    goto/32 :goto_11c

    nop

    nop

    nop

    nop

    :goto_fb
    const v2, 0x49742400    # 1000000.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_c3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_fc
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_bc

    nop

    nop

    nop

    nop

    nop

    :goto_fd
    iget-object p0, p0, Lgbt;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_fe
    sget-object v0, Lsxi;->c:Lsxi;

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

    nop

    :goto_ff
    div-float/2addr p1, v1

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    :goto_100
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_121

    nop

    nop

    :goto_101
    check-cast p1, Lrss;

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_102
    iget-object v0, p0, Lgbt;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_103
    iget-object v0, p0, Lgbt;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    :goto_104
    check-cast p1, Lglk;

    nop

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    :goto_105
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_10
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_106
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_134

    nop

    nop

    nop

    nop

    nop

    :goto_107
    check-cast v1, Ljbf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10c

    nop

    nop

    nop

    :goto_108
    goto/16 :goto_e2

    nop

    :goto_109
    goto/32 :goto_e1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10a
    invoke-interface {p0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_10b
    check-cast p0, Ljbh;

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

    nop

    :goto_10c
    iget-object v2, p0, Lgbt;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_118

    nop

    nop

    nop

    nop

    nop

    :goto_10d
    invoke-virtual {p0, p1, v0}, Lfdo;->o(Ljbq;Ljbr;)V

    goto/32 :goto_d5

    nop

    nop

    nop

    nop

    nop

    :goto_10e
    goto/16 :goto_99

    nop

    nop

    nop

    :goto_10f
    goto/32 :goto_b6

    nop

    nop

    nop

    nop

    :goto_110
    invoke-static {p0, p1}, Lpuf;->m(Lexq;Ljava/lang/String;)V

    goto/32 :goto_149

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_111
    sub-int/2addr v3, v4

    nop

    goto/32 :goto_7c

    nop

    nop

    :goto_112
    check-cast p1, Ljbr;

    nop

    nop

    nop

    goto/32 :goto_103

    nop

    nop

    nop

    :goto_113
    const v0, 0xc

    nop

    nop

    nop

    nop

    goto/32 :goto_dc

    nop

    nop

    nop

    nop

    :goto_114
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_136

    nop

    nop

    nop

    nop

    nop

    :goto_115
    invoke-interface {v1}, Loyn;->cM()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    goto/32 :goto_d1

    nop

    nop

    nop

    :goto_116
    check-cast v1, Ljbf;

    nop

    nop

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    :goto_117
    check-cast p0, Lcom/google/android/apps/camera/bottombar/BottomBar;

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

    :goto_118
    check-cast v2, Ljbi;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_119
    check-cast p0, Lgcb;

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_11a
    invoke-virtual {p1}, Lidb;->f()Ljava/lang/String;

    move-result-object p1

    nop

    nop

    goto/32 :goto_110

    nop

    nop

    :goto_11b
    check-cast p1, Ljava/lang/Float;

    nop

    nop

    nop

    goto/32 :goto_e4

    nop

    nop

    nop

    nop

    :goto_11c
    check-cast p1, Lidb;

    nop

    nop

    nop

    nop

    goto/32 :goto_bf

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11d
    check-cast p1, Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    goto/32 :goto_e0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11e
    iget-object p0, p0, Lgvg;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    :goto_11f
    invoke-virtual {v0, v3}, Lfdn;->u(Lcom/google/googlex/gcam/InterleavedImageU8;)Landroid/graphics/Bitmap;

    move-result-object v0

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

    :goto_120
    check-cast p1, [B

    nop

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    nop

    :goto_121
    if-nez p0, :cond_d

    nop

    goto/32 :goto_99

    nop

    :cond_d
    goto/32 :goto_98

    nop

    nop

    nop

    :goto_122
    if-nez v0, :cond_e

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    :goto_123
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    :goto_124
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    nop

    :goto_125
    return-void

    nop

    nop

    nop

    nop

    :pswitch_11
    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_126
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_127
    iget-object p0, p0, Lgbt;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_128
    iget-object v0, v0, Lhut;->k:Lcom/google/android/apps/camera/evcomp/EvCompView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_129
    if-nez v1, :cond_f

    nop

    nop

    goto/32 :goto_e2

    nop

    nop

    :cond_f
    goto/32 :goto_fc

    nop

    nop

    nop

    :goto_12a
    invoke-interface {v3}, Loyn;->cM()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    :goto_12b
    iget-object p0, p0, Lgbt;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12c
    if-eqz p1, :cond_10

    nop

    nop

    nop

    goto/32 :goto_109

    nop

    nop

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_108

    nop

    nop

    :goto_12d
    invoke-static {v0, p1, v2, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    nop

    :goto_12e
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12f
    if-lez v0, :cond_11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_bb

    nop

    nop

    :cond_11
    goto/32 :goto_ba

    nop

    :goto_130
    iget-object v0, p0, Lgbt;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_ed

    nop

    nop

    nop

    nop

    :goto_131
    div-int/2addr v4, v5

    nop

    nop

    nop

    goto/32 :goto_c9

    nop

    nop

    nop

    nop

    :goto_132
    iget-object v3, v3, Llko;->d:Ljava/lang/Object;

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_133
    invoke-virtual {p0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/32 :goto_d0

    nop

    nop

    nop

    :goto_134
    invoke-virtual {v0, p1}, Lcom/google/android/apps/camera/evcomp/EvCompView;->h(F)V

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    :goto_135
    check-cast p0, Lpsg;

    nop

    nop

    nop

    goto/32 :goto_b5

    nop

    nop

    nop

    nop

    nop

    :goto_136
    move/from16 v2, p1

    nop

    goto/32 :goto_e3

    nop

    nop

    :goto_137
    iget-object v0, p0, Lgbt;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_138
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_fa

    nop

    nop

    nop

    :goto_139
    return-void

    nop

    nop

    nop

    :pswitch_12
    goto/32 :goto_11d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13a
    check-cast p1, Ljava/lang/Float;

    nop

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    :goto_13b
    return-void

    nop

    nop

    :pswitch_13
    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13c
    iput-object p1, p0, Lpsg;->f:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c2

    nop

    nop

    nop

    nop

    nop

    :goto_13d
    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    nop

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

    nop

    :goto_13e
    return-void

    nop

    nop

    nop

    nop

    :goto_13f
    goto/32 :goto_bd

    nop

    nop

    nop

    :goto_140
    iget-object v0, v0, Ljbs;->g:Ljava/util/Map;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f4

    nop

    nop

    :goto_141
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    :goto_142
    check-cast v0, Ljay;

    nop

    nop

    nop

    goto/32 :goto_e8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_143
    goto/16 :goto_99

    nop

    nop

    :goto_144
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_145
    invoke-virtual {v2, v0, v1}, Ljbi;->f(Ljbg;Ljbf;)V

    goto/32 :goto_141

    nop

    nop

    nop

    :goto_146
    iget-object v0, p1, Lezm;->a:Lezb;

    nop

    nop

    nop

    nop

    goto/32 :goto_122

    nop

    nop

    :goto_147
    const/4 v2, 0x1

    nop

    :goto_148
    goto/32 :goto_133

    nop

    nop

    nop

    nop

    :goto_149
    check-cast v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_123

    nop

    nop

    :goto_14a
    iget-object v0, p0, Lgbt;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    nop
.end method

.method public final synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 1

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop

    :pswitch_0
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop

    nop

    nop

    :pswitch_1
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_3
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p0

    nop

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

    :goto_4
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p0

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

    :goto_5
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_7
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_8
    return-object p0

    nop

    nop

    nop

    nop

    :pswitch_2
    goto/32 :goto_10

    nop

    nop

    :goto_9
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    return-object p0

    nop

    :pswitch_3
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    return-object p0

    nop

    nop

    :pswitch_4
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_c
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :pswitch_5
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_d
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

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

    nop

    nop

    :goto_e
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_f
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p0

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_11
    return-object p0

    nop

    nop

    :pswitch_6
    goto/32 :goto_0

    nop

    nop

    :goto_12
    iget v0, p0, Lgbt;->c:I

    nop

    nop

    packed-switch v0, :pswitch_data_0

    goto/32 :goto_3

    nop

    nop

    :goto_13
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_14
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :pswitch_7
    goto/32 :goto_d

    nop

    nop

    :goto_15
    return-object p0

    nop

    :pswitch_8
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_16
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_17
    return-object p0

    nop

    nop

    :pswitch_9
    goto/32 :goto_5

    nop

    nop

    :goto_18
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p0

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_19
    return-object p0

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_12
        :pswitch_1
        :pswitch_3
        :pswitch_b
        :pswitch_7
        :pswitch_f
        :pswitch_e
        :pswitch_11
        :pswitch_10
        :pswitch_0
        :pswitch_13
        :pswitch_2
        :pswitch_8
        :pswitch_c
        :pswitch_9
        :pswitch_d
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_a
    .end packed-switch

    :goto_1a
    return-object p0

    nop

    nop

    :pswitch_a
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    return-object p0

    nop

    nop

    nop

    :pswitch_b
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :pswitch_c
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_1d
    return-object p0

    nop

    nop

    nop

    nop

    :pswitch_d
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_1e
    return-object p0

    nop

    :pswitch_e
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_1f
    return-object p0

    nop

    nop

    nop

    :pswitch_f
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_20
    return-object p0

    nop

    nop

    nop

    :pswitch_10
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p0

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_22
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p0

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_23
    return-object p0

    nop

    nop

    nop

    nop

    :pswitch_11
    goto/32 :goto_22

    nop

    nop

    :goto_24
    return-object p0

    nop

    nop

    :pswitch_12
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_25
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_26
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :pswitch_13
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p0

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_29
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_2a
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p0

    nop

    goto/32 :goto_14

    nop

    nop

    nop
.end method

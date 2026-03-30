.class public final synthetic Limy;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ltcf;


# instance fields
.field public final synthetic a:Linb;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Linb;I)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    iput p2, p0, Limy;->b:I

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
    iput-object p1, p0, Limy;->a:Linb;

    nop

    goto/32 :goto_1

    nop

    nop
.end method


# virtual methods
.method public final a(IJLcom/google/googlex/gcam/ShotMetadata;Lsya;)V
    .locals 6

    goto/32 :goto_3c

    nop

    nop

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
    goto/32 :goto_5c

    nop

    nop

    :goto_2
    sget-object p2, Lsya;->c:Lsya;

    nop

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

    nop

    :goto_3
    if-ne p5, p2, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    :goto_4
    const-string p5, "Final image callback only supports PixelFormat.{kRgb, kRgba, kNv12, or kNv21}"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    check-cast p1, Lilr;

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    :goto_7
    iget-object p5, p0, Linb;->r:Lmmw;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    :goto_8
    goto/16 :goto_74

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_a
    iget-object p1, p0, Linb;->i:Lcom/google/googlex/gcam/clientallocator/InterleavedU8ClientAllocator;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_a7

    nop

    nop

    :goto_d
    iget-object p2, p1, Lsyu;->b:Lsxv;

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p1}, Lrss;->h()Z

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    :goto_f
    if-ne p1, p5, :cond_1

    nop

    nop

    goto/32 :goto_cf

    nop

    nop

    :cond_1
    goto/32 :goto_c2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    cmp-long p1, p2, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-eqz p3, :cond_2

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_9b

    nop

    nop

    nop

    :goto_12
    invoke-static {v2, p3}, Lrrf;->y(ZLjava/lang/Object;)V

    :goto_13
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-nez p2, :cond_3

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_ca

    nop

    nop

    nop

    nop

    :goto_15
    return-void

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_a1

    nop

    nop

    :goto_17
    invoke-virtual {p1}, Lind;->h()Lrss;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_18
    invoke-interface {p2, p0, p1, p4}, Lilj;->a(Linb;Landroid/hardware/HardwareBuffer;Lcom/google/googlex/gcam/ShotMetadata;)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget-object p1, p0, Linb;->r:Lmmw;

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

    nop

    :goto_1a
    invoke-static {p1}, Linb;->f(Lmmw;)Lsxn;

    move-result-object p1

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    check-cast p1, Lilr;

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    :goto_1c
    if-nez p1, :cond_4

    nop

    goto/32 :goto_16

    nop

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

    :goto_1d
    iget-object p2, p0, Linb;->l:Lind;

    nop

    nop

    nop

    nop

    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iget-object p3, p0, Linb;->l:Lind;

    nop

    goto/32 :goto_b6

    nop

    nop

    nop

    :goto_1f
    iget-object p1, p1, Lsyz;->a:Lcom/google/googlex/gcam/InterleavedImageU8;

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    check-cast p1, Lsyw;

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_21
    move p3, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_b3

    nop

    nop

    :goto_22
    invoke-virtual {p1}, Lind;->l()Lrss;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    :goto_23
    invoke-virtual {p1}, Lrss;->c()Ljava/lang/Object;

    move-result-object p1

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

    :goto_24
    invoke-virtual {p1}, Lsyw;->a()Landroid/hardware/HardwareBuffer;

    move-result-object p1

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-interface {p2, p0, p1, p4}, Lilh;->dp(Linb;Landroid/graphics/Bitmap;Lcom/google/googlex/gcam/ShotMetadata;)V

    goto/32 :goto_0

    nop

    nop

    :goto_26
    invoke-virtual {p1}, Lsyw;->a()Landroid/hardware/HardwareBuffer;

    move-result-object p1

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_27
    invoke-virtual {p3}, Lrss;->h()Z

    move-result p3

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_28
    move p5, v3

    nop

    goto/32 :goto_c0

    nop

    nop

    nop

    nop

    nop

    :goto_29
    iget-object p2, p0, Linb;->l:Lind;

    nop

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    const-string p2, "Got HDR+ image"

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    if-eq p5, p1, :cond_5

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    move p2, v2

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {p1}, Lrss;->c()Ljava/lang/Object;

    move-result-object p1

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_2e
    iget p1, p0, Linb;->u:I

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    :goto_2f
    move v2, v3

    nop

    nop

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    :goto_31
    invoke-virtual {p3}, Lrss;->h()Z

    move-result p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_32
    invoke-virtual {p2}, Lrss;->c()Ljava/lang/Object;

    move-result-object p2

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    :goto_33
    move p1, v3

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_34
    invoke-virtual {p1}, Lind;->h()Lrss;

    move-result-object p1

    nop

    goto/32 :goto_61

    nop

    nop

    :goto_35
    sget p2, Lcom/a;->aa:I

    nop

    nop

    goto/32 :goto_b5

    nop

    nop

    nop

    nop

    nop

    :goto_36
    iget-object p1, p0, Linb;->l:Lind;

    nop

    nop

    goto/32 :goto_c4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    if-nez p3, :cond_6

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

    :cond_6
    :goto_38
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_39
    const-string v1, "doneWriting() must be called before getImage."

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    move p2, v3

    nop

    nop

    nop

    :goto_3b
    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    const v0, 0x4

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    sget-object p1, Lsya;->f:Lsya;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-virtual {p2}, Lrss;->c()Ljava/lang/Object;

    move-result-object p2

    nop

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-virtual {p1}, Lind;->n()Lrss;

    move-result-object p1

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    iget-object p0, p0, Limy;->a:Linb;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_41
    return-void

    nop

    :goto_42
    goto/32 :goto_65

    nop

    nop

    nop

    nop

    :goto_43
    goto/16 :goto_78

    nop

    nop

    nop

    nop

    :goto_44
    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    :goto_45
    invoke-static {p3, p5}, Lrrf;->y(ZLjava/lang/Object;)V

    :goto_46
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    invoke-interface {p1, p2}, Llxa;->H(Ljava/lang/String;)V

    :goto_48
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_49
    check-cast p2, Lilp;

    nop

    goto/32 :goto_c5

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    invoke-virtual {p2}, Lind;->k()Lrss;

    move-result-object p2

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    :goto_4b
    if-eqz p2, :cond_7

    nop

    nop

    nop

    goto/32 :goto_98

    nop

    :cond_7
    goto/32 :goto_97

    nop

    nop

    nop

    nop

    :goto_4c
    return-void

    nop

    nop

    nop

    :goto_4d
    goto/32 :goto_c7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    if-eq p5, p2, :cond_8

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_8
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_4f
    if-nez p2, :cond_9

    nop

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_95

    nop

    nop

    nop

    :goto_50
    iget-object p1, p0, Linb;->i:Lcom/google/googlex/gcam/clientallocator/InterleavedU8ClientAllocator;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_51
    if-ne p5, p1, :cond_a

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_52
    invoke-interface {p2, p0, p1, p4}, Lilp;->f(Linb;Lcom/google/googlex/gcam/InterleavedImageU8;Lcom/google/googlex/gcam/ShotMetadata;)V

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_53
    iget-object p2, p0, Linb;->l:Lind;

    nop

    goto/32 :goto_b1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_54
    sget-object p1, Lsya;->d:Lsya;

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_55
    iget-object p2, p0, Linb;->l:Lind;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    :goto_56
    invoke-virtual {p2}, Lind;->l()Lrss;

    move-result-object p2

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    if-eq p5, v3, :cond_b

    nop

    nop

    nop

    nop

    goto/32 :goto_c1

    nop

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_28

    nop

    nop

    nop

    :goto_58
    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->kInvalidShotId_get()I

    move-result p5

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

    nop

    nop

    :goto_59
    invoke-static {v2, v1}, Lrrf;->y(ZLjava/lang/Object;)V

    goto/32 :goto_90

    nop

    nop

    :goto_5a
    const-string p5, "Got YUV image with no downstream callback present."

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_5b
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    iget-object p1, p0, Linb;->l:Lind;

    nop

    nop

    nop

    goto/32 :goto_c3

    nop

    nop

    nop

    nop

    :goto_5d
    invoke-virtual {p1}, Lind;->g()Lrss;

    move-result-object p1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_5e
    invoke-static {p1}, La;->au(Z)V

    goto/32 :goto_86

    nop

    nop

    :goto_5f
    goto/16 :goto_c9

    nop

    :goto_60
    goto/32 :goto_c8

    nop

    nop

    nop

    :goto_61
    invoke-virtual {p1}, Lrss;->h()Z

    move-result p1

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    :goto_62
    return-void

    nop

    nop

    nop

    nop

    :goto_63
    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    nop

    :goto_64
    move p1, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_65
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_66
    goto/16 :goto_44

    nop

    nop

    :goto_67
    goto/32 :goto_64

    nop

    nop

    nop

    :goto_68
    invoke-virtual {p2}, Lrss;->c()Ljava/lang/Object;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_69
    invoke-virtual {p3}, Lind;->n()Lrss;

    move-result-object p3

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_6a
    invoke-interface {p1, p0, p2, p4}, Lilr;->a(Linb;Lcom/google/googlex/gcam/YuvImage;Lcom/google/googlex/gcam/ShotMetadata;)V

    :goto_6b
    goto/32 :goto_9d

    nop

    nop

    :goto_6c
    invoke-virtual {p2}, Lind;->f()Lrss;

    move-result-object p2

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_6d
    iget-object p2, p1, Lsyu;->a:Landroid/graphics/Bitmap;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    :goto_6e
    if-nez p1, :cond_c

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    :cond_c
    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    invoke-static {p4, p5}, Lsgj;->A(Lcom/google/googlex/gcam/ShotMetadata;Lsxn;)V

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    :goto_70
    check-cast p2, Lilj;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_71
    invoke-virtual {p0, p4}, Linb;->c(Lcom/google/googlex/gcam/ShotMetadata;)V

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_72
    iget-object p1, p0, Linb;->l:Lind;

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    :goto_73
    goto/16 :goto_3b

    nop

    :goto_74
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_75
    invoke-virtual {p1}, Lrss;->h()Z

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    :goto_76
    if-lez v0, :cond_d

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_b

    nop

    :goto_77
    move p1, v3

    nop

    nop

    nop

    nop

    :goto_78
    goto/32 :goto_79

    nop

    nop

    nop

    :goto_79
    sget-object p2, Lsya;->b:Lsya;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_7a
    invoke-virtual {p2}, Lszb;->a()Lcom/google/googlex/gcam/YuvImage;

    move-result-object p2

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    :goto_7b
    iget p5, p0, Linb;->u:I

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    :goto_7c
    const/4 v3, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    if-eq p1, v3, :cond_e

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    iget-object p2, p0, Linb;->j:Lszb;

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

    nop

    :goto_7f
    iget-object p1, p1, Llko;->d:Ljava/lang/Object;

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_80
    if-nez p2, :cond_f

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_81
    if-eqz p1, :cond_10

    nop

    goto/32 :goto_b4

    nop

    nop

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_82
    if-nez v0, :cond_11

    nop

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_40

    nop

    nop

    nop

    :goto_83
    if-nez p1, :cond_12

    nop

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

    :cond_12
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_84
    if-nez p1, :cond_13

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    :cond_13
    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_85
    iget-object p1, p0, Linb;->l:Lind;

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_86
    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->kInvalidAllocationId_get()J

    move-result-wide v4

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_87
    invoke-virtual {p1}, Lrss;->h()Z

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    nop

    :goto_88
    invoke-static {p3, p5}, Lrrf;->m(ZLjava/lang/Object;)V

    goto/32 :goto_83

    nop

    nop

    nop

    :goto_89
    move p1, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_be

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8a
    invoke-static {p5}, Linb;->f(Lmmw;)Lsxn;

    move-result-object p5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    :goto_8b
    iget-object p2, p0, Linb;->h:Lszb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    :goto_8c
    check-cast p2, Lilj;

    nop

    nop

    nop

    nop

    goto/32 :goto_cd

    nop

    nop

    nop

    nop

    nop

    :goto_8d
    invoke-virtual {p2}, Lrss;->c()Ljava/lang/Object;

    move-result-object p2

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    :goto_8e
    iget-object p1, p0, Linb;->g:Lcom/google/googlex/gcam/clientallocator/InterleavedU8ClientAllocator;

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_8f
    invoke-virtual {p2}, Lind;->g()Lrss;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_90
    iget-object p1, p1, Lsyu;->a:Landroid/graphics/Bitmap;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_91
    check-cast p2, Lilh;

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_92
    invoke-virtual {p1}, Lrss;->h()Z

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    :goto_93
    invoke-static {p1}, Lrrf;->x(Z)V

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_94
    if-nez p1, :cond_14

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_14
    goto/32 :goto_a4

    nop

    nop

    nop

    :goto_95
    goto/16 :goto_b4

    nop

    nop

    :goto_96
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_97
    move v2, v3

    nop

    nop

    nop

    :goto_98
    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_99
    move p1, v2

    nop

    nop

    nop

    :goto_9a
    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    nop

    :goto_9b
    iget-object p3, p0, Linb;->l:Lind;

    nop

    nop

    nop

    nop

    goto/32 :goto_c6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9c
    const v1, 0x1a

    nop

    nop

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    :goto_9d
    return-void

    nop

    nop

    nop

    nop

    :goto_9e
    goto/32 :goto_bd

    nop

    nop

    nop

    :goto_9f
    move p3, v3

    nop

    nop

    nop

    nop

    nop

    :goto_a0
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_a1
    if-nez p2, :cond_15

    nop

    goto/32 :goto_b0

    nop

    :cond_15
    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    :goto_a2
    if-nez p1, :cond_16

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    :cond_16
    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a3
    iget-object p1, p0, Linb;->l:Lind;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_a4
    iget-object p1, p0, Linb;->g:Lcom/google/googlex/gcam/clientallocator/InterleavedU8ClientAllocator;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a5
    invoke-static {p3, v1}, Lrrf;->y(ZLjava/lang/Object;)V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_a6
    invoke-static {p4, p1}, Lsgj;->A(Lcom/google/googlex/gcam/ShotMetadata;Lsxn;)V

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    :goto_a7
    iget v0, p0, Limy;->b:I

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_a8
    iget-object p1, p0, Linb;->w:Llko;

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    :goto_a9
    iget-object p1, p0, Linb;->l:Lind;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_aa
    check-cast p1, Lsyw;

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    :goto_ab
    invoke-static {p1}, La;->au(Z)V

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    :goto_ac
    invoke-virtual {p3}, Lrss;->h()Z

    move-result p3

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_ad
    add-int v0, v0, v1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_ae
    const-string p3, "Got RGB image with no downstream callback present."

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_af
    invoke-interface {p1, p0, p2, p4}, Lilr;->a(Linb;Lcom/google/googlex/gcam/YuvImage;Lcom/google/googlex/gcam/ShotMetadata;)V

    :goto_b0
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_b1
    check-cast p1, Lsyz;

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_b2
    invoke-static {p5}, Lrrf;->x(Z)V

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b3
    goto/16 :goto_a0

    nop

    nop

    nop

    nop

    :goto_b4
    goto/32 :goto_9f

    nop

    nop

    nop

    :goto_b5
    if-nez p2, :cond_17

    nop

    goto/32 :goto_48

    nop

    :cond_17
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_b6
    invoke-virtual {p3}, Lind;->k()Lrss;

    move-result-object p3

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    :goto_b7
    if-nez p1, :cond_18

    nop

    nop

    goto/32 :goto_bf

    nop

    :cond_18
    goto/32 :goto_89

    nop

    nop

    nop

    :goto_b8
    check-cast p1, Lsyu;

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b9
    move p1, v2

    nop

    nop

    nop

    nop

    nop

    :goto_ba
    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bb
    if-nez p1, :cond_19

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    :cond_19
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_bc
    invoke-virtual {p2}, Lszb;->a()Lcom/google/googlex/gcam/YuvImage;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    nop

    :goto_bd
    iget-object p0, p0, Limy;->a:Linb;

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    :goto_be
    goto/16 :goto_9a

    nop

    nop

    nop

    nop

    :goto_bf
    goto/32 :goto_99

    nop

    nop

    nop

    nop

    :goto_c0
    goto :goto_cc

    nop

    nop

    nop

    nop

    nop

    :goto_c1
    goto/32 :goto_cb

    nop

    nop

    nop

    :goto_c2
    move p1, v3

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

    :goto_c3
    invoke-virtual {p1}, Lind;->f()Lrss;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    :goto_c4
    invoke-virtual {p1}, Lind;->k()Lrss;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    :goto_c5
    iget-boolean p3, p1, Lsyz;->b:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    nop

    :goto_c6
    invoke-virtual {p3}, Lind;->l()Lrss;

    move-result-object p3

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_c7
    iget-object p1, p0, Linb;->l:Lind;

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_c8
    move p1, v2

    nop

    nop

    nop

    nop

    :goto_c9
    goto/32 :goto_93

    nop

    nop

    nop

    :goto_ca
    iget-object p3, p0, Linb;->l:Lind;

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_cb
    move p5, v2

    nop

    nop

    nop

    nop

    :goto_cc
    goto/32 :goto_b2

    nop

    nop

    :goto_cd
    invoke-interface {p2, p0, p1, p4}, Lilj;->a(Linb;Landroid/hardware/HardwareBuffer;Lcom/google/googlex/gcam/ShotMetadata;)V

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :goto_ce
    goto/16 :goto_ba

    nop

    nop

    :goto_cf
    goto/32 :goto_b9

    nop

    nop

    nop

    nop

    nop
.end method

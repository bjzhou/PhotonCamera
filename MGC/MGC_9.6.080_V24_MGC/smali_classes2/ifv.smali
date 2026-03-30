.class public final synthetic Lifv;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lizg;


# instance fields
.field public final synthetic a:Lcom/google/googlex/gcam/YuvReadView;

.field public final synthetic b:Lifx;

.field public final synthetic c:Ligg;


# direct methods
.method public synthetic constructor <init>(Lcom/google/googlex/gcam/YuvReadView;Lifx;Ligg;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lifv;->a:Lcom/google/googlex/gcam/YuvReadView;

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

    :goto_1
    iput-object p2, p0, Lifv;->b:Lifx;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    iput-object p3, p0, Lifv;->c:Ligg;

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
    return-void

    nop

    nop
.end method


# virtual methods
.method public final a(Lizf;)V
    .locals 6

    goto/32 :goto_5

    nop

    nop

    :goto_0
    goto/16 :goto_39

    nop

    :goto_1
    goto/32 :goto_4d

    nop

    nop

    :goto_2
    if-eqz p1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lifv;->c:Ligg;

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

    :goto_4
    invoke-interface {p0, p1}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0xe

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object p1, p1, Lizf;->f:Lizc;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_8
    invoke-static {v0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    sget-object v1, Lizc;->a:Lizc;

    nop

    nop

    :goto_a
    goto/32 :goto_29

    nop

    nop

    nop

    :goto_b
    sget-object v5, Lcom/google/android/libraries/performance/primes/transmitter/clearcut/itlF/rqoPuzOSTbBmB;->fqmQ:Ljava/lang/String;

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-direct {p1, v5, v5, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    goto/32 :goto_56

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

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    :cond_1
    goto/32 :goto_72

    nop

    nop

    nop

    nop

    :goto_e
    const-string p1, "Preview callback not registered. Not adding preview frame"

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :cond_2
    goto/32 :goto_15

    nop

    :goto_10
    if-eqz p1, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    :cond_3
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p0, p1}, Ligc;->e(I)V

    goto/32 :goto_7b

    nop

    nop

    :goto_12
    if-nez v2, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_4
    goto/32 :goto_0

    nop

    nop

    :goto_13
    iget-object v0, p0, Ligc;->h:Landroid/widget/ImageView;

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

    nop

    nop

    :goto_14
    if-nez v1, :cond_5

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_4f

    nop

    nop

    :goto_16
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iput-object v0, p0, Ligc;->k:Landroid/graphics/Rect;

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
    check-cast p1, Lscz;

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v1}, Lcom/google/googlex/gcam/InterleavedImageU8;->d()I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_1b
    goto/16 :goto_45

    nop

    nop

    :goto_1c
    goto/32 :goto_44

    nop

    nop

    nop

    :goto_1d
    move-object v1, v4

    nop

    nop

    :goto_1e
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_1f
    const-string v0, "livePreview"

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    :goto_20
    sget-object v3, Lizc;->a:Lizc;

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    if-eqz v1, :cond_6

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_22
    sget-object v2, Lizc;->a:Lizc;

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    :goto_23
    invoke-interface {v3, v5, v0, p1, v2}, Lscz;->G(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-interface {v1}, Lify;->f()Lcom/google/googlex/gcam/InterleavedImageU8;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    :goto_25
    check-cast p0, Lscz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_26
    iget p1, p0, Ligc;->p:I

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    :goto_27
    check-cast v3, Lscz;

    nop

    goto/32 :goto_58

    nop

    nop

    :goto_28
    invoke-interface {v1}, Lify;->h()Z

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_29
    iget v1, v1, Lizc;->b:I

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_2a
    iget v2, v2, Lizc;->c:I

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

    :goto_2b
    if-eqz v0, :cond_7

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {p0}, Lscs;->c()Lsdo;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_2e
    iget-object p1, p0, Ligc;->q:Lfdn;

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

    :goto_2f
    iget-object p0, p1, Lifx;->q:Ligc;

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    iget-object v0, p0, Lifv;->a:Lcom/google/googlex/gcam/YuvReadView;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    iput-object v1, p0, Ligc;->j:Lcom/google/googlex/gcam/InterleavedImageU8;

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_32
    if-eqz v3, :cond_8

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    :goto_33
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_34
    goto/16 :goto_7e

    nop

    nop

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_7d

    nop

    nop

    nop

    :goto_36
    invoke-direct {v0, p0, p1, v1}, Libm;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/32 :goto_19

    nop

    nop

    :goto_37
    invoke-virtual {v3}, Lscs;->c()Lsdo;

    move-result-object v3

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    :goto_38
    move-object v0, p1

    nop

    nop

    nop

    nop

    nop

    :goto_39
    goto/32 :goto_17

    nop

    nop

    :goto_3a
    sget-object p1, Lifx;->a:Lsdb;

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_3b
    const/16 v1, 0xa

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_3c
    sget-object p0, Lifx;->a:Lsdb;

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_3d
    new-instance p1, Landroid/graphics/Rect;

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_3e
    iget-object v1, p1, Lizf;->f:Lizc;

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_3f
    if-nez v1, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    goto/16 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_41
    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    goto/16 :goto_7c

    nop

    nop

    nop

    nop

    nop

    :goto_43
    goto/32 :goto_2f

    nop

    nop

    :goto_44
    move-object v3, p1

    nop

    :goto_45
    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_46
    invoke-virtual {p1}, Lscs;->c()Lsdo;

    move-result-object p1

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_47
    new-instance v0, Libm;

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_48
    invoke-virtual {p1, v1}, Lfdn;->v(Lcom/google/googlex/gcam/InterleavedImageU8;)Landroid/graphics/Bitmap;

    move-result-object p1

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_49
    return-void

    nop

    nop

    :goto_4a
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-interface {v3, v5}, Lsdo;->M(I)Lsdo;

    move-result-object v3

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_4c
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    new-instance v2, Landroid/graphics/Rect;

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    return-void

    nop

    :goto_4f
    goto/32 :goto_4c

    nop

    nop

    :goto_50
    const/4 p1, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_51
    const-string p1, "Live preview update received when live preview not active. Ignoring."

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_52
    invoke-virtual {v1}, Lcom/google/googlex/gcam/InterleavedImageU8;->b()I

    move-result v3

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    :goto_53
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_54
    const/16 p1, 0x5a9

    nop

    goto/32 :goto_70

    nop

    nop

    :goto_55
    const/16 v0, 0x5a8

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

    :goto_56
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    const v1, 0xa

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    :goto_58
    const/4 v5, 0x0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_59
    goto :goto_65

    nop

    nop

    nop

    nop

    :goto_5a
    goto/32 :goto_64

    nop

    nop

    nop

    :goto_5b
    iget v3, v3, Lizc;->d:I

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

    :goto_5c
    invoke-interface {p0, p1}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_74

    nop

    nop

    nop

    :goto_5d
    move v3, v2

    nop

    :goto_5e
    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    invoke-virtual {p0}, Lscs;->c()Lsdo;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    :goto_60
    invoke-static {v0}, Luch;->b(Ljava/lang/String;)V

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_61
    iget-object v1, p1, Lifx;->g:Lify;

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

    :goto_62
    invoke-direct {v2, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    :goto_63
    iget p1, p1, Lizc;->e:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    :goto_64
    move-object v2, p1

    nop

    nop

    nop

    nop

    :goto_65
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_66
    invoke-interface {p1, v0}, Lsdo;->M(I)Lsdo;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_67
    if-eq p1, v2, :cond_a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    :goto_68
    check-cast p0, Lscz;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_69
    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    iget p0, p0, Ligg;->f:I

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    const/16 p1, 0x5cc

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    :goto_6d
    invoke-interface {p0, p1}, Lsdo;->M(I)Lsdo;

    move-result-object p0

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

    :goto_6e
    if-eqz v1, :cond_b

    nop

    nop

    goto/32 :goto_43

    nop

    :cond_b
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_6f
    const/16 v5, 0x5cb

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

    :goto_70
    invoke-interface {p0, p1}, Lsdo;->M(I)Lsdo;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    :goto_71
    sget-object v3, Ligc;->a:Lsdb;

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_72
    sget-object p1, Lizc;->a:Lizc;

    nop

    nop

    nop

    nop

    :goto_73
    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_74
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_75
    goto/32 :goto_26

    nop

    nop

    :goto_76
    invoke-direct {v0, v1, v2, v3, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    goto/32 :goto_7a

    nop

    nop

    :goto_77
    if-eqz p0, :cond_c

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_3c

    nop

    nop

    :goto_78
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_79
    const-string v0, "Preview changed. Ignoring preview response for sessionId=%d"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    iget-object p1, p0, Lifv;->b:Lifx;

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_7d
    move-object v4, v0

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_7f
    sget-object p0, Ligc;->a:Lsdb;

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    :goto_80
    new-instance v0, Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_81
    goto/16 :goto_1e

    nop

    :goto_82
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_83
    invoke-interface {p1, v0, p0}, Lscz;->t(Ljava/lang/String;I)V

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop
.end method

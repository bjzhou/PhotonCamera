.class public final synthetic Llcc;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ljava/lang/Object;

.field private final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iput p3, p0, Llcc;->c:I

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Llcc;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p2, p0, Llcc;->b:Ljava/lang/Object;

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

    :goto_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I[B)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

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

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2
    iput p3, p0, Llcc;->c:I

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    iput-object p2, p0, Llcc;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_4
    iput-object p1, p0, Llcc;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop
.end method

.method public constructor <init>(Llqo;Ljava/lang/Object;I)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p2, p0, Llcc;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    :goto_3
    iput p3, p0, Llcc;->c:I

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p1, p0, Llcc;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method


# virtual methods
.method public final run()V
    .locals 17

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {v1}, Lpge;->b()Lpgi;

    move-result-object v3

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    :goto_1
    sget-object v1, Lnym;->d:Landroid/hardware/camera2/CameraCharacteristics$Key;

    nop

    nop

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    :goto_2
    invoke-interface {v1}, Llxa;->u()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    nop

    :goto_3
    invoke-interface {v0, v1}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_100

    nop

    nop

    nop

    :goto_4
    invoke-interface {v4}, Lpci;->close()V

    :cond_0
    :goto_5
    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0x1d

    nop

    nop

    nop

    goto/32 :goto_153

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v1}, Ljre;->a()V

    goto/32 :goto_13b

    nop

    nop

    :goto_8
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_13d

    nop

    nop

    :goto_c
    invoke-interface {v0, v1, v2}, Loyd;->cL(Lpcm;Ljava/util/concurrent/Executor;)Lpci;

    goto/32 :goto_84

    nop

    nop

    nop

    :goto_d
    move-object v2, v1

    nop

    nop

    nop

    goto/32 :goto_fc

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v0, v0, Llcc;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    :goto_f
    invoke-direct {v3, v1}, Lnkb;-><init>(Lcom/google/android/apps/camera/ui/views/FrontLensIndicatorOverlay;)V

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v1, v1, Llfk;->a:Llfi;

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

    :goto_11
    iget-object v0, v2, Llco;->b:Lpdf;

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-interface {v0, v1}, Loyn;->a(Ljava/lang/Object;)V

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v0, v0, Llcc;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_138

    nop

    nop

    nop

    nop

    :goto_14
    invoke-interface {v0, v1}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    goto/32 :goto_14c

    nop

    nop

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_16
    goto/16 :goto_91

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_90

    nop

    nop

    nop

    nop

    :goto_18
    return-void

    nop

    :pswitch_0
    goto/32 :goto_64

    nop

    nop

    nop

    :goto_19
    move-object v4, v2

    nop

    nop

    nop

    goto/32 :goto_141

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const/4 v6, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d0

    nop

    nop

    nop

    nop

    :goto_1b
    new-instance v3, Lnkb;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1c
    move-object/from16 v0, p0

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    sget-object v4, Lnne;->k:Lnne;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    :goto_1e
    new-array v3, v3, [F

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    :goto_1f
    return-void

    nop

    nop

    :pswitch_1
    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_20
    iget v1, v0, Llqo;->j:I

    nop

    goto/32 :goto_107

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/16 :goto_127

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_126

    nop

    nop

    nop

    nop

    :goto_22
    iget-object v2, v0, Llcc;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_144

    nop

    nop

    nop

    :goto_23
    move-object v6, v0

    nop

    nop

    nop

    goto/32 :goto_c8

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {v1, v11}, Llgc;->a(Lpro;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_145

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-direct {v3, v1, v2}, Lngx;-><init>(Landroid/view/View;I)V

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    if-nez v12, :cond_1

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_1
    goto/32 :goto_ef

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    return-void

    nop

    nop

    nop

    :pswitch_2
    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_28
    iget-object v1, v0, Llcc;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_29
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    :cond_2
    goto/32 :goto_4c

    nop

    :goto_2a
    check-cast v2, Landroid/util/Pair;

    nop

    nop

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto/32 :goto_60

    nop

    nop

    nop

    :goto_2c
    return-void

    nop

    nop

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_13
        :pswitch_d
        :pswitch_12
        :pswitch_10
        :pswitch_a
        :pswitch_e
        :pswitch_9
        :pswitch_1
        :pswitch_4
        :pswitch_c
        :pswitch_11
        :pswitch_3
        :pswitch_5
        :pswitch_b
        :pswitch_0
        :pswitch_f
        :pswitch_6
        :pswitch_7
        :pswitch_2
    .end packed-switch

    :goto_2d
    goto/32 :goto_b4

    nop

    nop

    :goto_2e
    iget-object v1, v0, Llcc;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    move-object v2, v1

    nop

    nop

    nop

    check-cast v2, Llwj;

    nop

    iget-object v2, v2, Llwj;->a:Ljava/io/File;

    nop

    nop

    nop

    nop

    nop

    move-object v3, v1

    nop

    nop

    nop

    nop

    check-cast v3, Llwj;

    nop

    nop

    nop

    nop

    iget-object v3, v3, Llwj;->b:Llxa;

    nop

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    move-result v5

    nop

    nop

    if-nez v5, :cond_3

    nop

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    nop

    nop

    if-nez v5, :cond_3

    nop

    nop

    nop

    nop

    sget-object v0, Llwk;->a:Lsdb;

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lscs;->b()Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    const/16 v2, 0xfee

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0, v2}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    check-cast v0, Lscz;

    nop

    nop

    const-string v2, "Could not create directory %s"

    nop

    invoke-interface {v0, v2, v4}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    nop

    nop

    nop

    nop

    nop

    :cond_3
    invoke-static {}, Lpfv;->b()Lpfv;

    move-result-object v4

    nop

    nop

    invoke-interface {v3}, Llxa;->e()J

    move-result-wide v5

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v4, v5, v6}, Lpfv;->g(J)V

    new-instance v3, Ljava/io/FileOutputStream;

    nop

    nop

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    :try_start_1
    iget-object v2, v4, Lpfv;->a:Lcom/google/android/libraries/camera/exif/ExifInterface;

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    goto/32 :goto_b5

    nop

    nop

    nop

    :goto_2f
    check-cast v0, Linb;

    nop

    nop

    goto/32 :goto_f7

    nop

    nop

    nop

    :goto_30
    move-object v2, v0

    nop

    nop

    nop

    nop

    nop

    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    goto/32 :goto_53

    nop

    nop

    :goto_31
    iget-object v1, v0, Llcc;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_c1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    const/16 v4, 0xd

    nop

    nop

    goto/32 :goto_f0

    nop

    nop

    :goto_33
    monitor-enter v2

    nop

    nop

    nop

    nop

    nop

    :try_start_3
    iget-object v3, v1, Llqt;->a:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    nop

    nop

    nop

    nop

    nop

    if-eqz v3, :cond_4

    nop

    nop

    iget-object v3, v1, Llqt;->a:Ljava/util/List;

    nop

    nop

    nop

    nop

    invoke-interface {v3, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v3, v1, Llqt;->b:Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Llqt;->a:Ljava/util/List;

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/List;->size()I

    goto :goto_34

    nop

    nop

    nop

    nop

    :cond_4
    iget-object v0, v1, Llqt;->a:Ljava/util/List;

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/List;->size()I

    :goto_34
    monitor-exit v2

    nop

    nop

    nop

    nop

    return-void

    nop

    :catchall_1
    move-exception v0

    nop

    nop

    monitor-exit v2

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/32 :goto_99

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    iput v1, v0, Llqo;->j:I

    nop

    nop

    nop

    nop

    goto/32 :goto_115

    nop

    nop

    :goto_36
    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto/32 :goto_aa

    nop

    nop

    nop

    :goto_37
    invoke-virtual {v0, v4}, Lnne;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_d6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    return-void

    nop

    :catchall_2
    move-exception v0

    nop

    :try_start_4
    monitor-exit v3

    nop

    nop

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    throw v0

    nop

    nop

    nop
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_15

    :goto_39
    goto/32 :goto_d8

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {v1}, Lscs;->b()Lsdo;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_c9

    nop

    nop

    nop

    nop

    :goto_3b
    iget-object v1, v0, Llcc;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_d2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    return-void

    nop

    nop

    nop

    :pswitch_3
    goto/32 :goto_d9

    nop

    nop

    nop

    :goto_3d
    iget-object v1, v0, Llcc;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3e
    iget-object v1, v1, Llwj;->b:Llxa;

    nop

    nop

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    :goto_3f
    return-void

    nop

    :goto_40
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_41
    move-object v2, v0

    nop

    :try_start_6
    invoke-virtual {v4}, Lsiq;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    goto/32 :goto_6a

    nop

    nop

    nop

    :goto_42
    iget-object v1, v1, Llqo;->k:Llqt;

    nop

    nop

    nop

    nop

    goto/32 :goto_e1

    nop

    nop

    nop

    nop

    :goto_43
    new-instance v5, Loel;

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    goto :goto_39

    nop

    nop

    nop

    nop

    nop

    :catch_0
    move-exception v0

    nop

    nop

    :try_start_7
    sget-object v3, Lldx;->a:Lsdb;

    nop

    invoke-virtual {v3}, Lscs;->b()Lsdo;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v3, v0}, Lscz;->i(Ljava/lang/Throwable;)Lsdo;

    move-result-object v0

    nop

    nop

    nop

    check-cast v0, Lscz;

    nop

    nop

    nop

    const/16 v3, 0xd4e

    nop

    nop

    nop

    nop

    invoke-interface {v0, v3}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    check-cast v0, Lscz;

    nop

    nop

    nop

    nop

    const-string v3, "Error filtering ZSL frames."

    nop

    nop

    nop

    nop

    invoke-interface {v0, v3}, Lscz;->s(Ljava/lang/String;)V

    move-object v0, v2

    nop

    check-cast v0, Lldw;

    nop

    nop

    nop

    nop

    iget-object v3, v0, Lldw;->a:Lsuu;

    nop

    nop

    nop

    monitor-enter v3

    nop

    nop
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_15

    :try_start_8
    check-cast v2, Lldw;

    nop

    nop

    nop

    nop

    iget-object v0, v2, Lldw;->a:Lsuu;

    nop

    nop

    nop

    nop

    nop

    new-instance v2, Ljava/util/ArrayList;

    nop

    nop

    nop

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v2}, Lsuu;->e(Ljava/lang/Object;)Z

    monitor-exit v3

    nop

    nop
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :goto_45
    goto/32 :goto_106

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    invoke-virtual {v0, v1}, Llaj;->p(Lpuq;)V

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_47
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    nop

    nop

    goto/32 :goto_cc

    nop

    nop

    nop

    :goto_48
    goto/16 :goto_9

    nop

    :goto_49
    goto/32 :goto_129

    nop

    nop

    nop

    :goto_4a
    invoke-virtual {v5}, Loel;->h()Lprw;

    move-result-object v12

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

    :goto_4b
    invoke-interface {v1}, Lprw;->close()V

    goto/32 :goto_f8

    nop

    nop

    :goto_4c
    goto/32 :goto_2d

    nop

    nop

    :goto_4d
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_4e
    check-cast v0, Llty;

    nop

    nop

    goto/32 :goto_de

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    invoke-virtual {v0, v1, v2}, Llwx;->b(Ljava/util/function/Consumer;Llxm;)V

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_50
    new-instance v4, Lkxx;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_121

    nop

    nop

    nop

    nop

    nop

    :goto_51
    throw v0

    nop

    :pswitch_4
    goto/32 :goto_7d

    nop

    nop

    nop

    :goto_52
    iget-object v1, v0, Llcc;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    goto/16 :goto_149

    nop

    nop

    nop

    nop

    nop

    :catchall_3
    move-exception v0

    nop

    goto/32 :goto_148

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_54
    int-to-float v0, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_55
    invoke-interface {v0}, Lpdf;->g()V

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_56
    return-void

    nop

    :pswitch_5
    goto/32 :goto_117

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    if-nez v0, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    :cond_5
    :try_start_9
    new-instance v4, Lsiq;

    nop

    nop

    nop

    nop

    invoke-direct {v4, v3}, Lsiq;-><init>(Ljava/io/OutputStream;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    :try_start_a
    invoke-virtual {v2, v4}, Lcom/google/android/libraries/camera/exif/ExifInterface;->m(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v2

    nop

    nop
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_12

    :try_start_b
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    nop

    nop

    nop

    nop

    check-cast v0, Landroid/graphics/Bitmap;

    nop

    nop

    const/16 v6, 0x5a

    nop

    invoke-virtual {v0, v5, v6, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    :try_start_c
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v4}, Lsiq;->flush()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_12

    :try_start_d
    invoke-virtual {v4}, Lsiq;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    :try_start_e
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_4

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_58
    return-void

    nop

    nop

    :pswitch_6
    goto/32 :goto_b6

    nop

    nop

    nop

    :goto_59
    iget-object v1, v0, Llcc;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_c3

    nop

    nop

    nop

    nop

    :goto_5a
    iput v0, v1, Lcom/google/android/apps/camera/ui/views/FrontLensIndicatorOverlay;->m:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11f

    nop

    nop

    nop

    :goto_5b
    iget-object v0, v0, Llcc;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    iget-object v1, v1, Lhdu;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_97

    nop

    nop

    :goto_5d
    const-string v1, "Invalid primary camera id."

    nop

    nop

    nop

    goto/32 :goto_151

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    return-void

    nop

    :goto_5f
    goto/32 :goto_140

    nop

    nop

    :goto_60
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_61
    iget v0, v4, Lhmc;->d:F

    nop

    goto/32 :goto_10d

    nop

    nop

    nop

    nop

    :goto_62
    iget-object v1, v0, Llcc;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_133

    nop

    nop

    nop

    nop

    nop

    :goto_63
    const-string v1, "Not showing due to cutout info is null."

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_64
    iget-object v1, v0, Llcc;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_146

    nop

    nop

    nop

    nop

    nop

    :goto_65
    check-cast v1, Ljre;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_66
    iget-object v1, v0, Llcc;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_67
    new-instance v1, Lloo;

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_68
    iget-object v1, v6, Lljl;->c:Llgc;

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_69
    sget-object v2, Lstd;->a:Lstd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_6a
    goto/16 :goto_86

    nop

    nop

    :catchall_4
    move-exception v0

    nop

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    :goto_6b
    iget-object v1, v0, Llcc;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_6c
    invoke-virtual {v1}, Lcom/google/android/apps/camera/ui/views/FrontLensIndicatorOverlay;->invalidate()V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_6d
    invoke-direct {v5, v8, v1}, Loel;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_6e
    iget-object v2, v1, Lhdu;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    :goto_6f
    sget-object v2, Llwk;->a:Lsdb;

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    :goto_70
    goto/16 :goto_a3

    nop

    nop

    nop

    :goto_71
    goto/32 :goto_135

    nop

    nop

    :goto_72
    aput v0, v3, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_14d

    nop

    nop

    nop

    nop

    :goto_73
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_7
    goto/32 :goto_66

    nop

    nop

    nop

    :goto_74
    invoke-static {v2, v3}, Llfi;->e(Landroid/util/Pair;Ljava/lang/String;)V

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_75
    move-object v5, v0

    nop

    nop

    nop

    :try_start_f
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_76
    invoke-interface {v1}, Lpdf;->g()V

    goto/32 :goto_132

    nop

    nop

    nop

    :goto_77
    iget-object v0, v0, Llcc;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_ec

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_78
    check-cast v0, Llaj;

    nop

    goto/32 :goto_c0

    nop

    nop

    :goto_79
    check-cast v0, Lnne;

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_7a
    check-cast v1, Llic;

    nop

    nop

    goto/32 :goto_f9

    nop

    nop

    nop

    nop

    :goto_7b
    iget-object v0, v0, Llcc;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    const/16 v2, 0x9

    nop

    nop

    nop

    nop

    goto/32 :goto_da

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    iget-object v1, v0, Llcc;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    :goto_7e
    move-object v1, v0

    nop

    nop

    nop

    nop

    nop

    :try_start_10
    invoke-virtual {v3, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_7f
    throw v3

    nop
    :try_end_10
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_10} :catch_2
    .catch Lpfi; {:try_start_10 .. :try_end_10} :catch_2
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    :catchall_5
    move-exception v0

    nop

    nop

    goto/32 :goto_12a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_80
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_cf

    nop

    nop

    :goto_81
    iget-object v0, v0, Lgvg;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_82
    if-eqz v3, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_111

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_110

    nop

    nop

    nop

    nop

    :goto_83
    iget-object v0, v0, Llcc;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_5c

    nop

    nop

    :goto_84
    return-void

    nop

    nop

    nop

    nop

    :pswitch_8
    goto/32 :goto_28

    nop

    nop

    :goto_85
    move-object v4, v0

    nop

    nop

    nop

    :try_start_11
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_86
    throw v2

    nop

    :goto_87
    new-instance v0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    nop

    nop

    const-string v2, "Argument is null"

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    nop
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    :catchall_6
    move-exception v0

    nop

    goto/32 :goto_30

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

    nop

    :catchall_7
    move-exception v0

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    :goto_89
    invoke-interface {v3, v4}, Lpdf;->f(Ljava/lang/String;)V

    goto/32 :goto_147

    nop

    nop

    nop

    nop

    :goto_8a
    const/16 v1, 0xed7

    nop

    nop

    nop

    goto/32 :goto_13c

    nop

    nop

    :goto_8b
    check-cast v2, Landroid/hardware/Sensor;

    nop

    goto/32 :goto_e7

    nop

    nop

    nop

    nop

    :goto_8c
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    nop

    :goto_8d
    return-void

    nop

    nop

    :pswitch_9
    goto/32 :goto_52

    nop

    nop

    :goto_8e
    check-cast v2, Llxm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_8f
    iget-object v1, v1, Llus;->h:Lcom/google/android/apps/camera/ui/views/FrontLensIndicatorOverlay;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    :goto_90
    iget v0, v4, Lhmc;->c:F

    nop

    :goto_91
    goto/32 :goto_f4

    nop

    nop

    nop

    nop

    nop

    :goto_92
    iget-object v3, v1, Lcom/google/android/apps/camera/ui/views/FrontLensIndicatorOverlay;->g:Landroid/view/animation/Interpolator;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_108

    nop

    nop

    :goto_93
    throw v0

    nop

    nop

    nop

    nop

    nop

    :pswitch_a
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_94
    const-string v4, "Camera3ADebugFetch#request"

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_95
    const-string v3, "Couldn\'t save medium-res thumbnail fallback for %s"

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_96
    return-void

    nop

    :pswitch_b
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_97
    check-cast v1, Landroid/hardware/SensorManager;

    nop

    nop

    nop

    nop

    goto/32 :goto_113

    nop

    nop

    nop

    :goto_98
    if-nez v1, :cond_7

    nop

    goto/32 :goto_cd

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    :goto_99
    throw v0

    nop

    nop

    nop

    nop

    :pswitch_c
    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9a
    if-nez v0, :cond_8

    nop

    nop

    goto/32 :goto_17

    nop

    :cond_8
    goto/32 :goto_114

    nop

    nop

    nop

    nop

    :goto_9b
    iget v1, v0, Llcc;->c:I

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

    :goto_9c
    throw v0

    nop

    :pswitch_d
    goto/32 :goto_143

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9d
    invoke-virtual {v2}, Lcom/google/android/apps/camera/processing/ProcessingService;->stopSelf()V

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_9e
    iget-object v1, v1, Llfi;->b:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_9f
    check-cast v1, Llqo;

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_a0
    iget-object v2, v1, Lhdu;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_119

    nop

    nop

    nop

    nop

    nop

    :goto_a1
    if-eqz v4, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_101

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_11d

    nop

    nop

    nop

    nop

    :goto_a2
    move-object v4, v2

    nop

    nop

    nop

    :goto_a3
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_a4
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    :goto_a5
    if-nez v12, :cond_a

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_50

    nop

    nop

    nop

    :goto_a6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_13a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a7
    invoke-static {v2, v3, v1, v0}, Lmf;->f(Ljava/lang/String;CLscz;Ljava/lang/Throwable;)V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_a8
    iget-object v0, v0, Llko;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_139

    nop

    nop

    nop

    nop

    :goto_a9
    return-void

    nop

    nop

    :catchall_8
    move-exception v0

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_aa
    new-instance v3, Lngx;

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_ab
    check-cast v1, Ljre;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_134

    nop

    nop

    nop

    nop

    :goto_ac
    iget v7, v1, Lcom/google/android/apps/camera/ui/views/FrontLensIndicatorOverlay;->h:I

    nop

    nop

    nop

    goto/32 :goto_ff

    nop

    nop

    nop

    nop

    nop

    :goto_ad
    invoke-virtual {v1, v0, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_ae
    sget-object v1, Lljl;->a:Lsdb;

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_af
    const/16 v4, 0xfe9

    nop

    nop

    nop

    goto/32 :goto_11e

    nop

    nop

    :goto_b0
    invoke-virtual {v2}, Lscs;->b()Lsdo;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_e0

    nop

    nop

    nop

    nop

    nop

    :goto_b1
    invoke-interface {v0, v1}, Loyn;->a(Ljava/lang/Object;)V

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_b2
    iget-object v0, v0, Llcc;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_dc

    nop

    nop

    nop

    :goto_b3
    goto/16 :goto_7f

    nop

    :catchall_9
    move-exception v0

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    :goto_b4
    goto/32 :goto_4d

    nop

    nop

    :goto_b5
    iget-object v0, v0, Llcc;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    :goto_b6
    iget-object v1, v0, Llcc;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_136

    nop

    nop

    nop

    nop

    :goto_b7
    move-object v3, v0

    nop

    goto/32 :goto_131

    nop

    nop

    nop

    nop

    nop

    :goto_b8
    check-cast v0, Lgvg;

    nop

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b9
    if-nez v1, :cond_b

    nop

    nop

    nop

    goto/32 :goto_ba

    nop

    nop

    nop

    :cond_b
    :try_start_12
    invoke-virtual {v5}, Loel;->e()Lphh;

    move-result-object v4

    nop

    nop

    if-eqz v4, :cond_c

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v4}, Lphh;->d()Lpnx;

    move-result-object v7

    nop

    nop

    nop

    nop

    iget-object v4, v7, Lpnx;->a:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v11, v4}, Llia;->a(Lpro;Ljava/lang/String;)Lpro;

    move-result-object v4

    nop

    move-object v15, v4

    nop

    move-object v14, v7

    nop

    goto :goto_bb

    nop

    nop

    nop

    nop

    :catch_1
    move-exception v0

    nop

    nop

    goto/16 :goto_40

    nop

    nop

    nop

    nop

    nop

    :cond_c
    :goto_ba
    move-object v14, v7

    nop

    nop

    nop

    move-object v15, v14

    nop

    nop

    nop

    nop

    :goto_bb
    move-object v4, v0

    nop

    nop

    nop

    check-cast v4, Lljl;

    nop

    nop

    nop

    nop

    iget-object v4, v4, Lljl;->e:Ljava/util/HashSet;

    nop

    nop

    invoke-virtual {v4, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-object v4, v0

    nop

    nop

    nop

    check-cast v4, Lljl;

    nop

    nop

    nop

    nop

    nop

    iget-object v9, v4, Lljl;->b:Likv;

    nop

    nop

    nop

    nop

    move-object/from16 v16, v1

    nop

    nop

    nop

    nop

    invoke-interface/range {v9 .. v16}, Likv;->A(Lpnx;Lpro;Lprw;Lprw;Lpnx;Lpro;Lprw;)Z

    move-result v1

    nop

    nop

    nop

    if-eqz v1, :cond_0

    nop

    nop

    move-object v1, v0

    nop

    nop

    nop

    nop

    nop

    check-cast v1, Lljl;

    nop

    nop

    nop

    nop

    iget-object v1, v1, Lljl;->g:Lfdo;

    nop

    nop

    nop

    iget-wide v4, v3, Lpgi;->b:J

    nop

    nop

    nop

    nop

    iget-object v1, v1, Lfdo;->a:Ljava/lang/Object;

    nop

    nop

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    nop

    nop

    nop

    nop

    :goto_bc
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    nop

    nop

    if-eqz v6, :cond_d

    nop

    nop

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    nop

    check-cast v6, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    nop

    nop

    iget-object v6, v6, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    const-wide/16 v8, 0xbb8

    nop

    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v7

    nop

    nop

    nop

    nop

    add-long/2addr v7, v4

    nop

    nop

    nop

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    nop

    nop

    nop

    nop

    nop

    invoke-static {v7}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v7

    nop

    move-object v8, v6

    nop

    nop

    nop

    nop

    nop

    check-cast v8, Lkhw;

    nop

    nop

    iput-object v7, v8, Lkhw;->a:Lrss;

    nop

    nop

    check-cast v6, Lkhw;

    nop

    iget-object v6, v6, Lkhw;->a:Lrss;

    nop

    nop

    nop

    nop

    invoke-virtual {v6}, Lrss;->c()Ljava/lang/Object;

    goto :goto_bc

    nop

    :cond_d
    check-cast v0, Lljl;

    nop

    iget-object v0, v0, Lljl;->d:Lpgh;

    nop

    nop

    nop

    nop

    invoke-interface {v0, v3}, Lpgh;->o(Lpgi;)Z
    :try_end_12
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_1

    goto/32 :goto_3f

    nop

    nop

    :goto_bd
    const-wide/16 v3, 0xa7

    nop

    goto/32 :goto_105

    nop

    nop

    nop

    :goto_be
    iget-object v2, v0, Llcc;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_10e

    nop

    nop

    nop

    nop

    nop

    :goto_bf
    iget-object v1, v0, Llcc;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    :goto_c0
    check-cast v1, Lpuq;

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_c1
    iget-object v0, v0, Llcc;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_f2

    nop

    nop

    :goto_c2
    return-void

    nop

    :pswitch_e
    goto/32 :goto_112

    nop

    nop

    :goto_c3
    iget-object v2, v0, Llcc;->a:Ljava/lang/Object;

    nop

    nop

    nop

    :goto_c4
    :try_start_13
    move-object v0, v2

    nop

    nop

    check-cast v0, Lcom/google/android/apps/camera/processing/ProcessingService;

    nop

    nop

    nop

    iget-object v0, v0, Lcom/google/android/apps/camera/processing/ProcessingService;->k:Llqc;

    nop

    nop

    iget-object v4, v0, Llqc;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    monitor-enter v4

    nop
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_f

    :try_start_14
    iget-object v8, v0, Llqc;->b:Ljava/util/LinkedList;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v8}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v8

    nop

    if-nez v8, :cond_e

    nop

    nop

    iget-boolean v8, v0, Llqc;->d:Z

    nop

    nop

    nop

    nop

    nop

    if-nez v8, :cond_e

    nop

    nop

    nop

    nop

    iget-object v8, v0, Llqc;->b:Ljava/util/LinkedList;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v8}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v8

    nop

    nop

    nop

    nop

    check-cast v8, Llqe;

    nop

    iget-object v0, v0, Llqc;->b:Ljava/util/LinkedList;

    nop

    nop

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    monitor-exit v4

    nop

    nop

    nop

    goto/16 :goto_125

    nop

    nop

    :cond_e
    iget-boolean v8, v0, Llqc;->d:Z

    nop

    nop

    nop

    iput v3, v0, Llqc;->f:I

    nop

    nop

    nop

    monitor-exit v4

    nop

    nop

    nop

    nop

    nop
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_e

    goto/32 :goto_124

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c5
    if-eqz v11, :cond_f

    nop

    nop

    nop

    goto/32 :goto_10c

    nop

    nop

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_f1

    nop

    nop

    :goto_c6
    invoke-interface {v1, v2}, Lpdf;->f(Ljava/lang/String;)V

    goto/32 :goto_12c

    nop

    nop

    nop

    nop

    nop

    :goto_c7
    invoke-interface {v0, v1}, Lpcm;->a(Ljava/lang/Object;)V

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    nop

    :goto_c8
    check-cast v6, Lljl;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c9
    const-string v2, "Error binning frame"

    nop

    nop

    nop

    goto/32 :goto_fe

    nop

    nop

    nop

    nop

    nop

    :goto_ca
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12f

    nop

    nop

    nop

    :goto_cb
    invoke-direct {v2, v4}, Lixa;-><init>(I)V

    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    nop

    :goto_cc
    invoke-interface {v1, v2}, Loyn;->a(Ljava/lang/Object;)V

    :goto_cd
    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_ce
    iget-object v0, v0, Llcc;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_d5

    nop

    nop

    :goto_cf
    aput v4, v3, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    :goto_d0
    const/4 v7, 0x0

    nop

    nop

    packed-switch v1, :pswitch_data_0

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d1
    iget-object v3, v2, Llco;->b:Lpdf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    :goto_d2
    check-cast v1, Llus;

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    :goto_d3
    iget-object v1, v0, Llcc;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_103

    nop

    nop

    nop

    :goto_d4
    sget-object v0, Lljl;->a:Lsdb;

    nop

    nop

    nop

    goto/32 :goto_fd

    nop

    nop

    nop

    :goto_d5
    iget-object v1, v1, Lhdu;->c:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_104

    nop

    nop

    nop

    nop

    nop

    :goto_d6
    iget-object v4, v1, Lcom/google/android/apps/camera/ui/views/FrontLensIndicatorOverlay;->c:Lhmc;

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    :goto_d7
    iget-object v1, v0, Llcc;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_ca

    nop

    nop

    nop

    nop

    :goto_d8
    invoke-interface {v1}, Lpdf;->g()V

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    :goto_d9
    iget-object v1, v0, Llcc;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_da
    const/4 v3, 0x2

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

    :goto_db
    invoke-virtual {v1, v0, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    goto/32 :goto_df

    nop

    nop

    nop

    nop

    nop

    :goto_dc
    check-cast v0, Llwx;

    nop

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_dd
    iget-object v0, v0, Llcc;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    :goto_de
    iget-object v0, v0, Llty;->d:Lpcm;

    nop

    goto/32 :goto_c7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_df
    return-void

    nop

    :pswitch_f
    goto/32 :goto_3b

    nop

    nop

    :goto_e0
    check-cast v1, Llwj;

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_e1
    iget-object v0, v0, Llcc;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_e4

    nop

    nop

    nop

    nop

    nop

    :goto_e2
    invoke-virtual {v2}, Lcom/google/android/apps/camera/processing/ProcessingService;->stopSelf()V

    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    :goto_e3
    return-void

    nop

    :pswitch_10
    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :goto_e4
    iget-object v2, v1, Llqt;->a:Ljava/util/List;

    nop

    nop

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

    :goto_e5
    invoke-static {v0}, Lnnr;->b(F)I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    :goto_e6
    goto/32 :goto_54

    nop

    nop

    nop

    :goto_e7
    const/4 v3, 0x3

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    :goto_e8
    goto/16 :goto_c4

    nop

    nop

    nop

    :catchall_a
    move-exception v0

    nop

    nop

    nop

    nop

    :try_start_15
    monitor-exit v4

    nop

    nop

    nop

    nop
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_a

    :try_start_16
    throw v0

    nop

    nop

    nop

    nop

    nop
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_f

    :catchall_b
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    :try_start_17
    monitor-exit v4

    nop

    nop

    nop
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_b

    :try_start_18
    throw v0

    nop

    nop

    nop

    nop

    :goto_e9
    move-object v0, v2

    nop

    nop

    nop

    check-cast v0, Lcom/google/android/apps/camera/processing/ProcessingService;

    nop

    nop

    nop

    iget-object v3, v0, Lcom/google/android/apps/camera/processing/ProcessingService;->b:Ljava/lang/Object;

    nop

    nop

    nop

    monitor-enter v3

    nop

    nop

    nop

    nop
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_f

    :try_start_19
    move-object v0, v2

    nop

    check-cast v0, Lcom/google/android/apps/camera/processing/ProcessingService;

    nop

    nop

    nop

    iput-object v7, v0, Lcom/google/android/apps/camera/processing/ProcessingService;->d:Llqe;

    nop

    nop

    nop

    nop

    monitor-exit v3

    nop

    nop

    nop

    nop

    nop
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_d

    :try_start_1a
    move-object v0, v2

    nop

    check-cast v0, Lcom/google/android/apps/camera/processing/ProcessingService;

    nop

    nop

    nop

    nop

    nop

    iget-object v3, v0, Lcom/google/android/apps/camera/processing/ProcessingService;->f:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    monitor-enter v3

    nop

    nop
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_f

    :try_start_1b
    move-object v0, v2

    nop

    nop

    check-cast v0, Lcom/google/android/apps/camera/processing/ProcessingService;

    nop

    iput-boolean v6, v0, Lcom/google/android/apps/camera/processing/ProcessingService;->g:Z

    nop

    nop

    nop

    move-object v0, v2

    nop

    check-cast v0, Lcom/google/android/apps/camera/processing/ProcessingService;

    nop

    nop

    nop

    nop

    nop

    iput-boolean v6, v0, Lcom/google/android/apps/camera/processing/ProcessingService;->h:Z

    nop

    nop

    nop

    nop

    nop

    move-object v0, v2

    nop

    nop

    nop

    check-cast v0, Lcom/google/android/apps/camera/processing/ProcessingService;

    nop

    nop

    iput-boolean v5, v0, Lcom/google/android/apps/camera/processing/ProcessingService;->i:Z

    nop

    nop

    nop

    nop

    nop

    monitor-exit v3

    nop

    goto :goto_ea

    nop

    nop

    nop

    :catchall_c
    move-exception v0

    nop

    nop

    nop

    nop

    monitor-exit v3

    nop

    nop

    nop
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_c

    :try_start_1c
    throw v0

    nop

    nop

    nop

    nop
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_f

    :catchall_d
    move-exception v0

    nop

    nop

    nop

    nop

    :try_start_1d
    monitor-exit v3

    nop

    nop
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_d

    :try_start_1e
    throw v0

    nop

    nop

    nop
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_f

    :catchall_e
    move-exception v0

    nop

    :try_start_1f
    monitor-exit v4

    nop

    nop

    nop

    nop

    nop
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_e

    :try_start_20
    throw v0

    nop

    nop
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_f

    :catchall_f
    move-exception v0

    nop

    :try_start_21
    move-object v3, v2

    nop

    check-cast v3, Lcom/google/android/apps/camera/processing/ProcessingService;

    nop

    nop

    nop

    iget-object v3, v3, Lcom/google/android/apps/camera/processing/ProcessingService;->o:Lowu;

    nop

    nop

    nop

    nop

    new-instance v4, Llmx;

    nop

    const/4 v5, 0x6

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v4, v0, v5}, Llmx;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v3, v4}, Lowu;->execute(Ljava/lang/Runnable;)V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_8

    :goto_ea
    goto/32 :goto_65

    nop

    nop

    nop

    :goto_eb
    iget v0, v4, Lhmc;->c:F

    nop

    goto/32 :goto_e5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ec
    check-cast v0, Ljph;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_118

    nop

    nop

    :goto_ed
    iget-object v0, v0, Llcc;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ee
    const/16 v1, 0x13dc

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_ef
    invoke-interface {v1}, Lpge;->d()Lpro;

    move-result-object v11

    nop

    nop

    nop

    nop

    goto/32 :goto_c5

    nop

    nop

    nop

    :goto_f0
    const/4 v5, 0x1

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_f1
    invoke-interface {v12}, Lprw;->close()V

    goto/32 :goto_10b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f2
    invoke-interface {v0, v1}, Lpcm;->a(Ljava/lang/Object;)V

    goto/32 :goto_e3

    nop

    nop

    nop

    nop

    :goto_f3
    monitor-enter v2

    nop

    nop

    :try_start_22
    move-object v0, v2

    nop

    nop

    nop

    nop

    nop

    check-cast v0, Llfc;

    nop

    nop

    nop

    nop

    nop

    iget-object v0, v0, Llfc;->a:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v0}, Lryy;->E(Ljava/util/Collection;)Lryy;

    move-result-object v0

    nop

    nop

    new-instance v3, Lknr;

    nop

    const/16 v4, 0x11

    nop

    invoke-direct {v3, v1, v4}, Lknr;-><init>(Ljava/lang/Object;I)V

    invoke-static {v0, v3}, Lj$/util/Collection$-EL;->forEach(Ljava/util/Collection;Ljava/util/function/Consumer;)V

    monitor-exit v2

    nop

    nop

    nop

    return-void

    nop

    nop

    nop

    :catchall_10
    move-exception v0

    nop

    nop

    nop

    nop

    monitor-exit v2

    nop

    nop
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_10

    goto/32 :goto_11b

    nop

    nop

    :goto_f4
    iput v0, v1, Lcom/google/android/apps/camera/ui/views/FrontLensIndicatorOverlay;->m:F

    nop

    :goto_f5
    goto/32 :goto_102

    nop

    nop

    nop

    nop

    :goto_f6
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_f7
    iget-object v0, v0, Linb;->w:Llko;

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    :goto_f8
    iget-object v0, v0, Llcc;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_14b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f9
    iget-wide v1, v1, Llic;->h:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10f

    nop

    nop

    nop

    nop

    nop

    :goto_fa
    if-nez v1, :cond_10

    nop

    nop

    nop

    nop

    goto/32 :goto_130

    nop

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_d7

    nop

    nop

    :goto_fb
    if-nez v8, :cond_11

    nop

    nop

    nop

    nop

    goto/32 :goto_e9

    nop

    nop

    nop

    nop

    nop

    :cond_11
    :try_start_23
    move-object v0, v2

    nop

    nop

    nop

    nop

    check-cast v0, Lcom/google/android/apps/camera/processing/ProcessingService;

    nop

    nop

    iget-object v4, v0, Lcom/google/android/apps/camera/processing/ProcessingService;->b:Ljava/lang/Object;

    nop

    nop

    nop

    monitor-enter v4

    nop
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_f

    :try_start_24
    move-object v0, v2

    nop

    nop

    nop

    nop

    check-cast v0, Lcom/google/android/apps/camera/processing/ProcessingService;

    nop

    nop

    nop

    nop

    iput-object v8, v0, Lcom/google/android/apps/camera/processing/ProcessingService;->d:Llqe;

    nop

    nop

    nop

    nop

    nop

    move-object v0, v2

    nop

    check-cast v0, Lcom/google/android/apps/camera/processing/ProcessingService;

    nop

    iget-boolean v0, v0, Lcom/google/android/apps/camera/processing/ProcessingService;->e:Z

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_12

    nop

    nop

    move-object v0, v2

    nop

    check-cast v0, Lcom/google/android/apps/camera/processing/ProcessingService;

    nop

    nop

    iget-object v0, v0, Lcom/google/android/apps/camera/processing/ProcessingService;->d:Llqe;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Llqe;->g()V

    :cond_12
    monitor-exit v4

    nop

    nop

    nop

    nop
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_b

    :try_start_25
    invoke-interface {v8}, Llqe;->b()Ljava/lang/String;

    move-result-object v0

    nop

    move-object v4, v1

    nop

    nop

    nop

    check-cast v4, Ljre;

    nop

    nop

    invoke-virtual {v4, v0}, Ljre;->d(Ljava/lang/String;)V

    move-object v0, v2

    nop

    check-cast v0, Lcom/google/android/apps/camera/processing/ProcessingService;

    nop

    nop

    iget-object v4, v0, Lcom/google/android/apps/camera/processing/ProcessingService;->f:Ljava/lang/Object;

    nop

    nop

    monitor-enter v4

    nop

    nop

    nop
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_f

    :try_start_26
    move-object v0, v2

    nop

    nop

    nop

    check-cast v0, Lcom/google/android/apps/camera/processing/ProcessingService;

    nop

    nop

    nop

    nop

    nop

    iget-object v0, v0, Lcom/google/android/apps/camera/processing/ProcessingService;->a:Landroid/app/Notification$Builder;

    nop

    const-string v9, "\u2026"

    nop

    nop

    invoke-virtual {v0, v9}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    nop

    nop

    nop

    nop

    const/16 v9, 0x64

    nop

    nop

    nop

    invoke-virtual {v0, v9, v6, v6}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    monitor-exit v4

    nop
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_a

    :try_start_27
    move-object v0, v2

    nop

    check-cast v0, Lcom/google/android/apps/camera/processing/ProcessingService;

    nop

    nop

    nop

    invoke-virtual {v0}, Lcom/google/android/apps/camera/processing/ProcessingService;->c()V

    invoke-interface {v8}, Llqe;->a()Llqd;

    move-result-object v0

    nop

    if-eqz v0, :cond_13

    nop

    invoke-interface {v0, v2}, Llqd;->d(Llqg;)V

    :cond_13
    move-object v4, v2

    nop

    nop

    nop

    nop

    check-cast v4, Lcom/google/android/apps/camera/processing/ProcessingService;

    nop

    nop

    iget-object v4, v4, Lcom/google/android/apps/camera/processing/ProcessingService;->c:Llqh;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v8}, Llqe;->b()Ljava/lang/String;

    move-result-object v9

    nop

    nop

    invoke-virtual {v4, v9}, Llqh;->a(Ljava/lang/String;)V

    invoke-interface {v8}, Llqe;->b()Ljava/lang/String;

    move-object v4, v2

    nop

    check-cast v4, Landroid/content/Context;

    nop

    nop

    nop

    invoke-interface {v8, v4}, Llqe;->d(Landroid/content/Context;)V

    invoke-interface {v8}, Llqe;->b()Ljava/lang/String;

    if-eqz v0, :cond_14

    nop

    nop

    nop

    nop

    invoke-interface {v0, v7}, Llqd;->d(Llqg;)V

    :cond_14
    move-object v0, v1

    nop

    nop

    nop

    check-cast v0, Ljre;

    nop

    nop

    nop

    invoke-virtual {v0}, Ljre;->b()V
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_f

    goto/32 :goto_e8

    nop

    nop

    :goto_fc
    check-cast v2, Llco;

    nop

    nop

    goto/32 :goto_d1

    nop

    nop

    :goto_fd
    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_fe
    const/16 v3, 0xed6

    nop

    nop

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    :goto_ff
    if-eq v7, v2, :cond_15

    nop

    nop

    goto/32 :goto_120

    nop

    nop

    nop

    :cond_15
    goto/32 :goto_150

    nop

    nop

    nop

    :goto_100
    return-void

    nop

    nop

    :goto_101
    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    nop

    :goto_102
    iget v0, v1, Lcom/google/android/apps/camera/ui/views/FrontLensIndicatorOverlay;->j:I

    nop

    goto/32 :goto_14a

    nop

    nop

    nop

    nop

    nop

    :goto_103
    const-string v2, "ringBuffer#getFilteredFrames"

    nop

    nop

    nop

    goto/32 :goto_c6

    nop

    nop

    :goto_104
    check-cast v1, Landroid/hardware/SensorManager;

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    :goto_105
    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto/32 :goto_92

    nop

    nop

    nop

    :goto_106
    invoke-interface {v1}, Lpdf;->g()V

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_107
    add-int/2addr v1, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_108
    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_109
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_11c

    nop

    nop

    :goto_10a
    goto/16 :goto_12b

    nop

    :catchall_11
    move-exception v0

    nop

    nop

    nop

    nop

    goto/32 :goto_137

    nop

    nop

    :goto_10b
    return-void

    nop

    nop

    :goto_10c
    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10d
    invoke-static {v0}, Lnnr;->b(F)I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_122

    nop

    nop

    :goto_10e
    invoke-direct {v1, v2, v4}, Lkzf;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_dd

    nop

    nop

    :goto_10f
    iget-object v0, v0, Llcc;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_110
    goto/16 :goto_5

    nop

    nop

    nop

    nop

    :goto_111
    goto/32 :goto_ed

    nop

    nop

    nop

    nop

    :goto_112
    iget-object v1, v0, Llcc;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_13f

    nop

    nop

    nop

    nop

    nop

    :goto_113
    check-cast v2, Landroid/hardware/Sensor;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_db

    nop

    nop

    nop

    :goto_114
    iget v0, v4, Lhmc;->d:F

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_115
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_11
    goto/32 :goto_bf

    nop

    nop

    nop

    nop

    nop

    :goto_116
    invoke-virtual {v0}, Lscs;->b()Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ee

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_117
    sget-object v1, Lnym;->d:Landroid/hardware/camera2/CameraCharacteristics$Key;

    nop

    nop

    nop

    nop

    goto/32 :goto_fa

    nop

    nop

    nop

    nop

    :goto_118
    invoke-virtual {v0, v1}, Ljph;->e(Ljpv;)V

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_119
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_ce

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11a
    check-cast v0, Lscz;

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11b
    throw v0

    nop

    nop

    nop

    nop

    :pswitch_12
    goto/32 :goto_d3

    nop

    nop

    nop

    :goto_11c
    rem-int v0, v0, v1

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11d
    sget-object v0, Lcom/google/android/apps/camera/ui/views/FrontLensIndicatorOverlay;->a:Lsdb;

    nop

    nop

    nop

    nop

    goto/32 :goto_116

    nop

    nop

    :goto_11e
    invoke-static {v3, v1, v4, v2, v0}, Lfey;->d(Ljava/lang/String;Ljava/lang/Object;CLscz;Ljava/lang/Throwable;)V

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11f
    goto/16 :goto_f5

    nop

    :goto_120
    goto/32 :goto_9a

    nop

    nop

    nop

    :goto_121
    invoke-direct {v4, v12, v2}, Lkxx;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_70

    nop

    nop

    :goto_122
    goto/16 :goto_e6

    nop

    :goto_123
    goto/32 :goto_eb

    nop

    nop

    nop

    nop

    nop

    :goto_124
    move-object v8, v7

    nop

    nop

    nop

    :goto_125
    goto/32 :goto_fb

    nop

    nop

    nop

    nop

    nop

    :goto_126
    move-object v2, v0

    nop

    nop

    nop

    :try_start_28
    invoke-virtual {v5, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_127
    throw v5

    nop

    nop

    nop

    nop
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_12

    :catchall_12
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_128
    new-instance v1, Lkzf;

    nop

    goto/32 :goto_be

    nop

    nop

    nop

    nop

    nop

    :goto_129
    return-void

    nop

    nop

    nop

    :catchall_13
    move-exception v0

    nop

    nop

    :try_start_29
    monitor-exit v1

    nop

    nop

    nop
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_13

    goto/32 :goto_93

    nop

    nop

    nop

    :goto_12a
    goto/16 :goto_5f

    nop

    :catch_2
    move-exception v0

    nop

    nop

    nop

    nop

    :try_start_2a
    sget-object v1, Llco;->a:Lsdb;

    nop

    nop

    invoke-virtual {v1}, Lscs;->b()Lsdo;

    move-result-object v1

    nop

    nop

    invoke-interface {v1, v0}, Lscz;->i(Ljava/lang/Throwable;)Lsdo;

    move-result-object v0

    nop

    nop

    check-cast v0, Lscz;

    nop

    nop

    nop

    nop

    nop

    const/16 v1, 0xcdd

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0, v1}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    check-cast v0, Lscz;

    nop

    const-string v1, "Error submitting 3A debug metadata request."

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0, v1}, Lscz;->s(Ljava/lang/String;)V
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_5

    :goto_12b
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12c
    iget-object v2, v0, Llcc;->b:Ljava/lang/Object;

    nop

    :try_start_2b
    move-object v0, v2

    nop

    nop

    nop

    nop

    nop

    check-cast v0, Lldw;

    nop

    nop

    iget-object v0, v0, Lldw;->c:Ljava/util/List;

    nop

    nop

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-object v0, v2

    nop

    nop

    nop

    nop

    nop

    check-cast v0, Lldw;

    nop

    nop

    nop

    nop

    iget-object v0, v0, Lldw;->b:Lljk;

    nop

    nop

    nop

    nop

    nop

    move-object v3, v2

    nop

    nop

    nop

    nop

    nop

    check-cast v3, Lldw;

    nop

    nop

    nop

    nop

    iget-object v3, v3, Lldw;->c:Ljava/util/List;

    nop

    invoke-interface {v0, v3}, Lljk;->h(Ljava/util/List;)Lryb;

    move-result-object v0

    nop

    nop

    nop

    move-object v3, v0

    nop

    nop

    check-cast v3, Lsbh;

    nop

    nop

    iget v3, v3, Lsbh;->c:I

    nop

    nop

    nop

    nop

    move-object v3, v2

    nop

    nop

    nop

    nop

    check-cast v3, Lldw;

    nop

    nop

    nop

    iget-object v3, v3, Lldw;->a:Lsuu;

    nop

    nop

    nop

    monitor-enter v3

    nop

    nop

    nop

    nop
    :try_end_2b
    .catch Ljava/lang/InterruptedException; {:try_start_2b .. :try_end_2b} :catch_0
    .catchall {:try_start_2b .. :try_end_2b} :catchall_15

    :try_start_2c
    move-object v4, v2

    nop

    nop

    check-cast v4, Lldw;

    nop

    nop

    iget-object v4, v4, Lldw;->a:Lsuu;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Lsuu;->isCancelled()Z

    move-result v4

    nop

    nop

    if-nez v4, :cond_16

    nop

    nop

    nop

    nop

    move-object v4, v2

    nop

    nop

    nop

    nop

    nop

    check-cast v4, Lldw;

    nop

    nop

    nop

    nop

    nop

    iget-object v4, v4, Lldw;->a:Lsuu;

    nop

    invoke-virtual {v4, v0}, Lsuu;->e(Ljava/lang/Object;)Z

    goto :goto_12e

    nop

    nop

    :cond_16
    sget-object v4, Lldx;->a:Lsdb;

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Lscs;->c()Lsdo;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    const/16 v5, 0xd4d

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v4, v5}, Lscz;->M(I)Lsdo;

    move-result-object v4

    nop

    nop

    nop

    check-cast v4, Lscz;

    nop

    nop

    const-string v5, "Cancelled shot, closing filtered frames."

    nop

    nop

    nop

    nop

    invoke-interface {v4, v5}, Lscz;->s(Ljava/lang/String;)V

    invoke-virtual {v0}, Lryb;->t()Lscq;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_12d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    nop

    nop

    nop

    nop

    nop

    if-eqz v4, :cond_17

    nop

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    nop

    check-cast v4, Lpge;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v4}, Lpge;->close()V

    goto :goto_12d

    nop

    :cond_17
    :goto_12e
    monitor-exit v3

    nop

    nop

    nop

    nop

    goto/16 :goto_45

    nop

    nop

    nop

    :catchall_14
    move-exception v0

    nop

    monitor-exit v3

    nop

    nop

    nop

    nop
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_14

    :try_start_2d
    throw v0

    nop

    nop

    nop

    nop
    :try_end_2d
    .catch Ljava/lang/InterruptedException; {:try_start_2d .. :try_end_2d} :catch_0
    .catchall {:try_start_2d .. :try_end_2d} :catchall_15

    :catchall_15
    move-exception v0

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_12f
    invoke-interface {v1, v2}, Loyn;->a(Ljava/lang/Object;)V

    :goto_130
    goto/32 :goto_13e

    nop

    nop

    :goto_131
    check-cast v3, Ljava/lang/String;

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    :goto_132
    throw v0

    nop

    nop

    nop

    nop

    nop

    :pswitch_13
    goto/32 :goto_128

    nop

    nop

    nop

    nop

    :goto_133
    iget-object v2, v0, Llcc;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_f3

    nop

    nop

    nop

    nop

    :goto_134
    invoke-virtual {v1}, Ljre;->a()V

    goto/32 :goto_152

    nop

    nop

    nop

    nop

    :goto_135
    new-instance v2, Lixa;

    nop

    nop

    nop

    goto/32 :goto_cb

    nop

    nop

    nop

    nop

    nop

    :goto_136
    check-cast v1, Lhdu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_137
    move-object v3, v0

    nop

    nop

    :try_start_2e
    invoke-virtual {v1}, Lpin;->close()V
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_9

    goto/32 :goto_b3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_138
    monitor-enter v1

    nop

    nop

    nop

    nop

    :try_start_2f
    iget-object v2, v1, Llfi;->a:Ljava/util/concurrent/atomic/AtomicReference;

    nop

    nop

    nop

    nop

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    monitor-exit v1

    nop
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_13

    goto/32 :goto_9e

    nop

    nop

    :goto_139
    invoke-interface {v0, v1, v2}, Llxa;->Y(J)V

    goto/32 :goto_c2

    nop

    nop

    :goto_13a
    if-nez v2, :cond_18

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :cond_18
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_13b
    check-cast v2, Lcom/google/android/apps/camera/processing/ProcessingService;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e2

    nop

    nop

    nop

    nop

    nop

    :goto_13c
    invoke-interface {v0, v1}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_11a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13d
    invoke-static {v1}, Lpnx;->b(Ljava/lang/String;)Lpnx;

    move-result-object v10

    nop

    nop

    nop

    :try_start_30
    move-object v1, v0

    nop

    nop

    nop

    check-cast v1, Lljl;

    nop

    iget-object v1, v1, Lljl;->b:Likv;

    nop

    nop

    nop

    nop

    invoke-interface {v1, v11, v10}, Likv;->w(Lpro;Lpnx;)Z

    move-result v1

    nop

    nop

    nop

    if-nez v1, :cond_19

    nop

    invoke-interface {v12}, Lprw;->close()V

    return-void

    nop

    nop

    nop

    :cond_19
    invoke-virtual {v5}, Loel;->g()Lprw;

    move-result-object v13

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v5}, Loel;->i()Lprw;

    move-result-object v1

    nop

    nop

    nop

    new-instance v2, Lows;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v2}, Lows;-><init>()V

    invoke-virtual {v2, v12}, Lows;->d(Lpci;)V

    if-eqz v1, :cond_1a

    nop

    nop

    nop

    invoke-virtual {v2, v1}, Lows;->d(Lpci;)V

    :cond_1a
    if-eqz v13, :cond_1b

    nop

    invoke-virtual {v2, v13}, Lows;->d(Lpci;)V
    :try_end_30
    .catch Ljava/lang/RuntimeException; {:try_start_30 .. :try_end_30} :catch_3

    :cond_1b
    goto/32 :goto_b9

    nop

    nop

    nop

    nop

    nop

    :goto_13e
    iget-object v0, v0, Llcc;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    :goto_13f
    check-cast v1, Llfk;

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

    :goto_140
    iget-object v1, v2, Llco;->b:Lpdf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    :goto_141
    goto :goto_142

    nop

    nop

    nop

    nop

    nop

    :catch_3
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    :goto_142
    goto/32 :goto_ae

    nop

    nop

    nop

    :goto_143
    iget-object v1, v0, Llcc;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_144
    invoke-direct {v1, v2, v4}, Lloo;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    :goto_145
    if-eqz v1, :cond_1c

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_1c
    goto/32 :goto_d4

    nop

    nop

    nop

    :goto_146
    iget-object v0, v0, Llcc;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    :goto_147
    iget-object v0, v0, Llcc;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    :try_start_31
    check-cast v1, Llco;

    nop

    nop

    nop

    iget-object v1, v1, Llco;->c:Lpik;

    nop

    nop

    invoke-virtual {v1}, Lpik;->u()Lpin;

    move-result-object v1

    nop

    nop

    nop

    nop
    :try_end_31
    .catch Ljava/lang/InterruptedException; {:try_start_31 .. :try_end_31} :catch_2
    .catch Lpfi; {:try_start_31 .. :try_end_31} :catch_2
    .catchall {:try_start_31 .. :try_end_31} :catchall_5

    :try_start_32
    invoke-static {v1, v0}, Llco;->c(Lpin;Llxa;)V
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_11

    :try_start_33
    invoke-virtual {v1}, Lpin;->close()V
    :try_end_33
    .catch Ljava/lang/InterruptedException; {:try_start_33 .. :try_end_33} :catch_2
    .catch Lpfi; {:try_start_33 .. :try_end_33} :catch_2
    .catchall {:try_start_33 .. :try_end_33} :catchall_5

    goto/32 :goto_10a

    nop

    nop

    :goto_148
    move-object v3, v0

    nop

    nop

    nop

    nop

    nop

    :try_start_34
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_149
    throw v2

    nop

    nop
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_34} :catch_4

    :catch_4
    move-exception v0

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    :goto_14a
    int-to-float v0, v0

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_14b
    check-cast v0, Llqo;

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_14c
    check-cast v0, Lscz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    :goto_14d
    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_bd

    nop

    nop

    nop

    nop

    nop

    :goto_14e
    iget-object v8, v6, Lljl;->c:Llgc;

    nop

    goto/32 :goto_6d

    nop

    nop

    :goto_14f
    check-cast v1, Lhdu;

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    :goto_150
    if-nez v0, :cond_1d

    nop

    nop

    nop

    nop

    goto/32 :goto_123

    nop

    nop

    nop

    nop

    :cond_1d
    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :goto_151
    invoke-interface {v0, v1}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_152
    check-cast v2, Lcom/google/android/apps/camera/processing/ProcessingService;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    :goto_153
    const v1, 0x11

    nop

    nop

    nop

    nop

    goto/32 :goto_109

    nop

    nop

    nop

    nop

    nop
.end method

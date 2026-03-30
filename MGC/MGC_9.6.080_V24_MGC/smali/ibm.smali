.class public final synthetic Libm;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ljava/lang/Object;

.field private final synthetic c:I


# direct methods
.method public constructor <init>(Lihg;Landroid/graphics/SurfaceTexture;I)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    iput-object p2, p0, Libm;->b:Ljava/lang/Object;

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
    iput-object p1, p0, Libm;->a:Ljava/lang/Object;

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
    iput p3, p0, Libm;->c:I

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop
.end method

.method public constructor <init>(Livx;Lrsk;I)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Libm;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p2, p0, Libm;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    iput p3, p0, Libm;->c:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iput p3, p0, Libm;->c:I

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    iput-object p2, p0, Libm;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    :goto_4
    iput-object p1, p0, Libm;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I[B)V
    .locals 0

    goto/32 :goto_1

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
    iput p3, p0, Libm;->c:I

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    iput-object p2, p0, Libm;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

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

    nop

    :goto_4
    iput-object p1, p0, Libm;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method

.method public constructor <init>(Ljava/lang/Runnable;Ljava/util/concurrent/atomic/AtomicBoolean;I)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    iput-object p2, p0, Libm;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Libm;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput p3, p0, Libm;->c:I

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

    nop

    nop
.end method


# virtual methods
.method public final run()V
    .locals 20

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_0
    check-cast v2, Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;

    nop

    nop

    nop

    nop

    goto/32 :goto_16a

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0}, Ltuu;->b()Ljava/util/Set;

    move-result-object v0

    nop

    nop

    goto/32 :goto_156

    nop

    nop

    :goto_2
    invoke-interface {v1}, Lpdf;->g()V

    goto/32 :goto_2c

    nop

    nop

    :goto_3
    iget-object v1, v0, Libm;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/16 v2, 0x24

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_5
    iget-object v0, v0, Libm;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_1bc

    nop

    nop

    :goto_6
    const/4 v7, 0x0

    nop

    nop

    goto/32 :goto_d9

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v3, v0}, Lpik;->d(Lphh;)Lpgo;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    :goto_8
    iput-object v2, v3, Lihg;->b:Ljavax/microedition/khronos/egl/EGLConfig;

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v1, v0}, Ljph;->e(Ljpv;)V

    goto/32 :goto_7e

    nop

    nop

    :goto_a
    throw v0

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_ef

    nop

    nop

    :goto_c
    iget-object v0, v1, Lifn;->M:Lifx;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_d
    iget-object v1, v0, Libm;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_54

    nop

    nop

    :goto_e
    sget-object v2, Lhmq;->bD:Lhmn;

    nop

    nop

    goto/32 :goto_ed

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const-string v3, "MICRO_ImageReaderModule_runSingleTask"

    nop

    nop

    nop

    goto/32 :goto_18a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    check-cast v2, Ljava/lang/Runnable;

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_11
    iget-object v2, v0, Lieu;->b:Ltxm;

    nop

    nop

    goto/32 :goto_12f

    nop

    nop

    nop

    :goto_12
    iget-object v1, v0, Libm;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    :goto_13
    check-cast v0, Lphj;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    :goto_14
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_b9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    new-array v2, v5, [I

    nop

    nop

    nop

    goto/32 :goto_150

    nop

    nop

    :goto_16
    iget-object v1, v0, Libm;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_1c3

    nop

    nop

    nop

    nop

    :goto_17
    iget-object v3, v1, Lihg;->f:Ljavax/microedition/khronos/egl/EGL10;

    nop

    nop

    nop

    nop

    goto/32 :goto_120

    nop

    nop

    nop

    nop

    :goto_18
    if-nez v2, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    :cond_0
    goto/32 :goto_107

    nop

    nop

    nop

    nop

    nop

    :goto_19
    throw v0

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_116

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    throw v0

    nop

    nop

    :pswitch_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v0, v2}, Lows;->d(Lpci;)V

    goto/32 :goto_d2

    nop

    nop

    :goto_1d
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_b3

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_b2

    nop

    :goto_1e
    const/4 v13, 0x0

    nop

    nop

    nop

    goto/32 :goto_1a6

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v0}, Lifx;->e()Z

    move-result v0

    nop

    nop

    goto/32 :goto_143

    nop

    nop

    nop

    :goto_20
    iget-object v4, v2, Lihg;->c:Ljavax/microedition/khronos/egl/EGLDisplay;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    :goto_21
    check-cast v1, Lihg;

    nop

    nop

    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iget-object v0, v0, Libm;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_e1

    nop

    nop

    nop

    :goto_23
    return-void

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    :try_start_0
    monitor-exit v3

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iget-object v0, v0, Libm;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_125

    nop

    nop

    nop

    nop

    :goto_25
    iget-object v1, v1, Lihg;->d:Ljavax/microedition/khronos/egl/EGLContext;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_fa

    nop

    nop

    nop

    :goto_26
    invoke-virtual {v2}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    iget-object v2, v1, Litv;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_d1

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-interface {v1, v2}, Lpdf;->f(Ljava/lang/String;)V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_2a
    iget-object v0, v0, Libm;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_140

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    return-void

    nop

    nop

    nop

    :pswitch_1
    goto/32 :goto_f4

    nop

    nop

    :goto_2c
    goto/16 :goto_157

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_151

    nop

    nop

    nop

    :goto_2e
    new-instance v3, Lhup;

    nop

    nop

    nop

    goto/32 :goto_134

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    iget-object v3, v0, Libm;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    :goto_30
    const/16 v3, 0x765

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    :goto_31
    check-cast v0, Linb;

    nop

    goto/32 :goto_19c

    nop

    nop

    :goto_32
    check-cast v1, Lihg;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_33
    filled-new-array {v1, v5, v2}, [I

    move-result-object v1

    nop

    nop

    goto/32 :goto_18b

    nop

    nop

    nop

    nop

    :goto_34
    invoke-direct {v3, v1, v4}, Lhup;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    :goto_35
    iput-object v2, v1, Lihg;->e:Ljavax/microedition/khronos/egl/EGLSurface;

    nop

    nop

    nop

    goto/32 :goto_13c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    check-cast v1, Lnel;

    nop

    nop

    nop

    goto/32 :goto_179

    nop

    nop

    :goto_37
    return-void

    nop

    nop

    :pswitch_2
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    iget-object v3, v2, Lihg;->f:Ljavax/microedition/khronos/egl/EGL10;

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    invoke-virtual {v1}, Lscs;->b()Lsdo;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_106

    nop

    nop

    nop

    nop

    :goto_3a
    move-object v14, v6

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

    nop

    :goto_3b
    const-string v1, "eglInitialize failed"

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

    :goto_3c
    iget-object v1, v0, Libm;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    :goto_3d
    invoke-interface {v0, v1}, Lrsk;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-static {v2}, Luch;->b(Ljava/lang/String;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    :goto_40
    monitor-enter v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_dc

    nop

    nop

    :goto_41
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

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

    :goto_42
    if-nez v4, :cond_2

    nop

    goto/32 :goto_170

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_d8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    invoke-interface {v2, v3, v1}, Loyd;->cL(Lpcm;Ljava/util/concurrent/Executor;)Lpci;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_14e

    nop

    nop

    nop

    :goto_44
    return-void

    nop

    nop

    nop

    nop

    :goto_45
    goto/32 :goto_fc

    nop

    nop

    nop

    :goto_46
    invoke-virtual {v1}, Ljavax/microedition/khronos/egl/EGLContext;->getGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v1

    nop

    goto/32 :goto_1c4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    check-cast v2, Lihg;

    nop

    goto/32 :goto_19e

    nop

    nop

    nop

    nop

    :goto_48
    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    :goto_49
    return-void

    nop

    nop

    nop

    nop

    :pswitch_3
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_4a
    move-object v14, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_131

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    iget-object v0, v1, Lifn;->k:Lngo;

    nop

    nop

    goto/32 :goto_10d

    nop

    nop

    :goto_4c
    add-int v0, v0, v1

    nop

    goto/32 :goto_f5

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    iget-object v0, v0, Libm;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_4f
    iget-boolean v1, v1, Liim;->e:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18e

    nop

    nop

    nop

    nop

    nop

    :goto_50
    return-void

    nop

    nop

    nop

    nop

    :pswitch_4
    goto/32 :goto_146

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_51
    invoke-virtual {v1, v0}, Libi;->a(Libq;)V

    goto/32 :goto_89

    nop

    nop

    nop

    :goto_52
    invoke-virtual {v0, v1}, Lcom/google/googlex/gcam/BuildPayloadBurstSpecOptions;->b(F)V

    :goto_53
    goto/32 :goto_2b

    nop

    nop

    :goto_54
    check-cast v1, Lifn;

    nop

    nop

    goto/32 :goto_f3

    nop

    nop

    :goto_55
    invoke-virtual {v4, v0}, Lpia;->a(Lphj;)Lphh;

    move-result-object v0

    nop

    goto/32 :goto_141

    nop

    nop

    nop

    :goto_56
    iget-object v2, v1, Lidz;->f:Loyd;

    nop

    nop

    nop

    nop

    goto/32 :goto_187

    nop

    nop

    nop

    nop

    :goto_57
    iget-object v3, v3, Lieu;->c:Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;

    nop

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    :goto_58
    return-void

    nop

    nop

    nop

    :pswitch_5
    goto/32 :goto_1ca

    nop

    nop

    nop

    nop

    :goto_59
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    :goto_5a
    const v0, 0x1c

    nop

    nop

    nop

    nop

    goto/32 :goto_149

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    iget-object v5, v2, Lihg;->b:Ljavax/microedition/khronos/egl/EGLConfig;

    nop

    goto/32 :goto_1ac

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    invoke-virtual {v2, v3}, Lpic;->D(I)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    goto/32 :goto_1aa

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    invoke-virtual {v0, v1}, Llwx;->d(Ljava/util/function/Consumer;)V

    goto/32 :goto_eb

    nop

    nop

    nop

    :goto_5e
    if-nez v2, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_3
    goto/32 :goto_166

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    invoke-virtual {v0}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_14a

    nop

    nop

    nop

    nop

    nop

    :goto_60
    check-cast v1, Libi;

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_61
    const-string v1, "Could not map YUV to Bitmap."

    nop

    nop

    nop

    goto/32 :goto_d5

    nop

    nop

    :goto_62
    monitor-enter v3

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    iget-object v1, v0, Libm;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    check-cast v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    invoke-virtual {v1, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, v0, Libm;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v3

    nop

    nop

    nop

    return-void

    nop

    nop

    nop

    :catchall_1
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    monitor-exit v3

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/32 :goto_144

    nop

    nop

    nop

    :goto_63
    invoke-virtual {v3, v0, v8}, Lpik;->c(Lpgo;I)Lpgh;

    move-result-object v0

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

    nop

    :goto_64
    iget-object v1, v0, Libm;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_1c0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_65
    iget-object v4, v1, Lihg;->e:Ljavax/microedition/khronos/egl/EGLSurface;

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_66
    iget-object v1, v0, Lihg;->d:Ljavax/microedition/khronos/egl/EGLContext;

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_67
    iget-object v2, v0, Libm;->a:Ljava/lang/Object;

    nop

    nop

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

    :goto_68
    iget-object v2, v2, Lnar;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_133

    nop

    nop

    nop

    nop

    :goto_69
    if-nez v0, :cond_4

    nop

    goto/32 :goto_14f

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_92

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    sget-object v0, Litg;->a:Lsdb;

    nop

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    :goto_6b
    iput-object v1, v2, Lihg;->c:Ljavax/microedition/khronos/egl/EGLDisplay;

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    invoke-static {v2, v3, v1, v0}, Lmf;->f(Ljava/lang/String;CLscz;Ljava/lang/Throwable;)V

    :goto_6d
    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    sget-object v1, Litg;->a:Lsdb;

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_6f
    const/16 v4, 0xa

    nop

    nop

    nop

    nop

    goto/32 :goto_1a7

    nop

    nop

    nop

    :goto_70
    iget-object v0, v0, Libm;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    :goto_71
    return-void

    nop

    :pswitch_6
    goto/32 :goto_64

    nop

    nop

    nop

    :goto_72
    const-string v1, "eglChooseConfig#2 failed"

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_73
    invoke-static {v0, v1}, Lifx;->b(Linb;Lifx;)V

    goto/32 :goto_74

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

    :pswitch_7
    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    :goto_75
    iget-object v0, v0, Libm;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    :goto_76
    const-string v2, "livePreview"

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_77
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_78
    iget-object v3, v2, Litw;->n:Lpik;

    nop

    goto/32 :goto_14b

    nop

    nop

    nop

    :goto_79
    iget-object v1, v0, Libm;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_7a
    iput v2, v3, Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;->p:I

    nop

    nop

    nop

    goto/32 :goto_183

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    iget-wide v2, v0, Lsvr;->a:J

    nop

    nop

    nop

    goto/32 :goto_159

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    iput-object v1, v2, Lihg;->d:Ljavax/microedition/khronos/egl/EGLContext;

    nop

    nop

    nop

    nop

    goto/32 :goto_17e

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    invoke-virtual {v0}, Lscs;->b()Lsdo;

    move-result-object v0

    nop

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

    nop

    :goto_7e
    return-void

    nop

    nop

    nop

    :pswitch_8
    goto/32 :goto_1b6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    iput-object v1, v0, Lihg;->g:Ljavax/microedition/khronos/opengles/GL10;

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_80
    sget-object v2, Lixe;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_81
    throw v0

    nop

    nop

    nop

    :goto_82
    goto/32 :goto_139

    nop

    nop

    nop

    nop

    :goto_83
    const/4 v7, 0x0

    nop

    nop

    nop

    nop

    :goto_84
    goto/32 :goto_13b

    nop

    nop

    nop

    nop

    nop

    :goto_85
    check-cast v0, Lihg;

    nop

    goto/32 :goto_66

    nop

    nop

    :goto_86
    check-cast v1, Ligc;

    nop

    nop

    nop

    nop

    goto/32 :goto_d0

    nop

    nop

    nop

    nop

    :goto_87
    throw v0

    nop

    nop

    nop

    nop

    nop

    :pswitch_9
    goto/32 :goto_115

    nop

    nop

    nop

    nop

    :goto_88
    if-nez v0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_113

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_1b4

    nop

    nop

    nop

    nop

    nop

    :goto_89
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_a
    goto/32 :goto_182

    nop

    nop

    nop

    :goto_8a
    if-nez v1, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_ee

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8b
    iget-object v4, v1, Lidz;->d:Lowu;

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    nop

    :goto_8c
    check-cast v2, Lnar;

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    :goto_8d
    invoke-interface {v3, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15e

    nop

    nop

    nop

    nop

    nop

    :goto_8e
    iget-object v0, v0, Libm;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_1a2

    nop

    nop

    :goto_8f
    sget-object v1, Lstd;->a:Lstd;

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_90
    const-string v1, "failed to createContext"

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

    nop

    :goto_91
    iget-object v2, v1, Lkbf;->c:Lkog;

    nop

    goto/32 :goto_10f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_92
    iget-object v0, v1, Lidz;->m:Lfwv;

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    :goto_93
    check-cast v1, Lidz;

    nop

    goto/32 :goto_101

    nop

    nop

    nop

    nop

    nop

    :goto_94
    if-ne v1, v2, :cond_7

    nop

    goto/32 :goto_148

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_193

    nop

    nop

    nop

    :goto_95
    iget-object v2, v1, Lidz;->b:Lhco;

    nop

    nop

    goto/32 :goto_12c

    nop

    nop

    nop

    nop

    nop

    :goto_96
    invoke-interface {v3, v4, v5, v2, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v2

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_97
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_b
    goto/32 :goto_19f

    nop

    nop

    nop

    nop

    :goto_98
    throw v0

    nop

    nop

    nop

    nop

    :goto_99
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_9a
    move-object v12, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_9b
    iget-object v2, v1, Litv;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    :goto_9c
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    nop

    :goto_9d
    throw v0

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_a
        :pswitch_5
        :pswitch_11
        :pswitch_9
        :pswitch_0
        :pswitch_d
        :pswitch_3
        :pswitch_7
        :pswitch_b
        :pswitch_10
        :pswitch_1
        :pswitch_f
        :pswitch_12
        :pswitch_8
        :pswitch_4
        :pswitch_13
        :pswitch_2
        :pswitch_6
        :pswitch_e
    .end packed-switch

    :goto_9e
    goto/32 :goto_123

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9f
    iget-object v1, v0, Libm;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_1bb

    nop

    nop

    nop

    :goto_a0
    iget-object v1, v0, Libm;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_160

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a1
    new-instance v1, Lloo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    :goto_a3
    invoke-virtual {v0, v1}, Lsuu;->e(Ljava/lang/Object;)Z

    goto/32 :goto_111

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a4
    iget-object v5, v1, Lihg;->b:Ljavax/microedition/khronos/egl/EGLConfig;

    nop

    nop

    nop

    goto/32 :goto_198

    nop

    nop

    nop

    nop

    :goto_a5
    const/4 v12, 0x0

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_a6
    iget-object v2, v1, Lidz;->a:Lrss;

    nop

    nop

    goto/32 :goto_ea

    nop

    nop

    nop

    :goto_a7
    return-void

    nop

    :pswitch_c
    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    :goto_a8
    check-cast v1, Lidx;

    nop

    nop

    nop

    nop

    goto/32 :goto_199

    nop

    nop

    nop

    :goto_a9
    const/4 v8, 0x1

    nop

    nop

    packed-switch v3, :pswitch_data_0

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_aa
    invoke-virtual {v2}, Lrss;->c()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    goto/32 :goto_c2

    nop

    nop

    nop

    nop

    :goto_ab
    iget-object v0, v1, Lidz;->p:Lhoh;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_ac
    invoke-interface {v2, v3, v4}, Loyd;->cL(Lpcm;Ljava/util/concurrent/Executor;)Lpci;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_173

    nop

    nop

    :goto_ad
    check-cast v1, Llsr;

    nop

    nop

    goto/32 :goto_16b

    nop

    nop

    nop

    nop

    nop

    :goto_ae
    const-string v1, "No configs match configSpec"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_af
    check-cast v0, Lifn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1bf

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b0
    iget-object v3, v0, Lide;->b:Lsuu;

    nop

    nop

    goto/32 :goto_1c6

    nop

    nop

    nop

    :goto_b1
    if-nez v0, :cond_8

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

    :cond_8
    goto/32 :goto_130

    nop

    nop

    nop

    nop

    nop

    :goto_b2
    goto/32 :goto_9e

    nop

    nop

    nop

    :goto_b3
    goto/32 :goto_b4

    nop

    nop

    nop

    :goto_b4
    move-object/from16 v0, p0

    nop

    nop

    goto/32 :goto_176

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b5
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_147

    nop

    nop

    nop

    :goto_b6
    invoke-direct {v3, v1, v4}, Lhup;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    :goto_b7
    iput v0, v3, Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;->o:I

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    :goto_b8
    iget-object v0, v1, Litv;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_b9
    throw v0

    nop

    nop

    nop

    :goto_ba
    goto/32 :goto_1a1

    nop

    nop

    nop

    nop

    nop

    :goto_bb
    iget-object v2, v1, Lihg;->f:Ljavax/microedition/khronos/egl/EGL10;

    nop

    nop

    nop

    nop

    goto/32 :goto_12b

    nop

    nop

    nop

    nop

    nop

    :goto_bc
    iget-object v1, v2, Lihg;->f:Ljavax/microedition/khronos/egl/EGL10;

    nop

    nop

    goto/32 :goto_15a

    nop

    nop

    nop

    nop

    :goto_bd
    iget-object v1, v0, Libm;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_c1

    nop

    nop

    nop

    nop

    :goto_be
    invoke-virtual {v1}, Lidg;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_bf
    iget-object v1, v0, Libm;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_162

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c0
    const/16 v4, 0xb

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_c1
    const-string v2, "MICRO_ImageReaderModule_runningStartupTasks"

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_c2
    check-cast v2, Lidx;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_103

    nop

    nop

    :goto_c3
    invoke-interface {v3, v4, v5, v6, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v1

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

    :goto_c4
    return-void

    nop

    nop

    :pswitch_d
    goto/32 :goto_153

    nop

    nop

    :goto_c5
    if-nez v1, :cond_9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    :goto_c6
    iget-object v9, v0, Libm;->b:Ljava/lang/Object;

    nop

    nop

    :try_start_2
    move-object v0, v9

    nop

    check-cast v0, Litg;

    nop

    nop

    nop

    nop

    iget-object v0, v0, Litg;->d:Lhdu;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v3}, Lprw;->a()I

    move-result v10

    nop

    nop

    nop

    const/16 v11, 0x23

    nop

    if-ne v10, v11, :cond_a

    nop

    nop

    nop

    move v10, v8

    nop

    nop

    nop

    goto :goto_c7

    nop

    nop

    nop

    nop

    :cond_a
    const/4 v10, 0x0

    nop

    :goto_c7
    invoke-interface {v3}, Lprw;->a()I

    move-result v11

    nop

    nop

    nop

    new-instance v12, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    invoke-direct {v12, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    nop

    nop

    invoke-static {v10, v2}, Lrrf;->m(ZLjava/lang/Object;)V

    iget-object v2, v0, Lhdu;->c:Ljava/lang/Object;

    nop

    const-string v10, "Downsample YUV"

    nop

    nop

    nop

    invoke-interface {v2, v10}, Lpdf;->f(Ljava/lang/String;)V

    iget-object v2, v0, Lhdu;->a:Ljava/lang/Object;

    nop

    check-cast v2, Ltbs;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2, v3}, Ltbs;->c(Lprw;)Lcom/google/googlex/gcam/YuvWriteView;

    move-result-object v2

    nop

    nop

    nop

    iget-wide v10, v2, Lcom/google/googlex/gcam/YuvWriteView;->b:J

    nop

    nop

    nop

    nop

    invoke-static {v10, v11, v2}, Lcom/google/googlex/gcam/GcamModuleJNI;->YuvWriteView_yuv_format(JLcom/google/googlex/gcam/YuvWriteView;)I

    move-result v3

    nop

    nop

    nop

    invoke-static {v3}, Lsyn;->a(I)Lsyn;

    move-result-object v3

    nop

    nop

    nop

    invoke-virtual {v2}, Lcom/google/googlex/gcam/YuvWriteView;->b()I

    move-result v10

    nop

    nop

    nop

    nop

    nop

    and-int/lit8 v15, v10, -0x8

    nop

    invoke-virtual {v2}, Lcom/google/googlex/gcam/YuvWriteView;->a()I

    move-result v10

    nop

    and-int/lit8 v14, v10, -0x8

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Lcom/google/googlex/gcam/YuvWriteView;->b()I

    move-result v10

    nop

    nop

    if-ne v15, v10, :cond_c

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Lcom/google/googlex/gcam/YuvWriteView;->a()I

    move-result v10

    nop

    nop

    nop

    nop

    nop

    if-eq v14, v10, :cond_b

    nop

    goto :goto_c8

    nop

    nop

    nop

    :cond_b
    move/from16 v17, v14

    nop

    nop

    nop

    nop

    move/from16 v18, v15

    nop

    goto :goto_c9

    nop

    nop

    nop

    :cond_c
    :goto_c8
    iget-wide v10, v2, Lcom/google/googlex/gcam/YuvWriteView;->b:J

    nop

    nop

    nop

    nop

    const/4 v13, 0x0

    nop

    const/16 v16, 0x0

    nop

    nop

    nop

    move-object v12, v2

    nop

    nop

    move/from16 v17, v14

    nop

    nop

    move/from16 v14, v16

    nop

    nop

    nop

    move/from16 v18, v15

    nop

    nop

    move/from16 v16, v17

    nop

    nop

    nop

    nop

    nop

    invoke-static/range {v10 .. v16}, Lcom/google/googlex/gcam/GcamModuleJNI;->YuvWriteView_FastCrop(JLcom/google/googlex/gcam/YuvWriteView;IIII)V

    :goto_c9
    div-int/lit8 v15, v18, 0x4

    nop

    nop

    div-int/lit8 v14, v17, 0x4

    nop

    nop

    new-instance v10, Lcom/google/googlex/gcam/YuvImage;

    nop

    nop

    nop

    nop

    invoke-direct {v10, v15, v14, v3}, Lcom/google/googlex/gcam/YuvImage;-><init>(IILsyn;)V

    invoke-static {v2}, Lsgj;->v(Lcom/google/googlex/gcam/YuvWriteView;)Lcom/google/googlex/gcam/YuvReadView;

    move-result-object v2

    nop

    nop

    nop

    invoke-static {v10}, Lsgj;->w(Lcom/google/googlex/gcam/YuvImage;)Lcom/google/googlex/gcam/YuvWriteView;

    move-result-object v11

    nop

    sget v12, Lcom/google/googlex/gcam/imageproc/Resample;->a:I

    nop

    nop

    nop

    nop

    nop

    iget-wide v12, v2, Lcom/google/googlex/gcam/YuvReadView;->a:J

    nop

    nop

    nop

    nop

    nop

    invoke-static {v11}, Lcom/google/googlex/gcam/YuvWriteView;->c(Lcom/google/googlex/gcam/YuvWriteView;)J

    move-result-wide v6

    nop

    nop

    nop

    nop

    const-wide/16 v17, 0x0

    nop

    nop

    nop

    cmp-long v11, v12, v17

    nop

    nop

    nop

    if-eqz v11, :cond_d

    nop

    nop

    nop

    nop

    nop

    move v11, v8

    nop

    nop

    goto :goto_ca

    nop

    nop

    nop

    nop

    :cond_d
    const/4 v11, 0x0

    nop

    :goto_ca
    const-string v2, "src is null"

    nop

    nop

    nop

    invoke-static {v11, v2}, Lrrf;->m(ZLjava/lang/Object;)V

    cmp-long v2, v6, v17

    nop

    nop

    if-eqz v2, :cond_e

    nop

    nop

    nop

    nop

    goto :goto_cb

    nop

    :cond_e
    const/4 v8, 0x0

    nop

    :goto_cb
    const-string v2, "dst is null"

    nop

    nop

    invoke-static {v8, v2}, Lrrf;->m(ZLjava/lang/Object;)V

    invoke-static {v12, v13, v5, v6, v7}, Lcom/google/googlex/gcam/imageproc/Resample;->downsampleImpl(JIJ)Z

    move-result v2

    nop

    nop

    if-eqz v2, :cond_14

    nop

    iget-object v2, v0, Lhdu;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    const-string v5, "Rotate YUV"

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v2, v5}, Lpdf;->h(Ljava/lang/String;)V

    iget-object v2, v0, Lhdu;->b:Ljava/lang/Object;

    nop

    nop

    check-cast v2, Lfxj;

    nop

    nop

    invoke-virtual {v2}, Lfxj;->a()Loyd;

    move-result-object v2

    nop

    invoke-interface {v2}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    check-cast v2, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    invoke-static {v2}, Lsgj;->y(I)Lsxp;

    move-result-object v5

    nop

    sget-object v6, Lsxp;->d:Lsxp;

    nop

    nop

    if-eq v5, v6, :cond_12

    nop

    sget-object v6, Lsxp;->b:Lsxp;

    nop

    nop

    nop

    nop

    nop

    if-ne v5, v6, :cond_f

    nop

    nop

    nop

    goto :goto_cd

    nop

    nop

    nop

    :cond_f
    sget-object v6, Lsxp;->i:Lsxp;

    nop

    nop

    if-eq v5, v6, :cond_11

    nop

    nop

    nop

    nop

    nop

    sget-object v6, Lsxp;->g:Lsxp;

    nop

    nop

    nop

    if-ne v5, v6, :cond_10

    nop

    goto :goto_cc

    nop

    nop

    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    nop

    new-instance v5, Ljava/lang/StringBuilder;

    nop

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; rotationObservable="

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    nop

    nop

    nop

    nop

    :cond_11
    :goto_cc
    move/from16 v19, v15

    nop

    move v15, v14

    nop

    nop

    nop

    nop

    nop

    move/from16 v14, v19

    nop

    nop

    nop

    nop

    :cond_12
    :goto_cd
    new-instance v1, Lcom/google/googlex/gcam/YuvImage;

    nop

    nop

    nop

    invoke-direct {v1, v15, v14, v3}, Lcom/google/googlex/gcam/YuvImage;-><init>(IILsyn;)V

    invoke-static {v10}, Lsgj;->u(Lcom/google/googlex/gcam/YuvImage;)Lcom/google/googlex/gcam/YuvReadView;

    move-result-object v2

    nop

    invoke-static {v1}, Lsgj;->w(Lcom/google/googlex/gcam/YuvImage;)Lcom/google/googlex/gcam/YuvWriteView;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    invoke-static {v2, v5, v3}, Lcom/google/googlex/gcam/imageproc/Resample;->c(Lcom/google/googlex/gcam/YuvReadView;Lsxp;Lcom/google/googlex/gcam/YuvWriteView;)V

    iget-object v2, v0, Lhdu;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    const-string v3, "YUV to bitmap"

    nop

    nop

    nop

    invoke-interface {v2, v3}, Lpdf;->h(Ljava/lang/String;)V

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    nop

    nop

    invoke-static {v15, v14, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    nop

    nop

    new-instance v3, Lsxv;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v3, v2}, Lsxv;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v5, v3, Lsxv;->a:Lcom/google/googlex/gcam/InterleavedWriteViewU8;

    nop

    nop

    nop

    invoke-static {v1, v5}, Lcom/google/googlex/gcam/image/YuvUtils;->a(Lcom/google/googlex/gcam/YuvImage;Lcom/google/googlex/gcam/InterleavedWriteViewU8;)Z

    move-result v1

    nop

    nop

    invoke-virtual {v3}, Lsxv;->close()V

    if-nez v1, :cond_13

    nop

    nop

    nop

    nop

    nop

    iget-object v0, v0, Lhdu;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Lpdf;->g()V

    goto/16 :goto_6d

    nop

    nop

    nop

    :cond_13
    iget-object v0, v0, Lhdu;->c:Ljava/lang/Object;

    nop

    invoke-interface {v0}, Lpdf;->g()V

    move-object v7, v2

    nop

    goto/16 :goto_84

    nop

    :cond_14
    new-instance v0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    nop

    const-string v1, "Failed to downsample YUV image"

    nop

    nop

    nop

    nop

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    :goto_ce
    invoke-virtual {v1}, Ligc;->c()V

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_cf
    iput-object v0, v2, Litw;->j:Lpgh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_163

    nop

    nop

    nop

    :goto_d0
    iget-object v2, v1, Ligc;->h:Landroid/widget/ImageView;

    nop

    goto/32 :goto_1b0

    nop

    nop

    nop

    :goto_d1
    iget-object v4, v3, Lpik;->a:Lpia;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_d2
    iget-object v0, v1, Lidz;->m:Lfwv;

    nop

    nop

    nop

    nop

    goto/32 :goto_dd

    nop

    nop

    nop

    nop

    :goto_d3
    iget-object v5, v3, Lihg;->c:Ljavax/microedition/khronos/egl/EGLDisplay;

    nop

    goto/32 :goto_15c

    nop

    nop

    nop

    :goto_d4
    check-cast v1, Ljph;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_d5
    invoke-interface {v0, v1}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_50

    nop

    nop

    :goto_d6
    const-string v1, "eglGetDisplay failed"

    nop

    nop

    goto/32 :goto_f6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d7
    invoke-interface {v0, v1}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    goto/32 :goto_117

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d8
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_f1

    nop

    nop

    :goto_d9
    goto/16 :goto_17c

    nop

    nop

    nop

    nop

    nop

    :goto_da
    goto/32 :goto_17b

    nop

    nop

    :goto_db
    invoke-virtual {v0}, Lieu;->b()V

    goto/32 :goto_138

    nop

    nop

    nop

    nop

    :goto_dc
    goto/16 :goto_df

    nop

    :pswitch_e
    goto/32 :goto_104

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_dd
    iget-object v2, v1, Lidz;->e:Loyd;

    nop

    nop

    nop

    goto/32 :goto_119

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_de
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_df
    :try_start_3
    check-cast v0, Lixe;

    nop

    iget-object v0, v0, Lixe;->q:Lixf;

    nop

    nop

    nop

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    if-eqz v0, :cond_15

    nop

    nop

    nop

    invoke-interface {v1}, Lixf;->i()V

    :cond_15
    monitor-exit v2

    nop

    nop

    nop

    nop

    return-void

    nop

    :catchall_2
    move-exception v0

    nop

    monitor-exit v2

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto/32 :goto_9d

    nop

    nop

    nop

    :goto_e0
    check-cast v0, Lieu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11d

    nop

    nop

    nop

    nop

    :goto_e1
    check-cast v0, Ltuu;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_e2
    check-cast v2, Litw;

    nop

    nop

    goto/32 :goto_cf

    nop

    nop

    :goto_e3
    check-cast v0, Landroid/graphics/SurfaceTexture;

    nop

    nop

    nop

    goto/32 :goto_1b8

    nop

    nop

    :goto_e4
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_174

    nop

    nop

    nop

    :goto_e5
    iget-object v5, v1, Lidz;->d:Lowu;

    nop

    nop

    goto/32 :goto_1a5

    nop

    nop

    :goto_e6
    iget-object v2, v1, Lidz;->p:Lhoh;

    nop

    nop

    goto/32 :goto_11b

    nop

    nop

    nop

    :goto_e7
    const-string v1, "failed to eglMakeCurrent"

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_e8
    check-cast v2, Lihg;

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_e9
    throw v0

    nop

    nop

    nop

    nop

    nop

    :pswitch_f
    goto/32 :goto_bf

    nop

    nop

    :goto_ea
    invoke-virtual {v0}, Lfwv;->i()Lows;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_aa

    nop

    nop

    :goto_eb
    return-void

    nop

    nop

    nop

    nop

    :goto_ec
    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    :goto_ed
    invoke-virtual {v0, v2}, Lhoh;->p(Lhmn;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    :goto_ee
    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ef
    new-instance v0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    nop

    goto/32 :goto_1b1

    nop

    nop

    nop

    nop

    :goto_f0
    check-cast v0, Lsvr;

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    :goto_f1
    aget-object v2, v7, v2

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

    :goto_f2
    const/16 v1, 0x3098

    nop

    goto/32 :goto_f9

    nop

    nop

    :goto_f3
    iget-object v2, v1, Lifn;->Y:Lqpa;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_177

    nop

    nop

    nop

    nop

    :goto_f4
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v1

    nop

    nop

    goto/32 :goto_1b5

    nop

    nop

    nop

    :goto_f5
    rem-int v0, v0, v1

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

    :goto_f6
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_100

    nop

    nop

    nop

    nop

    :goto_f7
    iput-object v4, v2, Litw;->h:Landroid/view/Surface;

    nop

    nop

    nop

    nop

    goto/32 :goto_b8

    nop

    nop

    :goto_f8
    iget-object v0, v1, Lidz;->j:Lieu;

    nop

    goto/32 :goto_db

    nop

    nop

    nop

    nop

    nop

    :goto_f9
    const/16 v2, 0x3038

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_fa
    invoke-interface {v2, v3, v4, v4, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v1

    nop

    goto/32 :goto_c5

    nop

    nop

    nop

    :goto_fb
    aget v13, v6, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_1cb

    nop

    nop

    nop

    nop

    :goto_fc
    new-instance v0, Ljava/lang/RuntimeException;

    nop

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

    :goto_fd
    check-cast v0, Landroid/graphics/Bitmap;

    nop

    nop

    nop

    nop

    goto/32 :goto_1c9

    nop

    nop

    nop

    :goto_fe
    iget-object v0, v0, Litw;->k:Lpgg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_112

    nop

    nop

    nop

    nop

    nop

    :goto_ff
    iget-object v3, v1, Lihg;->f:Ljavax/microedition/khronos/egl/EGL10;

    nop

    goto/32 :goto_145

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_100
    throw v0

    nop

    nop

    :pswitch_10
    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_101
    iget-object v0, v0, Libm;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_e0

    nop

    nop

    :goto_102
    move-object v3, v2

    nop

    goto/32 :goto_175

    nop

    nop

    :goto_103
    iget-object v3, v2, Lidx;->b:Ljava/util/Set;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_164

    nop

    nop

    nop

    nop

    :goto_104
    iget-object v1, v0, Libm;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_165

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_105
    if-nez v1, :cond_16

    nop

    nop

    goto/32 :goto_148

    nop

    nop

    nop

    :cond_16
    goto/32 :goto_12a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_106
    const-string v2, "Could not map YUV to Bitmap"

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_107
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_108
    if-nez v2, :cond_17

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :cond_17
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_109
    const/16 v1, 0x764

    nop

    nop

    nop

    goto/32 :goto_d7

    nop

    nop

    nop

    nop

    nop

    :goto_10a
    iget-object v1, v0, Libm;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_10b
    new-instance v3, Lhig;

    nop

    nop

    nop

    nop

    goto/32 :goto_17a

    nop

    nop

    nop

    :goto_10c
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_128

    nop

    nop

    nop

    nop

    nop

    :goto_10d
    invoke-interface {v0}, Lngo;->g()V

    :goto_10e
    goto/32 :goto_c4

    nop

    nop

    nop

    :goto_10f
    iget-object v1, v1, Lkbf;->a:Lows;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_154

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_110
    iget-object v2, v0, Libm;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_1c1

    nop

    nop

    nop

    :goto_111
    return-void

    nop

    nop

    :pswitch_11
    goto/32 :goto_1ba

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_112
    invoke-interface {v1, v0}, Lpgh;->l(Lpgg;)V

    :goto_113
    goto/32 :goto_37

    nop

    nop

    nop

    :goto_114
    invoke-virtual {v0, v8}, Lisk;->a(Z)V

    goto/32 :goto_127

    nop

    nop

    nop

    nop

    nop

    :goto_115
    iget-object v1, v0, Libm;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_158

    nop

    nop

    nop

    nop

    nop

    :goto_116
    new-instance v0, Ljava/lang/RuntimeException;

    nop

    nop

    goto/32 :goto_d6

    nop

    nop

    nop

    :goto_117
    check-cast v0, Lscz;

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :goto_118
    new-instance v3, Lhup;

    nop

    nop

    nop

    goto/32 :goto_c0

    nop

    nop

    nop

    nop

    nop

    :goto_119
    invoke-virtual {v0}, Lfwv;->i()Lows;

    move-result-object v0

    nop

    nop

    goto/32 :goto_180

    nop

    nop

    nop

    nop

    :goto_11a
    iget-boolean v2, v1, Liim;->d:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_108

    nop

    nop

    nop

    nop

    :goto_11b
    sget-object v3, Lhlz;->b:Lhmo;

    nop

    nop

    nop

    nop

    goto/32 :goto_181

    nop

    nop

    nop

    nop

    :goto_11c
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    nop

    :goto_11d
    iput-object v0, v1, Lidz;->j:Lieu;

    nop

    nop

    goto/32 :goto_11f

    nop

    nop

    nop

    :goto_11e
    invoke-interface/range {v9 .. v14}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v2

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_11f
    iget-object v0, v1, Lidz;->j:Lieu;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_120
    iget-object v4, v1, Lihg;->c:Ljavax/microedition/khronos/egl/EGLDisplay;

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    nop

    :goto_121
    const/high16 v1, 0x447a0000    # 1000.0f

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_122
    const v3, 0x7f0b00e9

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_123
    goto/32 :goto_b3

    nop

    nop

    nop

    nop

    nop

    :goto_124
    move-object v10, v5

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_125
    check-cast v0, Libq;

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_126
    iget-object v4, v3, Lihg;->f:Ljavax/microedition/khronos/egl/EGL10;

    nop

    nop

    goto/32 :goto_d3

    nop

    nop

    nop

    nop

    nop

    :goto_127
    return-void

    nop

    :pswitch_12
    goto/32 :goto_185

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_128
    iget-object v3, v1, Lidz;->j:Lieu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_129
    iput-object v2, v0, Landroidx/wear/ambient/AmbientDelegate;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12a
    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12b
    iget-object v3, v1, Lihg;->c:Ljavax/microedition/khronos/egl/EGLDisplay;

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    :goto_12c
    invoke-virtual {v0}, Lfwv;->i()Lows;

    move-result-object v0

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

    :goto_12d
    invoke-virtual {v0, v3}, Lows;->d(Lpci;)V

    goto/32 :goto_1ce

    nop

    nop

    nop

    nop

    :goto_12e
    move-object v9, v4

    nop

    nop

    nop

    goto/32 :goto_197

    nop

    nop

    :goto_12f
    invoke-interface {v2}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v2

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_130
    iget-object v0, v1, Lidz;->i:Landroid/hardware/SensorManager;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_131
    invoke-interface/range {v9 .. v14}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_132
    iget-object v0, v0, Lieu;->d:Landroidx/wear/ambient/AmbientDelegate;

    nop

    nop

    goto/32 :goto_19d

    nop

    nop

    nop

    nop

    nop

    :goto_133
    check-cast v2, Lpic;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_122

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_134
    const/16 v5, 0x9

    nop

    goto/32 :goto_1ad

    nop

    nop

    nop

    nop

    nop

    :goto_135
    check-cast v1, Lihg;

    nop

    nop

    nop

    nop

    goto/32 :goto_1b9

    nop

    nop

    :goto_136
    invoke-interface {v1, v0}, Libo;->dz(Llsc;)V

    goto/32 :goto_de

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_137
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_16f

    nop

    nop

    nop

    :goto_138
    iget-object v0, v1, Lidz;->p:Lhoh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1be

    nop

    nop

    :goto_139
    new-instance v0, Ljava/lang/RuntimeException;

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_13a
    if-eqz v1, :cond_18

    nop

    goto/32 :goto_152

    nop

    nop

    :cond_18
    goto/32 :goto_bd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13b
    if-nez v7, :cond_19

    nop

    nop

    goto/32 :goto_ec

    nop

    nop

    :cond_19
    goto/32 :goto_1c8

    nop

    nop

    nop

    nop

    nop

    :goto_13c
    iget-object v1, v0, Libm;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_135

    nop

    nop

    nop

    nop

    :goto_13d
    sget-object v11, Lihg;->a:[I

    nop

    nop

    nop

    nop

    goto/32 :goto_12e

    nop

    nop

    nop

    nop

    nop

    :goto_13e
    check-cast v1, Libo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    :goto_13f
    check-cast v2, Ljava/lang/Integer;

    nop

    nop

    nop

    goto/32 :goto_10c

    nop

    nop

    :goto_140
    check-cast v0, Lide;

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    :goto_141
    check-cast v2, Litw;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_142
    iget-object v0, v0, Lide;->c:Lsuu;

    nop

    nop

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    :goto_143
    if-nez v0, :cond_1a

    nop

    nop

    goto/32 :goto_10e

    nop

    nop

    nop

    :cond_1a
    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_144
    throw v0

    nop

    nop

    nop

    nop

    nop

    :pswitch_13
    goto/32 :goto_167

    nop

    nop

    nop

    :goto_145
    iget-object v1, v1, Lihg;->c:Ljavax/microedition/khronos/egl/EGLDisplay;

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

    :goto_146
    iget-object v1, v0, Libm;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_195

    nop

    nop

    nop

    nop

    nop

    :goto_147
    throw v0

    nop

    nop

    nop

    nop

    nop

    :goto_148
    goto/32 :goto_1b3

    nop

    nop

    :goto_149
    const v1, 0x8

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14a
    check-cast v0, Ljava/lang/Integer;

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14b
    if-nez v3, :cond_1b

    nop

    goto/32 :goto_113

    nop

    nop

    nop

    nop

    nop

    :cond_1b
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14c
    check-cast v0, Lisk;

    nop

    nop

    goto/32 :goto_114

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14d
    iget-object v0, v2, Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;->s:Landroidx/wear/ambient/AmbientDelegate;

    nop

    nop

    nop

    nop

    goto/32 :goto_129

    nop

    nop

    nop

    nop

    :goto_14e
    invoke-virtual {v0, v1}, Lows;->d(Lpci;)V

    :goto_14f
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_150
    check-cast v1, Lihg;

    nop

    nop

    nop

    nop

    goto/32 :goto_ff

    nop

    nop

    nop

    nop

    :goto_151
    invoke-interface {v1}, Lpdf;->g()V

    :goto_152
    goto/32 :goto_a7

    nop

    nop

    :goto_153
    iget-object v1, v0, Libm;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_11c

    nop

    nop

    nop

    nop

    nop

    :goto_154
    iget-object v0, v0, Libm;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_155
    new-array v7, v13, [Ljavax/microedition/khronos/egl/EGLConfig;

    nop

    nop

    nop

    nop

    goto/32 :goto_13d

    nop

    nop

    :goto_156
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    :goto_157
    goto/32 :goto_1a4

    nop

    nop

    :goto_158
    check-cast v1, Lidg;

    nop

    goto/32 :goto_be

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_159
    invoke-virtual {v1, v2, v3}, Llsr;->b(J)V

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15a
    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_192

    nop

    nop

    :goto_15b
    check-cast v2, Litw;

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    :goto_15c
    new-array v6, v8, [I

    nop

    goto/32 :goto_171

    nop

    nop

    nop

    :goto_15d
    if-ne v1, v2, :cond_1c

    nop

    goto/32 :goto_ba

    nop

    nop

    :cond_1c
    goto/32 :goto_1c7

    nop

    nop

    nop

    :goto_15e
    if-nez v1, :cond_1d

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    :cond_1d
    goto/32 :goto_f2

    nop

    nop

    nop

    nop

    :goto_15f
    invoke-virtual {v1}, Lidg;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_142

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_160
    check-cast v1, Lihg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a3

    nop

    nop

    nop

    nop

    :goto_161
    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    nop

    goto/32 :goto_184

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_162
    check-cast v1, Liim;

    nop

    nop

    nop

    nop

    goto/32 :goto_11a

    nop

    nop

    nop

    nop

    :goto_163
    iget-object v0, v1, Litv;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_16d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_164
    monitor-enter v3

    nop

    nop

    :try_start_4
    iget-object v5, v2, Lidx;->b:Ljava/util/Set;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v5, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v5, v2, Lidx;->b:Ljava/util/Set;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v5}, Ljava/util/Set;->size()I

    monitor-exit v3

    nop

    nop

    nop

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/32 :goto_10b

    nop

    nop

    nop

    nop

    nop

    :goto_165
    check-cast v1, Livx;

    nop

    nop

    nop

    nop

    goto/32 :goto_18f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_166
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_fb

    nop

    nop

    nop

    :goto_167
    iget-object v3, v0, Libm;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_c6

    nop

    nop

    nop

    nop

    nop

    :goto_168
    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v2

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_169
    iget-object v2, v0, Lieu;->c:Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_132

    nop

    nop

    nop

    nop

    nop

    :goto_16a
    iput-object v2, v0, Lieu;->c:Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;

    nop

    nop

    nop

    goto/32 :goto_169

    nop

    nop

    nop

    :goto_16b
    iget-object v0, v0, Libm;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_f0

    nop

    nop

    nop

    nop

    nop

    :goto_16c
    iget v3, v0, Libm;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    :goto_16d
    check-cast v0, Litw;

    nop

    goto/32 :goto_186

    nop

    nop

    nop

    :goto_16e
    iput-object v0, v2, Litw;->i:Lphh;

    nop

    goto/32 :goto_19b

    nop

    nop

    nop

    nop

    nop

    :goto_16f
    throw v0

    nop

    nop

    nop

    nop

    :goto_170
    goto/32 :goto_a2

    nop

    nop

    :goto_171
    sget-object v11, Lihg;->a:[I

    nop

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    :goto_172
    iget-object v0, v0, Libm;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_178

    nop

    nop

    nop

    :goto_173
    invoke-virtual {v0, v2}, Lows;->d(Lpci;)V

    goto/32 :goto_ab

    nop

    nop

    :goto_174
    if-nez v0, :cond_1e

    nop

    nop

    nop

    nop

    goto/32 :goto_10e

    nop

    :cond_1e
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_175
    check-cast v3, Lihg;

    nop

    nop

    goto/32 :goto_126

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_176
    const-string v1, "Invalid imageRotation="

    nop

    nop

    nop

    nop

    goto/32 :goto_1ae

    nop

    nop

    nop

    nop

    :goto_177
    invoke-virtual {v2}, Lqpa;->f()V

    goto/32 :goto_172

    nop

    nop

    nop

    nop

    nop

    :goto_178
    check-cast v0, Ljava/lang/Boolean;

    nop

    goto/32 :goto_e4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_179
    invoke-virtual {v1}, Lnel;->b()V

    goto/32 :goto_1c2

    nop

    nop

    nop

    :goto_17a
    invoke-direct {v3, v2, v1, v4}, Lhig;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/32 :goto_12d

    nop

    nop

    nop

    :goto_17b
    move-object v7, v2

    nop

    nop

    nop

    :goto_17c
    goto/32 :goto_17d

    nop

    nop

    nop

    nop

    nop

    :goto_17d
    iget-object v0, v0, Libm;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_fd

    nop

    nop

    :goto_17e
    iget-object v1, v0, Libm;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_191

    nop

    nop

    nop

    :goto_17f
    iget-object v0, v9, Litg;->b:Llwx;

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    :goto_180
    new-instance v3, Lhup;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b6

    nop

    nop

    nop

    nop

    :goto_181
    invoke-virtual {v2, v3}, Lhoh;->a(Lhmo;)Lj$/util/Optional;

    move-result-object v2

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_182
    sget v1, Lcom/a;->bb:I

    nop

    nop

    goto/32 :goto_13a

    nop

    nop

    nop

    nop

    :goto_183
    iget-object v0, v1, Lidz;->m:Lfwv;

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    nop

    :goto_184
    if-ne v1, v2, :cond_1f

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :cond_1f
    goto/32 :goto_10a

    nop

    nop

    :goto_185
    iget-object v1, v0, Libm;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_110

    nop

    nop

    :goto_186
    iget-object v1, v0, Litw;->j:Lpgh;

    nop

    nop

    nop

    goto/32 :goto_fe

    nop

    nop

    nop

    :goto_187
    invoke-virtual {v0}, Lfwv;->i()Lows;

    move-result-object v0

    nop

    goto/32 :goto_118

    nop

    nop

    :goto_188
    iget-object v1, v1, Lihg;->d:Ljavax/microedition/khronos/egl/EGLContext;

    nop

    goto/32 :goto_105

    nop

    nop

    nop

    nop

    nop

    :goto_189
    invoke-interface {v0, v2}, Lphh;->e(Landroid/view/Surface;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_18a
    invoke-interface {v1, v3}, Lpdf;->f(Ljava/lang/String;)V

    goto/32 :goto_1a0

    nop

    nop

    nop

    :goto_18b
    iget-object v2, v0, Libm;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_102

    nop

    nop

    :goto_18c
    iget-object v2, v0, Libm;->a:Ljava/lang/Object;

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

    nop

    :goto_18d
    invoke-virtual {v0, v2, v1}, Lmtp;->d(Lkog;Lows;)V

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_18e
    if-nez v1, :cond_20

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    :cond_20
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_18f
    iget-object v1, v1, Livx;->d:Livl;

    nop

    goto/32 :goto_196

    nop

    nop

    nop

    :goto_190
    iget-object v2, v1, Litv;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_15b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_191
    check-cast v1, Lihg;

    nop

    nop

    nop

    goto/32 :goto_188

    nop

    nop

    :goto_192
    invoke-interface {v1, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v1

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    :goto_193
    iget-object v1, v0, Libm;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_1ab

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_194
    const-string v1, "failed to createWindowSurface"

    nop

    nop

    goto/32 :goto_b5

    nop

    nop

    nop

    :goto_195
    iget-object v0, v0, Libm;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_d4

    nop

    nop

    nop

    :goto_196
    iget-object v0, v0, Libm;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_197
    move-object v10, v5

    nop

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    :goto_198
    const/4 v6, 0x0

    nop

    goto/32 :goto_96

    nop

    nop

    :goto_199
    iget-object v0, v0, Libm;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_1a8

    nop

    nop

    nop

    nop

    nop

    :goto_19a
    invoke-virtual {v1}, Lrss;->c()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    nop

    :goto_19b
    iget-object v2, v2, Litw;->h:Landroid/view/Surface;

    nop

    goto/32 :goto_189

    nop

    nop

    nop

    nop

    nop

    :goto_19c
    check-cast v1, Lifx;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    :goto_19d
    iput-object v0, v2, Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;->s:Landroidx/wear/ambient/AmbientDelegate;

    nop

    nop

    nop

    goto/32 :goto_14d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19e
    iput-object v1, v2, Lihg;->f:Ljavax/microedition/khronos/egl/EGL10;

    nop

    nop

    goto/32 :goto_bc

    nop

    nop

    :goto_19f
    iget-object v1, v0, Libm;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1cc

    nop

    nop

    nop

    :goto_1a0
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1a1
    new-instance v0, Ljava/lang/RuntimeException;

    nop

    nop

    goto/32 :goto_194

    nop

    nop

    nop

    :goto_1a2
    check-cast v0, Llsc;

    nop

    nop

    nop

    nop

    goto/32 :goto_136

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a3
    iget-object v1, v1, Lihg;->c:Ljavax/microedition/khronos/egl/EGLDisplay;

    nop

    goto/32 :goto_161

    nop

    nop

    nop

    :goto_1a4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_1a5
    invoke-virtual {v2, v3, v5}, Lhco;->cL(Lpcm;Ljava/util/concurrent/Executor;)Lpci;

    move-result-object v2

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

    :goto_1a6
    move-object v9, v4

    nop

    goto/32 :goto_124

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a7
    const/4 v5, 0x2

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    nop

    :goto_1a8
    monitor-enter v1

    nop

    nop

    :try_start_5
    move-object v2, v0

    nop

    nop

    nop

    check-cast v2, Liec;

    nop

    nop

    nop

    iget v2, v2, Liec;->h:I

    nop

    nop

    nop

    if-eqz v2, :cond_23

    nop

    nop

    nop

    nop

    const/4 v3, 0x6

    nop

    nop

    nop

    nop

    if-eq v2, v3, :cond_21

    nop

    nop

    const/4 v3, 0x3

    nop

    nop

    nop

    nop

    nop

    if-eq v2, v3, :cond_21

    nop

    nop

    nop

    nop

    nop

    if-ne v2, v8, :cond_22

    nop

    nop

    nop

    nop

    nop

    :cond_21
    iget-object v2, v1, Lidx;->b:Ljava/util/Set;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    nop

    nop

    nop

    nop

    :goto_1a9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    nop

    nop

    nop

    if-eqz v3, :cond_22

    nop

    nop

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    check-cast v3, Lidz;

    nop

    nop

    nop

    iget-object v4, v1, Lidx;->a:Lpck;

    nop

    nop

    nop

    new-instance v5, Lidy;

    nop

    move-object v6, v0

    nop

    nop

    nop

    nop

    nop

    check-cast v6, Liec;

    nop

    nop

    nop

    nop

    invoke-direct {v5, v3, v6, v4}, Lidy;-><init>(Lidz;Liec;Lpck;)V

    iget-object v3, v3, Lidz;->d:Lowu;

    nop

    invoke-virtual {v3, v5}, Lowu;->execute(Ljava/lang/Runnable;)V

    goto :goto_1a9

    nop

    :cond_22
    monitor-exit v1

    nop

    nop

    return-void

    nop

    nop

    :cond_23
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    throw v2

    nop

    nop

    nop

    nop

    :catchall_3
    move-exception v0

    nop

    nop

    nop

    monitor-exit v1

    nop

    nop

    nop

    nop

    nop
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_1aa
    check-cast v2, Landroid/view/ViewStub;

    nop

    nop

    nop

    goto/32 :goto_168

    nop

    nop

    :goto_1ab
    iget-object v2, v0, Libm;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1ac
    sget-object v6, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    nop

    nop

    nop

    goto/32 :goto_c3

    nop

    nop

    nop

    nop

    :goto_1ad
    invoke-direct {v3, v1, v5}, Lhup;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_e5

    nop

    nop

    nop

    nop

    nop

    :goto_1ae
    const-string v2, "Expected image format YUV but found: "

    nop

    nop

    nop

    goto/32 :goto_16c

    nop

    nop

    nop

    nop

    nop

    :goto_1af
    invoke-virtual {v0, v2}, Lhoh;->a(Lhmo;)Lj$/util/Optional;

    move-result-object v0

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_1b0
    if-eqz v2, :cond_24

    nop

    nop

    nop

    goto/32 :goto_da

    nop

    nop

    nop

    nop

    :cond_24
    goto/32 :goto_76

    nop

    nop

    nop

    nop

    :goto_1b1
    const-string v1, "eglChooseConfig failed"

    nop

    nop

    nop

    goto/32 :goto_1cd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b2
    invoke-direct {v1, v7, v4}, Lloo;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    :goto_1b3
    new-instance v0, Ljava/lang/RuntimeException;

    nop

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b4
    new-instance v4, Landroid/view/Surface;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e3

    nop

    nop

    nop

    :goto_1b5
    check-cast v1, Ljavax/microedition/khronos/egl/EGL10;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18c

    nop

    nop

    nop

    nop

    nop

    :goto_1b6
    iget-object v1, v0, Libm;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_1b7
    check-cast v1, Lrss;

    nop

    nop

    nop

    goto/32 :goto_19a

    nop

    nop

    :goto_1b8
    invoke-direct {v4, v0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    goto/32 :goto_f7

    nop

    nop

    nop

    nop

    nop

    :goto_1b9
    iget-object v1, v1, Lihg;->e:Ljavax/microedition/khronos/egl/EGLSurface;

    nop

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

    :goto_1ba
    iget-object v1, v0, Libm;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    :goto_1bb
    check-cast v1, Lkbf;

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1bc
    check-cast v0, Lcom/google/googlex/gcam/BuildPayloadBurstSpecOptions;

    nop

    goto/32 :goto_121

    nop

    nop

    nop

    nop

    nop

    :goto_1bd
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1be
    sget-object v2, Lhlz;->a:Lhmo;

    nop

    nop

    nop

    goto/32 :goto_1af

    nop

    nop

    nop

    nop

    nop

    :goto_1bf
    iget-object v0, v0, Lifn;->f:Lmts;

    nop

    nop

    goto/32 :goto_18d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c0
    check-cast v1, Litv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_190

    nop

    nop

    :goto_1c1
    monitor-enter v2

    nop

    nop

    nop

    nop

    nop

    :try_start_6
    invoke-interface {v1}, Lpge;->f()Z

    move-result v0

    nop

    nop

    if-nez v0, :cond_25

    nop

    nop

    nop

    invoke-interface {v1}, Lpge;->close()V

    :cond_25
    monitor-exit v2

    nop

    return-void

    nop

    nop

    nop

    nop

    nop

    :catchall_4
    move-exception v0

    nop

    nop

    nop

    monitor-exit v2

    nop

    nop
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    goto/32 :goto_e9

    nop

    nop

    :goto_1c2
    iget-object v0, v0, Libm;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14c

    nop

    nop

    nop

    nop

    :goto_1c3
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto/32 :goto_2f

    nop

    nop

    :goto_1c4
    check-cast v1, Ljavax/microedition/khronos/opengles/GL10;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    :goto_1c5
    invoke-interface {v1, v5}, Livl;->getPreview(I)Landroid/graphics/Bitmap;

    move-result-object v1

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

    :goto_1c6
    invoke-virtual {v3, v2}, Lsuu;->e(Ljava/lang/Object;)Z

    goto/32 :goto_15f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c7
    iget-object v1, v0, Libm;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c8
    check-cast v9, Litg;

    nop

    nop

    goto/32 :goto_17f

    nop

    nop

    nop

    nop

    :goto_1c9
    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/32 :goto_ce

    nop

    nop

    nop

    nop

    nop

    :goto_1ca
    iget-object v1, v0, Libm;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_1bd

    nop

    nop

    nop

    nop

    :goto_1cb
    if-gtz v13, :cond_26

    nop

    nop

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    :cond_26
    goto/32 :goto_155

    nop

    nop

    nop

    nop

    nop

    :goto_1cc
    iget-object v0, v0, Libm;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_1cd
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1ce
    iget-object v0, v1, Lidz;->m:Lfwv;

    nop

    nop

    nop

    goto/32 :goto_95

    nop

    nop
.end method

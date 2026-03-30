.class public final synthetic Llmx;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iput p2, p0, Llmx;->b:I

    nop

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
    iput-object p1, p0, Llmx;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Llqr;I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iput p2, p0, Llmx;->b:I

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    :goto_2
    return-void

    nop

    :goto_3
    iput-object p1, p0, Llmx;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final run()V
    .locals 9

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto/32 :goto_14f

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-nez v1, :cond_0

    nop

    goto/32 :goto_180

    nop

    nop

    :cond_0
    goto/32 :goto_cc

    nop

    nop

    :goto_2
    iget v3, p0, Llmx;->b:I

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v2, 0x7f0b0243

    nop

    nop

    goto/32 :goto_ed

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v4, v0, Llpu;->b:Lowu;

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

    :goto_5
    move-object v0, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b9

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    :pswitch_0
    goto/32 :goto_182

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_8
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/32 :goto_12e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0, v4}, Lcom/google/android/apps/camera/ui/views/CutoutBar;->setVisibility(I)V

    goto/32 :goto_118

    nop

    nop

    :goto_b
    invoke-virtual {p0}, Lows;->close()V

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object p0, p0, Llus;->g:Lcom/google/android/apps/camera/ui/views/CutoutBar;

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v1, p0}, Lows;->d(Lpci;)V

    goto/32 :goto_171

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v1, v2}, Lows;->d(Lpci;)V

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    :goto_f
    check-cast p0, Landroid/content/Context;

    nop

    nop

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    nop

    :goto_10
    sget-object v0, Lkotlinx/coroutines/android/cMC/QBzQbzDQvUUZ;->TpUOzsPWxRU:Ljava/lang/String;

    nop

    goto/32 :goto_15b

    nop

    nop

    nop

    nop

    :goto_11
    const-string v0, "HeadingSensor.RegisterAccelerometer"

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_12
    iget-object v1, v0, Llpu;->v:Lfwv;

    nop

    goto/32 :goto_109

    nop

    nop

    nop

    :goto_13
    goto/16 :goto_13e

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_13d

    nop

    nop

    nop

    :goto_15
    iget-object p0, p0, Llmx;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_16
    invoke-interface {v2, v3, v4}, Loyd;->cL(Lpcm;Ljava/util/concurrent/Executor;)Lpci;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_c6

    nop

    nop

    nop

    nop

    :goto_17
    const/4 v3, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_131

    nop

    nop

    nop

    nop

    :goto_18
    check-cast p0, Llvs;

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

    :goto_19
    iget-object v4, v0, Llpu;->b:Lowu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    :goto_1a
    if-nez v0, :cond_1

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    :cond_1
    goto/32 :goto_104

    nop

    nop

    nop

    :goto_1b
    return-void

    nop

    :pswitch_1
    goto/32 :goto_103

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object v1, v0, Llpu;->q:Landroid/widget/ImageView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_181

    nop

    nop

    :goto_1d
    return-void

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_13b

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object p0, p0, Llmx;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_12b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    const v0, 0x18

    nop

    nop

    goto/32 :goto_166

    nop

    nop

    nop

    nop

    :goto_21
    iget-object v0, v0, Llvk;->b:Landroid/hardware/SensorManager;

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    :goto_22
    invoke-interface {v0}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_15c

    nop

    nop

    :goto_23
    const v2, 0x7f0b0245

    nop

    goto/32 :goto_176

    nop

    nop

    :goto_24
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_2
    goto/32 :goto_14e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    check-cast p0, Ljava/lang/Throwable;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_df

    nop

    nop

    nop

    nop

    :goto_26
    iget-object v1, v0, Llpu;->v:Lfwv;

    nop

    nop

    goto/32 :goto_e2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-interface {v3, v2, v4}, Loyd;->cL(Lpcm;Ljava/util/concurrent/Executor;)Lpci;

    move-result-object v2

    nop

    goto/32 :goto_137

    nop

    nop

    nop

    nop

    :goto_28
    const v2, 0x7f0b0414

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-interface {p0, v0}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    goto/32 :goto_119

    nop

    nop

    nop

    nop

    :goto_2a
    check-cast v1, Landroid/widget/TextView;

    nop

    nop

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/views/CutoutBar;->invalidate()V

    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {v1}, Lfwv;->i()Lows;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_10a

    nop

    nop

    nop

    :goto_2d
    iget-object v0, v1, Llwr;->e:Ljava/util/concurrent/locks/ReentrantLock;

    nop

    goto/32 :goto_15e

    nop

    nop

    nop

    :goto_2e
    const/16 v3, 0x12

    nop

    nop

    nop

    nop

    goto/32 :goto_e9

    nop

    nop

    nop

    :goto_2f
    iget-object v1, v0, Llpu;->v:Lfwv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_114

    nop

    nop

    nop

    nop

    :goto_30
    const v2, 0x7f0b01e1

    nop

    goto/32 :goto_14c

    nop

    nop

    nop

    nop

    :goto_31
    iget-object p0, p0, Llwj;->a:Ljava/io/File;

    nop

    nop

    nop

    goto/32 :goto_100

    nop

    nop

    nop

    nop

    :goto_32
    iget-object v2, v0, Llvk;->b:Landroid/hardware/SensorManager;

    nop

    nop

    goto/32 :goto_e5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_de

    nop

    nop

    nop

    nop

    :goto_34
    invoke-interface {v3, v2, v4}, Loyd;->cL(Lpcm;Ljava/util/concurrent/Executor;)Lpci;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    :goto_35
    iget-object p0, v1, Llwr;->e:Ljava/util/concurrent/locks/ReentrantLock;

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_36
    check-cast p0, Llvo;

    nop

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    :goto_37
    const-string v1, "ImageShadowTask failed because it was interrupted."

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_38
    check-cast p0, Llmh;

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    :goto_39
    return-void

    nop

    nop

    nop

    nop

    :goto_3a
    goto/32 :goto_16e

    nop

    nop

    :goto_3b
    check-cast p0, Llwp;

    nop

    nop

    nop

    goto/32 :goto_189

    nop

    nop

    :goto_3c
    const/4 v0, 0x0

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

    :goto_3d
    invoke-virtual {v0, v1}, Lnne;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-interface {v3, v2, v8}, Loyd;->cL(Lpcm;Ljava/util/concurrent/Executor;)Lpci;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_170

    nop

    nop

    :goto_3f
    if-eqz v0, :cond_2

    nop

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

    :cond_2
    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_41
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    nop

    goto/32 :goto_130

    nop

    nop

    nop

    nop

    :goto_42
    const/16 v2, 0xf69

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_174

    nop

    nop

    nop

    nop

    nop

    :goto_43
    const/4 v5, 0x1

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    return-void

    nop

    :pswitch_3
    goto/32 :goto_c0

    nop

    nop

    nop

    nop

    nop

    :goto_45
    iget-object v1, v0, Llpu;->u:Landroid/view/View;

    nop

    nop

    nop

    nop

    goto/32 :goto_179

    nop

    nop

    nop

    :goto_46
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_47
    const v2, 0x7f0e011f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    :goto_48
    const/4 v6, 0x3

    nop

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    :goto_49
    invoke-virtual {v1, v2}, Lows;->d(Lpci;)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_4a
    invoke-virtual {p0}, Lijm;->a()V

    goto/32 :goto_10e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    iget-object p0, p0, Llus;->g:Lcom/google/android/apps/camera/ui/views/CutoutBar;

    nop

    nop

    nop

    goto/32 :goto_ea

    nop

    nop

    nop

    :goto_4c
    iget-object v2, v0, Llpu;->l:Loyd;

    nop

    goto/32 :goto_c5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    check-cast p0, Llrs;

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :goto_4e
    iget-object v1, p0, Llvo;->j:Lhzb;

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_4f
    iget-object v1, v0, Llpu;->p:Landroid/widget/TextView;

    nop

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

    :goto_50
    iget-object p0, p0, Llmx;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_16f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_51
    iget-object p0, p0, Llvo;->a:Landroid/hardware/SensorManager;

    nop

    nop

    nop

    nop

    goto/32 :goto_c9

    nop

    nop

    nop

    nop

    nop

    :goto_52
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/32 :goto_17c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/32 :goto_18a

    nop

    nop

    nop

    nop

    nop

    :goto_54
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/32 :goto_11c

    nop

    nop

    nop

    :goto_55
    new-instance v3, Llmy;

    nop

    goto/32 :goto_dc

    nop

    nop

    nop

    :goto_56
    invoke-virtual {p0, v0}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    check-cast v1, Landroid/widget/ImageView;

    nop

    nop

    nop

    nop

    goto/32 :goto_155

    nop

    nop

    nop

    nop

    :goto_58
    new-instance v3, Llpt;

    nop

    nop

    goto/32 :goto_107

    nop

    nop

    :goto_59
    iget-object v2, v0, Llpu;->h:Ltud;

    nop

    nop

    nop

    nop

    goto/32 :goto_cd

    nop

    nop

    nop

    :goto_5a
    monitor-enter v0

    nop

    nop

    nop

    :try_start_0
    move-object v1, p0

    nop

    nop

    nop

    nop

    check-cast v1, Lcom/google/android/apps/camera/processing/ProcessingService;

    nop

    nop

    nop

    nop

    iput-boolean v5, v1, Lcom/google/android/apps/camera/processing/ProcessingService;->g:Z

    nop

    nop

    nop

    move-object v1, p0

    nop

    nop

    nop

    nop

    check-cast v1, Lcom/google/android/apps/camera/processing/ProcessingService;

    nop

    nop

    nop

    iget-boolean v1, v1, Lcom/google/android/apps/camera/processing/ProcessingService;->h:Z

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_3

    nop

    nop

    check-cast p0, Lcom/google/android/apps/camera/processing/ProcessingService;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Lcom/google/android/apps/camera/processing/ProcessingService;->c()V

    :cond_3
    monitor-exit v0

    nop

    nop

    return-void

    nop

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    monitor-exit v0

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    :goto_5b
    invoke-direct {v2, p0, v6}, Llpt;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_99

    nop

    nop

    nop

    nop

    :goto_5c
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_5d
    iput-object v1, v0, Llmz;->i:Landroid/widget/TextView;

    nop

    nop

    goto/32 :goto_146

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    goto/32 :goto_50

    nop

    nop

    :goto_5f
    return-void

    nop

    nop

    nop

    nop

    :pswitch_4
    goto/32 :goto_c1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_60
    invoke-virtual {v0, p0, v1, v6}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :goto_61
    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_62
    iget-object v4, v0, Llpu;->b:Lowu;

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_63
    invoke-virtual {p0}, Llrs;->d()V

    goto/32 :goto_178

    nop

    nop

    :goto_64
    const/16 v3, 0xd

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_65
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_111

    nop

    nop

    nop

    nop

    nop

    :goto_66
    iget-object v1, v0, Llvk;->d:Landroid/hardware/Sensor;

    nop

    nop

    goto/32 :goto_10f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_67
    rem-int v0, v0, v1

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

    nop

    :goto_68
    iget-object v2, v0, Llpu;->k:Loyd;

    nop

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

    :goto_69
    iget-object v1, v0, Llpu;->v:Lfwv;

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    throw p0

    nop

    nop

    nop

    nop

    :pswitch_5
    goto/32 :goto_e0

    nop

    nop

    nop

    nop

    :goto_6c
    if-eqz v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    :cond_4
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    iget v0, v0, Lhmc;->d:F

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    monitor-enter v0

    nop

    :try_start_1
    iget-object p0, p0, Llmx;->a:Ljava/lang/Object;

    nop

    nop

    nop

    check-cast p0, Llqr;

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Llqr;->a()V

    monitor-exit v0

    nop

    nop

    nop

    nop

    return-void

    nop

    :catchall_2
    move-exception p0

    nop

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto/32 :goto_169

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    new-instance v0, Ljava/lang/RuntimeException;

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_70
    invoke-virtual {v1, v2}, Lows;->d(Lpci;)V

    goto/32 :goto_150

    nop

    nop

    nop

    nop

    :goto_71
    return-void

    nop

    nop

    :pswitch_6
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_72
    iput-object v1, v0, Llpu;->p:Landroid/widget/TextView;

    nop

    nop

    nop

    goto/32 :goto_126

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_73
    iget-object v0, v0, Llqr;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    :goto_74
    check-cast v0, Lhdc;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11b

    nop

    nop

    nop

    :goto_75
    iget-object v4, v0, Llpu;->b:Lowu;

    nop

    nop

    nop

    goto/32 :goto_dd

    nop

    nop

    nop

    nop

    :goto_76
    iget-object v0, p0, Llvo;->c:Landroid/hardware/Sensor;

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_77
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_121

    nop

    nop

    nop

    nop

    nop

    :goto_78
    move-object v1, p0

    nop

    goto/32 :goto_da

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_79
    new-instance v3, Llmy;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_165

    nop

    nop

    :goto_7a
    invoke-interface {v2, v3, p0}, Loyd;->cL(Lpcm;Ljava/util/concurrent/Executor;)Lpci;

    move-result-object p0

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

    :goto_7b
    iput-object v1, v0, Llpu;->s:Landroid/view/View;

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    iget-object v0, p0, Llus;->e:Loyd;

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_7d
    const-string v1, "Could not decode preview file: "

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    :goto_7e
    invoke-virtual {p0, v7}, Lcom/google/android/apps/camera/ui/views/CutoutBar;->setVisibility(I)V

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    if-eqz v0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    :cond_5
    goto/32 :goto_141

    nop

    nop

    nop

    :goto_80
    iget-object v8, v0, Llpu;->b:Lowu;

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_81
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_82
    iget-object p0, v0, Llmz;->a:Lowu;

    nop

    nop

    nop

    nop

    goto/32 :goto_17a

    nop

    nop

    nop

    nop

    nop

    :goto_83
    invoke-virtual {p0, v1, v0, v6}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_84
    new-instance v0, Landroid/content/Intent;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_85
    const/4 v4, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_86
    iget-object p0, p0, Llmh;->a:Lcom/google/android/apps/camera/prewarm/ProcessingBoostService;

    nop

    nop

    nop

    goto/32 :goto_135

    nop

    nop

    nop

    nop

    :goto_87
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    :goto_88
    invoke-virtual {v1}, Lfwv;->i()Lows;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ec

    nop

    nop

    :goto_89
    iget-object v0, p0, Llvo;->c:Landroid/hardware/Sensor;

    nop

    nop

    nop

    nop

    goto/32 :goto_17b

    nop

    nop

    :goto_8a
    iget-object v0, p0, Llus;->g:Lcom/google/android/apps/camera/ui/views/CutoutBar;

    nop

    goto/32 :goto_6c

    nop

    nop

    :goto_8b
    invoke-virtual {v1}, Lfwv;->i()Lows;

    move-result-object v1

    nop

    nop

    goto/32 :goto_d7

    nop

    nop

    :goto_8c
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_8d
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    goto/32 :goto_101

    nop

    nop

    nop

    :goto_8e
    iget-object v4, v0, Llpu;->b:Lowu;

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_8f
    invoke-static {v0}, Lnnr;->b(F)I

    move-result v0

    nop

    nop

    goto/32 :goto_138

    nop

    nop

    nop

    :goto_90
    invoke-interface {v2, v3, v4}, Loyd;->cL(Lpcm;Ljava/util/concurrent/Executor;)Lpci;

    move-result-object v2

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

    :goto_91
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto/32 :goto_154

    nop

    nop

    nop

    nop

    :goto_92
    iget-object v1, v0, Llvk;->c:Landroid/hardware/Sensor;

    nop

    nop

    nop

    nop

    goto/32 :goto_125

    nop

    nop

    nop

    nop

    :goto_93
    const-string v1, "HeadingSensor.RegisterMagneticSensor"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_147

    nop

    nop

    nop

    nop

    nop

    :goto_94
    iget-object v1, v0, Llvk;->c:Landroid/hardware/Sensor;

    nop

    nop

    nop

    goto/32 :goto_ae

    nop

    nop

    :goto_95
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_be

    nop

    nop

    :goto_96
    iput-object v1, v0, Llpu;->n:Landroid/widget/TextView;

    nop

    nop

    goto/32 :goto_102

    nop

    nop

    nop

    nop

    nop

    :goto_97
    move-object v0, p0

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

    :goto_98
    const-class v1, Lcom/google/android/apps/camera/processing/ProcessingService;

    nop

    goto/32 :goto_81

    nop

    nop

    :goto_99
    iget-object v3, v0, Llpu;->d:Loyd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c7

    nop

    nop

    nop

    nop

    :goto_9a
    iget-object p0, v0, Llwr;->e:Ljava/util/concurrent/locks/ReentrantLock;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_9b
    return-void

    nop

    nop

    :goto_9c
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9d
    iget-object v2, v1, Llwr;->e:Ljava/util/concurrent/locks/ReentrantLock;

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

    :goto_9e
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/32 :goto_13a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9f
    invoke-virtual {p0}, Lscs;->b()Lsdo;

    move-result-object p0

    nop

    nop

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

    :goto_a0
    iput v0, p0, Lcom/google/android/apps/camera/ui/views/CutoutBar;->f:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a1
    invoke-virtual {v2, p0, v1, v6}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :goto_a2
    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    :goto_a3
    iget-object v0, p0, Llwp;->d:Lrss;

    nop

    goto/32 :goto_f1

    nop

    nop

    :goto_a4
    iget-object p0, p0, Llmx;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c2

    nop

    nop

    :goto_a5
    const/4 v7, 0x0

    nop

    packed-switch v3, :pswitch_data_0

    goto/32 :goto_116

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a6
    iget-object v3, v0, Llpu;->c:Loyd;

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a7
    invoke-direct {v3, p0, v4}, Llmy;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_4

    nop

    nop

    :goto_a8
    move-object v0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_f3

    nop

    nop

    :goto_a9
    invoke-virtual {v1, v2}, Landroid/view/ViewStub;->setLayoutResource(I)V

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_aa
    invoke-virtual {v1, v2}, Lpic;->D(I)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_115

    nop

    nop

    nop

    nop

    :goto_ab
    invoke-virtual {v1, v2}, Lows;->d(Lpci;)V

    goto/32 :goto_26

    nop

    nop

    :goto_ac
    new-instance v2, Lkjw;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14b

    nop

    nop

    nop

    nop

    nop

    :goto_ad
    iget-object v0, v0, Llwr;->e:Ljava/util/concurrent/locks/ReentrantLock;

    nop

    nop

    nop

    nop

    goto/32 :goto_18c

    nop

    nop

    :goto_ae
    if-nez v1, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_e6

    nop

    nop

    :cond_6
    goto/32 :goto_32

    nop

    nop

    nop

    :goto_af
    invoke-direct {v2, p0, v4}, Llpt;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    :goto_b0
    invoke-interface {v2, v3, v4}, Loyd;->cL(Lpcm;Ljava/util/concurrent/Executor;)Lpci;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_db

    nop

    nop

    :goto_b1
    invoke-static {v2}, Loxz;->a(Loyd;)Loyd;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    :goto_b2
    iget-object v0, p0, Llmx;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_c8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b3
    const/16 v3, 0xf

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18b

    nop

    nop

    nop

    :goto_b4
    iget-object v4, v0, Llpu;->b:Lowu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    :goto_b5
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_7
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_b6
    iget-object v1, v0, Llvk;->d:Landroid/hardware/Sensor;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_b7
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_8
    goto/32 :goto_e4

    nop

    nop

    nop

    :goto_b8
    iget-object p0, p0, Llmx;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b9
    check-cast v0, Llwr;

    nop

    goto/32 :goto_f7

    nop

    nop

    nop

    :goto_ba
    if-lez v0, :cond_7

    nop

    goto/32 :goto_163

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_162

    nop

    :goto_bb
    check-cast v0, Llpu;

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

    :goto_bc
    iget-object v1, v0, Llpu;->u:Landroid/view/View;

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

    nop

    :goto_bd
    new-instance v2, Llpt;

    nop

    nop

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    nop

    nop

    :goto_be
    check-cast v1, Landroid/widget/TextView;

    nop

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

    :goto_bf
    invoke-direct {v2, p0, v3}, Lkjw;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_c0
    iget-object p0, p0, Llmx;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13c

    nop

    nop

    nop

    nop

    :goto_c1
    iget-object p0, p0, Llmx;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    :goto_c2
    move-object v0, p0

    nop

    goto/32 :goto_12c

    nop

    nop

    nop

    nop

    nop

    :goto_c3
    iput-object v1, v0, Llpu;->m:Landroid/widget/TextView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_151

    nop

    nop

    nop

    :goto_c4
    new-instance v3, Llpt;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_167

    nop

    nop

    nop

    nop

    :goto_c5
    invoke-virtual {v1}, Lfwv;->i()Lows;

    move-result-object v1

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c6
    invoke-virtual {v1, v2}, Lows;->d(Lpci;)V

    goto/32 :goto_175

    nop

    nop

    nop

    :goto_c7
    iget-object v6, v0, Llpu;->b:Lowu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_110

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c8
    check-cast v0, Llqr;

    nop

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    :goto_c9
    invoke-virtual {p0, v1, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ca
    iget-object v1, v0, Llpu;->u:Landroid/view/View;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_cb
    check-cast p0, Llwj;

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

    :goto_cc
    iget-object v0, v0, Llvk;->b:Landroid/hardware/SensorManager;

    nop

    nop

    goto/32 :goto_17f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_cd
    invoke-virtual {v1}, Lfwv;->i()Lows;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_183

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ce
    move-object v0, p0

    nop

    nop

    nop

    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_cf
    iput-object v1, v0, Llpu;->r:Landroid/widget/ImageView;

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

    :goto_d0
    iget-object v1, v0, Llpu;->u:Landroid/view/View;

    nop

    nop

    goto/32 :goto_12d

    nop

    nop

    nop

    nop

    :goto_d1
    invoke-virtual {v1, p0}, Lows;->d(Lpci;)V

    goto/32 :goto_156

    nop

    nop

    nop

    nop

    nop

    :goto_d2
    iget-object v3, v0, Llpu;->g:Loyd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    :goto_d3
    iget-object v3, v0, Llpu;->e:Loyd;

    nop

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d4
    iget-object v0, p0, Llvs;->l:Llpw;

    nop

    goto/32 :goto_108

    nop

    nop

    :goto_d5
    check-cast p0, Lows;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_d6
    return-void

    nop

    :pswitch_9
    goto/32 :goto_173

    nop

    nop

    nop

    nop

    :goto_d7
    new-instance v2, Llmy;

    nop

    nop

    goto/32 :goto_172

    nop

    nop

    nop

    :goto_d8
    invoke-direct {v2, p0, v3}, Lkjw;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_d9
    iget-object v3, v0, Llpu;->f:Loyd;

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    nop

    :goto_da
    check-cast v1, Llwr;

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    :goto_db
    invoke-virtual {v1, v2}, Lows;->d(Lpci;)V

    goto/32 :goto_123

    nop

    nop

    nop

    :goto_dc
    const/16 v4, 0x13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    nop

    :goto_dd
    invoke-interface {v3, v2, v4}, Loyd;->cL(Lpcm;Ljava/util/concurrent/Executor;)Lpci;

    move-result-object v2

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

    :goto_de
    iput-object v1, v0, Llpu;->u:Landroid/view/View;

    nop

    nop

    goto/32 :goto_186

    nop

    nop

    nop

    nop

    :goto_df
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    goto/32 :goto_105

    nop

    nop

    :goto_e0
    iget-object p0, p0, Llmx;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    :goto_e1
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_a
    goto/32 :goto_15

    nop

    nop

    :goto_e2
    invoke-virtual {v1}, Lfwv;->i()Lows;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_142

    nop

    nop

    :goto_e3
    invoke-virtual {v0}, Lrss;->h()Z

    move-result v0

    nop

    goto/32 :goto_15a

    nop

    nop

    :goto_e4
    iget-object p0, p0, Llmx;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_ce

    nop

    nop

    nop

    nop

    :goto_e5
    invoke-virtual {v2, p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    :goto_e6
    goto/32 :goto_b6

    nop

    nop

    nop

    nop

    :goto_e7
    iget-object v1, v0, Llpu;->w:Lpic;

    nop

    nop

    goto/32 :goto_eb

    nop

    nop

    nop

    nop

    :goto_e8
    check-cast v0, Llvk;

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    :goto_e9
    invoke-direct {v2, p0, v3}, Llmy;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_d2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ea
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/views/CutoutBar;->b:Lhmc;

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    :goto_eb
    const v2, 0x7f0b0077

    nop

    nop

    nop

    goto/32 :goto_aa

    nop

    nop

    :goto_ec
    new-instance v2, Llpt;

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ed
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    nop

    goto/32 :goto_143

    nop

    nop

    nop

    nop

    :goto_ee
    iget-object p0, p0, Llmx;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_ef
    invoke-interface {v0}, Ljvw;->a()V

    goto/32 :goto_136

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f0
    new-instance v2, Llpt;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_f1
    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_ef

    nop

    nop

    nop

    :goto_f2
    iget-object p0, p0, Llmx;->a:Ljava/lang/Object;

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

    :goto_f3
    check-cast v0, Lcom/google/android/apps/camera/processing/ProcessingService;

    nop

    goto/32 :goto_185

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f4
    check-cast p0, Llus;

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    nop

    :goto_f5
    invoke-direct {v2, p0, v3}, Llmy;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_d9

    nop

    nop

    nop

    nop

    nop

    :goto_f6
    const v2, 0x7f0b039b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f7
    iget-object v3, v0, Llwr;->e:Ljava/util/concurrent/locks/ReentrantLock;

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    :goto_f8
    iget-object v2, v2, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->j:Loyn;

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

    nop

    :goto_f9
    invoke-virtual {v1, v2}, Lpic;->D(I)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_117

    nop

    nop

    nop

    :goto_fa
    check-cast v0, Llvk;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    :goto_fb
    throw p0

    nop

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_2
        :pswitch_10
        :pswitch_8
        :pswitch_5
        :pswitch_c
        :pswitch_4
        :pswitch_9
        :pswitch_11
        :pswitch_e
        :pswitch_13
        :pswitch_7
        :pswitch_1
        :pswitch_3
        :pswitch_a
        :pswitch_0
        :pswitch_f
        :pswitch_6
        :pswitch_12
        :pswitch_b
    .end packed-switch

    :goto_fc
    goto/32 :goto_134

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_fd
    iget-object p0, p0, Llwj;->a:Ljava/io/File;

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

    :goto_fe
    invoke-static {v0}, Lnnr;->j(Landroid/view/View;)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_164

    nop

    nop

    nop

    :goto_ff
    iget-object v1, v0, Llmz;->k:Lpic;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f6

    nop

    nop

    nop

    :goto_100
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_101
    goto/16 :goto_157

    nop

    nop

    :pswitch_b
    goto/32 :goto_f2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_102
    iget-object v1, v0, Llpu;->u:Landroid/view/View;

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_103
    iget-object p0, p0, Llmx;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    :goto_104
    iget-object v0, p0, Llus;->g:Lcom/google/android/apps/camera/ui/views/CutoutBar;

    nop

    goto/32 :goto_fe

    nop

    nop

    nop

    nop

    nop

    :goto_105
    throw v0

    nop

    nop

    :pswitch_c
    goto/32 :goto_11d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_106
    invoke-virtual {v1}, Lfwv;->i()Lows;

    move-result-object v1

    nop

    nop

    goto/32 :goto_c4

    nop

    nop

    nop

    nop

    :goto_107
    invoke-direct {v3, p0, v7}, Llpt;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_10b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_108
    invoke-virtual {p0}, Llvs;->g()Llqc;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_145

    nop

    nop

    nop

    nop

    :goto_109
    invoke-virtual {v1}, Lfwv;->i()Lows;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_bd

    nop

    nop

    :goto_10a
    new-instance v2, Llmy;

    nop

    goto/32 :goto_133

    nop

    nop

    nop

    nop

    nop

    :goto_10b
    iget-object p0, v0, Llpu;->b:Lowu;

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10c
    check-cast v2, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;

    nop

    nop

    goto/32 :goto_f8

    nop

    nop

    nop

    nop

    :goto_10d
    add-int v0, v0, v1

    nop

    goto/32 :goto_67

    nop

    nop

    :goto_10e
    return-void

    nop

    nop

    nop

    :pswitch_d
    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    nop

    :goto_10f
    if-nez v1, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    :cond_8
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_110
    invoke-interface {v3, v2, v6}, Loyd;->cL(Lpcm;Ljava/util/concurrent/Executor;)Lpci;

    move-result-object v2

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    :goto_111
    iput v0, p0, Lcom/google/android/apps/camera/ui/views/CutoutBar;->f:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_112
    iget-object v2, v0, Llvk;->b:Landroid/hardware/SensorManager;

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_113
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_114
    invoke-virtual {v1}, Lfwv;->i()Lows;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_115
    check-cast v1, Landroid/view/ViewStub;

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

    :goto_116
    iget-object p0, p0, Llmx;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_117
    check-cast v1, Landroid/widget/TextView;

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_118
    return-void

    nop

    nop

    nop

    :pswitch_e
    goto/32 :goto_122

    nop

    nop

    nop

    nop

    nop

    :goto_119
    check-cast p0, Lscz;

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_11a
    new-instance v2, Lkjw;

    nop

    nop

    nop

    goto/32 :goto_b3

    nop

    nop

    :goto_11b
    invoke-virtual {v0}, Lhdc;->c()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_139

    nop

    nop

    :goto_11c
    iget-object v1, v0, Llpu;->s:Landroid/view/View;

    nop

    goto/32 :goto_11a

    nop

    nop

    nop

    :goto_11d
    iget-object p0, p0, Llmx;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    :goto_11e
    goto :goto_11f

    nop

    nop

    nop

    nop

    :catch_0
    move-exception v3

    nop

    nop

    nop

    nop

    :try_start_2
    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    nop

    nop

    new-instance v4, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    move-object v3, p0

    nop

    nop

    nop

    nop

    nop

    check-cast v3, Llwf;

    nop

    nop

    invoke-virtual {v3, v0}, Llwf;->J(Ljava/lang/String;)V

    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_11f
    new-instance v0, Lmla;

    nop

    nop

    nop

    sget-object v4, Lpsz;->c:Lpsz;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v0, v4}, Lmla;-><init>(Lpsz;)V

    invoke-virtual {v0, v3}, Lmla;->a(Lcom/google/android/libraries/camera/exif/ExifInterface;)V

    check-cast p0, Llwf;

    nop

    nop

    nop

    invoke-virtual {p0, v2, v0}, Llwf;->s([BLmla;)Lsui;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catch_1
    :goto_120
    goto/32 :goto_35

    nop

    nop

    nop

    :goto_121
    sget-object v2, Lcom/google/android/apps/camera/debug/metrics/Rn/hhAHoOiyE;->mTtWaEWWBJVLXek:Ljava/lang/String;

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_122
    iget-object p0, p0, Llmx;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_123
    iget-object v1, v0, Llpu;->v:Lfwv;

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    :goto_124
    invoke-virtual {v1}, Lfwv;->i()Lows;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    :goto_125
    if-nez v1, :cond_9

    nop

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_112

    nop

    nop

    nop

    :goto_126
    iget-object v1, v0, Llpu;->u:Landroid/view/View;

    nop

    nop

    goto/32 :goto_140

    nop

    nop

    nop

    nop

    nop

    :goto_127
    iput-object v1, v0, Llpu;->o:Landroid/widget/TextView;

    nop

    nop

    nop

    goto/32 :goto_bc

    nop

    nop

    :goto_128
    new-instance v2, Lkjw;

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    :goto_129
    return-void

    nop

    nop

    nop

    :catch_2
    move-exception p0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_12a
    check-cast v1, Landroid/widget/TextView;

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    :goto_12b
    check-cast p0, Llwj;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_fd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12c
    check-cast v0, Llmz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ff

    nop

    nop

    nop

    :goto_12d
    const v2, 0x7f0b0415

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    :goto_12e
    return-void

    nop

    nop

    :goto_12f
    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    nop

    :goto_130
    iput-object v1, v0, Llpu;->t:Landroid/view/View;

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

    :goto_131
    invoke-direct {v2, p0, v3}, Llpt;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_d3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_132
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_133
    invoke-direct {v2, p0, v7}, Llmy;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    :goto_134
    goto/32 :goto_163

    nop

    nop

    nop

    nop

    nop

    :goto_135
    iget-object p0, p0, Lcom/google/android/apps/camera/prewarm/ProcessingBoostService;->a:Lijm;

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_136
    sget-object v0, Lrsa;->a:Lrsa;

    nop

    nop

    goto/32 :goto_149

    nop

    nop

    nop

    nop

    nop

    :goto_137
    invoke-virtual {v1, v2}, Lows;->d(Lpci;)V

    goto/32 :goto_184

    nop

    nop

    nop

    nop

    nop

    :goto_138
    int-to-float v0, v0

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

    :goto_139
    if-nez v0, :cond_a

    nop

    goto/32 :goto_9c

    nop

    nop

    :cond_a
    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    :goto_13a
    iget-object v1, v0, Llpu;->r:Landroid/widget/ImageView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_113

    nop

    nop

    nop

    :goto_13b
    iget-object v0, p0, Llus;->f:Loyd;

    nop

    nop

    nop

    nop

    goto/32 :goto_160

    nop

    nop

    :goto_13c
    check-cast p0, Llvo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    :goto_13d
    iget v0, v0, Lhmc;->d:F

    nop

    nop

    :goto_13e
    goto/32 :goto_a0

    nop

    nop

    nop

    :goto_13f
    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_140
    const v2, 0x7f0b0410

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_141
    sget-object p0, Lcom/google/android/apps/camera/ui/views/CutoutBar;->a:Lsdb;

    nop

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    :goto_142
    new-instance v2, Llmy;

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

    :goto_143
    check-cast v1, Landroid/widget/ImageView;

    nop

    goto/32 :goto_cf

    nop

    nop

    nop

    :goto_144
    iget-object p0, p0, Llmx;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    :try_start_3
    check-cast p0, Llqu;

    nop

    nop

    nop

    nop

    iget-object p0, p0, Llqu;->b:Llpv;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Llpv;->c()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2

    goto/32 :goto_129

    nop

    nop

    :goto_145
    invoke-virtual {p0, v0}, Llqc;->a(Llqe;)V

    goto/32 :goto_e1

    nop

    nop

    nop

    :goto_146
    iget-object v1, v0, Llmz;->j:Lfwv;

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_147
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    :goto_148
    if-eq v1, v2, :cond_b

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

    :cond_b
    goto/32 :goto_6d

    nop

    nop

    nop

    :goto_149
    iput-object v0, p0, Llwp;->d:Lrss;

    nop

    nop

    nop

    nop

    :goto_14a
    goto/32 :goto_71

    nop

    nop

    nop

    :goto_14b
    const/16 v3, 0xe

    nop

    nop

    nop

    nop

    goto/32 :goto_bf

    nop

    nop

    nop

    :goto_14c
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12a

    nop

    nop

    nop

    :goto_14d
    const/16 v0, 0x13db

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_14e
    iget-object p0, p0, Llmx;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_14f
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_f
    goto/32 :goto_168

    nop

    nop

    nop

    nop

    nop

    :goto_150
    iget-object v1, v0, Llpu;->v:Lfwv;

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_151
    iget-object v1, v0, Llpu;->u:Landroid/view/View;

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_152
    check-cast v1, Landroid/widget/TextView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_127

    nop

    nop

    nop

    nop

    :goto_153
    iget-object v1, v0, Llpu;->v:Lfwv;

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_154
    sget-object v0, Llqu;->a:Lsdb;

    nop

    nop

    nop

    goto/32 :goto_13f

    nop

    nop

    nop

    nop

    :goto_155
    iput-object v1, v0, Llpu;->q:Landroid/widget/ImageView;

    nop

    nop

    nop

    goto/32 :goto_ca

    nop

    nop

    :goto_156
    return-void

    nop

    nop

    nop

    :goto_157
    :try_start_4
    move-object v3, p0

    nop

    check-cast v3, Llwr;

    nop

    nop

    nop

    nop

    nop

    iget-object v3, v3, Llwr;->d:Llxj;

    nop

    nop

    invoke-virtual {v3}, Llxj;->a()Ljava/io/File;

    move-result-object v3

    nop

    nop

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lshf;->h(Ljava/io/File;)[B

    move-result-object v2

    nop

    nop
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :try_start_5
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    nop

    nop

    nop

    nop

    nop

    new-instance v4, Ljava/io/ByteArrayInputStream;

    nop

    nop

    nop

    nop

    invoke-direct {v4, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v3, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    nop

    nop

    nop

    if-nez v2, :cond_c

    nop

    nop

    nop

    nop

    nop

    move-object v2, p0

    nop

    nop

    nop

    check-cast v2, Llwr;

    nop

    nop

    nop

    nop

    iget-object v2, v2, Llwr;->d:Llxj;

    nop

    nop

    nop

    invoke-virtual {v2}, Llxj;->a()Ljava/io/File;

    move-result-object v2

    nop

    nop

    nop

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    new-instance v3, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    check-cast p0, Llwf;

    nop

    invoke-virtual {p0, v1}, Llwf;->J(Ljava/lang/String;)V

    goto :goto_158

    nop

    nop

    nop

    :cond_c
    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    nop

    nop

    nop

    check-cast p0, Llwf;

    nop

    nop

    invoke-virtual {p0, v1}, Llwf;->ad(Landroid/graphics/Bitmap;)V

    goto :goto_158

    nop

    nop

    :catchall_3
    move-exception p0

    nop

    nop

    goto/16 :goto_12f

    nop

    nop

    :catch_3
    move-exception v1

    nop

    move-object v3, p0

    nop

    nop

    nop

    check-cast v3, Llwr;

    nop

    nop

    nop

    iget-object v3, v3, Llwr;->d:Llxj;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Llxj;->a()Ljava/io/File;

    move-result-object v3

    nop

    nop

    nop

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    nop

    new-instance v4, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    nop

    nop

    nop

    nop

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    check-cast p0, Llwf;

    nop

    invoke-virtual {p0, v1}, Llwf;->J(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :goto_158
    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    :goto_159
    const-string v0, "Could not read exif: "

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    :goto_15a
    if-nez v0, :cond_d

    nop

    goto/32 :goto_14a

    nop

    nop

    :cond_d
    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    :goto_15b
    invoke-interface {p0, v0}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_15c
    check-cast v0, Lnne;

    nop

    nop

    nop

    goto/32 :goto_161

    nop

    nop

    :goto_15d
    iget-object p0, p0, Llmx;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_f4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15e
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/32 :goto_188

    nop

    nop

    :goto_15f
    const v2, 0x7f0b0271

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    :goto_160
    invoke-interface {v0}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    :goto_161
    sget-object v1, Lnne;->k:Lnne;

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_162
    goto/32 :goto_fc

    nop

    nop

    :goto_163
    goto/32 :goto_159

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_164
    if-nez v0, :cond_e

    nop

    nop

    nop

    nop

    goto/32 :goto_9c

    nop

    :cond_e
    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_165
    const/16 v4, 0x14

    nop

    nop

    nop

    nop

    goto/32 :goto_18d

    nop

    nop

    nop

    nop

    nop

    :goto_166
    const v1, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_10d

    nop

    nop

    :goto_167
    invoke-direct {v3, p0, v5}, Llpt;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_b4

    nop

    nop

    :goto_168
    iget-object p0, p0, Llmx;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_cb

    nop

    nop

    nop

    :goto_169
    throw p0

    nop

    :goto_16a
    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :goto_16b
    iget-object v0, v0, Llqr;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16c
    const/16 v2, 0x9

    nop

    goto/32 :goto_148

    nop

    nop

    :goto_16d
    iget-object v2, v0, Llpu;->j:Loyd;

    nop

    goto/32 :goto_124

    nop

    nop

    :goto_16e
    iget v1, p0, Lcom/google/android/apps/camera/ui/views/CutoutBar;->c:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16f
    move-object v0, p0

    nop

    nop

    goto/32 :goto_fa

    nop

    nop

    :goto_170
    invoke-virtual {v1, v2}, Lows;->d(Lpci;)V

    goto/32 :goto_153

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_171
    return-void

    nop

    nop

    nop

    nop

    :pswitch_10
    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    :goto_172
    const/16 v3, 0x11

    nop

    nop

    goto/32 :goto_f5

    nop

    nop

    nop

    nop

    nop

    :goto_173
    iget-object v0, p0, Llmx;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_187

    nop

    nop

    nop

    nop

    :goto_174
    invoke-static {v1, v2, v0, p0}, Lmf;->f(Ljava/lang/String;CLscz;Ljava/lang/Throwable;)V

    goto/32 :goto_d6

    nop

    nop

    nop

    nop

    :goto_175
    iget-object v1, v0, Llpu;->v:Lfwv;

    nop

    nop

    goto/32 :goto_16d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_176
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_152

    nop

    nop

    nop

    :goto_177
    if-nez v3, :cond_f

    nop

    goto/32 :goto_120

    nop

    :cond_f
    :try_start_6
    invoke-virtual {v2}, Llxj;->a()Ljava/io/File;

    move-result-object v2

    nop

    nop

    nop

    nop

    invoke-static {v2}, Lshf;->h(Ljava/io/File;)[B

    move-result-object v2

    nop

    nop

    nop

    nop

    nop
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    nop

    nop

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v5, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    nop

    nop

    nop

    nop

    nop

    array-length v4, v2

    nop

    nop

    nop

    invoke-static {v2, v7, v4, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v4, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    nop

    iget v3, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    nop

    nop

    nop

    nop

    nop
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    new-instance v3, Lcom/google/android/libraries/camera/exif/ExifInterface;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v3}, Lcom/google/android/libraries/camera/exif/ExifInterface;-><init>()V

    invoke-virtual {v3, v2}, Lcom/google/android/libraries/camera/exif/ExifInterface;->q([B)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/32 :goto_11e

    nop

    nop

    :goto_178
    return-void

    nop

    nop

    :pswitch_11
    goto/32 :goto_144

    nop

    nop

    :goto_179
    const v2, 0x7f0b0246

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_17a
    iget-object v0, v0, Llmz;->b:Loyd;

    nop

    nop

    goto/32 :goto_18e

    nop

    nop

    nop

    nop

    :goto_17b
    iget-object v1, p0, Llvo;->j:Lhzb;

    nop

    nop

    goto/32 :goto_17d

    nop

    nop

    :goto_17c
    iget-object v1, v0, Llpu;->t:Landroid/view/View;

    nop

    nop

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    :goto_17d
    iget-object p0, p0, Llvo;->a:Landroid/hardware/SensorManager;

    nop

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    :goto_17e
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_9
    move-object v2, p0

    nop

    check-cast v2, Llwr;

    nop

    nop

    iget-object v2, v2, Llwr;->d:Llxj;

    nop

    nop

    invoke-virtual {v2}, Llxj;->b()Z

    move-result v3

    nop

    nop
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/32 :goto_177

    nop

    nop

    :goto_17f
    invoke-virtual {v0, p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    :goto_180
    goto/32 :goto_b5

    nop

    nop

    nop

    nop

    :goto_181
    const v2, 0x7f080225

    nop

    nop

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    nop

    :goto_182
    iget-object p0, p0, Llmx;->a:Ljava/lang/Object;

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

    nop

    nop

    :goto_183
    invoke-interface {v2}, Ltud;->a()Ljava/lang/Object;

    move-result-object v2

    nop

    goto/32 :goto_10c

    nop

    nop

    nop

    nop

    nop

    :goto_184
    iget-object v1, v0, Llpu;->v:Lfwv;

    nop

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    :goto_185
    iget-object v0, v0, Lcom/google/android/apps/camera/processing/ProcessingService;->f:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_186
    iget-object v1, v0, Llpu;->u:Landroid/view/View;

    nop

    nop

    nop

    nop

    goto/32 :goto_15f

    nop

    nop

    nop

    :goto_187
    check-cast v0, Llqr;

    nop

    nop

    nop

    goto/32 :goto_16b

    nop

    nop

    nop

    nop

    nop

    :goto_188
    throw p0

    nop

    nop

    nop

    nop

    :pswitch_12
    goto/32 :goto_ee

    nop

    nop

    :goto_189
    iget-object v0, p0, Llwp;->d:Lrss;

    nop

    nop

    goto/32 :goto_e3

    nop

    nop

    nop

    nop

    :goto_18a
    return-void

    nop

    nop

    nop

    nop

    :pswitch_13
    goto/32 :goto_15d

    nop

    nop

    nop

    nop

    :goto_18b
    invoke-direct {v2, p0, v3}, Lkjw;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_132

    nop

    nop

    nop

    nop

    nop

    :goto_18c
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/32 :goto_fb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18d
    invoke-direct {v3, p0, v4}, Llmy;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_18e
    invoke-interface {v0, v2, p0}, Loyd;->cL(Lpcm;Ljava/util/concurrent/Executor;)Lpci;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_d1

    nop

    nop

    nop

    nop

    nop

    nop
.end method

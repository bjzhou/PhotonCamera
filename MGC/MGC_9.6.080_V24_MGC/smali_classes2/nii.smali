.class public final synthetic Lnii;
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

    nop

    nop

    nop

    :goto_0
    iput p3, p0, Lnii;->c:I

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

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    iput-object p2, p0, Lnii;->b:Ljava/lang/Object;

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

    :goto_3
    iput-object p1, p0, Lnii;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    nop
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I[B)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput p3, p0, Lnii;->c:I

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p2, p0, Lnii;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lnii;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_2

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
.end method

.method public constructor <init>(Loac;Ljava/util/ArrayList;I)V
    .locals 0

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
    iput-object p2, p0, Lnii;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput p3, p0, Lnii;->c:I

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

    :goto_3
    iput-object p1, p0, Lnii;->a:Ljava/lang/Object;

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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final run()V
    .locals 14

    goto/32 :goto_bc

    nop

    nop

    nop

    :goto_0
    iget-object v0, v0, Loac;->g:Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto/32 :goto_15b

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lnar;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_10b

    nop

    nop

    nop

    nop

    :goto_3
    iget-wide v12, v12, Lki;->k:J

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_4
    iget v10, v2, Loab;->e:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    :goto_5
    check-cast p0, Lnif;

    nop

    goto/32 :goto_16b

    nop

    nop

    nop

    :goto_6
    if-eqz v1, :cond_0

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_fa

    nop

    nop

    :goto_7
    iget v12, v4, Loaa;->f:F

    nop

    nop

    nop

    goto/32 :goto_137

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    :pswitch_0
    goto/32 :goto_e3

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v7, v5, Loac;->o:Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12d

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_153

    nop

    nop

    nop

    :goto_c
    iget-object p0, p0, Lnii;->b:Ljava/lang/Object;

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

    :goto_d
    iget v13, v4, Loaa;->c:F

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v0, v0, Lnvu;->z:Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;

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

    :goto_f
    check-cast v4, Lki;

    nop

    goto/32 :goto_17e

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v3, v3, Lnph;->b:Ljava/lang/Object;

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

    :goto_11
    iget-object p0, p0, Lnii;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    :goto_12
    if-lt v3, v2, :cond_1

    nop

    nop

    goto/32 :goto_13d

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_95

    nop

    nop

    nop

    nop

    nop

    :goto_13
    check-cast v4, Landroid/net/Uri;

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    :goto_14
    check-cast v4, Loaa;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    :goto_15
    check-cast v0, Lnvu;

    nop

    goto/32 :goto_d5

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual/range {v5 .. v10}, Loac;->v(Llb;IIII)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    nop

    nop

    nop

    goto/32 :goto_16c

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v11, v12, v13}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto/32 :goto_c0

    nop

    nop

    :goto_18
    sget-object p0, Lnti;->a:Lsdb;

    nop

    goto/32 :goto_c9

    nop

    nop

    nop

    :goto_19
    iget-object v2, v1, Locr;->f:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_1
    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/32 :goto_d1

    nop

    nop

    nop

    nop

    :goto_1c
    move-object v2, p0

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

    :goto_1d
    iget-object v0, p0, Lnii;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_101

    nop

    nop

    :goto_1e
    return-void

    nop

    nop

    :pswitch_2
    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {p0, v2, v0, v1}, Lnti;->e(Ljava/lang/String;Ljava/lang/String;[B)V

    goto/32 :goto_c6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    check-cast v0, Lnrj;

    nop

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    :goto_21
    move-object v7, v1

    nop

    nop

    nop

    goto/32 :goto_114

    nop

    nop

    nop

    :goto_22
    check-cast v4, Loac;

    nop

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    :goto_23
    invoke-direct {v5, v4, v8, v6}, Lnzz;-><init>(Loac;Llb;Landroid/view/ViewPropertyAnimator;)V

    goto/32 :goto_81

    nop

    nop

    nop

    :goto_24
    return-void

    nop

    nop

    nop

    nop

    :pswitch_3
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_25
    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto/32 :goto_92

    nop

    nop

    nop

    :goto_26
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    packed-switch v0, :pswitch_data_0

    goto/32 :goto_12b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    check-cast v0, Lnij;

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

    :goto_28
    check-cast v2, Lnti;

    nop

    goto/32 :goto_11c

    nop

    nop

    nop

    nop

    nop

    :goto_29
    goto/16 :goto_17a

    nop

    nop

    nop

    :pswitch_4
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_2a
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_bd

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    if-nez v1, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_157

    nop

    nop

    :cond_2
    goto/32 :goto_156

    nop

    nop

    nop

    nop

    :goto_2c
    check-cast p0, Lnar;

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2d
    iget-object v0, p0, Lnii;->b:Ljava/lang/Object;

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

    :goto_2e
    iget-object v0, p0, Lnii;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    check-cast v2, Loab;

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_31
    add-int/lit8 v3, v3, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13c

    nop

    nop

    :goto_32
    invoke-virtual {v1}, Locr;->b()V

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    :goto_33
    invoke-virtual {v4, v1}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    :goto_34
    goto/32 :goto_140

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-virtual {v10, v6}, Loac;->u(Llb;)Landroid/view/ViewPropertyAnimator;

    move-result-object v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    invoke-direct {v5, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto/32 :goto_136

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-virtual {v5, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    :goto_38
    iget-object p0, p0, Lnii;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_143

    nop

    nop

    :goto_39
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto/32 :goto_9e

    nop

    nop

    :goto_3a
    iget-object p0, p0, Lnii;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_10c

    nop

    nop

    :goto_3b
    iget-object p0, p0, Lnii;->b:Ljava/lang/Object;

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

    :goto_3c
    move-object v4, v5

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_3d
    const v1, 0xd

    nop

    nop

    nop

    nop

    goto/32 :goto_13a

    nop

    nop

    :goto_3e
    monitor-enter v1

    nop

    :try_start_0
    check-cast v0, Ljava/lang/ref/WeakReference;

    nop

    nop

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    nop

    check-cast v0, Landroid/app/Activity;

    nop

    nop

    if-eqz v0, :cond_3

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    if-nez v0, :cond_3

    nop

    nop

    nop

    move-object v0, p0

    nop

    nop

    check-cast v0, Lnij;

    nop

    nop

    nop

    iget-object v0, v0, Lnij;->f:Landroid/widget/PopupWindow;

    nop

    nop

    if-eqz v0, :cond_3

    nop

    check-cast p0, Lnij;

    nop

    iget-object p0, p0, Lnij;->k:Landroid/view/View;

    nop

    nop

    nop

    nop

    if-eqz p0, :cond_3

    nop

    nop

    nop

    invoke-virtual {v0, p0, v3, v3, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    :cond_3
    monitor-exit v1

    nop

    nop

    nop

    nop

    nop

    return-void

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    monitor-exit v1

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_179

    nop

    nop

    nop

    :goto_3f
    if-nez v7, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_183

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_a5

    nop

    nop

    :goto_40
    return-void

    nop

    nop

    nop

    nop

    :pswitch_5
    goto/32 :goto_f3

    nop

    nop

    :goto_41
    iget-object v0, v0, Lnij;->w:Landroid/hardware/display/DisplayManager$DisplayListener;

    nop

    nop

    nop

    nop

    goto/32 :goto_bf

    nop

    nop

    nop

    nop

    :goto_42
    check-cast p0, Landroid/hardware/display/DisplayManager;

    nop

    nop

    nop

    goto/32 :goto_15e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    if-nez v4, :cond_5

    nop

    goto/32 :goto_180

    nop

    nop

    :cond_5
    goto/32 :goto_172

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    invoke-virtual {v0}, Lnrj;->g()Lryb;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_45
    invoke-direct {v1, v0, p0, v2}, Lnri;-><init>(Lnrj;Lpge;Z)V

    goto/32 :goto_148

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    new-instance v1, Lnri;

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_47
    add-int/lit8 v3, v3, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_b5

    nop

    nop

    nop

    nop

    :goto_48
    invoke-virtual {v11, v4}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_182

    nop

    nop

    nop

    :goto_49
    check-cast v1, Lnij;

    nop

    nop

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    :goto_4a
    iget-object v4, p0, Lnii;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_4b
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_6
    goto/32 :goto_84

    nop

    nop

    :goto_4c
    if-lt v6, v5, :cond_6

    nop

    nop

    goto/32 :goto_103

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_4d
    check-cast v7, Lnrm;

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    invoke-virtual {v1, v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    invoke-virtual {v0, p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    goto/32 :goto_10e

    nop

    nop

    nop

    :goto_51
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/32 :goto_b1

    nop

    nop

    nop

    nop

    nop

    :goto_52
    iget-object v7, v4, Loac;->r:Ljava/util/ArrayList;

    nop

    goto/32 :goto_12f

    nop

    nop

    :goto_53
    move-object v4, v0

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

    :goto_54
    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    :goto_55
    iget v7, v2, Loab;->b:I

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_56
    check-cast v4, Lki;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f1

    nop

    nop

    nop

    :goto_57
    iget v8, v2, Loab;->c:I

    nop

    goto/32 :goto_76

    nop

    nop

    :goto_58
    iget-object v11, v2, Loab;->a:Llb;

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

    :goto_59
    invoke-virtual {v1, v2}, Landroid/app/DownloadManager;->remove([J)I

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    iget-object v1, v1, Lnij;->q:Ljava/lang/Object;

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

    nop

    :goto_5b
    check-cast v12, Lki;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_5c
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_16d

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    iget-object v5, p0, Lnii;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :goto_5e
    iget-object v0, p0, Lnii;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_159

    nop

    nop

    :goto_5f
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_60
    monitor-enter v3

    nop

    nop

    nop

    nop

    :try_start_1
    check-cast p0, Lnph;

    nop

    nop

    nop

    nop

    nop

    iget-object p0, p0, Lnph;->a:Landroid/content/SharedPreferences;

    nop

    nop

    nop

    nop

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    nop

    nop

    check-cast v0, Landroid/net/Uri;

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    invoke-interface {p0, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    monitor-exit v3

    nop

    nop

    nop

    return-void

    nop

    :catchall_1
    move-exception p0

    nop

    nop

    monitor-exit v3

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/32 :goto_ee

    nop

    nop

    nop

    :goto_61
    iget-object v6, v4, Loaa;->a:Llb;

    nop

    nop

    nop

    nop

    goto/32 :goto_166

    nop

    nop

    nop

    nop

    nop

    :goto_62
    if-nez v9, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_63
    check-cast v5, Lki;

    nop

    nop

    goto/32 :goto_f0

    nop

    nop

    nop

    nop

    nop

    :goto_64
    invoke-virtual {v1, v4}, Lnpi;->a(Landroid/net/Uri;)Ljava/lang/Long;

    move-result-object v4

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

    :goto_65
    check-cast p0, Loby;

    nop

    goto/32 :goto_110

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_66
    throw p0

    nop

    nop

    nop

    nop

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_f
        :pswitch_2
        :pswitch_8
        :pswitch_5
        :pswitch_9
        :pswitch_b
        :pswitch_c
        :pswitch_7
        :pswitch_11
        :pswitch_13
        :pswitch_1
        :pswitch_10
        :pswitch_3
        :pswitch_0
        :pswitch_a
        :pswitch_12
        :pswitch_d
        :pswitch_e
        :pswitch_4
    .end packed-switch

    :goto_67
    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    nop

    :goto_68
    new-instance v4, Landroid/app/DownloadManager$Request;

    nop

    nop

    goto/32 :goto_10f

    nop

    nop

    nop

    :goto_69
    iget-object p0, p0, Lnii;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_147

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    check-cast v0, Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_171

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    iget-object p0, p0, Lnii;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_f8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    move-object v5, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_139

    nop

    nop

    nop

    nop

    :goto_6d
    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_6e
    goto/32 :goto_31

    nop

    nop

    :goto_6f
    iget-object p0, p0, Lnii;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_eb

    nop

    nop

    nop

    nop

    nop

    :goto_70
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    nop

    nop

    nop

    nop

    :goto_71
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_72
    check-cast v1, Lnij;

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_73
    move-object v1, p0

    nop

    goto/32 :goto_135

    nop

    nop

    :goto_74
    move-object v12, v5

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

    :goto_75
    move-object v2, v4

    nop

    goto/32 :goto_158

    nop

    nop

    nop

    nop

    :goto_76
    iget v9, v2, Loab;->d:I

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_77
    check-cast v0, Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_78
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_7
    goto/32 :goto_106

    nop

    nop

    nop

    :goto_79
    iget-object p0, v0, Lnvu;->t:Lnwp;

    nop

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    nop

    nop

    goto/32 :goto_122

    nop

    nop

    nop

    :goto_7b
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    goto/32 :goto_118

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    move-object v3, p0

    nop

    nop

    nop

    goto/32 :goto_177

    nop

    nop

    :goto_7e
    check-cast p0, Lnar;

    nop

    nop

    nop

    nop

    goto/32 :goto_14c

    nop

    nop

    nop

    :goto_7f
    invoke-interface {v7}, Lnrm;->r()Z

    move-result v7

    nop

    goto/32 :goto_130

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_80
    iget-object v0, p0, Lnii;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_81
    invoke-virtual {v6, v5}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    :goto_82
    iget-object p0, p0, Lnii;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_83
    iget-object v1, v0, Lnvu;->t:Lnwp;

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    :goto_84
    iget-object v0, p0, Lnii;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_104

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_85
    invoke-virtual {v6, v9, v10}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto/32 :goto_170

    nop

    nop

    :goto_86
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/32 :goto_141

    nop

    nop

    nop

    :goto_87
    invoke-virtual {p0}, Lnvw;->j()V

    goto/32 :goto_8

    nop

    nop

    :goto_88
    iget-object v1, v0, Lnrj;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_89
    check-cast p0, Lntu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_132

    nop

    nop

    :goto_8a
    check-cast v2, Lnti;

    nop

    nop

    nop

    goto/32 :goto_df

    nop

    nop

    nop

    nop

    :goto_8b
    check-cast v0, Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_165

    nop

    nop

    nop

    nop

    nop

    :goto_8c
    iget-object v0, p0, Lnii;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    :goto_8d
    check-cast v0, Ljava/lang/String;

    nop

    nop

    goto/32 :goto_d9

    nop

    nop

    nop

    :goto_8e
    iget-object v0, p0, Lnii;->a:Ljava/lang/Object;

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

    :goto_8f
    move-object v9, v1

    nop

    nop

    nop

    :goto_90
    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_91
    invoke-direct {v6, v2, v11, v5}, Lnzx;-><init>(Loac;Llb;Landroid/view/ViewPropertyAnimator;)V

    goto/32 :goto_c8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_92
    return-void

    nop

    nop

    :pswitch_8
    goto/32 :goto_100

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_93
    check-cast p0, Lntu;

    nop

    nop

    nop

    nop

    goto/32 :goto_134

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_94
    move-object v1, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    :goto_95
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

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

    :goto_96
    iget-object v1, v1, Lnij;->q:Ljava/lang/Object;

    nop

    goto/32 :goto_178

    nop

    nop

    :goto_97
    move v6, v3

    nop

    nop

    nop

    nop

    :goto_98
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_99
    return-void

    nop

    nop

    nop

    :pswitch_9
    goto/32 :goto_16a

    nop

    nop

    nop

    nop

    :goto_9a
    iget-object p0, p0, Lnii;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    :goto_9b
    check-cast v0, Lnvu;

    nop

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    :goto_9c
    sub-float/2addr v12, v13

    nop

    nop

    goto/32 :goto_f4

    nop

    nop

    :goto_9d
    return-void

    nop

    nop

    :catchall_2
    move-exception p0

    nop

    nop

    :try_start_2
    monitor-exit v2

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto/32 :goto_66

    nop

    nop

    nop

    :goto_9e
    iget-object v0, p0, Lnii;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_de

    nop

    nop

    nop

    nop

    :goto_9f
    iget-object v0, p0, Lnii;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    :goto_a0
    invoke-virtual {p0, v0, v1}, Lnti;->d(Ljava/lang/String;[B)V

    goto/32 :goto_123

    nop

    nop

    nop

    nop

    nop

    :goto_a1
    invoke-virtual {v9, v7}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :goto_a2
    invoke-virtual {v4, v8}, Loac;->t(Llb;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_a3
    check-cast p0, Lntu;

    nop

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    nop

    :goto_a4
    iget-object v9, v8, Llb;->a:Landroid/view/View;

    nop

    nop

    nop

    nop

    goto/32 :goto_e6

    nop

    nop

    nop

    :goto_a5
    move-object v10, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_ff

    nop

    nop

    :goto_a6
    goto/32 :goto_b0

    nop

    :goto_a7
    check-cast p0, Landroid/view/MotionEvent;

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    :goto_a8
    iget-object p0, p0, Lnii;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_a3

    nop

    nop

    :goto_a9
    check-cast p0, Lmqk;

    nop

    nop

    nop

    nop

    goto/32 :goto_15c

    nop

    nop

    nop

    :goto_aa
    const-string v3, "android.permission.DOWNLOAD_WITHOUT_NOTIFICATION"

    nop

    nop

    goto/32 :goto_c2

    nop

    nop

    :goto_ab
    add-int/lit8 v3, v3, 0x1

    nop

    nop

    goto/32 :goto_17b

    nop

    nop

    nop

    nop

    nop

    :goto_ac
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    nop

    nop

    goto/32 :goto_14d

    nop

    nop

    nop

    nop

    nop

    :goto_ad
    const-string v0, "findBestNodeAndSendMessageAsync() failed because can\'t find node"

    nop

    nop

    goto/32 :goto_16f

    nop

    nop

    nop

    nop

    nop

    :goto_ae
    check-cast v0, Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_af
    goto/32 :goto_67

    nop

    :goto_b0
    goto/32 :goto_119

    nop

    nop

    nop

    nop

    :goto_b1
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_a
    goto/32 :goto_9f

    nop

    nop

    :goto_b2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    nop

    nop

    :goto_b3
    goto/32 :goto_f7

    nop

    nop

    :goto_b4
    new-instance v6, Lnzx;

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

    :goto_b5
    goto :goto_b3

    nop

    nop

    nop

    :goto_b6
    goto/32 :goto_d3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b7
    iget-object p0, p0, Lntu;->l:Lnti;

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

    :goto_b8
    check-cast p0, Lscz;

    nop

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    nop

    :goto_b9
    check-cast v3, Lnph;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_ba
    invoke-static {}, Lowu;->b()V

    goto/32 :goto_169

    nop

    nop

    nop

    nop

    :goto_bb
    if-nez v8, :cond_8

    nop

    goto/32 :goto_e7

    nop

    nop

    :cond_8
    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    :goto_bc
    const v0, 0x12

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_bd
    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

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

    :goto_be
    move-object v3, v0

    nop

    goto/32 :goto_14b

    nop

    nop

    nop

    :goto_bf
    iget-object p0, p0, Lnii;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_c0
    iget-object v12, v10, Loac;->r:Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_120

    nop

    nop

    nop

    nop

    nop

    :goto_c1
    return-void

    nop

    :pswitch_b
    goto/32 :goto_ba

    nop

    nop

    :goto_c2
    invoke-virtual {v1, v3}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_c3
    check-cast v0, Lcom/google/android/apps/camera/ui/layout/MainActivityLayout;

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

    :goto_c4
    iput-object v2, v3, Lnti;->b:Ljava/lang/String;

    nop

    nop

    nop

    nop

    :goto_c5
    goto/32 :goto_10a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c6
    return-void

    nop

    nop

    :pswitch_c
    goto/32 :goto_ca

    nop

    nop

    nop

    nop

    :goto_c7
    if-lez v0, :cond_9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b0

    nop

    :cond_9
    goto/32 :goto_af

    nop

    :goto_c8
    invoke-virtual {v4, v6}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    nop

    nop

    goto/32 :goto_112

    nop

    nop

    nop

    nop

    :goto_c9
    invoke-virtual {p0}, Lscs;->c()Lsdo;

    move-result-object p0

    nop

    nop

    goto/32 :goto_181

    nop

    nop

    :goto_ca
    iget-object v0, p0, Lnii;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_cb
    iget-object v0, p0, Lnii;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_121

    nop

    nop

    nop

    :goto_cc
    check-cast v2, Lnpi;

    nop

    nop

    nop

    goto/32 :goto_be

    nop

    nop

    nop

    :goto_cd
    invoke-virtual {v0}, Lnvu;->s()V

    :goto_ce
    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    :goto_cf
    iget-object v0, p0, Lnii;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_133

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d0
    invoke-virtual {v11, v12}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    goto/32 :goto_e9

    nop

    nop

    nop

    :goto_d1
    return-void

    nop

    nop

    :pswitch_d
    goto/32 :goto_8c

    nop

    nop

    :goto_d2
    check-cast v0, Loac;

    nop

    nop

    goto/32 :goto_f2

    nop

    nop

    nop

    :goto_d3
    iget-object v0, p0, Lnii;->b:Ljava/lang/Object;

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

    :goto_d4
    iget-object v1, v2, Lnpi;->d:Landroid/content/Context;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_aa

    nop

    nop

    nop

    :goto_d5
    iget-object v0, v0, Lnvu;->z:Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;

    nop

    nop

    goto/32 :goto_152

    nop

    nop

    nop

    :goto_d6
    aput-wide v4, v2, v3

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d7
    iget-object v0, v0, Loac;->n:Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    :goto_d8
    invoke-virtual {v5, v2}, Loac;->a(Llb;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

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

    nop

    :goto_d9
    invoke-virtual {p0, v0, v1}, Lnti;->d(Ljava/lang/String;[B)V

    goto/32 :goto_150

    nop

    nop

    :goto_da
    iget-object p0, p0, Lnii;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_89

    nop

    nop

    :goto_db
    monitor-enter v1

    nop

    nop

    nop

    :try_start_3
    check-cast p0, Lnph;

    nop

    iget-object p0, p0, Lnph;->a:Landroid/content/SharedPreferences;

    nop

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    nop

    nop

    check-cast v0, Landroid/net/Uri;

    nop

    nop

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    monitor-exit v1

    nop

    nop

    nop

    nop

    return-void

    nop

    nop

    nop

    nop

    :catchall_3
    move-exception p0

    nop

    nop

    nop

    nop

    monitor-exit v1

    nop

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto/32 :goto_17f

    nop

    nop

    nop

    :goto_dc
    invoke-direct {v4, v10, v6, v11, v7}, Lnzy;-><init>(Loac;Llb;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_dd
    move-object v6, v11

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_de
    iget-object p0, p0, Lnii;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_d2

    nop

    nop

    :goto_df
    iget-object v2, v2, Lnti;->b:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    :goto_e0
    if-eqz p0, :cond_a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ce

    nop

    nop

    :cond_a
    goto/32 :goto_cd

    nop

    nop

    nop

    nop

    :goto_e1
    iget-object v0, p0, Lnii;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    :goto_e2
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_e
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_e3
    iget-object v0, p0, Lnii;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_149

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e4
    invoke-virtual {v0, p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_e5
    invoke-virtual {v1, p0}, Lhoh;->p(Lhmn;)Z

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_e0

    nop

    nop

    nop

    :goto_e6
    goto/16 :goto_90

    nop

    nop

    nop

    nop

    nop

    :goto_e7
    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    :goto_e8
    invoke-virtual {v4, v1}, Landroid/app/DownloadManager$Request;->setDestinationUri(Landroid/net/Uri;)Landroid/app/DownloadManager$Request;

    goto/32 :goto_d4

    nop

    nop

    nop

    nop

    nop

    :goto_e9
    new-instance v4, Lnzy;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_dc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ea
    if-eqz v4, :cond_b

    nop

    nop

    nop

    goto/32 :goto_ef

    nop

    :cond_b
    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_eb
    check-cast p0, Landroid/view/MotionEvent;

    nop

    goto/32 :goto_144

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ec
    check-cast v1, Locr;

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_ed
    invoke-interface {p0, v0}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    goto/32 :goto_b8

    nop

    nop

    nop

    :goto_ee
    throw p0

    nop

    :goto_ef
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f0
    iget-wide v9, v5, Lki;->k:J

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    :goto_f1
    iget-wide v7, v4, Lki;->h:J

    nop

    nop

    nop

    goto/32 :goto_160

    nop

    nop

    nop

    nop

    :goto_f2
    iget-object v0, v0, Loac;->m:Ljava/util/ArrayList;

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_f3
    invoke-static {}, Lowu;->a()V

    goto/32 :goto_8e

    nop

    nop

    :goto_f4
    invoke-virtual {v11, v12}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_f5
    throw p0

    nop

    nop

    nop

    :pswitch_f
    goto/32 :goto_117

    nop

    nop

    nop

    nop

    :goto_f6
    iget-object v4, p0, Lnii;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    :goto_f7
    if-lt v3, v1, :cond_c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b6

    nop

    :cond_c
    goto/32 :goto_5c

    nop

    nop

    :goto_f8
    check-cast p0, Lrss;

    nop

    nop

    goto/32 :goto_116

    nop

    nop

    nop

    :goto_f9
    move-object v3, p0

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

    :goto_fa
    const/4 v1, 0x2

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_fb
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    nop

    goto/32 :goto_fe

    nop

    nop

    nop

    nop

    :goto_fc
    iget-object v0, p0, Lnii;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_14e

    nop

    nop

    nop

    :goto_fd
    iget-object v0, v0, Lnvu;->y:Landroid/widget/SeekBar;

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    :goto_fe
    if-nez v3, :cond_d

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_ff
    check-cast v10, Loac;

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_100
    iget-object v0, p0, Lnii;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_101
    iget-object p0, p0, Lnii;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_65

    nop

    nop

    :goto_102
    goto/16 :goto_174

    nop

    nop

    nop

    nop

    :goto_103
    goto/32 :goto_173

    nop

    nop

    nop

    nop

    nop

    :goto_104
    iget-object p0, p0, Lnii;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    :goto_105
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_f9

    nop

    nop

    nop

    :goto_106
    iget-object v0, p0, Lnii;->b:Ljava/lang/Object;

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

    :goto_107
    iget-object v8, v4, Loaa;->b:Llb;

    nop

    nop

    nop

    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    :goto_108
    move-object v1, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_109
    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/32 :goto_47

    nop

    nop

    :goto_10a
    move-object v2, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_163

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10b
    move-object v1, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_161

    nop

    nop

    nop

    nop

    nop

    :goto_10c
    check-cast p0, Landroid/view/MotionEvent;

    nop

    nop

    nop

    goto/32 :goto_e4

    nop

    nop

    nop

    :goto_10d
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11a

    nop

    nop

    nop

    :goto_10e
    return-void

    nop

    :pswitch_10
    goto/32 :goto_cf

    nop

    nop

    nop

    nop

    nop

    :goto_10f
    invoke-direct {v4, v3}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_110
    iget-object p0, p0, Loby;->b:Landroid/content/Context;

    nop

    nop

    nop

    nop

    goto/32 :goto_167

    nop

    nop

    nop

    :goto_111
    const/4 v7, 0x0

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_112
    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/32 :goto_ab

    nop

    nop

    nop

    :goto_113
    iget v12, v4, Loaa;->e:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_114
    goto/16 :goto_176

    nop

    nop

    nop

    nop

    nop

    :goto_115
    goto/32 :goto_175

    nop

    nop

    nop

    nop

    :goto_116
    iput-object p0, v1, Lnwp;->L:Lrss;

    nop

    nop

    nop

    nop

    goto/32 :goto_15f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_117
    iget-object v0, p0, Lnii;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_118
    if-lt v3, v1, :cond_e

    nop

    goto/32 :goto_17c

    nop

    :cond_e
    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_119
    iget v0, p0, Lnii;->c:I

    nop

    nop

    nop

    goto/32 :goto_10d

    nop

    nop

    nop

    nop

    nop

    :goto_11a
    const/4 v2, 0x1

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11b
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto/32 :goto_e2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11c
    invoke-virtual {v2}, Lnti;->a()Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    :goto_11d
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_105

    nop

    nop

    nop

    nop

    nop

    :goto_11e
    invoke-virtual {p0, v0}, Lnif;->b(Lnic;)V

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_11f
    new-instance v7, Lnzw;

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

    nop

    :goto_120
    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/32 :goto_113

    nop

    nop

    :goto_121
    iget-object p0, p0, Lnii;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    :goto_122
    if-nez v2, :cond_f

    nop

    nop

    goto/32 :goto_c5

    nop

    nop

    :cond_f
    goto/32 :goto_14f

    nop

    nop

    nop

    nop

    nop

    :goto_123
    return-void

    nop

    nop

    :pswitch_11
    goto/32 :goto_cb

    nop

    nop

    :goto_124
    iget-object v0, p0, Lnii;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_12c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_125
    iget-object p0, p0, Lnii;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_126
    invoke-direct {v7, v5, v2, v6}, Lnzw;-><init>(Loac;Llb;Landroid/view/ViewPropertyAnimator;)V

    goto/32 :goto_131

    nop

    nop

    nop

    :goto_127
    invoke-virtual {v5, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    nop

    goto/32 :goto_162

    nop

    nop

    nop

    :goto_128
    move-object v1, v0

    nop

    nop

    nop

    goto/32 :goto_ec

    nop

    nop

    :goto_129
    invoke-virtual {v2, v3}, Lnpi;->a(Landroid/net/Uri;)Ljava/lang/Long;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_ea

    nop

    nop

    nop

    nop

    nop

    :goto_12a
    sub-float/2addr v12, v4

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

    nop

    :goto_12b
    iget-object v0, p0, Lnii;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_128

    nop

    nop

    nop

    :goto_12c
    iget-object p0, p0, Lnii;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_145

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12d
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/32 :goto_56

    nop

    nop

    nop

    :goto_12e
    move-object v2, p0

    nop

    nop

    nop

    goto/32 :goto_cc

    nop

    nop

    :goto_12f
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/32 :goto_111

    nop

    nop

    nop

    :goto_130
    add-int/lit8 v6, v6, 0x1

    nop

    goto/32 :goto_15d

    nop

    nop

    nop

    nop

    nop

    :goto_131
    invoke-virtual {v4, v7}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

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

    :goto_132
    iget-object p0, p0, Lntu;->l:Lnti;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_133
    check-cast v0, Lnvu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_fd

    nop

    nop

    nop

    :goto_134
    iget-object p0, p0, Lntu;->l:Lnti;

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    :goto_135
    check-cast v1, Lnph;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_155

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_136
    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_e8

    nop

    nop

    :goto_137
    iget v4, v4, Loaa;->d:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12a

    nop

    nop

    nop

    :goto_138
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/32 :goto_f

    nop

    nop

    :goto_139
    check-cast v5, Loac;

    nop

    nop

    goto/32 :goto_d8

    nop

    nop

    nop

    :goto_13a
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_13e

    nop

    nop

    :goto_13b
    iget-object v0, p0, Lnii;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_da

    nop

    nop

    :goto_13c
    goto/16 :goto_71

    nop

    :goto_13d
    goto/32 :goto_e1

    nop

    nop

    nop

    nop

    nop

    :goto_13e
    rem-int v0, v0, v1

    nop

    goto/32 :goto_c7

    nop

    nop

    nop

    nop

    :goto_13f
    check-cast p0, Lnmj;

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

    :goto_140
    iget-object v1, v2, Lnpi;->c:Landroid/app/DownloadManager;

    nop

    nop

    goto/32 :goto_164

    nop

    nop

    nop

    nop

    :goto_141
    return-void

    nop

    nop

    nop

    nop

    :pswitch_12
    goto/32 :goto_17d

    nop

    nop

    :goto_142
    iget-object p0, p0, Lnmj;->A:Lnzk;

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_143
    monitor-enter v2

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_144
    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_145
    check-cast v0, Loac;

    nop

    nop

    nop

    nop

    goto/32 :goto_d7

    nop

    nop

    :goto_146
    iget-object v1, v0, Lnvu;->U:Lhoh;

    nop

    nop

    nop

    goto/32 :goto_e5

    nop

    nop

    nop

    nop

    nop

    :goto_147
    check-cast v0, Loac;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_148
    invoke-interface {p0, v1}, Lpge;->j(Lpuq;)V

    goto/32 :goto_c1

    nop

    nop

    nop

    nop

    :goto_149
    check-cast v0, Lnvu;

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

    :goto_14a
    iget-object v0, p0, Lnii;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14b
    check-cast v3, Landroid/net/Uri;

    nop

    nop

    nop

    nop

    goto/32 :goto_129

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14c
    iget-object p0, p0, Lnar;->a:Ljava/lang/Object;

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

    :goto_14d
    new-array v2, v2, [J

    nop

    nop

    nop

    goto/32 :goto_d6

    nop

    nop

    nop

    nop

    nop

    :goto_14e
    check-cast v0, Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14f
    move-object v2, p0

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_150
    return-void

    nop

    nop

    nop

    nop

    :pswitch_13
    goto/32 :goto_13b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_151
    move-object v5, v2

    nop

    goto/32 :goto_dd

    nop

    nop

    nop

    nop

    :goto_152
    iget-object p0, p0, Lnii;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_153
    check-cast p0, Lnti;

    nop

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    nop

    :goto_154
    iget-object v0, v0, Lcom/google/android/apps/camera/ui/layout/MainActivityLayout;->n:Ljava/util/Set;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_155
    iget-object v1, v1, Lnph;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_db

    nop

    nop

    nop

    nop

    nop

    :goto_156
    invoke-interface {p0}, Lpge;->b()Lpgi;

    :goto_157
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_158
    check-cast v2, Loac;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_151

    nop

    nop

    nop

    :goto_159
    iget-object p0, p0, Lnii;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_108

    nop

    nop

    nop

    nop

    :goto_15a
    check-cast v0, Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    :goto_15b
    iget-object v0, p0, Lnii;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    :goto_15c
    iget-object p0, p0, Lmqk;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_13f

    nop

    nop

    :goto_15d
    if-nez v7, :cond_10

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    :cond_10
    goto/32 :goto_102

    nop

    nop

    nop

    nop

    :goto_15e
    invoke-virtual {p0, v0}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    goto/32 :goto_1e

    nop

    nop

    :goto_15f
    sget-object p0, Lhnz;->d:Lhmn;

    nop

    nop

    nop

    goto/32 :goto_146

    nop

    nop

    nop

    :goto_160
    invoke-virtual {v6, v7, v8}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_11f

    nop

    nop

    nop

    :goto_161
    check-cast v1, Lnpi;

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_162
    new-instance v5, Ljava/io/File;

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_163
    check-cast v2, Lnti;

    nop

    nop

    nop

    nop

    goto/32 :goto_168

    nop

    nop

    nop

    :goto_164
    invoke-virtual {v1, v4}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    move-result-wide v1

    nop

    nop

    nop

    goto/32 :goto_11d

    nop

    nop

    :goto_165
    invoke-virtual {p0, v0, v1}, Lnti;->d(Ljava/lang/String;[B)V

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_166
    if-eqz v6, :cond_11

    nop

    nop

    nop

    goto/32 :goto_115

    nop

    :cond_11
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_167
    check-cast v0, Landroid/content/BroadcastReceiver;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_168
    iget-object v2, v2, Lnti;->b:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_fb

    nop

    nop

    nop

    nop

    nop

    :goto_169
    iget-object v0, p0, Lnii;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_125

    nop

    nop

    nop

    :goto_16a
    invoke-static {}, Lowu;->b()V

    goto/32 :goto_14a

    nop

    nop

    :goto_16b
    check-cast v0, Lnic;

    nop

    goto/32 :goto_11e

    nop

    nop

    nop

    :goto_16c
    iget-object v6, v2, Loac;->p:Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_138

    nop

    nop

    :goto_16d
    check-cast v2, Llb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f6

    nop

    nop

    :goto_16e
    iget-object v5, v2, Lnpi;->d:Landroid/content/Context;

    nop

    nop

    nop

    goto/32 :goto_127

    nop

    nop

    nop

    nop

    nop

    :goto_16f
    invoke-interface {p0, v0}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_170
    new-instance v5, Lnzz;

    nop

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

    :goto_171
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto/32 :goto_124

    nop

    nop

    nop

    nop

    :goto_172
    iget-object v1, v1, Lnpi;->c:Landroid/app/DownloadManager;

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    :goto_173
    move v2, v3

    nop

    :goto_174
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_175
    iget-object v7, v6, Llb;->a:Landroid/view/View;

    nop

    nop

    nop

    nop

    :goto_176
    goto/32 :goto_107

    nop

    nop

    nop

    :goto_177
    check-cast v3, Lnti;

    nop

    nop

    nop

    nop

    goto/32 :goto_c4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_178
    monitor-enter v1

    nop

    nop

    nop

    :try_start_4
    move-object v2, p0

    nop

    nop

    nop

    nop

    check-cast v2, Lnij;

    nop

    nop

    iget-object v2, v2, Lnij;->f:Landroid/widget/PopupWindow;

    nop

    nop

    nop

    nop

    check-cast v0, Ljava/lang/ref/WeakReference;

    nop

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    nop

    check-cast v0, Landroid/app/Activity;

    nop

    if-eqz v0, :cond_12

    nop

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    nop

    nop

    nop

    if-nez v0, :cond_12

    nop

    nop

    nop

    if-eqz v2, :cond_12

    nop

    nop

    new-instance v0, Landroid/transition/Fade;

    nop

    nop

    nop

    nop

    invoke-direct {v0}, Landroid/transition/Fade;-><init>()V

    check-cast p0, Lnij;

    nop

    nop

    nop

    nop

    nop

    iget-wide v3, p0, Lnij;->t:J

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v3, v4}, Landroid/transition/Transition;->setDuration(J)Landroid/transition/Transition;

    new-instance p0, Leac;

    nop

    nop

    nop

    nop

    invoke-direct {p0}, Leac;-><init>()V

    invoke-virtual {v0, p0}, Landroid/transition/Transition;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/Transition;

    invoke-virtual {v2, v0}, Landroid/widget/PopupWindow;->setExitTransition(Landroid/transition/Transition;)V

    :cond_12
    monitor-exit v1

    nop

    nop

    nop

    nop

    return-void

    nop

    nop

    nop

    :catchall_4
    move-exception p0

    nop

    nop

    nop

    nop

    monitor-exit v1

    nop

    nop

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto/32 :goto_f5

    nop

    nop

    nop

    nop

    nop

    :goto_179
    throw p0

    nop

    nop

    nop

    :goto_17a
    :try_start_5
    move-object v3, v0

    nop

    nop

    check-cast v3, Locr;

    nop

    nop

    iget-object v3, v3, Locr;->g:Ljava/util/Set;

    nop

    check-cast p0, Locj;

    nop

    iget-object p0, p0, Locj;->f:Lram;

    nop

    nop

    nop

    invoke-interface {v3, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p0

    nop

    if-eqz p0, :cond_13

    nop

    nop

    check-cast v0, Locr;

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Locr;->d()V

    :cond_13
    monitor-exit v2

    nop

    nop

    nop

    nop
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_17b
    goto/16 :goto_7c

    nop

    :goto_17c
    goto/32 :goto_fc

    nop

    nop

    nop

    nop

    :goto_17d
    iget-object v0, p0, Lnii;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    :goto_17e
    iget-wide v6, v4, Lki;->j:J

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_17f
    throw p0

    nop

    nop

    nop

    :goto_180
    goto/32 :goto_99

    nop

    nop

    nop

    nop

    :goto_181
    const/16 v0, 0x1459

    nop

    nop

    nop

    nop

    goto/32 :goto_ed

    nop

    nop

    nop

    :goto_182
    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_183
    goto/32 :goto_62

    nop

    nop

    nop

    nop
.end method

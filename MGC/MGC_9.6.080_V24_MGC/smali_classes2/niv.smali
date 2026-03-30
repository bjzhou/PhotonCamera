.class public Lniv;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback2;
.implements Lpci;


# static fields
.field private static final d:Lsdb;

.field private static e:I


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Landroid/view/SurfaceView;

.field public final c:Ljava/util/function/Consumer;

.field private final f:Landroid/widget/FrameLayout;

.field private final g:Lpdf;

.field private final h:Lnjf;

.field private i:Z

.field private j:Lsuu;

.field private final k:Lmkp;

.field private final l:Lnar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-string v0, "niv"

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
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    nop

    goto/32 :goto_3

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
    sput-object v0, Lniv;->d:Lsdb;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_4
    sput v0, Lniv;->e:I

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

    :goto_5
    const/4 v0, 0x0

    nop

    goto/32 :goto_4

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Lpzi;Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;Lmkl;Lhoh;Lpdf;Lnar;Lniw;Lnjf;Ljava/util/function/Consumer;)V
    .locals 3

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_1
    throw v0

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_3
    sput v1, Lniv;->e:I

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

    :goto_4
    const/16 v2, 0x10

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    :cond_0
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-interface {p4, p8}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_7
    iget-object p2, p2, Lpzi;->d:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_8
    new-instance v0, Lnir;

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    new-instance p7, Lsuu;

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_b
    const/16 p7, 0x23

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_c
    iget-object p0, p9, Lnjf;->b:Lpck;

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iput-object p7, p0, Lniv;->j:Lsuu;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_e
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_24

    nop

    :goto_f
    const/4 p4, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_10
    const p1, 0x7f0804de

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

    :goto_11
    invoke-interface {p4, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    goto/32 :goto_6

    nop

    nop

    :goto_12
    iput-object p2, p0, Lniv;->f:Landroid/widget/FrameLayout;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_13
    add-int v0, v0, v1

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget p0, p0, Lpck;->b:I

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_15
    sget-object p0, Lhmq;->bb:Lhmn;

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

    :goto_16
    check-cast p7, Ljava/lang/Integer;

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p5, p0}, Lhoh;->p(Lhmn;)Z

    move-result p0

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iput-object v0, p0, Lniv;->b:Landroid/view/SurfaceView;

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-interface {p4, p6, p0}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_1b
    new-instance p0, Landroid/widget/FrameLayout$LayoutParams;

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

    nop

    nop

    :goto_1c
    const/4 p10, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_1d
    const-string v1, "ViewfinderSurface"

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

    :goto_1e
    check-cast p2, Landroid/widget/FrameLayout;

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_1f
    iput-boolean v0, p0, Lniv;->i:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_20
    iput-object p10, p0, Lniv;->c:Ljava/util/function/Consumer;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_21
    iput-object p6, p0, Lniv;->g:Lpdf;

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_22
    invoke-virtual {p7}, Ljava/lang/Integer;->intValue()I

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {p2, v0, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_2

    nop

    :goto_25
    goto/32 :goto_18

    nop

    nop

    :goto_26
    invoke-static {p10}, Lqrg;->B(Z)V

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_27
    new-instance v1, Lnap;

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

    :goto_28
    add-int/lit8 v1, v0, 0x1

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

    nop

    :goto_29
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_2a
    const/4 p1, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-interface {p4, p7}, Landroid/view/SurfaceHolder;->setFormat(I)V

    :goto_2c
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_25

    nop

    nop

    :goto_2e
    invoke-direct {p7}, Lsuu;-><init>()V

    goto/32 :goto_d

    nop

    nop

    :goto_2f
    iget p6, p0, Lpck;->a:I

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_30
    const v0, 0x1e

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_31
    iput-object p9, p0, Lniv;->h:Lnjf;

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_32
    new-instance v1, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    invoke-direct {v1, p6, v2}, Lnap;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_35
    invoke-virtual {p7, v1, p6}, Lsuu;->c(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :try_start_0
    const-string v2, "AQ4eSwMPFxcNCBdLAxEDSyMRAwkLAhIRCw4d"

    nop

    nop

    nop

    nop

    invoke-static {v2}, Lcom/android/app/Application;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    check-cast v2, Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    nop

    nop

    nop

    const-string v1, "Bg=="

    nop

    invoke-static {v1}, Lcom/android/app/Application;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    check-cast v1, Ljava/lang/String;

    nop

    nop

    invoke-virtual {v2, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    nop

    const/4 v2, 0x1

    nop

    nop

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const v2, 0x0

    nop

    nop

    nop

    nop

    nop

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    nop

    nop

    if-eqz v2, :cond_0

    nop

    nop

    nop

    nop

    nop

    invoke-static {}, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->a()Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    if-eqz v2, :cond_2

    nop

    nop

    nop

    nop

    nop

    sget-object v1, Lpzi;->h_r:L_021;

    nop

    nop

    nop

    if-eqz v1, :cond_2

    nop

    nop

    nop

    iget-object v2, v1, L_021;->t:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    if-eqz p0, :cond_2

    nop

    nop

    nop

    nop

    nop

    iget-object v2, v1, L_021;->s:Ljava/lang/Object;

    nop

    if-eqz p0, :cond_2

    nop

    nop

    iget-object v2, v1, L_021;->r:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    if-eqz v2, :cond_2

    nop

    nop

    nop

    nop

    nop

    sget-object v2, L_021;->ee:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    if-eqz v2, :cond_2

    nop

    nop

    invoke-virtual {v1}, L_021;->C()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_36
    const v1, 0xa

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_37
    invoke-virtual {p7}, Ljava/lang/Integer;->intValue()I

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_38
    sget v0, Lniv;->e:I

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_39
    invoke-virtual {p3, p0, p1}, Lmkp;->i(Ljava/lang/Enum;Lmko;)V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {p7}, Lrss;->c()Ljava/lang/Object;

    move-result-object p7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-virtual {v0, p10}, Landroid/view/SurfaceView;->setClipToOutline(Z)V

    :goto_3c
    goto/32 :goto_1b

    nop

    nop

    :goto_3d
    invoke-direct {p0, p1, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-interface {p6, v1}, Lpdf;->a(Ljava/lang/String;)Lpdh;

    move-result-object p6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_3f
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p4

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_40
    iput-object v0, p0, Lniv;->a:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_41
    check-cast p7, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_42
    invoke-virtual {p7}, Lrss;->h()Z

    move-result p7

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    sget-object p0, Lmkd;->k:Lmkd;

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_44
    if-nez p0, :cond_3

    nop

    goto/32 :goto_3c

    nop

    nop

    :cond_3
    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_45
    iput-object p7, p0, Lniv;->l:Lnar;

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_46
    const v0, 0x0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_47
    if-nez p7, :cond_4

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_48
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

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

    :goto_49
    iget-object p7, p9, Lnjf;->d:Lrss;

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_4a
    invoke-interface {p4}, Lmkl;->a()Ljava/lang/Object;

    move-result-object p4

    nop

    goto/32 :goto_54

    nop

    nop

    :goto_4b
    invoke-virtual {v0, p0}, Landroid/view/SurfaceView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_3b

    nop

    nop

    :goto_4c
    invoke-virtual {p7}, Lrss;->c()Ljava/lang/Object;

    move-result-object p7

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_4d
    iput-object p4, p0, Lniv;->k:Lmkp;

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_4f
    sget-object p6, Lstd;->a:Lstd;

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_50
    iget-object p7, p9, Lnjf;->d:Lrss;

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

    :goto_51
    invoke-virtual {p0, p1, p4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_52
    sget-object p1, Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;->a:Lmko;

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_53
    const-string v2, "ViewfinderSV"

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_54
    check-cast p4, Lmkp;

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_55
    invoke-direct {v0, p1}, Lnir;-><init>(Landroid/content/Context;)V

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_56
    iget-object p7, p9, Lnjf;->d:Lrss;

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop
.end method

.method private final f875135777c17da3cef2ea6eeff5be29m(Ljava/lang/String;)V
    .locals 1

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, v0}, Lsuu;->a(Ljava/lang/Throwable;)Z

    :goto_1
    goto/32 :goto_2

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

    :goto_3
    invoke-direct {v0, p1}, Lpfi;-><init>(Ljava/lang/String;)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    if-nez v0, :cond_0

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
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Lniv;->j:Lsuu;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_6
    if-eqz v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_7
    new-instance v0, Lpfi;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {}, Lowu;->a()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_9
    iget-object p0, p0, Lniv;->j:Lsuu;

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

    :goto_a
    invoke-virtual {v0}, Lsuu;->isDone()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()Lsui;
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lniv;->j:Lsuu;

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

    :goto_1
    return-object p0

    nop

    nop

    :goto_2
    invoke-static {}, Lowu;->a()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final close()V
    .locals 2

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v1, p0, Lniv;->b:Landroid/view/SurfaceView;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Lniv;->f:Landroid/widget/FrameLayout;

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

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {}, Lowu;->a()V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_10

    nop

    :goto_5
    const-string v0, "Closed"

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v0, 0x1

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

    :goto_8
    return-void

    nop

    nop

    :goto_9
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0x11

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

    :goto_b
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iput-boolean v0, p0, Lniv;->i:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_e
    const v1, 0x3

    nop

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

    :goto_f
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    :goto_12
    invoke-direct {p0, v0}, Lniv;->f875135777c17da3cef2ea6eeff5be29m(Ljava/lang/String;)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v0, p0, Lniv;->b:Landroid/view/SurfaceView;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public final surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 3

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0, p3, p4}, Lpck;-><init>(II)V

    goto/32 :goto_13

    nop

    nop

    :goto_1
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-eqz p1, :cond_0

    nop

    goto/32 :goto_1c

    nop

    nop

    :cond_0
    goto/32 :goto_1b

    nop

    nop

    :goto_3
    invoke-direct {v0, p3, p4}, Lpck;-><init>(II)V

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0}, Lpby;->f()Lpby;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_5
    const/4 v0, 0x6

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_6
    const-string v1, "surfaceChanged"

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_7
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {v1, p2, p3, v0, p4}, Lnzk;->aB(Landroid/view/Surface;ILandroid/util/Size;ZLjava/util/function/Consumer;)Lnjd;

    move-result-object p2

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_9
    iget-object p0, p0, Lniv;->g:Lpdf;

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-nez p2, :cond_1

    nop

    goto/32 :goto_18

    nop

    :cond_1
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v0, p0, Lniv;->h:Lnjf;

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_c
    new-instance v0, Lpck;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_d
    iget-object p1, p0, Lniv;->h:Lnjf;

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object p1, p0, Lniv;->g:Lpdf;

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-eqz v2, :cond_2

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

    :cond_2
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p1, v0}, Lmkp;->h(Ljava/lang/Enum;)V

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    check-cast p2, Landroidx/wear/ambient/AmbientMode$AmbientController;

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v0}, Lpck;->c()Landroid/util/Size;

    move-result-object p3

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-static {v0}, Lpby;->g(Lpck;)Lpby;

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_15
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-boolean v0, p0, Lniv;->i:Z

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_17
    throw p0

    nop

    nop

    :goto_18
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_19
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_1a
    const v0, 0x12

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

    :goto_1b
    goto/16 :goto_34

    nop

    :goto_1c
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    sget-object v0, Lmkw;->b:Lmkw;

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

    :goto_1e
    invoke-static {v0}, Lrrf;->x(Z)V

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_1f
    if-eqz p1, :cond_3

    nop

    goto/32 :goto_34

    nop

    nop

    :cond_3
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v0}, Lpby;->f()Lpby;

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_21
    rem-int v0, v0, v1

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_22
    invoke-virtual {p1}, Lpby;->f()Lpby;

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_23
    iget-object p2, p2, Landroidx/wear/ambient/AmbientMode$AmbientController;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_39

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_26
    invoke-interface {v0, v1}, Lpdf;->f(Ljava/lang/String;)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    goto/16 :goto_34

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_29
    invoke-direct {p4, p0, v0}, Lnaz;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_19

    nop

    nop

    :goto_2a
    invoke-static {v0}, Lpby;->g(Lpck;)Lpby;

    move-result-object p1

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

    :goto_2b
    monitor-enter p2

    nop

    nop

    :try_start_0
    move-object p3, p2

    nop

    check-cast p3, Ljaa;

    nop

    nop

    nop

    nop

    nop

    iget-object p3, p3, Ljaa;->z:Lenm;

    nop

    nop

    if-eqz p3, :cond_4

    nop

    nop

    nop

    nop

    sget-object p3, Ljar;->c:Ljar;

    nop

    nop

    move-object p4, p2

    nop

    nop

    nop

    nop

    check-cast p4, Ljaa;

    nop

    invoke-virtual {p4, p3}, Ljaa;->m(Ljar;)Z

    move-result p3

    nop

    nop

    nop

    if-eqz p3, :cond_4

    nop

    nop

    move-object p3, p2

    nop

    nop

    nop

    check-cast p3, Ljaa;

    nop

    nop

    iget-object p3, p3, Ljaa;->z:Lenm;

    nop

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object p4, p2

    nop

    nop

    nop

    check-cast p4, Ljaa;

    nop

    nop

    nop

    nop

    nop

    iget-object p4, p4, Ljaa;->p:Ljah;

    nop

    nop

    iget-object v0, p3, Lenm;->a:Landroid/content/Context;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p4, v0}, Ljah;->a(Landroid/content/Context;)Landroid/view/SurfaceView;

    move-result-object p4

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p3, p4}, Lenm;->b(Landroid/view/View;)V

    move-object p3, p2

    nop

    check-cast p3, Ljaa;

    nop

    nop

    invoke-virtual {p3}, Ljaa;->l()V

    :cond_4
    monitor-exit p2

    nop

    nop

    nop

    nop

    goto :goto_2d

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

    monitor-exit p2

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_17

    nop

    nop

    :goto_2c
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    nop

    nop

    :goto_2d
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_2e
    iget-object p1, p0, Lniv;->l:Lnar;

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    new-instance v0, Lpck;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_30
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-static {p1, v0}, La;->aw(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_32
    iget-object p1, p0, Lniv;->k:Lmkp;

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_33
    invoke-interface {p1}, Lpdf;->g()V

    :goto_34
    goto/32 :goto_2e

    nop

    nop

    :goto_35
    invoke-virtual {p1}, Lsuu;->isDone()Z

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_36
    if-lez v0, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :cond_5
    goto/32 :goto_24

    nop

    :goto_37
    invoke-virtual {p1, p2}, Lsuu;->e(Ljava/lang/Object;)Z

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_38
    return-void

    nop

    nop

    :goto_39
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    iget-object p1, p1, Lnar;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_3b
    iget-object v0, v0, Lnjf;->c:Lpby;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    iget-object p1, p1, Lnjf;->b:Lpck;

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_3d
    iget-object p1, p0, Lniv;->j:Lsuu;

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_3e
    goto/32 :goto_25

    nop

    nop

    :goto_3f
    new-instance p4, Lnaz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_40
    const-string v0, "surfaceRequest.set"

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

    :goto_41
    iget-object p1, p0, Lniv;->j:Lsuu;

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_42
    xor-int/lit8 v0, v0, 0x1

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_43
    invoke-virtual {v1}, Landroid/view/Surface;->isValid()Z

    move-result p1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    invoke-interface {p1, v0}, Lpdf;->f(Ljava/lang/String;)V

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_45
    iget-object v0, p0, Lniv;->g:Lpdf;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_46
    iget-object p1, p0, Lniv;->g:Lpdf;

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_47
    const v1, 0x5

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_48
    invoke-interface {p0}, Lpdf;->g()V

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop
.end method

.method public final surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_0
    invoke-static {p0}, Lolx;->bl(Lsui;)Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_1
    const/16 v0, 0x13c9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    :cond_0
    goto/32 :goto_13

    nop

    :goto_3
    rem-int v0, v0, v1

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

    :goto_4
    sget-object p1, Lniv;->d:Lsdb;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_5
    sget-object v0, Lmkw;->a:Lmkw;

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_6
    iget-object p1, p0, Lniv;->k:Lmkp;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_7
    iget-boolean p1, p0, Lniv;->i:Z

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_8
    invoke-interface {p1, v0}, Lscz;->M(I)Lsdo;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_9
    iget-object p1, p0, Lniv;->j:Lsuu;

    nop

    nop

    goto/32 :goto_18

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
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const-string v1, "%s: surfaceChanged was already called or cancelled: %s"

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object p0, p0, Lniv;->j:Lsuu;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_e
    const v0, 0x8

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_f
    if-nez p1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-static {p1}, Lrrf;->x(Z)V

    goto/32 :goto_6

    nop

    nop

    :goto_11
    goto/32 :goto_14

    nop

    nop

    :goto_12
    iget-object v0, p0, Lniv;->a:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-interface {p1, v1, v0, p0}, Lscz;->E(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_16
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p1}, Lsuu;->isDone()Z

    move-result p1

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

    :goto_19
    xor-int/lit8 p1, p1, 0x1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p1}, Lscs;->c()Lsdo;

    move-result-object p1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {p1, v0}, Lmkp;->h(Ljava/lang/Enum;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    check-cast p1, Lscz;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_1d
    const v1, 0x1c

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop
.end method

.method public final surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lnar;->a:Ljava/lang/Object;

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

    :goto_1
    invoke-virtual {p1}, Lmkp;->close()V

    goto/32 :goto_c

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

    nop

    :goto_3
    xor-int/lit8 p1, p1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_5
    invoke-direct {p0, p1}, Lniv;->f875135777c17da3cef2ea6eeff5be29m(Ljava/lang/String;)V

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_6
    invoke-static {p1}, Lrrf;->x(Z)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput-object p1, p0, Lniv;->j:Lsuu;

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

    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_9
    iget-object p1, p0, Lniv;->k:Lmkp;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-interface {p1}, Lnjg;->a()V

    goto/32 :goto_e

    nop

    nop

    :goto_b
    if-nez p1, :cond_0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_c
    iget-object p0, p0, Lniv;->l:Lnar;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    new-instance p1, Lsuu;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_e
    goto :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_10
    const-string p1, "Surface has been destroyed."

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

    :goto_11
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_4

    nop

    nop

    :goto_13
    check-cast p1, Lnjg;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_14
    iget-boolean p1, p0, Lniv;->i:Z

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

    :goto_15
    invoke-direct {p1}, Lsuu;-><init>()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop
.end method

.method public final surfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V
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

    nop

    :goto_1
    xor-int/lit8 p0, p0, 0x1

    nop

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

    :goto_2
    iget-boolean p0, p0, Lniv;->i:Z

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    invoke-static {p0}, Lrrf;->x(Z)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

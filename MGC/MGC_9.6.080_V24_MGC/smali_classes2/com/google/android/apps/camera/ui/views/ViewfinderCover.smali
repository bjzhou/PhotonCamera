.class public Lcom/google/android/apps/camera/ui/views/ViewfinderCover;
.super Lcom/google/android/apps/camera/ui/layout/GcaLayout;
.source "PG"

# interfaces
.implements Lndr;
.implements Lhdb;


# static fields
.field private static final t:Lsdb;


# instance fields
.field public n:Landroid/widget/ImageView;

.field public o:Landroid/graphics/drawable/AnimatedVectorDrawable;

.field public p:Z

.field public q:Ljava/util/concurrent/Callable;

.field public final r:Lnds;

.field public s:Z

.field private u:Landroid/widget/TextView;

.field private final v:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    sput-object v0, Lcom/google/android/apps/camera/ui/views/ViewfinderCover;->t:Lsdb;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    const-string v0, "com.google.android.apps.camera.ui.views.ViewfinderCover"

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    iput-boolean p2, p0, Lcom/google/android/apps/camera/ui/views/ViewfinderCover;->s:Z

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-interface {p1}, Lfwm;->b()Lhoh;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    sget-object v0, Lhmq;->bb:Lhmn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_3
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/camera/ui/layout/GcaLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/views/ViewfinderCover;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_5
    const/4 p2, 0x0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    check-cast p1, Lfwm;

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

    :goto_7
    return-void

    nop

    nop

    :goto_8
    const/4 p2, 0x1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_9
    iput-boolean p2, p0, Lcom/google/android/apps/camera/ui/views/ViewfinderCover;->p:Z

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_a
    iput p2, p0, Lcom/google/android/apps/camera/ui/views/ViewfinderCover;->v:I

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_d
    new-instance v0, Lnds;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_e
    const p2, 0x7f0708cd

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

    nop

    :goto_f
    if-nez p1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p1, v0}, Lhoh;->p(Lhmn;)Z

    move-result p1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-direct {v0, p0}, Lnds;-><init>(Landroid/view/ViewGroup;)V

    goto/32 :goto_12

    nop

    nop

    :goto_12
    iput-object v0, p0, Lcom/google/android/apps/camera/ui/views/ViewfinderCover;->r:Lnds;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Lpog;)Lsui;
    .locals 4

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p1}, Lsuu;-><init>()V

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_2
    invoke-direct {v3, p1}, Lnkh;-><init>(Lsuu;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0x4

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_5
    iput-object p1, p0, Lcom/google/android/apps/camera/ui/views/ViewfinderCover;->o:Landroid/graphics/drawable/AnimatedVectorDrawable;

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

    :goto_6
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/views/ViewfinderCover;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    sget-object v0, Lnne;->a:Lnne;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_8
    sget-object v1, Lpog;->b:Lpog;

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object p0, p0, Lcom/google/android/apps/camera/ui/views/ViewfinderCover;->r:Lnds;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/4 v2, 0x5

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_b
    new-instance v2, Lnki;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_c
    goto/16 :goto_1a

    nop

    nop

    :goto_d
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_e
    new-instance v3, Lnkh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_10
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1d

    nop

    :goto_11
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p0, v0, v1, v2, v3}, Lnds;->q(Lnne;Ljava/lang/Runnable;Lndr;Lndo;)V

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_13
    const p1, 0x7f08017f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_14
    invoke-direct {v1, v2}, Lngq;-><init>(I)V

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_15
    new-instance v1, Lngq;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-direct {v2, p0}, Lnki;-><init>(Lcom/google/android/apps/camera/ui/views/ViewfinderCover;)V

    goto/32 :goto_e

    nop

    nop

    :goto_17
    return-object p1

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_11

    nop

    nop

    :goto_19
    const p1, 0x7f08017e

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    new-instance p1, Lsuu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1d
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1f
    const v1, 0xe

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

    :goto_20
    if-eq p1, v1, :cond_1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_21
    check-cast p1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop
.end method

.method public final b()Lrss;
    .locals 3

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, v0, Lnbs;->d:Lnca;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_1
    iget p0, p0, Lcom/google/android/apps/camera/ui/views/ViewfinderCover;->v:I

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    invoke-virtual {v1, p0}, Lqsz;->e(I)V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v1, v0, Lnca;->k:Landroid/util/Size;

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

    nop

    :goto_4
    goto/32 :goto_d

    nop

    nop

    :goto_5
    sget-object p0, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_6
    invoke-virtual {v0, v1, v2}, Lnca;->h(Landroid/util/Size;Landroid/util/Size;)Landroid/graphics/Rect;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_7
    iput-object v0, v1, Lqsz;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_8
    iget-object v2, v0, Lnca;->j:Landroid/util/Size;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_9
    const/4 v2, 0x0

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_a
    const v1, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_b
    invoke-static {p0}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object p0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-static {v0}, Lqrg;->G(Ljava/lang/Object;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_c

    nop

    :goto_10
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_12
    check-cast v0, Lnbs;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_13
    return-object p0

    nop

    :goto_14
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-eqz v0, :cond_1

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

    :cond_1
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_16
    invoke-direct {v1, v2}, Lqsz;-><init>([C)V

    goto/32 :goto_7

    nop

    nop

    :goto_17
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_19
    invoke-interface {v0}, Lrtm;->a()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const v0, 0x1b

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1b
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/views/ViewfinderCover;->i:Lrtm;

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_1c
    new-instance v1, Lqsz;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_1d
    invoke-virtual {v1}, Lqsz;->d()Lndp;

    move-result-object p0

    nop

    goto/32 :goto_b

    nop

    nop

    nop
.end method

.method public final c()Lrss;
    .locals 3

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/16 v2, 0x13e4

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_2
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_3
    :try_start_0
    iget-object p0, p0, Lcom/google/android/apps/camera/ui/views/ViewfinderCover;->q:Ljava/util/concurrent/Callable;

    nop

    nop

    invoke-interface {p0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    check-cast p0, Lrss;

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_4
    invoke-static {v1, v2, v0, p0}, Lmf;->f(Ljava/lang/String;CLscz;Ljava/lang/Throwable;)V

    goto/32 :goto_5

    nop

    nop

    :goto_5
    sget-object p0, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0x11

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0x14

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_a
    return-object p0

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_c
    const-string v1, "Failed to create snapshot"

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
    rem-int v0, v0, v1

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

    :goto_e
    sget-object v0, Lcom/google/android/apps/camera/ui/views/ViewfinderCover;->t:Lsdb;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_f
    goto :goto_6

    nop

    :catch_0
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_10
    goto/32 :goto_3

    nop

    :goto_11
    invoke-virtual {v0}, Lscs;->b()Lsdo;

    move-result-object v0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop
.end method

.method public final d()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lcom/google/android/apps/camera/ui/views/ViewfinderCover;->r:Lnds;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    invoke-virtual {p0}, Lnds;->g()V

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public final e()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iget-object p0, p0, Lcom/google/android/apps/camera/ui/views/ViewfinderCover;->r:Lnds;

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

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Lnds;->h()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public final f(Lnne;)V
    .locals 4

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-nez p1, :cond_0

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

    :cond_0
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_1
    if-eq p1, v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    :cond_1
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/16 :goto_20

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_1f

    nop

    nop

    :goto_4
    sget-object v0, Lnne;->a:Lnne;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_6
    if-nez p1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_8
    goto :goto_3

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_a
    iget v2, v2, Lnnb;->a:I

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/32 :goto_21

    nop

    nop

    :goto_c
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/views/ViewfinderCover;->getResources()Landroid/content/res/Resources;

    move-result-object v0

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

    :goto_d
    invoke-static {p1}, Lnnb;->a(Lnne;)Lnnb;

    move-result-object v2

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_e
    sget-object v2, Lnne;->a:Lnne;

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

    :goto_f
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/views/ViewfinderCover;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v0, 0x3

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
    invoke-virtual {p1, v0}, Lnnb;->d(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_13
    const v1, 0x18

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/views/ViewfinderCover;->n:Landroid/widget/ImageView;

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_15
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-static {p1}, Lnnb;->a(Lnne;)Lnnb;

    move-result-object p1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v3, v2, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

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

    :goto_1c
    if-eq p1, v2, :cond_3

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

    :cond_3
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object p0, p0, Lcom/google/android/apps/camera/ui/views/ViewfinderCover;->u:Landroid/widget/TextView;

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

    nop

    :goto_1e
    if-lez v0, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_19

    nop

    :goto_1f
    move-object v2, v1

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    return-void

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_5

    nop

    nop

    :goto_23
    goto/16 :goto_12

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_16

    nop

    nop

    nop
.end method

.method public final g()Z
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-boolean p0, p0, Lcom/google/android/apps/camera/ui/views/ViewfinderCover;->p:Z

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final h()Z
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const/4 p0, 0x1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    nop

    nop
.end method

.method public final i()V
    .locals 2

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_1
    iget-object p0, p0, Lnds;->v:Landroid/view/View;

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_2
    iget-object v0, p0, Lnds;->v:Landroid/view/View;

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

    :goto_3
    rem-int v0, v0, v1

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_4
    const-wide/16 v0, 0xfa

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_5
    iget-object p0, p0, Lcom/google/android/apps/camera/ui/views/ViewfinderCover;->r:Lnds;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_6
    goto/32 :goto_a

    nop

    nop

    :goto_7
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    :goto_a
    goto/32 :goto_10

    nop

    nop

    :goto_b
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

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

    :goto_c
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_d
    const/high16 v0, 0x3f800000    # 1.0f

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

    :goto_e
    add-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p0}, Lnds;->n()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_7

    nop

    :goto_11
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_12
    const v1, 0xe

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_13
    const v0, 0x13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_14
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_15
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto/32 :goto_f

    nop

    nop

    nop
.end method

.method public final j()V
    .locals 2

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x3

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_2
    if-ne v1, v0, :cond_1

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

    :cond_1
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    throw p0

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_4

    nop

    nop

    :goto_6
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-nez v1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_9
    if-ne v1, v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_3
    goto/32 :goto_f

    nop

    nop

    :goto_a
    iget-object p0, p0, Lcom/google/android/apps/camera/ui/views/ViewfinderCover;->r:Lnds;

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

    :goto_b
    add-int v0, v0, v1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_c
    const/4 v0, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_d
    goto/32 :goto_6

    nop

    nop

    :goto_e
    const v0, 0x1a

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_f
    return-void

    nop

    nop

    :goto_10
    goto/32 :goto_15

    nop

    nop

    :goto_11
    add-int/lit8 v1, v0, -0x1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_12
    return-void

    nop

    :goto_13
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_14
    if-lez v0, :cond_4

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_4
    goto/32 :goto_5

    nop

    :goto_15
    invoke-virtual {p0}, Lnds;->e()V

    goto/32 :goto_12

    nop

    nop

    :goto_16
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_17
    const v1, 0xb

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_18
    iget v0, p0, Lnds;->E:I

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
.end method

.method public final k()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iget-object p0, p0, Lcom/google/android/apps/camera/ui/views/ViewfinderCover;->r:Lnds;

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
    invoke-virtual {p0}, Lnds;->m()V

    goto/32 :goto_2

    nop

    nop

    :goto_2
    return-void

    nop

    nop
.end method

.method public final l(Lnne;Lnkj;Ljava/lang/Runnable;)V
    .locals 2

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v0, Lnkg;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    const v1, 0xa

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2
    const/4 v1, 0x1

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

    :goto_3
    add-int v0, v0, v1

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

    :goto_4
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    :goto_6
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {v0, p2, v1}, Lnkg;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_b

    nop

    nop

    :goto_8
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object p2, p0, Lcom/google/android/apps/camera/ui/views/ViewfinderCover;->r:Lnds;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0xb

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_e
    invoke-virtual {p2, p1, p3, p0, v0}, Lnds;->q(Lnne;Ljava/lang/Runnable;Lndr;Lndo;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop
.end method

.method public final m(Lnne;Ljava/lang/Runnable;)V
    .locals 3

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0, v1}, Lngq;-><init>(I)V

    goto/32 :goto_11

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_2
    invoke-virtual {p2, p1, v0, p0, v1}, Lnds;->q(Lnne;Ljava/lang/Runnable;Lndr;Lndo;)V

    goto/32 :goto_4

    nop

    nop

    :goto_3
    iget-object p2, p0, Lcom/google/android/apps/camera/ui/views/ViewfinderCover;->r:Lnds;

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
    return-void

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_9

    nop

    nop

    :goto_6
    const v0, 0x1c

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_7
    invoke-direct {v1, p2, v2}, Lnkg;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_d

    nop

    :goto_a
    const v1, 0x14

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_b
    new-instance v0, Lngq;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const/4 v1, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_f
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_10
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    new-instance v1, Lnkg;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop
.end method

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, v0, Lnjh;->a:Landroid/graphics/Bitmap;

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

    :goto_1
    const v0, 0xd

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v3, p0, Lnds;->g:Landroid/graphics/Paint;

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_3
    invoke-static {p1, v0, v1, v2}, Lnds;->c(Landroid/graphics/Canvas;Landroid/graphics/Rect;ILandroid/graphics/Paint;)V

    :goto_4
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Lnds;->m:Lndp;

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {p1, v0, v1, v2}, Lnds;->c(Landroid/graphics/Canvas;Landroid/graphics/Rect;ILandroid/graphics/Paint;)V

    :goto_7
    goto/32 :goto_2b

    nop

    nop

    :goto_8
    iget-object v0, p0, Lnds;->o:Lrss;

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v2, p0, Lnds;->i:Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/16 v0, 0x1f

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_b
    iget v1, p0, Lnds;->y:I

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :cond_0
    goto/32 :goto_34

    nop

    :goto_d
    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

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

    :goto_e
    iget-object v0, p0, Lnds;->k:Lrss;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_f
    iget-object v2, v2, Lndp;->a:Landroid/graphics/Rect;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_10
    iget-object v0, p0, Lnds;->k:Lrss;

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p1, v1, v1, v0}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_12
    iget-object v2, p0, Lnds;->m:Lndp;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_13
    iget-object v2, p0, Lnds;->h:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_14
    const v1, 0x3

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_15
    iget-object v1, p0, Lnds;->h:Landroid/graphics/Paint;

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_16
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/32 :goto_24

    nop

    nop

    :goto_18
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_19
    return-void

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iput-object p1, p0, Lnds;->o:Lrss;

    nop

    nop

    :goto_1e
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v0}, Lrss;->h()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_21
    iget-object p0, p0, Lcom/google/android/apps/camera/ui/views/ViewfinderCover;->r:Lnds;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_22
    if-gtz v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_23
    iget v0, p0, Lnds;->y:I

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_24
    iget-object v0, p0, Lnds;->m:Lndp;

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

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

    :goto_26
    if-gtz v0, :cond_2

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_2
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    sget-object p1, Lrsa;->a:Lrsa;

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

    nop

    nop

    :goto_28
    check-cast v0, Lnjh;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_29
    if-gtz v0, :cond_3

    nop

    goto/32 :goto_7

    nop

    :cond_3
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    if-eqz v0, :cond_4

    nop

    goto/32 :goto_32

    nop

    :cond_4
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_2b
    iget-object p1, p0, Lnds;->o:Lrss;

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

    :goto_2c
    iget v0, p0, Lnds;->n:I

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_2d
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_2e
    iget-object v1, p0, Lnds;->l:Landroid/graphics/Rect;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_2f
    iget-object v0, v0, Lndp;->a:Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_30
    invoke-virtual {p1}, Lrss;->h()Z

    move-result p1

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_31
    return-void

    nop

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_33
    iget v0, p0, Lnds;->y:I

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

    :goto_34
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_36
    iget-object p1, p0, Lnds;->j:Landroid/os/Handler;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-virtual {p1, p0}, Landroid/graphics/Canvas;->drawColor(I)V

    goto/32 :goto_31

    nop

    nop

    :goto_38
    if-nez p1, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_39
    iget v1, p0, Lnds;->y:I

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_3a
    const/4 v1, 0x0

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

    :goto_3b
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :goto_3c
    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_3d
    iget-object v0, v0, Lndp;->a:Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop
.end method

.method public final onFinishInflate()V
    .locals 2

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object v1, v0, Lnds;->v:Landroid/view/View;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object v0, p0, Lcom/google/android/apps/camera/ui/views/ViewfinderCover;->n:Landroid/widget/ImageView;

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

    :goto_2
    check-cast v0, Landroid/widget/TextView;

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_3
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/ui/views/ViewfinderCover;->findViewById(I)Landroid/view/View;

    move-result-object v0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_6
    iput-object v0, p0, Lcom/google/android/apps/camera/ui/views/ViewfinderCover;->u:Landroid/widget/TextView;

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

    :goto_7
    check-cast v0, Landroid/widget/ImageView;

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v1, p0, Lcom/google/android/apps/camera/ui/views/ViewfinderCover;->n:Landroid/widget/ImageView;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v0}, Lnds;->g()V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-super {p0}, Lcom/google/android/apps/camera/ui/layout/GcaLayout;->onFinishInflate()V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0x7f0b0512

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_19

    nop

    :cond_0
    goto/32 :goto_18

    nop

    :goto_f
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/ui/views/ViewfinderCover;->findViewById(I)Landroid/view/View;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v1, p0, Lcom/google/android/apps/camera/ui/views/ViewfinderCover;->u:Landroid/widget/TextView;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_11
    const v0, 0x7f0b0511

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

    :goto_12
    const v0, 0x15

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_13
    iput-object v1, v0, Lnds;->w:Landroid/view/View;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-object p0, p0, Lcom/google/android/apps/camera/ui/views/ViewfinderCover;->r:Lnds;

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/views/ViewfinderCover;->r:Lnds;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p0}, Lnds;->h()V

    goto/32 :goto_4

    nop

    nop

    :goto_17
    const v1, 0x7

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_5

    nop

    :goto_19
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop
.end method

.method protected final onLayout(ZIIII)V
    .locals 17

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v8, Lieq;

    nop

    nop

    nop

    goto/32 :goto_106

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v1, v3, v4}, Lnca;->h(Landroid/util/Size;Landroid/util/Size;)Landroid/graphics/Rect;

    move-result-object v1

    nop

    goto/32 :goto_135

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    sub-int v0, v15, v13

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    :goto_3
    mul-float/2addr v0, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    :goto_4
    iget-object v1, v1, Lnbs;->d:Lnca;

    nop

    nop

    nop

    goto/32 :goto_129

    nop

    nop

    :goto_5
    if-gt v5, v6, :cond_0

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    :cond_0
    :goto_6
    goto/32 :goto_1

    nop

    nop

    :goto_7
    const-string v8, "Invalid aspect ratio in fitToRect: %s"

    nop

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

    :goto_8
    filled-new-array {v2, v1}, [I

    move-result-object v1

    nop

    nop

    goto/32 :goto_c7

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v5

    nop

    goto/32 :goto_d5

    nop

    nop

    :goto_a
    const v0, 0x1f

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    new-instance v0, Landroid/animation/AnimatorSet;

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    :goto_e
    aput-object v2, v5, v9

    nop

    goto/32 :goto_ed

    nop

    nop

    :goto_f
    new-array v5, v5, [Landroid/animation/Animator;

    nop

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

    :goto_10
    iget v2, v2, Lndp;->b:I

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v1, v0, Lcom/google/android/apps/camera/ui/views/ViewfinderCover;->i:Lrtm;

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    sub-int v0, v1, v4

    nop

    nop

    goto/32 :goto_c1

    nop

    nop

    nop

    nop

    :goto_13
    div-float/2addr v12, v4

    nop

    goto/32 :goto_10c

    nop

    nop

    :goto_14
    add-int/2addr v4, v0

    nop

    goto/32 :goto_e7

    nop

    nop

    nop

    :goto_15
    iget v0, v4, Landroid/graphics/Rect;->left:I

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_16
    invoke-direct {v13, v3, v14}, Lieq;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_17
    const/high16 v13, 0x40000000    # 2.0f

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v12

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v12

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object v0, v3, Lnds;->f:Landroid/animation/AnimatorSet;

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object v1, v1, Lndp;->a:Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    sub-int v11, v12, v8

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_1d
    invoke-direct {v13, v0, v12, v15, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    goto/32 :goto_4b

    nop

    nop

    :goto_1e
    aput-object v8, v5, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_d7

    nop

    nop

    nop

    nop

    :goto_1f
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    :cond_1
    goto/32 :goto_40

    nop

    nop

    :goto_20
    int-to-float v0, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_10f

    nop

    nop

    :goto_21
    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v5

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

    :goto_22
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v4

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

    :goto_23
    if-nez v2, :cond_2

    nop

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_a4

    nop

    nop

    :goto_24
    div-int/2addr v13, v12

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    sget-object v0, Lnds;->a:Lsdb;

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_26
    invoke-interface {v0}, Lhdd;->a()Lpog;

    move-result-object v0

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

    :goto_27
    move/from16 v0, v16

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_118

    nop

    nop

    nop

    nop

    nop

    :goto_29
    iget-object v0, v3, Lnds;->q:Loyd;

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    :goto_2a
    const/16 v8, 0x132a

    nop

    nop

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-static {v2, v4, v8, v11}, Lnds;->b(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/animation/TimeInterpolator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ValueAnimator;

    move-result-object v2

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

    :goto_2c
    div-int/2addr v15, v12

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    iget-object v0, v3, Lnds;->k:Lrss;

    nop

    goto/32 :goto_ce

    nop

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_c6

    nop

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_c3

    nop

    nop

    :goto_30
    iget v4, v3, Lnds;->p:F

    nop

    goto/32 :goto_121

    nop

    nop

    nop

    :goto_31
    if-nez v1, :cond_3

    nop

    goto/32 :goto_87

    nop

    :cond_3
    :goto_32
    goto/32 :goto_e3

    nop

    nop

    nop

    nop

    nop

    :goto_33
    if-nez v2, :cond_4

    nop

    goto/32 :goto_87

    nop

    :cond_4
    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    nop

    :goto_34
    iget-object v0, v3, Lnds;->f:Landroid/animation/AnimatorSet;

    nop

    nop

    goto/32 :goto_c0

    nop

    nop

    nop

    nop

    nop

    :goto_35
    iget-object v4, v1, Lnca;->j:Landroid/util/Size;

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

    :goto_36
    if-gt v5, v6, :cond_5

    nop

    goto/32 :goto_87

    nop

    nop

    :cond_5
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_37
    invoke-direct {v3, v4}, Lqsz;-><init>([C)V

    goto/32 :goto_eb

    nop

    nop

    nop

    nop

    nop

    :goto_38
    cmpl-float v12, v11, v12

    nop

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    :goto_39
    invoke-direct {v0, v11, v8, v12, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    iget v0, v4, Landroid/graphics/Rect;->top:I

    nop

    nop

    goto/32 :goto_d0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    new-instance v9, Lieq;

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

    :goto_3c
    if-gez v0, :cond_6

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_3d
    invoke-static {v4}, Lnds;->a(Landroid/graphics/Rect;)F

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_12f

    nop

    nop

    :goto_3e
    iget-object v0, v3, Lnds;->l:Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    add-int/2addr v12, v8

    nop

    nop

    nop

    goto/32 :goto_b6

    nop

    nop

    nop

    nop

    nop

    :goto_40
    iget-object v0, v3, Lnds;->q:Loyd;

    nop

    nop

    nop

    goto/32 :goto_133

    nop

    nop

    nop

    :goto_41
    invoke-interface {v0, v8, v13}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_f5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    new-instance v13, Landroid/graphics/Rect;

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

    nop

    nop

    :goto_43
    iget v4, v3, Lnds;->p:F

    nop

    nop

    goto/32 :goto_d9

    nop

    nop

    nop

    nop

    nop

    :goto_44
    iget-object v4, v3, Lnds;->l:Landroid/graphics/Rect;

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :goto_45
    return-void

    nop

    :goto_46
    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_47
    const v1, 0x12

    nop

    nop

    goto/32 :goto_117

    nop

    nop

    :goto_48
    iget-object v0, v3, Lnds;->k:Lrss;

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    :goto_49
    const/16 v12, 0xc

    nop

    nop

    goto/32 :goto_c2

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    invoke-static {v5, v4, v8, v9}, Lnds;->b(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/animation/TimeInterpolator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ValueAnimator;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_125

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-virtual {v3}, Lnds;->p()Z

    move-result v0

    nop

    nop

    goto/32 :goto_f4

    nop

    nop

    nop

    :goto_4c
    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    div-float/2addr v11, v13

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    cmpg-float v0, v11, v0

    nop

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    iget-object v0, v3, Lnds;->f:Landroid/animation/AnimatorSet;

    nop

    goto/32 :goto_122

    nop

    nop

    nop

    :goto_50
    mul-float/2addr v11, v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_fa

    nop

    nop

    :goto_51
    invoke-direct {v8, v3, v9}, Lieq;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    invoke-virtual {v11}, Landroid/graphics/Rect;->centerX()I

    move-result v15

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_53
    if-le v5, v6, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_7
    :goto_54
    goto/32 :goto_130

    nop

    nop

    :goto_55
    move v11, v4

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :goto_56
    goto :goto_60

    nop

    nop

    :goto_57
    goto/32 :goto_134

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_58
    mul-float/2addr v11, v0

    nop

    nop

    goto/32 :goto_fb

    nop

    nop

    :goto_59
    return-void

    nop

    nop

    nop

    nop

    :goto_5a
    goto/32 :goto_df

    nop

    nop

    nop

    nop

    :goto_5b
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_5c
    invoke-virtual {v4, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v11

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

    :goto_5d
    invoke-static {v8, v11, v12, v13}, Lnds;->b(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/animation/TimeInterpolator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ValueAnimator;

    move-result-object v8

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_5e
    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v5

    nop

    nop

    nop

    nop

    goto/32 :goto_132

    nop

    nop

    :goto_5f
    move/from16 v4, v16

    nop

    nop

    nop

    nop

    nop

    :goto_60
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_61
    iput-boolean v2, v0, Lcom/google/android/apps/camera/ui/views/ViewfinderCover;->s:Z

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

    :goto_62
    const v8, 0x3f4ccccd    # 0.8f

    nop

    nop

    goto/32 :goto_e8

    nop

    nop

    nop

    nop

    :goto_63
    if-lez v0, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :cond_8
    goto/32 :goto_2e

    nop

    :goto_64
    move/from16 v16, v11

    nop

    nop

    goto/32 :goto_cb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_65
    sub-int v8, v4, v0

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_66
    invoke-virtual {v0}, Lrss;->h()Z

    move-result v0

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_67
    iget v1, v1, Lndp;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    :goto_68
    iget-object v8, v3, Lnds;->m:Lndp;

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    :goto_69
    iget v1, v3, Lnds;->p:F

    nop

    nop

    nop

    nop

    goto/32 :goto_126

    nop

    nop

    nop

    nop

    :goto_6a
    iget-object v8, v8, Lndp;->a:Landroid/graphics/Rect;

    nop

    nop

    nop

    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    iget-object v0, v3, Lnds;->C:Lpog;

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    sub-int v12, v11, v14

    nop

    nop

    goto/32 :goto_11c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    add-int/2addr v12, v12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_6e
    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    nop

    nop

    :goto_6f
    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    nop

    nop

    goto/32 :goto_128

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_70
    iget-object v0, v3, Lnds;->f:Landroid/animation/AnimatorSet;

    nop

    nop

    goto/32 :goto_b5

    nop

    nop

    nop

    :goto_71
    move-object v4, v0

    nop

    :goto_72
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_73
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto/32 :goto_45

    nop

    nop

    :goto_74
    div-int/2addr v11, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_75
    sub-int v14, v0, v11

    nop

    nop

    nop

    goto/32 :goto_109

    nop

    nop

    :goto_76
    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    goto/32 :goto_104

    nop

    nop

    nop

    nop

    :goto_77
    div-int/2addr v14, v12

    nop

    nop

    nop

    goto/32 :goto_d2

    nop

    nop

    :goto_78
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    :goto_79
    invoke-virtual {v3, v1}, Lqsz;->e(I)V

    goto/32 :goto_f1

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    const/4 v5, 0x3

    nop

    goto/32 :goto_f0

    nop

    nop

    nop

    :goto_7b
    invoke-interface {v1}, Lrtm;->a()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_b3

    nop

    nop

    :goto_7c
    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    :goto_7d
    div-int/2addr v4, v10

    nop

    nop

    nop

    nop

    goto/32 :goto_101

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    iget-object v4, v3, Lnds;->B:Lhdd;

    nop

    nop

    nop

    goto/32 :goto_112

    nop

    nop

    nop

    nop

    :goto_7f
    iput-object v0, v3, Lnds;->f:Landroid/animation/AnimatorSet;

    nop

    goto/32 :goto_70

    nop

    nop

    :goto_80
    new-instance v4, Landroid/graphics/Rect;

    nop

    nop

    nop

    goto/32 :goto_fe

    nop

    nop

    nop

    :goto_81
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_82
    iget-object v0, v3, Lnds;->f:Landroid/animation/AnimatorSet;

    nop

    nop

    nop

    goto/32 :goto_f9

    nop

    nop

    nop

    :goto_83
    check-cast v0, Ljava/lang/Float;

    nop

    goto/32 :goto_102

    nop

    nop

    nop

    nop

    :goto_84
    rem-int v0, v0, v1

    nop

    goto/32 :goto_63

    nop

    nop

    :goto_85
    invoke-virtual {v0, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    goto/32 :goto_123

    nop

    nop

    nop

    :goto_86
    iput v4, v3, Lnds;->E:I

    nop

    nop

    nop

    nop

    :goto_87
    goto/32 :goto_c5

    nop

    nop

    :goto_88
    iget-object v0, v3, Lnds;->k:Lrss;

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

    nop

    :goto_89
    iget v0, v0, Lnjh;->b:I

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

    nop

    :goto_8a
    if-nez v1, :cond_9

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_69

    nop

    nop

    :goto_8b
    if-eqz v12, :cond_a

    nop

    nop

    nop

    goto/32 :goto_f6

    nop

    nop

    :cond_a
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_8c
    invoke-virtual {v1, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto/32 :goto_97

    nop

    nop

    nop

    :goto_8d
    iput-object v0, v3, Lnds;->C:Lpog;

    nop

    nop

    goto/32 :goto_d3

    nop

    nop

    :goto_8e
    int-to-float v12, v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_cd

    nop

    nop

    :goto_8f
    div-int/2addr v4, v10

    nop

    nop

    goto/32 :goto_108

    nop

    nop

    :goto_90
    int-to-float v0, v0

    nop

    nop

    nop

    goto/32 :goto_10e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_91
    int-to-float v0, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_92
    if-nez v4, :cond_b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    :cond_b
    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_93
    iget-object v4, v1, Lndp;->a:Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    goto/32 :goto_105

    nop

    nop

    nop

    nop

    nop

    :goto_94
    if-gt v11, v12, :cond_c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    :cond_c
    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    nop

    :goto_95
    if-ltz v0, :cond_d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_fc

    nop

    nop

    :cond_d
    goto/32 :goto_114

    nop

    nop

    nop

    :goto_96
    iget-object v6, v6, Lndp;->a:Landroid/graphics/Rect;

    nop

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    nop

    :goto_97
    aput-object v1, v5, v10

    nop

    nop

    goto/32 :goto_ea

    nop

    nop

    nop

    :goto_98
    div-int/2addr v0, v10

    nop

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

    nop

    :goto_99
    invoke-virtual {v4, v6}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12c

    nop

    nop

    nop

    nop

    :goto_9a
    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_9b
    invoke-direct {v9, v3, v10}, Lieq;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9c
    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v4

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    :goto_9d
    invoke-interface {v0}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    :goto_9e
    iget v12, v0, Lnjh;->b:I

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    :goto_9f
    iget-object v0, v3, Lnds;->l:Landroid/graphics/Rect;

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

    :goto_a0
    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    :goto_a1
    iget-boolean v2, v2, Lnbp;->q:Z

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

    :goto_a2
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v11

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a3
    add-int/2addr v5, v0

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_a4
    goto/16 :goto_87

    nop

    nop

    nop

    nop

    :goto_a5
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_a6
    invoke-super/range {p0 .. p5}, Lcom/google/android/apps/camera/ui/layout/GcaLayout;->onLayout(ZIIII)V

    goto/32 :goto_11

    nop

    nop

    :goto_a7
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v0

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

    :goto_a8
    const/16 v14, 0xb

    nop

    nop

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

    :goto_a9
    invoke-static {v4}, Lnds;->a(Landroid/graphics/Rect;)F

    move-result v4

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

    :goto_aa
    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    nop

    :goto_ab
    if-nez v1, :cond_e

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_e1

    nop

    nop

    nop

    nop

    nop

    :goto_ac
    if-nez v4, :cond_f

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    :cond_f
    goto/32 :goto_b2

    nop

    nop

    nop

    :goto_ad
    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v14

    nop

    nop

    goto/32 :goto_ca

    nop

    nop

    nop

    :goto_ae
    invoke-interface {v0, v8}, Lscz;->M(I)Lsdo;

    move-result-object v0

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

    :goto_af
    iget-boolean v1, v3, Lnds;->x:Z

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    :goto_b0
    iget-object v11, v1, Lndp;->a:Landroid/graphics/Rect;

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

    :goto_b1
    check-cast v0, Lnjh;

    nop

    goto/32 :goto_b0

    nop

    nop

    :goto_b2
    iget-object v1, v3, Lnds;->m:Lndp;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_b3
    iget-boolean v2, v0, Lcom/google/android/apps/camera/ui/views/ViewfinderCover;->s:Z

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

    :goto_b4
    const/4 v12, 0x0

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_b5
    new-array v1, v9, [Landroid/animation/Animator;

    nop

    nop

    nop

    goto/32 :goto_115

    nop

    nop

    nop

    :goto_b6
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    :goto_b7
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    :goto_b8
    iget-object v11, v1, Lndp;->a:Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    goto/32 :goto_c4

    nop

    nop

    nop

    :goto_b9
    iget v1, v0, Lcom/google/android/apps/camera/ui/views/ViewfinderCover;->v:I

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    :goto_ba
    invoke-virtual {v0}, Lnjh;->a()Landroid/graphics/Rect;

    move-result-object v0

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bb
    if-gez v1, :cond_10

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_ff

    nop

    nop

    nop

    nop

    nop

    :goto_bc
    iget-object v2, v1, Lnbs;->b:Lnbp;

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    :goto_bd
    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v13

    nop

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

    :goto_be
    if-eqz v11, :cond_11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_de

    nop

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_113

    nop

    nop

    nop

    nop

    nop

    :goto_bf
    check-cast v0, Lscz;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_c0
    invoke-virtual {v0, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_c1
    add-int/2addr v1, v4

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

    nop

    nop

    :goto_c2
    invoke-direct {v11, v3, v12}, Lieq;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_c3
    move-object/from16 v0, p0

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    nop

    :goto_c4
    iget-object v12, v3, Lnds;->e:Landroid/view/animation/BaseInterpolator;

    nop

    nop

    nop

    goto/32 :goto_11b

    nop

    nop

    nop

    :goto_c5
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_c6
    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_c7
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_dc

    nop

    nop

    :goto_c8
    iget v4, v3, Lnds;->E:I

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    :goto_c9
    new-instance v11, Lieq;

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    :goto_ca
    add-int/2addr v12, v12

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

    :goto_cb
    move v11, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_cc
    invoke-interface/range {p0 .. p0}, Lndr;->g()Z

    move-result v0

    nop

    nop

    goto/32 :goto_e2

    nop

    nop

    nop

    nop

    :goto_cd
    invoke-static {v4}, Lnds;->a(Landroid/graphics/Rect;)F

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_103

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ce
    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

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

    :goto_cf
    iget-object v3, v1, Lnca;->k:Landroid/util/Size;

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d0
    if-gez v0, :cond_12

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

    :cond_12
    goto/32 :goto_82

    nop

    nop

    nop

    :goto_d1
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_d2
    iget v12, v0, Lnjh;->b:I

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

    nop

    :goto_d3
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_d4
    goto/32 :goto_86

    nop

    nop

    :goto_d5
    int-to-float v5, v5

    nop

    nop

    goto/32 :goto_ef

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d6
    move/from16 v16, v11

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    :goto_d7
    iget-object v2, v3, Lnds;->l:Landroid/graphics/Rect;

    nop

    goto/32 :goto_e0

    nop

    nop

    nop

    nop

    nop

    :goto_d8
    if-lez v4, :cond_13

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    :cond_13
    goto/32 :goto_93

    nop

    nop

    nop

    nop

    :goto_d9
    cmpl-float v4, v4, v0

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

    :goto_da
    div-float/2addr v4, v0

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    :goto_db
    add-int/2addr v11, v14

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_dc
    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_dd
    invoke-direct {v4, v13, v14, v12, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_de
    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_df
    iget-object v0, v3, Lnds;->B:Lhdd;

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_e0
    iget-object v8, v3, Lnds;->e:Landroid/view/animation/BaseInterpolator;

    nop

    nop

    nop

    goto/32 :goto_c9

    nop

    nop

    nop

    nop

    :goto_e1
    check-cast v1, Lnbs;

    nop

    nop

    nop

    goto/32 :goto_bc

    nop

    nop

    nop

    nop

    nop

    :goto_e2
    const/4 v4, 0x4

    nop

    goto/32 :goto_11d

    nop

    nop

    nop

    :goto_e3
    iget-object v1, v3, Lnds;->l:Landroid/graphics/Rect;

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_e4
    const/high16 v8, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    nop

    :goto_e5
    goto/32 :goto_3d

    nop

    nop

    :goto_e6
    iget-object v3, v0, Lcom/google/android/apps/camera/ui/views/ViewfinderCover;->r:Lnds;

    nop

    nop

    goto/32 :goto_c8

    nop

    nop

    nop

    nop

    nop

    :goto_e7
    new-instance v0, Landroid/graphics/Rect;

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_e8
    const/4 v9, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_11f

    nop

    nop

    :goto_e9
    if-nez v5, :cond_14

    nop

    goto/32 :goto_10b

    nop

    nop

    nop

    :cond_14
    goto/32 :goto_10a

    nop

    nop

    nop

    nop

    nop

    :goto_ea
    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto/32 :goto_12b

    nop

    nop

    :goto_eb
    iput-object v1, v3, Lqsz;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_b9

    nop

    nop

    :goto_ec
    new-instance v0, Landroid/animation/AnimatorSet;

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    :goto_ed
    iget-object v2, v3, Lnds;->m:Lndp;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_ee
    int-to-float v12, v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    :goto_ef
    mul-float/2addr v5, v4

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_f0
    if-eq v4, v5, :cond_15

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    :cond_15
    goto/32 :goto_cc

    nop

    nop

    nop

    nop

    nop

    :goto_f1
    invoke-virtual {v3}, Lqsz;->d()Lndp;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e6

    nop

    nop

    nop

    :goto_f2
    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v5

    nop

    nop

    goto/32 :goto_127

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f3
    new-instance v4, Landroid/graphics/Rect;

    nop

    goto/32 :goto_dd

    nop

    nop

    nop

    nop

    nop

    :goto_f4
    if-ne v9, v0, :cond_16

    nop

    goto/32 :goto_e5

    nop

    nop

    nop

    nop

    :cond_16
    goto/32 :goto_e4

    nop

    nop

    nop

    nop

    :goto_f5
    goto/16 :goto_72

    nop

    nop

    :goto_f6
    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_f7
    add-int/2addr v0, v11

    nop

    nop

    nop

    nop

    goto/32 :goto_f3

    nop

    nop

    nop

    :goto_f8
    const/16 v10, 0x9

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f9
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    goto/32 :goto_ec

    nop

    nop

    :goto_fa
    div-float/2addr v0, v13

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_fb
    goto/16 :goto_28

    nop

    nop

    nop

    :goto_fc
    goto/32 :goto_78

    nop

    nop

    nop

    :goto_fd
    iget v12, v0, Lnjh;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_bd

    nop

    nop

    :goto_fe
    invoke-direct {v4, v8, v0, v5, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ff
    invoke-virtual {v3}, Lnds;->p()Z

    move-result v1

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_100
    if-gt v5, v6, :cond_17

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    :cond_17
    goto/32 :goto_f2

    nop

    nop

    nop

    nop

    :goto_101
    sub-int v8, v5, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    :goto_102
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

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

    :goto_103
    mul-float/2addr v12, v4

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    :goto_104
    iput-object v0, v3, Lnds;->f:Landroid/animation/AnimatorSet;

    nop

    nop

    goto/32 :goto_116

    nop

    nop

    :goto_105
    iget-object v6, v3, Lnds;->m:Lndp;

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    nop

    :goto_106
    const/16 v9, 0xd

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    :goto_107
    iget-object v8, v3, Lnds;->e:Landroid/view/animation/BaseInterpolator;

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_108
    div-int/2addr v11, v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12a

    nop

    nop

    :goto_109
    add-int/2addr v12, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_f7

    nop

    nop

    nop

    nop

    nop

    :goto_10a
    div-float/2addr v0, v8

    nop

    nop

    nop

    :goto_10b
    goto/32 :goto_da

    nop

    nop

    nop

    nop

    nop

    :goto_10c
    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_d6

    nop

    nop

    :goto_10d
    if-eq v0, v4, :cond_18

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    :cond_18
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_10e
    div-float v11, v0, v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    :goto_10f
    mul-float/2addr v0, v4

    nop

    nop

    goto/32 :goto_131

    nop

    nop

    nop

    nop

    :goto_110
    if-nez v3, :cond_19

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

    :cond_19
    goto/32 :goto_92

    nop

    nop

    nop

    :goto_111
    invoke-virtual {v11}, Landroid/graphics/Rect;->centerY()I

    move-result v11

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

    :goto_112
    invoke-interface {v4}, Lhdd;->a()Lpog;

    move-result-object v4

    nop

    nop

    goto/32 :goto_10d

    nop

    nop

    :goto_113
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v11

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

    :goto_114
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    :goto_115
    iget-object v5, v3, Lnds;->l:Landroid/graphics/Rect;

    nop

    nop

    goto/32 :goto_107

    nop

    nop

    :goto_116
    iget-object v0, v3, Lnds;->f:Landroid/animation/AnimatorSet;

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

    :goto_117
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_118
    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v12

    nop

    goto/32 :goto_12e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_119
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto/32 :goto_12d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11a
    check-cast v0, Lnjh;

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

    :goto_11b
    new-instance v13, Lieq;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    :goto_11c
    add-int/2addr v15, v13

    nop

    goto/32 :goto_db

    nop

    nop

    nop

    nop

    nop

    :goto_11d
    if-nez v0, :cond_1a

    nop

    nop

    goto/32 :goto_d4

    nop

    nop

    nop

    nop

    nop

    :cond_1a
    goto/32 :goto_120

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11e
    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v6

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_11f
    const/4 v10, 0x2

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

    :goto_120
    iput v4, v3, Lnds;->E:I

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    :goto_121
    invoke-virtual {v3}, Lnds;->p()Z

    move-result v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e9

    nop

    nop

    nop

    :goto_122
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_123
    iget-object v0, v3, Lnds;->f:Landroid/animation/AnimatorSet;

    nop

    goto/32 :goto_119

    nop

    nop

    nop

    nop

    nop

    :goto_124
    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v6

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_125
    aput-object v4, v1, v2

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_126
    cmpg-float v1, v1, v0

    nop

    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    nop

    :goto_127
    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v6

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_128
    invoke-direct {v4}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_129
    invoke-static {v1}, Lqrg;->G(Ljava/lang/Object;)V

    goto/32 :goto_cf

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12a
    sub-int v13, v12, v4

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12b
    iget-object v0, v3, Lnds;->f:Landroid/animation/AnimatorSet;

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    :goto_12c
    const-wide/16 v6, 0x12c

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

    :goto_12d
    iget-object v0, v3, Lnds;->m:Lndp;

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_12e
    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_12f
    invoke-static {v13}, Lnds;->a(Landroid/graphics/Rect;)F

    move-result v11

    nop

    goto/32 :goto_b4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_130
    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v5

    nop

    nop

    nop

    nop

    goto/32 :goto_124

    nop

    nop

    nop

    nop

    nop

    :goto_131
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

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

    :goto_132
    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v6

    nop

    nop

    goto/32 :goto_100

    nop

    nop

    nop

    nop

    :goto_133
    if-nez v0, :cond_1b

    nop

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    :cond_1b
    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    :goto_134
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v11

    nop

    goto/32 :goto_ee

    nop

    nop

    nop

    nop

    nop

    :goto_135
    new-instance v3, Lqsz;

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

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const/4 p0, 0x0

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
    return p0

    nop
.end method

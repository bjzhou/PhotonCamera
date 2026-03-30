.class public final Lglm;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lnbg;


# instance fields
.field public final a:Lcom/google/android/apps/camera/bottombar/BottomBar;

.field public final b:Lcom/google/android/apps/camera/bottombar/CameraSwitchButton;

.field public final c:Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;

.field public final d:Loyd;

.field public e:Lrss;

.field public final f:Ljava/lang/Object;

.field public g:Z

.field public h:Z

.field public i:Z

.field public final j:Ljava/util/List;

.field public final k:Lhhg;

.field private l:Lnne;

.field private final m:Ljava/util/Set;

.field private n:Z

.field private final o:Lhoh;


# direct methods
.method private final 175bafa759041016accb75ef876de5d9m()Lrss;
    .locals 2

    goto/32 :goto_6

    nop

    nop

    :goto_0
    sget-object p0, Lrsa;->a:Lrsa;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v0, v1}, Lryb;->contains(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_4
    const v1, 0x13

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Lglm;->e:Lrss;

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_6
    const v0, 0x1a

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v1, p0, Lglm;->l:Lnne;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_8
    return-object p0

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
    goto/32 :goto_c

    nop

    nop

    :goto_b
    goto/32 :goto_2

    nop

    :goto_c
    goto/32 :goto_10

    nop

    nop

    :goto_d
    if-nez v0, :cond_0

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_f
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_1
    goto/32 :goto_14

    nop

    nop

    :goto_10
    sget-object v0, Ljas;->a:Lryb;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_11
    iget-object p0, p0, Lglm;->e:Lrss;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-nez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_14
    iget-boolean v0, p0, Lglm;->n:Z

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

    :goto_15
    goto/16 :goto_9

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_17
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    :cond_3
    goto/32 :goto_b

    nop

    :goto_18
    invoke-virtual {v0}, Lrss;->h()Z

    move-result v0

    nop

    goto/32 :goto_f

    nop

    nop

    nop
.end method

.method public constructor <init>(Lcom/google/android/apps/camera/bottombar/BottomBar;Lhoh;Loyd;)V
    .locals 1

    goto/32 :goto_e

    nop

    nop

    :goto_0
    new-instance p1, Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1
    iput-object v0, p0, Lglm;->e:Lrss;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2
    iput-object p2, p0, Lglm;->b:Lcom/google/android/apps/camera/bottombar/CameraSwitchButton;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_3
    new-instance v0, Ljava/util/HashSet;

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

    :goto_4
    iput-object p1, p0, Lglm;->c:Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    new-instance v0, Lgll;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_6
    iget-object p1, p1, Lcom/google/android/apps/camera/bottombar/BottomBar;->p:Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    :goto_8
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_9
    invoke-direct {v0, p0}, Lgll;-><init>(Lglm;)V

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_a
    new-instance p1, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_b
    sget-object p1, Lnne;->a:Lnne;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    sget-object v0, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_d
    iget-object p2, p1, Lcom/google/android/apps/camera/bottombar/BottomBar;->q:Lcom/google/android/apps/camera/bottombar/CameraSwitchButton;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_e
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_c

    nop

    nop

    :goto_f
    iput-object v0, p0, Lglm;->k:Lhhg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iput-object v0, p0, Lglm;->m:Ljava/util/Set;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_12
    iput-object p1, p0, Lglm;->a:Lcom/google/android/apps/camera/bottombar/BottomBar;

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

    :goto_13
    iput-object p1, p0, Lglm;->f:Ljava/lang/Object;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_14
    iput-object p2, p0, Lglm;->o:Lhoh;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iput-object p1, p0, Lglm;->j:Ljava/util/List;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_16
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iput-object p1, p0, Lglm;->l:Lnne;

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

    :goto_18
    iput-object p3, p0, Lglm;->d:Loyd;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop
.end method


# virtual methods
.method public final A(Lhhg;)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lglm;->f:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    throw p0

    nop

    nop

    nop

    nop

    :goto_2
    monitor-enter v0

    nop

    :try_start_0
    iget-object p0, p0, Lglm;->j:Ljava/util/List;

    nop

    nop

    nop

    nop

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    nop

    nop

    return-void

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final a()Lpci;
    .locals 2

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/16 v1, 0x13

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1
    goto/32 :goto_c

    nop

    nop

    :goto_2
    goto/32 :goto_3

    nop

    nop

    :goto_3
    const/4 v0, 0x0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_4
    const v0, 0x1c

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

    :goto_5
    rem-int v0, v0, v1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_6
    invoke-direct {v0, p0, v1}, Lfym;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_8
    new-instance v0, Lfym;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_b
    return-object v0

    nop

    :goto_c
    goto/32 :goto_7

    nop

    nop

    :goto_d
    const v1, 0x5

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_e
    invoke-virtual {p0, v0}, Lglm;->l(Z)V

    goto/32 :goto_8

    nop

    nop
.end method

.method public final d()Lpci;
    .locals 2

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, v0}, Lglm;->n(I)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_3

    nop

    nop

    :goto_3
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v0, 0x4

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_2

    nop

    :goto_6
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0x19

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0x12

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_a
    invoke-direct {v0, p0, v1}, Lfym;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

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

    :goto_c
    new-instance v0, Lfym;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_e
    const/16 v1, 0x12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop
.end method

.method public final synthetic dI(Lnbh;)V
    .locals 0

    goto/32 :goto_0

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
.end method

.method public final dP(Lnbe;Lnbh;)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_1
    sget-object p2, Lnbe;->d:Lnbe;

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_2
    sget-object p1, Lgln;->a:Lgln;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    sget-object p2, Lnbe;->b:Lnbe;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0, p1}, Lglm;->e(Lgln;)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p1}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result p1

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_2

    nop

    nop

    :goto_8
    iget-object p1, p0, Lglm;->a:Lcom/google/android/apps/camera/bottombar/BottomBar;

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

    :goto_9
    return-void

    nop

    nop

    :goto_a
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_b
    check-cast p1, Landroid/app/Activity;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_c
    iput-boolean p1, p0, Lglm;->i:Z

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const/16 v0, 0x11

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_e
    new-instance p2, Lghh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_f
    if-eq p1, p2, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    :cond_0
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-boolean p1, p0, Lglm;->i:Z

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p1}, Lcom/google/android/apps/camera/bottombar/BottomBar;->getContext()Landroid/content/Context;

    move-result-object p1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iput-boolean p1, p0, Lglm;->i:Z

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p1, p2}, Lcom/google/android/apps/camera/bottombar/BottomBar;->post(Ljava/lang/Runnable;)Z

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_15
    sget-object p1, Lgln;->a:Lgln;

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_16
    const/4 p1, 0x1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_17
    if-eq p1, p2, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    :cond_1
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget-object p1, p0, Lglm;->a:Lcom/google/android/apps/camera/bottombar/BottomBar;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_19
    invoke-direct {p2, p0, v0}, Lghh;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_14

    nop

    nop

    :goto_1a
    if-eqz p1, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

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

    nop

    nop

    :goto_1b
    if-nez p1, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    :cond_3
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/16 :goto_7

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    if-ne p1, p2, :cond_4

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

    :cond_4
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {p0, p1}, Lglm;->f(Lgln;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_21
    sget-object p2, Lnbe;->c:Lnbe;

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_22
    goto/16 :goto_a

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_18

    nop

    nop
.end method

.method public final e(Lgln;)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    sget-object v0, Lrsa;->a:Lrsa;

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

    :goto_1
    iget-object v0, p0, Lglm;->m:Ljava/util/Set;

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2
    invoke-virtual {p0, p1, v0}, Lcom/google/android/apps/camera/bottombar/BottomBar;->r(Lglk;Lrss;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/32 :goto_4

    nop

    nop

    :goto_4
    const/4 p1, 0x0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    :goto_6
    iget-object p0, p0, Lglm;->a:Lcom/google/android/apps/camera/bottombar/BottomBar;

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

    :goto_7
    sget-object p1, Lglk;->d:Lglk;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_8
    iput-boolean p1, p0, Lglm;->n:Z

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
.end method

.method public final f(Lgln;)V
    .locals 1

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p1, p0, Lglm;->m:Ljava/util/Set;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    iget-object p1, p0, Lglm;->a:Lcom/google/android/apps/camera/bottombar/BottomBar;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    :goto_3
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

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

    :goto_4
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_f

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

    nop

    nop

    :goto_5
    invoke-direct {p0}, Lglm;->175bafa759041016accb75ef876de5d9m()Lrss;

    move-result-object p0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_6
    sget-object v0, Lglk;->d:Lglk;

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

    :goto_7
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p1, v0, p0}, Lcom/google/android/apps/camera/bottombar/BottomBar;->r(Lglk;Lrss;)V

    :goto_9
    goto/32 :goto_2

    nop

    nop

    :goto_a
    iget-boolean v0, p0, Lglm;->n:Z

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_b
    const/4 p1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v0, p0, Lglm;->m:Ljava/util/Set;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_d
    iput-boolean p1, p0, Lglm;->n:Z

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
    goto :goto_9

    nop

    nop

    :goto_f
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_10
    if-nez p1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_b

    nop

    nop

    nop

    nop
.end method

.method public final g()V
    .locals 2

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x6

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1
    sget-object v0, Lglk;->c:Lglk;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    sget-object v1, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    :goto_4
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_8
    goto/32 :goto_c

    nop

    :goto_9
    const v1, 0x1c

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_a
    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/camera/bottombar/BottomBar;->m(Lglk;Lrss;)V

    goto/32 :goto_3

    nop

    nop

    :goto_b
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_d
    iget-object p0, p0, Lglm;->a:Lcom/google/android/apps/camera/bottombar/BottomBar;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public final h()V
    .locals 2

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x9

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

    nop

    :goto_1
    iget-object v0, p0, Lglm;->a:Lcom/google/android/apps/camera/bottombar/BottomBar;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_e

    nop

    nop

    :goto_6
    invoke-virtual {p0, v0}, Lglm;->e(Lgln;)V

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0}, Lcom/google/android/apps/camera/bottombar/BottomBar;->p()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0x11

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

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

    :goto_a
    sget-object v0, Lgln;->b:Lgln;

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

    nop

    :goto_b
    goto/32 :goto_5

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_d
    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/bottombar/BottomBar;->q(Z)V

    goto/32 :goto_a

    nop

    nop

    :goto_e
    iget-object v0, p0, Lglm;->a:Lcom/google/android/apps/camera/bottombar/BottomBar;

    nop

    goto/32 :goto_7

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

    nop

    :goto_10
    goto/32 :goto_b

    nop

    nop

    nop
.end method

.method public final i()V
    .locals 3

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0xb

    nop

    nop

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

    :goto_1
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0}, Lcom/google/android/apps/camera/bottombar/PauseResumeButton;->refreshDrawableState()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-nez v0, :cond_0

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :cond_0
    :goto_8
    goto/32 :goto_17

    nop

    nop

    :goto_9
    invoke-virtual {p0}, Lcom/google/android/apps/camera/bottombar/BottomBar;->j()Lcom/google/android/apps/camera/bottombar/PauseResumeButton;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_a
    iget-object p0, p0, Lglm;->a:Lcom/google/android/apps/camera/bottombar/BottomBar;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_b
    iget-object v0, p0, Lcom/google/android/apps/camera/bottombar/PauseResumeButton;->d:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_e
    const/4 v0, 0x1

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_f
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/bottombar/PauseResumeButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-boolean v0, p0, Lcom/google/android/apps/camera/bottombar/PauseResumeButton;->b:Z

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/bottombar/PauseResumeButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const v1, 0x8

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

    :goto_13
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

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

    :goto_15
    rem-int v0, v0, v1

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

    :goto_16
    const v1, 0x7f1405c0

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_17
    iget-object v0, p0, Lcom/google/android/apps/camera/bottombar/PauseResumeButton;->a:Landroid/content/Context;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_18
    if-nez v0, :cond_1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_19
    iput-boolean v0, p0, Lcom/google/android/apps/camera/bottombar/PauseResumeButton;->c:Z

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

    :goto_1a
    iget-object v0, p0, Lcom/google/android/apps/camera/bottombar/PauseResumeButton;->d:Landroid/graphics/drawable/Drawable;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {p0}, Lcom/google/android/apps/camera/bottombar/PauseResumeButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_1d
    iput-object v0, p0, Lcom/google/android/apps/camera/bottombar/PauseResumeButton;->d:Landroid/graphics/drawable/Drawable;

    nop

    :goto_1e
    goto/32 :goto_b

    nop

    nop

    :goto_1f
    const v1, 0x7f08047a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_20
    if-lez v0, :cond_2

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_c

    nop
.end method

.method public final j(Z)V
    .locals 1

    goto/32 :goto_8

    nop

    nop

    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->q:Lcom/google/android/apps/camera/bottombar/CameraSwitchButton;

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

    :goto_3
    if-nez p1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    :cond_0
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0, p1}, Lcom/google/android/apps/camera/bottombar/CameraSwitchButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0}, Lcom/google/android/apps/camera/bottombar/CameraSwitchButton;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/bottombar/CameraSwitchButton;->setEnabled(Z)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    :goto_8
    iget-object p0, p0, Lglm;->a:Lcom/google/android/apps/camera/bottombar/BottomBar;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_9
    const v0, 0x7f1400fa

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_a
    invoke-virtual {p0, p1}, Lcom/google/android/apps/camera/bottombar/CameraSwitchButton;->setEnabled(Z)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_b
    goto :goto_10

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const/4 p1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_e
    const v0, 0x7f1400fb

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_4

    nop

    nop

    :goto_11
    invoke-virtual {p0}, Lcom/google/android/apps/camera/bottombar/CameraSwitchButton;->getResources()Landroid/content/res/Resources;

    move-result-object p1

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
.end method

.method public final k()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lglm;->a:Lcom/google/android/apps/camera/bottombar/BottomBar;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/apps/camera/bottombar/PauseResumeButton;->a()V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Lcom/google/android/apps/camera/bottombar/BottomBar;->j()Lcom/google/android/apps/camera/bottombar/PauseResumeButton;

    move-result-object p0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    return-void

    nop
.end method

.method public final l(Z)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lcom/google/android/apps/camera/bottombar/BottomBar;->q:Lcom/google/android/apps/camera/bottombar/CameraSwitchButton;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/camera/bottombar/CameraSwitchButton;->setEnabled(Z)V

    goto/32 :goto_3

    nop

    nop

    :goto_2
    iget-object p0, p0, Lglm;->a:Lcom/google/android/apps/camera/bottombar/BottomBar;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    return-void

    nop

    nop
.end method

.method public final m(Z)V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lglm;->a:Lcom/google/android/apps/camera/bottombar/BottomBar;

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

    :goto_1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/camera/bottombar/BottomBar;->setPressed(Z)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 p1, 0x0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v0, p1}, Lcom/google/android/apps/camera/bottombar/BottomBar;->n(Z)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Lglm;->a:Lcom/google/android/apps/camera/bottombar/BottomBar;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_5
    return-void

    nop
.end method

.method public final n(I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lglm;->a:Lcom/google/android/apps/camera/bottombar/BottomBar;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    invoke-virtual {p0, p1}, Lcom/google/android/apps/camera/bottombar/BottomBar;->setImportantForAccessibility(I)V

    goto/32 :goto_1

    nop

    nop
.end method

.method public final o(Z)V
    .locals 3

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_3
    new-instance v0, Lfgu;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_4
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/bottombar/BottomBar;->post(Ljava/lang/Runnable;)Z

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p0, p0, Lglm;->a:Lcom/google/android/apps/camera/bottombar/BottomBar;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_6
    const v1, 0x1c

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_7
    invoke-direct {v0, p0, p1, v1, v2}, Lfgu;-><init>(Ljava/lang/Object;ZI[C)V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0x18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    goto/32 :goto_d

    nop

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

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_c

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

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public final p(Z)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->k(Z)V

    goto/32 :goto_1

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
    iget-object p0, p0, Lglm;->a:Lcom/google/android/apps/camera/bottombar/BottomBar;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Lcom/google/android/apps/camera/bottombar/BottomBar;->k()Lcom/google/android/apps/camera/bottombar/SnapshotButton;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public final q()V
    .locals 2

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sget-object v1, Lhni;->h:Lhmn;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    invoke-virtual {v0, v1}, Lhoh;->p(Lhmn;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_11

    nop

    nop

    :goto_4
    iget-object v0, p0, Lglm;->o:Lhoh;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_6
    invoke-virtual {p0, v0}, Lglm;->f(Lgln;)V

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_9
    iget-object v0, p0, Lglm;->l:Lnne;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_7

    nop

    nop

    :goto_c
    const v1, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_d
    if-eqz v0, :cond_0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    nop

    :goto_e
    if-eq v0, v1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :cond_1
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_2

    nop

    :goto_10
    sget-object v1, Lnne;->g:Lnne;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v0, p0, Lglm;->l:Lnne;

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

    :goto_12
    invoke-virtual {p0}, Lglm;->s()V

    :goto_13
    goto/32 :goto_16

    nop

    nop

    :goto_14
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_15
    invoke-virtual {p0, v0}, Lglm;->x(Lnne;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_16
    sget-object v0, Lgln;->b:Lgln;

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

    nop
.end method

.method public final r()V
    .locals 2

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_5

    nop

    :goto_1
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Lglm;->b:Lcom/google/android/apps/camera/bottombar/CameraSwitchButton;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    sget-object v1, Lglk;->c:Lglk;

    nop

    goto/32 :goto_b

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

    :goto_5
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_0

    nop

    :goto_7
    goto/32 :goto_1

    nop

    :goto_8
    invoke-virtual {p0, v1, v0}, Lcom/google/android/apps/camera/bottombar/BottomBar;->m(Lglk;Lrss;)V

    goto/32 :goto_4

    nop

    nop

    :goto_9
    invoke-virtual {p0, v0}, Lglm;->f(Lgln;)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_b
    invoke-static {v0}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v0

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

    nop

    :goto_c
    const v0, 0xa

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_d
    const v1, 0x15

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

    :goto_e
    iget-object p0, p0, Lglm;->a:Lcom/google/android/apps/camera/bottombar/BottomBar;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_f
    sget-object v0, Lgln;->c:Lgln;

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

    :goto_10
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop
.end method

.method public final s()V
    .locals 2

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lglm;->a:Lcom/google/android/apps/camera/bottombar/BottomBar;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1
    sget-object v0, Lglk;->b:Lglk;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_3
    invoke-static {v0, v1}, Lryh;->n(Ljava/lang/Object;Ljava/lang/Object;)Lryh;

    move-result-object v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_4
    return-void

    nop

    :goto_5
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {v1}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_7
    const v0, 0x1

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

    :goto_8
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0x13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_b
    iget-object v1, p0, Lglm;->c:Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;

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

    :goto_c
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/bottombar/BottomBar;->o(Lryh;)V

    goto/32 :goto_4

    nop

    nop
.end method

.method public final t()V
    .locals 4

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0}, Lcom/google/android/apps/camera/bottombar/BottomBar;->h()Landroid/widget/ImageButton;

    move-result-object v0

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

    :goto_1
    iget-object p0, p0, Lglm;->a:Lcom/google/android/apps/camera/bottombar/BottomBar;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_4
    invoke-static {v2}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v2

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

    :goto_5
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_2

    nop

    :goto_6
    invoke-virtual {v2}, Lcom/google/android/apps/camera/bottombar/BottomBar;->g()Landroid/widget/ImageButton;

    move-result-object v2

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_8
    sget-object v3, Lglk;->c:Lglk;

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_9
    const v0, 0x1c

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

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

    :goto_b
    invoke-static {v1, v0, v3, v2}, Lryh;->o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lryh;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/bottombar/BottomBar;->o(Lryh;)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v0, p0, Lglm;->a:Lcom/google/android/apps/camera/bottombar/BottomBar;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_e
    invoke-static {v0}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v0

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

    :goto_f
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    sget-object v1, Lglk;->b:Lglk;

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

    :goto_11
    iget-object v2, p0, Lglm;->a:Lcom/google/android/apps/camera/bottombar/BottomBar;

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

    nop

    :goto_12
    const v1, 0xd

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_13
    return-void

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_7

    nop

    nop
.end method

.method public final u(ZZ)V
    .locals 3

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-boolean v0, p0, Lglm;->g:Z

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_27

    nop

    :goto_2
    const v0, 0x19

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-nez p2, :cond_0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-eqz v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_5

    nop

    nop

    :goto_5
    iget-object v0, p0, Lglm;->a:Lcom/google/android/apps/camera/bottombar/BottomBar;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_6
    sget-object v1, Lglk;->b:Lglk;

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p2}, Lcom/google/android/apps/camera/bottombar/BottomBar;->k()Lcom/google/android/apps/camera/bottombar/SnapshotButton;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/bottombar/BottomBar;->q(Z)V

    :goto_9
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {p2}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object p2

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_b
    invoke-static {v1, p1, v2, p2}, Lryh;->o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lryh;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_c
    iget-object p1, p0, Lglm;->a:Lcom/google/android/apps/camera/bottombar/BottomBar;

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

    :goto_d
    iget-object p2, p0, Lglm;->a:Lcom/google/android/apps/camera/bottombar/BottomBar;

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

    :goto_e
    goto/16 :goto_23

    nop

    :goto_f
    goto/32 :goto_22

    nop

    nop

    :goto_10
    invoke-static {p1}, Lrss;->j(Ljava/lang/Object;)Lrss;

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

    :goto_11
    invoke-virtual {v0, p1}, Lcom/google/android/apps/camera/bottombar/BottomBar;->o(Lryh;)V

    goto/32 :goto_1e

    nop

    nop

    :goto_12
    const v1, 0x12

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_13
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_15
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p1}, Lcom/google/android/apps/camera/bottombar/BottomBar;->j()Lcom/google/android/apps/camera/bottombar/PauseResumeButton;

    move-result-object p1

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_17
    return-void

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p0, p1}, Lglm;->e(Lgln;)V

    goto/32 :goto_17

    nop

    nop

    :goto_1b
    iget-object v0, p0, Lglm;->a:Lcom/google/android/apps/camera/bottombar/BottomBar;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto :goto_20

    nop

    nop

    :goto_1d
    goto/32 :goto_1f

    nop

    nop

    :goto_1e
    sget-object p1, Lgln;->b:Lgln;

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_1f
    sget-object p1, Lrsa;->a:Lrsa;

    nop

    :goto_20
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_21
    if-lez v0, :cond_2

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

    :cond_2
    goto/32 :goto_26

    nop

    :goto_22
    sget-object p2, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_24
    sget-object v2, Lglk;->c:Lglk;

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

    :goto_25
    if-nez p1, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    :cond_3
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_18

    nop

    nop

    :goto_27
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_28
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop
.end method

.method public final v()V
    .locals 2

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_3
    invoke-static {v0}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v0

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

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0x1d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_9
    iget-object p0, p0, Lglm;->a:Lcom/google/android/apps/camera/bottombar/BottomBar;

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_a
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v0, 0x1e

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/bottombar/BottomBar;->o(Lryh;)V

    goto/32 :goto_1

    nop

    nop

    :goto_d
    sget-object v1, Lglk;->b:Lglk;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-static {v1, v0}, Lryh;->n(Ljava/lang/Object;Ljava/lang/Object;)Lryh;

    move-result-object v0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v0, p0, Lglm;->c:Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final w()V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/apps/camera/bottombar/CameraSwitchButton;->callOnClick()Z

    goto/32 :goto_1

    nop

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
    iget-object p0, p0, Lglm;->b:Lcom/google/android/apps/camera/bottombar/CameraSwitchButton;

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

    nop
.end method

.method public final x(Lnne;)V
    .locals 9

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v2, v1}, Lryh;->n(Ljava/lang/Object;Ljava/lang/Object;)Lryh;

    move-result-object v1

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {v2}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v6

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

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

    :goto_3
    goto/16 :goto_35

    nop

    nop

    nop

    nop

    :pswitch_0
    goto/32 :goto_d

    nop

    nop

    :goto_4
    invoke-direct {p0}, Lglm;->175bafa759041016accb75ef876de5d9m()Lrss;

    move-result-object v4

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_5
    goto/16 :goto_35

    nop

    nop

    :pswitch_1
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_6
    iget-object v1, p0, Lglm;->b:Lcom/google/android/apps/camera/bottombar/CameraSwitchButton;

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

    nop

    :goto_7
    goto/16 :goto_35

    nop

    nop

    nop

    nop

    nop

    :pswitch_2
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {v2, v1}, Lryh;->n(Ljava/lang/Object;Ljava/lang/Object;)Lryh;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v2, p0, Lglm;->b:Lcom/google/android/apps/camera/bottombar/CameraSwitchButton;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_a
    sget-object v3, Lglk;->d:Lglk;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-nez p1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_c
    iget-object v0, p0, Lglm;->a:Lcom/google/android/apps/camera/bottombar/BottomBar;

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v0, p0, Lglm;->a:Lcom/google/android/apps/camera/bottombar/BottomBar;

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_e
    iget-object v1, p0, Lglm;->c:Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_f
    invoke-virtual {p0, p1}, Lglm;->e(Lgln;)V

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_10
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_11
    iget-object v0, p0, Lglm;->a:Lcom/google/android/apps/camera/bottombar/BottomBar;

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_12
    invoke-direct {p0}, Lglm;->175bafa759041016accb75ef876de5d9m()Lrss;

    move-result-object v8

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_13
    return-void

    nop

    :goto_14
    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/16 :goto_35

    nop

    nop

    nop

    nop

    :pswitch_3
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    move-object v6, v1

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_17
    iget-object v1, p0, Lglm;->c:Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_18
    iget-object v0, p0, Lglm;->a:Lcom/google/android/apps/camera/bottombar/BottomBar;

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

    :goto_19
    sget-object p1, Lgln;->e:Lgln;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_1a
    invoke-static/range {v3 .. v8}, Lryh;->p(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lryh;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const-string v0, "Unsupported application mode "

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

    nop

    nop

    :goto_1c
    invoke-static {v1}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v4

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_1f
    add-int v0, v0, v1

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_20
    sget-object v2, Lglk;->b:Lglk;

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/bottombar/BottomBar;->q(Z)V

    goto/32 :goto_43

    nop

    nop

    :goto_22
    iget-object v1, p0, Lglm;->c:Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-static {v1}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_24
    sget-object v2, Lglk;->c:Lglk;

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_25
    sget-object v7, Lglk;->d:Lglk;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    :goto_26
    sget-object v2, Lglk;->b:Lglk;

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    :goto_27
    iget-object v0, p0, Lglm;->a:Lcom/google/android/apps/camera/bottombar/BottomBar;

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/bottombar/BottomBar;->o(Lryh;)V

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/bottombar/BottomBar;->o(Lryh;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    iget-object v1, p0, Lglm;->c:Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_2b
    const/4 v1, 0x1

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    iget-object v2, p0, Lglm;->o:Lhoh;

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_2d
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_2e
    invoke-static {v1}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v4

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/bottombar/BottomBar;->o(Lryh;)V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_30
    sget-object v3, Lglk;->b:Lglk;

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

    :goto_31
    sget-object v5, Lglk;->c:Lglk;

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    :goto_32
    sget-object v7, Lglk;->d:Lglk;

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

    :goto_33
    invoke-static {v1}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v1

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_34
    throw p0

    nop

    nop

    :goto_35
    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    invoke-static {v2, v1}, Lryh;->n(Ljava/lang/Object;Ljava/lang/Object;)Lryh;

    move-result-object v1

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    :goto_37
    invoke-static {v2, v1, v3, v4}, Lryh;->o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lryh;

    move-result-object v1

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_38
    goto :goto_35

    nop

    nop

    nop

    :pswitch_4
    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_39
    goto :goto_35

    nop

    nop

    :pswitch_5
    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_3b
    sget-object v5, Lglk;->c:Lglk;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3c
    iget-object v1, p0, Lglm;->c:Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_3d
    iget-object v1, p0, Lglm;->b:Lcom/google/android/apps/camera/bottombar/CameraSwitchButton;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    :goto_3e
    invoke-virtual {v0}, Lcom/google/android/apps/camera/bottombar/BottomBar;->p()V

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_3f
    invoke-virtual {p0, p1}, Lglm;->f(Lgln;)V

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_40
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_41
    iget-object v0, p0, Lglm;->a:Lcom/google/android/apps/camera/bottombar/BottomBar;

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_42
    invoke-virtual {v2, v1}, Lhoh;->p(Lhmn;)Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_43
    invoke-virtual {p1}, Lnne;->ordinal()I

    move-result v0

    nop

    nop

    packed-switch v0, :pswitch_data_0

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    iget-object v0, p0, Lglm;->a:Lcom/google/android/apps/camera/bottombar/BottomBar;

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_45
    sget-object v0, Lhlw;->a:Lhmo;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_46
    sget-object v1, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    nop

    nop

    :goto_47
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_48
    const v0, 0x8

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_49
    invoke-static {v1}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    :goto_4a
    sget-object v0, Ljas;->a:Lryb;

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_4b
    iput-object p1, p0, Lglm;->l:Lnne;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    sget-object v2, Lglk;->b:Lglk;

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

    :goto_4d
    if-nez v1, :cond_1

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    :cond_1
    goto/32 :goto_3d

    nop

    nop

    :goto_4e
    sget-object v3, Lglk;->b:Lglk;

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_4f
    invoke-virtual {v0, p1}, Lryb;->contains(Ljava/lang/Object;)Z

    move-result p1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_50
    invoke-static {v1}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_51
    invoke-direct {p0}, Lglm;->175bafa759041016accb75ef876de5d9m()Lrss;

    move-result-object v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    :goto_52
    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/bottombar/BottomBar;->o(Lryh;)V

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    goto/16 :goto_35

    nop

    nop

    nop

    nop

    nop

    :pswitch_6
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_54
    sget-object p1, Lgln;->e:Lgln;

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_55
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_56
    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/bottombar/BottomBar;->o(Lryh;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    goto/16 :goto_35

    nop

    :pswitch_7
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_58
    iget-object v0, p0, Lglm;->a:Lcom/google/android/apps/camera/bottombar/BottomBar;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_59
    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/bottombar/BottomBar;->o(Lryh;)V

    goto/32 :goto_15

    nop

    nop

    :goto_5a
    invoke-static/range {v3 .. v8}, Lryh;->p(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lryh;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_5b
    if-lez v0, :cond_2

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1d

    nop

    :goto_5c
    goto/32 :goto_1e

    nop

    nop

    :goto_5d
    goto/16 :goto_47

    nop

    nop

    nop

    nop

    :goto_5e
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    const v1, 0x11

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_60
    return-void

    nop

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_6
        :pswitch_6
        :pswitch_1
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_7
    .end packed-switch

    :goto_61
    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :goto_62
    sget-object v1, Lhly;->T:Lhmn;

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_63
    invoke-static {v1}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v1

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
.end method

.method public final y(Z)V
    .locals 4

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lglm;->a:Lcom/google/android/apps/camera/bottombar/BottomBar;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_1
    const v1, 0xa

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-boolean v0, p0, Lglm;->g:Z

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p1}, Lcom/google/android/apps/camera/bottombar/PauseResumeButton;->refreshDrawableState()V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p1, p0, Lglm;->b:Lcom/google/android/apps/camera/bottombar/CameraSwitchButton;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p1}, Lcom/google/android/apps/camera/bottombar/BottomBar;->j()Lcom/google/android/apps/camera/bottombar/PauseResumeButton;

    move-result-object p1

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_8
    invoke-static {v0}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_9
    invoke-static {p1}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0, p1}, Lglm;->f(Lgln;)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_b
    sget-object p1, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    sget-object v2, Lglk;->b:Lglk;

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1b

    nop

    :goto_f
    sget-object p1, Lgln;->b:Lgln;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_10
    iget-object v0, p0, Lglm;->c:Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_11
    return-void

    nop

    nop

    :goto_12
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_13
    if-eqz v0, :cond_1

    nop

    goto/32 :goto_1f

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

    nop

    :goto_14
    const v0, 0x15

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_15
    const/4 v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-static {v2, v0, v3, p1}, Lryh;->o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lryh;

    move-result-object p1

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_17
    invoke-virtual {v1, p1}, Lcom/google/android/apps/camera/bottombar/BottomBar;->o(Lryh;)V

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_18
    iget-object v1, p0, Lglm;->a:Lcom/google/android/apps/camera/bottombar/BottomBar;

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

    :goto_19
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1a
    sget-object v3, Lglk;->c:Lglk;

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_1b
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    if-nez p1, :cond_2

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

    :cond_2
    goto/32 :goto_5

    nop

    nop

    :goto_1e
    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/bottombar/BottomBar;->q(Z)V

    :goto_1f
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {p1}, Lcom/google/android/apps/camera/bottombar/PauseResumeButton;->a()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/16 :goto_c

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_23
    iget-object p1, p0, Lglm;->a:Lcom/google/android/apps/camera/bottombar/BottomBar;

    nop

    nop

    goto/32 :goto_7

    nop

    nop
.end method

.method public final z(Lhhg;)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lglm;->f:Ljava/lang/Object;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    monitor-enter v0

    nop

    nop

    nop

    :try_start_0
    iget-object p0, p0, Lglm;->j:Ljava/util/List;

    nop

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    nop

    return-void

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

    monitor-exit v0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    throw p0

    nop

    nop

    nop
.end method

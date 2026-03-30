.class public Lhzq;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lsdb;


# instance fields
.field public final b:Landroid/content/Context;

.field public final c:Z

.field public final d:Ltud;

.field public final e:Lnpo;

.field public final f:Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;

.field public final g:Lmsx;

.field public final h:Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;

.field public final i:Ltud;

.field public final j:Landroid/app/Activity;

.field public final k:Lowu;

.field public l:Lsui;

.field public m:Llun;

.field public final n:Llyv;

.field public final o:Lfdn;

.field public final p:Lfdn;

.field private final q:Lmtx;

.field private final r:Lhob;

.field private final s:Llwt;

.field private final t:Lfww;

.field private final u:Loyd;

.field private final v:Lmjv;


# direct methods
.method private final 23ce148e54b083367f51e25c7971761em(Landroid/content/Intent;)Lsui;
    .locals 5

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_0
    check-cast v0, Lmyr;

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

    :goto_1
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :goto_2
    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_5
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0}, Lmix;->e()V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-interface {v0}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_9
    const-string v3, "return_transition_thumbnail_diameter"

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

    :goto_a
    invoke-virtual {p0, p1, v1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v3, v4}, Landroid/app/Activity;->setExitSharedElementCallback(Landroid/app/SharedElementCallback;)V

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

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

    :goto_d
    iget-object v0, v0, Lmyr;->a:Lrss;

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const p1, 0x7f01004a

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_10
    iget-object v0, p0, Lhzq;->g:Lmsx;

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v0, p0, Lhzq;->t:Lfww;

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_12
    invoke-static {p0}, Lsgj;->N(Ljava/lang/Throwable;)Lsui;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_13
    const-string p1, "Photos is disabled."

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const-string v3, "photos_review_foldable_hinge_rect"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_15
    new-instance v4, Lhzp;

    nop

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

    :goto_16
    iget-object p0, p0, Lfdn;->a:Ljava/lang/Object;

    nop

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

    :goto_17
    invoke-static {p0}, Lsgj;->O(Ljava/lang/Object;)Lsui;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_18
    invoke-interface {v0}, Lmsx;->d()Ljava/lang/Long;

    move-result-object v0

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

    :goto_19
    invoke-virtual {v0, v3}, Lnpo;->b(Ljava/lang/String;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_1a
    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :goto_1b
    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {p0, p1, p1}, Landroid/app/Activity;->overridePendingTransition(II)V

    :goto_1d
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const-string v3, "photos:filmstrip_transition_view"

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_1f
    invoke-interface {v0}, Lmsx;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iget-object v3, p0, Lhzq;->j:Landroid/app/Activity;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    const-string v0, "shared_element_return_transition"

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_23
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

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

    :goto_24
    rem-int v0, v0, v1

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

    :goto_25
    const-string v0, "use_shared_element_snapshot_for_thumbnail"

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_26
    iget-object v0, p0, Lhzq;->u:Loyd;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_27
    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_28
    const-string v2, "photos_review_launch_timestamp"

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

    nop

    nop

    :goto_29
    invoke-direct {p0, p1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_2a
    const v1, 0x6

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    iget-object v0, p0, Lhzq;->b:Landroid/content/Context;

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_2d
    if-nez v0, :cond_0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_2e
    if-nez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/32 :goto_5b

    nop

    nop

    :goto_30
    const-string v3, "6.12"

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_31
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_3b

    nop

    :goto_32
    iget-object p0, p0, Lhzq;->o:Lfdn;

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_33
    goto/16 :goto_1d

    nop

    nop

    :goto_34
    goto/32 :goto_32

    nop

    nop

    :goto_35
    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :goto_36
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

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

    :goto_37
    invoke-virtual {p1}, Lhzm;->cY()V

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_38
    if-nez v0, :cond_3

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

    :cond_3
    goto/32 :goto_26

    nop

    nop

    :goto_39
    iget-object v0, p0, Lhzq;->g:Lmsx;

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_3a
    iget-object p1, p0, Lhzq;->i:Ltud;

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :goto_3c
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_3d
    const/4 v2, 0x1

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_3e
    const v3, 0x7f07075c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_3f
    check-cast p0, Landroid/app/Activity;

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

    :goto_40
    iget-object v2, p0, Lhzq;->h:Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_41
    iget-object p0, p0, Lfdn;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_42
    const v0, 0xe

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_43
    iget-object v0, p0, Lhzq;->f:Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    invoke-virtual {p1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :goto_45
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_46
    check-cast p0, Landroid/app/Activity;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_47
    invoke-direct {v4, v0}, Lhzp;-><init>(Landroid/graphics/Bitmap;)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_48
    sget-object v2, Lsob;->c:Lsob;

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_4a
    invoke-virtual {p0, v1}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->setVisibility(I)V

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_4b
    new-instance p0, Ljava/util/concurrent/CancellationException;

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_4c
    iget-object v0, p0, Lhzq;->q:Lmtx;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_4d
    if-nez v0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_4
    goto/32 :goto_20

    nop

    nop

    :goto_4e
    iget-object p0, p0, Lhzq;->o:Lfdn;

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    check-cast v0, Landroid/app/Activity;

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_50
    iput-object v2, v0, Lfww;->a:Lsob;

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_51
    iget-object v0, p0, Lfdn;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_52
    iget-object v0, p0, Lhzq;->j:Landroid/app/Activity;

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_53
    invoke-static {v0, v2, v3}, Landroid/app/ActivityOptions;->makeSceneTransitionAnimation(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)Landroid/app/ActivityOptions;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_54
    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_55
    invoke-interface {p1}, Ltud;->a()Ljava/lang/Object;

    move-result-object p1

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_56
    iget-object v0, p0, Lhzq;->e:Lnpo;

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    invoke-virtual {v0}, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;->d()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_58
    if-nez v0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    :cond_5
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_59
    check-cast p1, Lhzm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_5a
    iget-object p0, p0, Lhzq;->h:Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    iget-object v0, p0, Lhzq;->j:Landroid/app/Activity;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_5c
    goto/32 :goto_3c

    nop

    :goto_5d
    return-object p0

    nop

    nop

    nop

    nop

    :goto_5e
    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :goto_5f
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop
.end method

.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-string v0, "hzq"

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    sput-object v0, Lhzq;->a:Lsdb;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;ZLtud;Lmtx;Lhob;Lfdn;Llwt;Lmjv;Landroid/app/Activity;Lowu;Lnpo;Lnar;Lmsx;Ltud;Lfdn;Lfww;Llyv;Loyd;Lhoh;)V
    .locals 6

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v4, v5}, Lpic;->D(I)Ljava/lang/Object;

    move-result-object v4

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

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_3
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_4
    iput-object v4, v0, Lhzq;->b:Landroid/content/Context;

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

    :goto_5
    const v1, 0x13

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_6
    move-object v0, p0

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_7
    move-object/from16 v2, p14

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_8
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iput-object v2, v0, Lhzq;->h:Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_a
    iput-object v4, v0, Lhzq;->s:Llwt;

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

    :goto_b
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_6

    nop

    nop

    :goto_d
    iput-object v4, v0, Lhzq;->l:Lsui;

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iput-object v1, v0, Lhzq;->e:Lnpo;

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iput-object v4, v0, Lhzq;->v:Lmjv;

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_10
    const v5, 0x7f0b01bb

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_11
    move-object/from16 v1, p11

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_12
    move-object v4, p9

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    move v4, p2

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_14
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_b

    nop

    :goto_15
    invoke-virtual {v2, v5}, Lpic;->D(I)Ljava/lang/Object;

    move-result-object v2

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

    nop

    :goto_16
    iput-boolean v4, v0, Lhzq;->c:Z

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

    :goto_17
    move-object/from16 v3, p18

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_18
    move-object/from16 v2, p15

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

    :goto_19
    iput-object v4, v0, Lhzq;->f:Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_1a
    move-object v4, p3

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

    :goto_1b
    move-object v4, p8

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

    :goto_1c
    iput-object v2, v4, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;->l:Lhoh;

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_1d
    iput-object v4, v0, Lhzq;->q:Lmtx;

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iput-object v2, v0, Lhzq;->i:Ltud;

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_1f
    check-cast v2, Lpic;

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_20
    check-cast v4, Lpic;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_21
    move-object v4, p6

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    move-object/from16 v4, p16

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    check-cast v2, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iput-object v4, v0, Lhzq;->k:Lowu;

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_25
    iput-object v3, v0, Lhzq;->u:Loyd;

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iput-object v4, v0, Lhzq;->t:Lfww;

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_27
    return-void

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_29
    move-object/from16 v4, p10

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_2a
    iput-object v2, v0, Lhzq;->p:Lfdn;

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_2b
    iget-object v4, v2, Lnar;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    move-object/from16 v2, p17

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_2d
    const v0, 0x11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_2e
    iput-object v4, v0, Lhzq;->d:Ltud;

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_2f
    iput-object v2, v0, Lhzq;->n:Llyv;

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

    nop

    :goto_30
    iput-object v4, v0, Lhzq;->o:Lfdn;

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_31
    iput-object v2, v0, Lhzq;->g:Lmsx;

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

    :goto_32
    invoke-static {v4}, Lsgj;->O(Ljava/lang/Object;)Lsui;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_33
    move-object v4, p5

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_34
    move-object/from16 v2, p12

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_35
    iput-object v1, v4, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;->j:Lnpo;

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_36
    move-object v4, p4

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    iput-object v4, v0, Lhzq;->j:Landroid/app/Activity;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_38
    move-object/from16 v2, p13

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_39
    move-object v4, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_3a
    check-cast v4, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_3b
    iput-object v3, v4, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;->i:Loyd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_3c
    iput-object v4, v0, Lhzq;->r:Lhob;

    nop

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

    nop

    :goto_3d
    const v5, 0x7f0b04a2

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_3e
    iget-object v2, v2, Lnar;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_3f
    move-object v4, p7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_40
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_41
    move-object/from16 v2, p19

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop
.end method


# virtual methods
.method public final a()Lsui;
    .locals 4

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {v0, v3, v1, v2}, Lfsh;->g(ZZZ[J)Landroid/content/Intent;

    move-result-object v0

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_3
    new-array v2, v2, [J

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

    :goto_4
    invoke-virtual {v1}, Landroid/app/Activity;->isVoiceInteractionRoot()Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_5
    iget-object v1, p0, Lhzq;->j:Landroid/app/Activity;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-boolean v0, p0, Lhzq;->c:Z

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_7
    invoke-direct {p0, v0}, Lhzq;->23ce148e54b083367f51e25c7971761em(Landroid/content/Intent;)Lsui;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_9
    const/4 v2, 0x0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_a
    invoke-interface {v1}, Llun;->p()V

    :goto_b
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v1, p0, Lhzq;->m:Llun;

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

    :goto_d
    const v1, 0x9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    return-object p0

    nop

    nop

    :goto_10
    goto/32 :goto_8

    nop

    nop

    :goto_11
    const/4 v3, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_12
    const v0, 0x1d

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

    :goto_13
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_15
    if-lez v0, :cond_0

    nop

    goto/32 :goto_1

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_16
    if-nez v1, :cond_1

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

    :cond_1
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_17
    sget-object v1, Lqyd;->a:Landroid/net/Uri;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop
.end method

.method public final b()Lsui;
    .locals 19

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_0
    if-nez v3, :cond_0

    nop

    nop

    goto/32 :goto_6d

    nop

    :cond_0
    goto/32 :goto_13d

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1a4

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_181

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {v9}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    :goto_4
    goto/16 :goto_16a

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_169

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput v13, v4, Lsng;->e:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    :goto_7
    invoke-virtual {v9, v3}, Lmjv;->J(Ltkb;)V

    goto/32 :goto_57

    nop

    nop

    :goto_8
    iput v6, v4, Lsng;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_133

    nop

    nop

    :goto_9
    iget-object v9, v0, Lhzq;->v:Lmjv;

    nop

    nop

    nop

    nop

    goto/32 :goto_192

    nop

    nop

    nop

    nop

    :goto_a
    iget-boolean v7, v0, Lhzq;->c:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    :goto_b
    move-object v13, v12

    nop

    nop

    goto/32 :goto_1a7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-static {v7, v10}, Ljava/lang/Character;->forDigit(II)C

    move-result v7

    nop

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    :goto_d
    div-long/2addr v13, v15

    nop

    nop

    nop

    goto/32 :goto_f0

    nop

    nop

    :goto_e
    if-eqz v4, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c3

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1c2

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v11}, Ltkb;->o()V

    :goto_10
    goto/32 :goto_177

    nop

    nop

    nop

    :goto_11
    iget-object v4, v11, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_13a

    nop

    nop

    nop

    :goto_12
    iget v6, v4, Lsng;->b:I

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

    :goto_13
    goto/16 :goto_1a6

    nop

    :goto_14
    goto/32 :goto_10e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_179

    nop

    nop

    nop

    nop

    :goto_16
    iput v5, v4, Lsng;->b:I

    nop

    goto/32 :goto_13e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iput v4, v6, Lskd;->f:I

    nop

    nop

    nop

    nop

    goto/32 :goto_14b

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v5}, Ltkg;->C()Z

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    :goto_19
    check-cast v4, Lsng;

    nop

    nop

    nop

    goto/32 :goto_1a0

    nop

    nop

    :goto_1a
    move-object v7, v11

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_19f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/16 :goto_16a

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_15a

    nop

    nop

    nop

    :goto_1e
    goto/16 :goto_14

    nop

    nop

    :pswitch_0
    goto/32 :goto_ed

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object v4, v11, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    goto/32 :goto_1a8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    sget-object v8, Llxo;->f:Llxo;

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

    nop

    :goto_21
    iput v6, v4, Lsng;->b:I

    nop

    nop

    goto/32 :goto_dc

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iget-wide v7, v7, Lmjv;->e:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const-string v11, "content"

    nop

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

    :goto_24
    move-object v4, v5

    nop

    :goto_25
    goto/32 :goto_de

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iget-object v4, v3, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_10b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    long-to-int v7, v7

    nop

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    :goto_28
    iget-object v7, v11, Ltkb;->b:Ltkg;

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

    :goto_29
    invoke-interface {v9}, Lggl;->d()Llxm;

    move-result-object v3

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    :goto_2a
    const-wide/16 v11, 0x0

    nop

    nop

    goto/32 :goto_e9

    nop

    nop

    nop

    :goto_2b
    move-object v6, v5

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    :goto_2c
    iget-object v4, v11, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    :goto_2d
    iget v6, v4, Lsng;->b:I

    nop

    nop

    goto/32 :goto_b5

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    iput v2, v4, Lskd;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_2f
    if-nez v8, :cond_2

    nop

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

    :cond_2
    goto/32 :goto_1ab

    nop

    nop

    :goto_30
    iget-object v4, v11, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    goto/32 :goto_1a1

    nop

    nop

    nop

    nop

    :goto_31
    xor-int/2addr v3, v2

    nop

    goto/32 :goto_1ad

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-interface {v4}, Lggk;->b()Lggl;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    :goto_33
    const v0, 0x19

    nop

    goto/32 :goto_d2

    nop

    nop

    nop

    nop

    :goto_34
    aput-wide v11, v9, v10

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_35
    if-lt v10, v8, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    :cond_3
    goto/32 :goto_1bf

    nop

    nop

    nop

    nop

    nop

    :goto_36
    if-eqz v4, :cond_4

    nop

    nop

    goto/32 :goto_13c

    nop

    nop

    :cond_4
    goto/32 :goto_13b

    nop

    nop

    nop

    nop

    :goto_37
    invoke-interface {v3, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    :goto_38
    iget v6, v4, Lsng;->b:I

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    invoke-interface {v8}, Lggk;->b()Lggl;

    move-result-object v9

    nop

    goto/32 :goto_d7

    nop

    nop

    nop

    :goto_3a
    if-eqz v4, :cond_5

    nop

    nop

    goto/32 :goto_157

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_156

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    iget v5, v4, Lskd;->c:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17f

    nop

    nop

    :goto_3c
    add-int/lit8 v8, v8, -0x1

    nop

    goto/32 :goto_c2

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    const-wide/16 v14, -0x1

    nop

    nop

    nop

    goto/32 :goto_e5

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    rsub-int/lit8 v7, v8, 0x40

    nop

    goto/32 :goto_df

    nop

    nop

    nop

    :goto_3f
    const-string v1, "Filmstrip item adapter is empty"

    nop

    nop

    goto/32 :goto_1c6

    nop

    nop

    nop

    nop

    nop

    :goto_40
    add-int/lit8 v10, v10, 0x1

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    :goto_41
    invoke-virtual {v3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

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

    :goto_42
    invoke-interface {v9}, Lggl;->c()Landroid/net/Uri;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_e4

    nop

    nop

    :goto_43
    iget v3, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    nop

    nop

    nop

    goto/32 :goto_129

    nop

    nop

    nop

    nop

    nop

    :goto_44
    invoke-virtual {v3}, Ltkb;->o()V

    :goto_45
    goto/32 :goto_b3

    nop

    nop

    nop

    nop

    nop

    :goto_46
    invoke-virtual {v4}, Ltkg;->C()Z

    move-result v4

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

    :goto_47
    invoke-interface {v8}, Lggk;->b()Lggl;

    move-result-object v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_186

    nop

    nop

    :goto_48
    iget v6, v4, Lsng;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_178

    nop

    nop

    nop

    :goto_49
    iget v6, v4, Lsng;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_138

    nop

    nop

    nop

    :goto_4a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-virtual {v9, v11}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v9

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

    :goto_4c
    if-nez v4, :cond_6

    nop

    goto/32 :goto_183

    nop

    nop

    :cond_6
    goto/32 :goto_195

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    iget v9, v8, Ljtr;->c:I

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    :goto_4e
    invoke-virtual {v4}, Ltkg;->C()Z

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e6

    nop

    nop

    :goto_4f
    or-int/lit8 v6, v6, 0x4

    nop

    nop

    nop

    goto/32 :goto_c6

    nop

    nop

    nop

    nop

    :goto_50
    invoke-interface {v1}, Lsui;->isDone()Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_d3

    nop

    nop

    nop

    :goto_51
    invoke-virtual {v4}, Ltkg;->C()Z

    move-result v4

    nop

    goto/32 :goto_f7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_53
    goto/32 :goto_1a9

    nop

    nop

    nop

    nop

    :goto_54
    invoke-virtual {v9, v11}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v9

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

    :goto_55
    invoke-virtual {v11}, Ltkb;->o()V

    :goto_56
    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    invoke-direct {v0, v1}, Lhzq;->23ce148e54b083367f51e25c7971761em(Landroid/content/Intent;)Lsui;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_b8

    nop

    nop

    :goto_58
    invoke-virtual {v9, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    nop

    goto/32 :goto_fd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_59
    iget v6, v4, Lsng;->b:I

    nop

    nop

    nop

    goto/32 :goto_1bd

    nop

    nop

    nop

    nop

    :goto_5a
    check-cast v7, Lsng;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    :goto_5b
    iput v6, v4, Lsng;->b:I

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

    :goto_5c
    invoke-direct {v11, v9, v8, v7}, Ljava/lang/String;-><init>([CII)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    new-array v1, v6, [J

    nop

    nop

    nop

    goto/32 :goto_1b0

    nop

    nop

    nop

    nop

    :goto_5e
    invoke-static {v7, v9, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    goto/32 :goto_14e

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    if-nez v3, :cond_7

    nop

    goto/32 :goto_e8

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_e7

    nop

    nop

    nop

    nop

    :goto_60
    check-cast v3, Llxh;

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    :goto_61
    iget-object v11, v11, Lhob;->e:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_e1

    nop

    nop

    nop

    :goto_62
    goto/16 :goto_1b

    nop

    nop

    :goto_63
    goto/32 :goto_14f

    nop

    nop

    nop

    nop

    :goto_64
    invoke-virtual {v3}, Lnpo;->a()Landroid/content/pm/PackageInfo;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    :goto_65
    iget-object v4, v11, Ltkb;->b:Ltkg;

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

    nop

    nop

    :goto_66
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_1ca

    nop

    nop

    nop

    :goto_67
    const-string v9, "radix (%s) must be between Character.MIN_RADIX and Character.MAX_RADIX"

    nop

    goto/32 :goto_d5

    nop

    nop

    :goto_68
    invoke-virtual {v4}, Ltkg;->C()Z

    move-result v4

    nop

    nop

    goto/32 :goto_142

    nop

    nop

    nop

    nop

    nop

    :goto_69
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    :goto_6a
    goto/16 :goto_1b

    nop

    nop

    nop

    nop

    :goto_6b
    goto/32 :goto_12d

    nop

    nop

    :goto_6c
    goto/16 :goto_91

    nop

    nop

    nop

    :goto_6d
    goto/32 :goto_32

    nop

    nop

    nop

    :goto_6e
    invoke-interface {v7}, Ljava/util/List;->size()I

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_6f
    sget-object v8, Llxo;->j:Llxo;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_70
    or-int/lit8 v6, v6, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_be

    nop

    nop

    nop

    nop

    :goto_71
    invoke-virtual {v11}, Ltkb;->o()V

    :goto_72
    goto/32 :goto_28

    nop

    nop

    nop

    :goto_73
    check-cast v4, Lsng;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_170

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_74
    invoke-virtual {v11}, Ltkb;->o()V

    :goto_75
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_76
    iget-object v4, v11, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    goto/32 :goto_165

    nop

    nop

    :goto_77
    invoke-virtual {v1}, Lhot;->iterator()Ljava/util/Iterator;

    move-result-object v1

    nop

    nop

    :goto_78
    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_79
    goto/16 :goto_102

    nop

    nop

    nop

    nop

    :goto_7a
    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    :goto_7b
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    goto/32 :goto_147

    nop

    nop

    nop

    nop

    :goto_7d
    invoke-interface {v4}, Lggk;->b()Lggl;

    move-result-object v8

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    new-array v9, v8, [J

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

    nop

    :goto_7f
    iput v6, v4, Lsng;->e:I

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

    :goto_80
    iget v6, v4, Lsng;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1be

    nop

    nop

    nop

    nop

    nop

    :goto_81
    check-cast v6, Lskd;

    nop

    nop

    nop

    goto/32 :goto_f1

    nop

    nop

    :goto_82
    invoke-virtual {v11}, Ltkb;->o()V

    :goto_83
    goto/32 :goto_150

    nop

    nop

    nop

    nop

    :goto_84
    aput-char v7, v9, v8

    nop

    goto/32 :goto_116

    nop

    nop

    nop

    nop

    nop

    :goto_85
    if-eqz v5, :cond_8

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    :cond_8
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_86
    if-nez v7, :cond_9

    nop

    nop

    goto/32 :goto_1c8

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_1c7

    nop

    nop

    nop

    nop

    nop

    :goto_87
    if-eqz v7, :cond_a

    nop

    nop

    goto/32 :goto_72

    nop

    :cond_a
    goto/32 :goto_71

    nop

    nop

    nop

    nop

    :goto_88
    invoke-direct {v9}, Landroid/net/Uri$Builder;-><init>()V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_89
    invoke-virtual {v11}, Ltkb;->o()V

    :goto_8a
    goto/32 :goto_d1

    nop

    nop

    :goto_8b
    iput v6, v4, Lsng;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_8c
    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    :goto_8d
    goto/32 :goto_b9

    nop

    nop

    nop

    nop

    nop

    :goto_8e
    goto/32 :goto_180

    nop

    nop

    nop

    nop

    :goto_8f
    const-string v11, "processing"

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_90
    invoke-interface {v3}, Lggl;->c()Landroid/net/Uri;

    move-result-object v3

    nop

    nop

    :goto_91
    goto/32 :goto_166

    nop

    nop

    nop

    :goto_92
    iget v12, v7, Lsng;->b:I

    nop

    nop

    nop

    goto/32 :goto_153

    nop

    nop

    :goto_93
    invoke-interface {v9}, Lggl;->c()Landroid/net/Uri;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_198

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_94
    const/16 v6, 0x1f

    nop

    nop

    nop

    goto/32 :goto_15d

    nop

    nop

    nop

    nop

    nop

    :goto_95
    cmp-long v9, v7, v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    :goto_96
    or-int/lit8 v6, v6, 0x4

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    nop

    :goto_97
    goto/16 :goto_78

    nop

    nop

    nop

    :goto_98
    goto/32 :goto_e3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_99
    iput v14, v13, Lsng;->b:I

    nop

    nop

    nop

    goto/32 :goto_fa

    nop

    nop

    nop

    nop

    nop

    :goto_9a
    check-cast v5, Lsng;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_9b
    invoke-virtual {v3, v11}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_9c
    invoke-static {v7, v10}, Ljava/lang/Character;->forDigit(II)C

    move-result v7

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

    :goto_9d
    check-cast v11, Ljava/lang/Long;

    nop

    nop

    nop

    goto/32 :goto_1bc

    nop

    nop

    nop

    nop

    :goto_9e
    check-cast v4, Lsng;

    nop

    nop

    nop

    goto/32 :goto_167

    nop

    nop

    :goto_9f
    if-eqz v9, :cond_b

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_15c

    nop

    nop

    nop

    nop

    :goto_a0
    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a1
    goto/16 :goto_199

    nop

    :goto_a2
    goto/32 :goto_42

    nop

    nop

    nop

    :goto_a3
    if-gtz v9, :cond_c

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_c
    goto/32 :goto_16e

    nop

    nop

    nop

    nop

    :goto_a4
    const/16 v8, 0x3f

    nop

    nop

    goto/32 :goto_1b6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a5
    invoke-interface {v1}, Ltud;->a()Ljava/lang/Object;

    move-result-object v1

    nop

    goto/32 :goto_dd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a6
    invoke-interface {v4}, Lggk;->b()Lggl;

    move-result-object v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_113

    nop

    nop

    nop

    :goto_a7
    iput v6, v4, Lsng;->b:I

    nop

    goto/32 :goto_18f

    nop

    nop

    nop

    nop

    nop

    :goto_a8
    const-string v9, "processing_uri_intent_extra"

    nop

    nop

    goto/32 :goto_17e

    nop

    nop

    nop

    :goto_a9
    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    nop

    nop

    nop

    goto/32 :goto_115

    nop

    nop

    nop

    nop

    nop

    :goto_aa
    move-object v1, v9

    nop

    :goto_ab
    goto/32 :goto_19a

    nop

    nop

    nop

    nop

    nop

    :goto_ac
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_190

    nop

    nop

    nop

    nop

    nop

    :goto_ad
    or-int/2addr v4, v2

    nop

    goto/32 :goto_f8

    nop

    nop

    nop

    nop

    :goto_ae
    if-nez v3, :cond_d

    nop

    nop

    goto/32 :goto_12a

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_187

    nop

    nop

    nop

    :goto_af
    iput v2, v4, Lsng;->e:I

    nop

    nop

    nop

    goto/32 :goto_12b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b0
    if-nez v3, :cond_e

    nop

    nop

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    :cond_e
    goto/32 :goto_b4

    nop

    nop

    nop

    nop

    :goto_b1
    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    :goto_b2
    if-eqz v3, :cond_f

    nop

    goto/32 :goto_1b1

    nop

    nop

    :cond_f
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_b3
    iget-object v5, v3, Ltkb;->b:Ltkg;

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

    :goto_b4
    iget-object v3, v0, Lhzq;->s:Llwt;

    nop

    nop

    nop

    goto/32 :goto_164

    nop

    nop

    nop

    nop

    :goto_b5
    or-int/lit8 v6, v6, 0x4

    nop

    goto/32 :goto_1a5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b6
    iput v6, v4, Lsng;->e:I

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_b7
    invoke-interface {v7, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

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

    :goto_b8
    return-object v0

    nop

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_8
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_0
    .end packed-switch

    :goto_b9
    goto/32 :goto_11d

    nop

    nop

    nop

    :goto_ba
    invoke-static {v0}, Lsgj;->N(Ljava/lang/Throwable;)Lsui;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    :goto_bb
    xor-int/2addr v1, v2

    nop

    nop

    goto/32 :goto_16d

    nop

    nop

    nop

    :goto_bc
    const/4 v6, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    :goto_bd
    iget-object v4, v11, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_107

    nop

    nop

    nop

    :goto_be
    iput v6, v4, Lsng;->b:I

    nop

    goto/32 :goto_e2

    nop

    nop

    nop

    :goto_bf
    iput v6, v4, Lsng;->b:I

    nop

    nop

    goto/32 :goto_ca

    nop

    nop

    nop

    :goto_c0
    iget-object v1, v0, Lhzq;->d:Ltud;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    :goto_c1
    iget-object v4, v11, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_112

    nop

    nop

    nop

    nop

    :goto_c2
    rem-long v11, v13, v15

    nop

    nop

    goto/32 :goto_1c0

    nop

    nop

    nop

    nop

    :goto_c3
    invoke-interface {v4}, Lggl;->k()Z

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_1c5

    nop

    nop

    nop

    nop

    :goto_c4
    iput v12, v7, Lsng;->b:I

    nop

    goto/32 :goto_eb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c5
    invoke-interface {v9}, Lggl;->k()Z

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_fb

    nop

    nop

    nop

    :goto_c6
    iput v6, v4, Lsng;->b:I

    nop

    goto/32 :goto_1a3

    nop

    nop

    nop

    nop

    :goto_c7
    check-cast v4, Lsng;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_af

    nop

    nop

    :goto_c8
    iget-object v4, v11, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    goto/32 :goto_da

    nop

    nop

    nop

    :goto_c9
    sget-object v4, Lskc;->z:Lskc;

    nop

    nop

    nop

    goto/32 :goto_17b

    nop

    nop

    nop

    nop

    nop

    :goto_ca
    iput-object v5, v4, Lsng;->f:Ljava/lang/String;

    nop

    :goto_cb
    goto/32 :goto_194

    nop

    nop

    nop

    nop

    :goto_cc
    invoke-virtual {v11}, Ltkb;->o()V

    :goto_cd
    goto/32 :goto_2c

    nop

    nop

    :goto_ce
    invoke-virtual {v1, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/32 :goto_1c4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_cf
    if-eqz v6, :cond_10

    nop

    nop

    nop

    goto/32 :goto_162

    nop

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_182

    nop

    nop

    nop

    nop

    :goto_d0
    if-nez v9, :cond_11

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_d1
    iget-object v4, v11, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_d2
    const v1, 0x3

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

    :goto_d3
    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_bb

    nop

    nop

    nop

    :goto_d4
    iget-object v4, v11, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_11b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d5
    const/16 v10, 0xa

    nop

    goto/32 :goto_1b8

    nop

    nop

    nop

    nop

    :goto_d6
    invoke-virtual {v11}, Ltkb;->i()Ltkg;

    move-result-object v5

    nop

    nop

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    :goto_d7
    invoke-interface {v9}, Lggl;->f()Lryb;

    move-result-object v9

    nop

    goto/32 :goto_10c

    nop

    nop

    :goto_d8
    if-gtz v9, :cond_12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_12
    goto/32 :goto_16b

    nop

    nop

    nop

    nop

    :goto_d9
    iget-object v7, v0, Lhzq;->s:Llwt;

    nop

    nop

    nop

    goto/32 :goto_f3

    nop

    nop

    nop

    :goto_da
    check-cast v4, Lsng;

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

    nop

    :goto_db
    if-eqz v4, :cond_13

    nop

    nop

    goto/32 :goto_10

    nop

    :cond_13
    goto/32 :goto_f

    nop

    nop

    :goto_dc
    goto/16 :goto_1a6

    nop

    nop

    nop

    :pswitch_1
    goto/32 :goto_145

    nop

    nop

    :goto_dd
    check-cast v1, Lhot;

    nop

    nop

    nop

    goto/32 :goto_161

    nop

    nop

    nop

    :goto_de
    if-eqz v4, :cond_14

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

    :cond_14
    goto/32 :goto_108

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_df
    new-instance v11, Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :goto_e0
    iget v14, v13, Lsng;->b:I

    nop

    goto/32 :goto_15f

    nop

    nop

    :goto_e1
    invoke-virtual {v9, v11}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v9

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    :goto_e2
    goto/16 :goto_1a6

    nop

    nop

    nop

    :pswitch_2
    goto/32 :goto_d4

    nop

    nop

    nop

    nop

    nop

    :goto_e3
    invoke-interface {v7}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_121

    nop

    nop

    :goto_e4
    sget-object v11, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    nop

    :goto_e5
    cmp-long v12, v12, v14

    nop

    nop

    nop

    goto/32 :goto_ee

    nop

    nop

    :goto_e6
    if-eqz v4, :cond_15

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    :cond_15
    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    :goto_e7
    iget-object v8, v3, Llxh;->c:Llxo;

    nop

    nop

    nop

    :goto_e8
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_e9
    goto/16 :goto_1b7

    nop

    nop

    nop

    :goto_ea
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_eb
    iput-boolean v4, v7, Lsng;->d:Z

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

    :goto_ec
    iput v7, v4, Lsng;->e:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ed
    iget-object v4, v11, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_ee
    if-nez v12, :cond_16

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

    :cond_16
    goto/32 :goto_52

    nop

    nop

    :goto_ef
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    nop

    :goto_f0
    const-wide/16 v15, 0xa

    nop

    nop

    goto/32 :goto_127

    nop

    nop

    nop

    :goto_f1
    iget v4, v4, Lskc;->aG:I

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_f2
    check-cast v3, Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_f3
    iget-object v7, v7, Llwt;->a:Ljava/util/Set;

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    nop

    :goto_f4
    goto/16 :goto_25

    nop

    nop

    nop

    nop

    :goto_f5
    goto/32 :goto_134

    nop

    nop

    nop

    :goto_f6
    if-eqz v4, :cond_17

    nop

    goto/32 :goto_19e

    nop

    nop

    :cond_17
    goto/32 :goto_19d

    nop

    nop

    nop

    :goto_f7
    if-eqz v4, :cond_18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    :cond_18
    goto/32 :goto_89

    nop

    nop

    :goto_f8
    iput v4, v6, Lskd;->b:I

    nop

    nop

    nop

    goto/32 :goto_106

    nop

    nop

    nop

    nop

    nop

    :goto_f9
    iget-object v4, v11, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_1aa

    nop

    nop

    nop

    nop

    :goto_fa
    iput-object v7, v13, Lsng;->c:Ljava/lang/String;

    nop

    goto/32 :goto_139

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_fb
    if-nez v3, :cond_19

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    :cond_19
    goto/32 :goto_29

    nop

    nop

    :goto_fc
    iget v9, v8, Ljtr;->e:I

    nop

    nop

    nop

    goto/32 :goto_d8

    nop

    nop

    nop

    nop

    :goto_fd
    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    :goto_fe
    check-cast v4, Lsng;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16c

    nop

    nop

    nop

    :goto_ff
    invoke-virtual {v11}, Ljava/lang/Number;->longValue()J

    move-result-wide v11

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_100
    sget-object v3, Lskd;->a:Lskd;

    nop

    nop

    goto/32 :goto_14a

    nop

    nop

    nop

    nop

    nop

    :goto_101
    move v10, v6

    nop

    :goto_102
    goto/32 :goto_35

    nop

    nop

    :goto_103
    move v3, v6

    nop

    nop

    nop

    :goto_104
    goto/32 :goto_9

    nop

    nop

    :goto_105
    iget-object v4, v11, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    :goto_106
    invoke-virtual {v5}, Ltkg;->C()Z

    move-result v4

    nop

    goto/32 :goto_17d

    nop

    nop

    nop

    nop

    :goto_107
    invoke-virtual {v4}, Ltkg;->C()Z

    move-result v4

    nop

    nop

    goto/32 :goto_db

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_108
    new-instance v0, Ljava/util/concurrent/CancellationException;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_109
    goto/16 :goto_1a6

    nop

    nop

    nop

    nop

    :pswitch_3
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_10a
    sget-object v8, Llxo;->a:Llxo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18b

    nop

    nop

    nop

    nop

    :goto_10b
    check-cast v4, Lskd;

    nop

    nop

    nop

    nop

    goto/32 :goto_d6

    nop

    nop

    nop

    :goto_10c
    invoke-virtual {v9}, Lryb;->isEmpty()Z

    move-result v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11e

    nop

    nop

    nop

    :goto_10d
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ef

    nop

    nop

    :goto_10e
    iget-object v4, v11, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_140

    nop

    nop

    nop

    nop

    :goto_10f
    new-array v9, v9, [C

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_110
    or-int/lit8 v6, v6, 0x8

    nop

    nop

    nop

    goto/32 :goto_bf

    nop

    nop

    :goto_111
    iput v10, v4, Lsng;->e:I

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_112
    invoke-virtual {v4}, Ltkg;->C()Z

    move-result v4

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_113
    if-eqz v3, :cond_1a

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    :cond_1a
    goto/32 :goto_c5

    nop

    nop

    nop

    :goto_114
    check-cast v4, Lggk;

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_115
    const-string v9, "Null ShotId encountered for item: %s"

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_116
    div-long/2addr v13, v15

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_117
    iget-object v7, v0, Lhzq;->v:Lmjv;

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_118
    invoke-static {v7, v8, v10}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v7

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    :goto_119
    if-eqz v12, :cond_1b

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    :cond_1b
    goto/32 :goto_82

    nop

    nop

    :goto_11a
    if-eqz v4, :cond_1c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :cond_1c
    goto/32 :goto_130

    nop

    nop

    nop

    nop

    :goto_11b
    invoke-virtual {v4}, Ltkg;->C()Z

    move-result v4

    nop

    goto/32 :goto_131

    nop

    nop

    nop

    nop

    :goto_11c
    const/16 v9, 0x40

    nop

    nop

    nop

    goto/32 :goto_10f

    nop

    nop

    :goto_11d
    goto/32 :goto_8e

    nop

    nop

    nop

    :goto_11e
    if-eqz v10, :cond_1d

    nop

    goto/32 :goto_12f

    nop

    nop

    :cond_1d
    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11f
    or-int/lit8 v5, v5, 0x10

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_120
    check-cast v4, Lsng;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ec

    nop

    nop

    nop

    :goto_121
    array-length v8, v1

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_122
    invoke-virtual {v8}, Llxo;->ordinal()I

    move-result v4

    nop

    goto/32 :goto_152

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_123
    iget-object v4, v11, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_124
    invoke-virtual {v1}, Lhot;->a()I

    goto/32 :goto_184

    nop

    nop

    :goto_125
    if-nez v9, :cond_1e

    nop

    nop

    nop

    nop

    goto/32 :goto_1b5

    nop

    :cond_1e
    goto/32 :goto_128

    nop

    nop

    nop

    :goto_126
    iget-object v4, v11, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_127
    mul-long v17, v13, v15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_188

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_128
    sget-object v8, Llxo;->g:Llxo;

    nop

    nop

    goto/32 :goto_1b4

    nop

    nop

    nop

    nop

    nop

    :goto_129
    goto/16 :goto_104

    nop

    nop

    nop

    nop

    nop

    :goto_12a
    goto/32 :goto_103

    nop

    nop

    nop

    nop

    nop

    :goto_12b
    iget v6, v4, Lsng;->b:I

    nop

    goto/32 :goto_168

    nop

    nop

    nop

    :goto_12c
    goto/16 :goto_1a6

    nop

    nop

    nop

    :pswitch_4
    goto/32 :goto_126

    nop

    nop

    nop

    :goto_12d
    ushr-long v13, v7, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_14d

    nop

    nop

    nop

    :goto_12e
    goto/16 :goto_191

    nop

    :goto_12f
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_130
    invoke-virtual {v11}, Ltkb;->o()V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_131
    if-eqz v4, :cond_1f

    nop

    nop

    goto/32 :goto_1b3

    nop

    nop

    nop

    :cond_1f
    goto/32 :goto_1b2

    nop

    nop

    nop

    nop

    nop

    :goto_132
    check-cast v4, Lsng;

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    :goto_133
    goto/16 :goto_1a6

    nop

    nop

    nop

    nop

    :pswitch_5
    goto/32 :goto_bd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_134
    invoke-interface {v4}, Lggk;->b()Lggl;

    move-result-object v6

    nop

    goto/32 :goto_1af

    nop

    nop

    nop

    nop

    :goto_135
    new-instance v9, Landroid/net/Uri$Builder;

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    :goto_136
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_172

    nop

    nop

    :goto_137
    iget-object v12, v11, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    goto/32 :goto_1c9

    nop

    nop

    :goto_138
    or-int/lit8 v6, v6, 0x4

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_139
    invoke-virtual {v12}, Ltkg;->C()Z

    move-result v7

    nop

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

    :goto_13a
    invoke-virtual {v4}, Ltkg;->C()Z

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_171

    nop

    nop

    nop

    nop

    nop

    :goto_13b
    invoke-virtual {v11}, Ltkb;->o()V

    :goto_13c
    goto/32 :goto_1c1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13d
    iget-object v3, v3, Llxh;->b:Landroid/net/Uri;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    :goto_13e
    iput v3, v4, Lsng;->g:I

    nop

    :goto_13f
    goto/32 :goto_100

    nop

    nop

    nop

    nop

    nop

    :goto_140
    check-cast v4, Lsng;

    nop

    nop

    nop

    goto/32 :goto_159

    nop

    nop

    nop

    :goto_141
    if-eqz v8, :cond_20

    nop

    nop

    goto/32 :goto_18c

    nop

    :cond_20
    goto/32 :goto_10a

    nop

    nop

    nop

    nop

    :goto_142
    if-eqz v4, :cond_21

    nop

    nop

    goto/32 :goto_cd

    nop

    nop

    :cond_21
    goto/32 :goto_cc

    nop

    nop

    nop

    :goto_143
    iget-object v8, v0, Lhzq;->j:Landroid/app/Activity;

    nop

    goto/32 :goto_196

    nop

    nop

    nop

    nop

    :goto_144
    invoke-virtual {v1, v3, v9}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto/32 :goto_135

    nop

    nop

    nop

    nop

    nop

    :goto_145
    iget-object v4, v11, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_173

    nop

    nop

    nop

    nop

    nop

    :goto_146
    iget-object v1, v0, Lhzq;->l:Lsui;

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_147
    iget-object v3, v0, Lhzq;->n:Llyv;

    nop

    nop

    nop

    nop

    goto/32 :goto_17a

    nop

    nop

    :goto_148
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b9

    nop

    nop

    :goto_149
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_14a
    invoke-virtual {v3}, Ltkg;->m()Ltkb;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_c9

    nop

    nop

    :goto_14b
    iget v4, v6, Lskd;->b:I

    nop

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    :goto_14c
    cmp-long v7, v13, v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_185

    nop

    nop

    nop

    :goto_14d
    const-wide/16 v15, 0x5

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_14e
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_d9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14f
    if-gtz v9, :cond_22

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    :cond_22
    goto/32 :goto_118

    nop

    nop

    :goto_150
    iget-object v12, v11, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_151
    invoke-interface {v6}, Lggl;->k()Z

    move-result v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_160

    nop

    nop

    :goto_152
    const/16 v7, 0x14

    nop

    nop

    nop

    nop

    nop

    packed-switch v4, :pswitch_data_0

    :pswitch_6
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_153
    const/4 v13, 0x2

    nop

    nop

    goto/32 :goto_15e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_154
    invoke-virtual {v11}, Ltkg;->m()Ltkb;

    move-result-object v11

    nop

    nop

    nop

    goto/32 :goto_137

    nop

    nop

    nop

    nop

    nop

    :goto_155
    iget-object v9, v9, Lpsz;->i:Ljava/lang/String;

    nop

    goto/32 :goto_144

    nop

    nop

    nop

    nop

    nop

    :goto_156
    invoke-virtual {v11}, Ltkb;->o()V

    :goto_157
    goto/32 :goto_105

    nop

    nop

    :goto_158
    iget-object v11, v0, Lhzq;->r:Lhob;

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    :goto_159
    iput v6, v4, Lsng;->e:I

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15a
    iget-boolean v9, v8, Ljtr;->g:Z

    nop

    nop

    nop

    goto/32 :goto_125

    nop

    nop

    nop

    :goto_15b
    const-wide/16 v11, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    :goto_15c
    const-string v7, "0"

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    :goto_15d
    iput v6, v4, Lsng;->e:I

    nop

    goto/32 :goto_1a2

    nop

    nop

    nop

    nop

    nop

    :goto_15e
    or-int/2addr v12, v13

    nop

    goto/32 :goto_c4

    nop

    nop

    nop

    nop

    :goto_15f
    or-int/2addr v14, v2

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_160
    if-eqz v6, :cond_23

    nop

    nop

    goto/32 :goto_f5

    nop

    nop

    nop

    nop

    :cond_23
    goto/32 :goto_f4

    nop

    nop

    nop

    nop

    nop

    :goto_161
    invoke-virtual {v1}, Lhot;->iterator()Ljava/util/Iterator;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    :goto_162
    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_163
    if-lt v10, v8, :cond_24

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    :cond_24
    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_164
    invoke-interface {v9}, Lggl;->d()Llxm;

    move-result-object v9

    nop

    nop

    nop

    nop

    goto/32 :goto_17c

    nop

    nop

    nop

    :goto_165
    invoke-virtual {v4}, Ltkg;->C()Z

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_166
    sget-object v9, Lpsz;->c:Lpsz;

    nop

    nop

    goto/32 :goto_155

    nop

    nop

    nop

    :goto_167
    iput v7, v4, Lsng;->e:I

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_168
    or-int/lit8 v6, v6, 0x4

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_169
    sget-object v8, Llxo;->a:Llxo;

    nop

    nop

    nop

    :goto_16a
    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16b
    iget v9, v8, Ljtr;->b:I

    nop

    goto/32 :goto_189

    nop

    nop

    nop

    nop

    :goto_16c
    iget v6, v4, Lsng;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_110

    nop

    nop

    :goto_16d
    invoke-static {v1}, Lrrf;->x(Z)V

    goto/32 :goto_c0

    nop

    nop

    :goto_16e
    iget-object v8, v8, Ljtr;->d:Ljava/lang/String;

    nop

    goto/32 :goto_148

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16f
    iget-object v3, v0, Lhzq;->e:Lnpo;

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

    nop

    :goto_170
    iget v5, v4, Lsng;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_11f

    nop

    nop

    :goto_171
    if-eqz v4, :cond_25

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :cond_25
    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_172
    check-cast v11, Ljava/lang/Number;

    nop

    nop

    nop

    nop

    goto/32 :goto_ff

    nop

    nop

    nop

    nop

    :goto_173
    invoke-virtual {v4}, Ltkg;->C()Z

    move-result v4

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_174
    invoke-virtual {v3}, Ltkb;->o()V

    :goto_175
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_176
    if-nez v5, :cond_26

    nop

    goto/32 :goto_cb

    nop

    nop

    nop

    nop

    nop

    :cond_26
    goto/32 :goto_76

    nop

    nop

    :goto_177
    iget-object v4, v11, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_120

    nop

    nop

    nop

    nop

    nop

    :goto_178
    or-int/lit8 v6, v6, 0x4

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_179
    const/4 v6, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_b2

    nop

    nop

    :goto_17a
    sget-object v6, Llyr;->aG:Llze;

    nop

    nop

    goto/32 :goto_18e

    nop

    nop

    nop

    nop

    nop

    :goto_17b
    iget-object v5, v3, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_17c
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_197

    nop

    nop

    :goto_17d
    if-eqz v4, :cond_27

    nop

    nop

    nop

    nop

    goto/32 :goto_175

    nop

    nop

    nop

    :cond_27
    goto/32 :goto_174

    nop

    nop

    nop

    :goto_17e
    invoke-virtual {v1, v9, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    :goto_17f
    or-int/2addr v2, v5

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_180
    move-object/from16 v0, p0

    nop

    nop

    goto/32 :goto_146

    nop

    nop

    :goto_181
    iput-object v5, v4, Lskd;->D:Lsng;

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_182
    goto/16 :goto_25

    nop

    :goto_183
    goto/32 :goto_24

    nop

    nop

    :goto_184
    new-instance v7, Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_1bb

    nop

    nop

    nop

    :goto_185
    if-gtz v7, :cond_28

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ea

    nop

    :cond_28
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_186
    invoke-interface {v8}, Lggl;->b()J

    move-result-wide v8

    nop

    nop

    nop

    nop

    goto/32 :goto_10d

    nop

    nop

    nop

    :goto_187
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

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

    :goto_188
    sub-long v7, v7, v17

    nop

    nop

    goto/32 :goto_11c

    nop

    nop

    nop

    nop

    :goto_189
    if-gtz v9, :cond_29

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_29
    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_18a
    check-cast v8, Lggk;

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_18b
    goto/16 :goto_16a

    nop

    nop

    :goto_18c
    goto/32 :goto_1ac

    nop

    nop

    :goto_18d
    iget-object v4, v11, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_132

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18e
    invoke-virtual {v3, v6}, Llyv;->b(Llyp;)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    goto/32 :goto_f2

    nop

    nop

    nop

    nop

    nop

    :goto_18f
    goto/16 :goto_1a6

    nop

    :pswitch_7
    goto/32 :goto_1ae

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_190
    move v10, v6

    nop

    nop

    nop

    nop

    :goto_191
    goto/32 :goto_163

    nop

    nop

    nop

    :goto_192
    invoke-interface {v4}, Lggk;->b()Lggl;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c3

    nop

    nop

    nop

    :goto_193
    iput v6, v4, Lsng;->b:I

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

    :goto_194
    if-nez v3, :cond_2a

    nop

    nop

    nop

    goto/32 :goto_13f

    nop

    nop

    nop

    nop

    nop

    :cond_2a
    goto/32 :goto_123

    nop

    nop

    nop

    nop

    nop

    :goto_195
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    nop

    goto/32 :goto_114

    nop

    nop

    nop

    :goto_196
    invoke-virtual {v8}, Landroid/app/Activity;->isVoiceInteractionRoot()Z

    move-result v8

    nop

    nop

    nop

    nop

    goto/32 :goto_1ba

    nop

    nop

    :goto_197
    iget-object v3, v3, Llwt;->b:Ljava/util/Map;

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_198
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :goto_199
    goto/32 :goto_16f

    nop

    nop

    :goto_19a
    iget-boolean v7, v0, Lhzq;->c:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_143

    nop

    nop

    nop

    nop

    nop

    :goto_19b
    invoke-static {v3, v11}, Lrrf;->y(ZLjava/lang/Object;)V

    goto/32 :goto_93

    nop

    nop

    :goto_19c
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_e0

    nop

    nop

    :goto_19d
    invoke-virtual {v11}, Ltkb;->o()V

    :goto_19e
    goto/32 :goto_18d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19f
    const-string v8, "external_session_id"

    nop

    nop

    goto/32 :goto_ce

    nop

    nop

    nop

    :goto_1a0
    const/16 v6, 0x20

    nop

    nop

    nop

    nop

    goto/32 :goto_b6

    nop

    nop

    :goto_1a1
    invoke-virtual {v4}, Ltkg;->C()Z

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_11a

    nop

    nop

    :goto_1a2
    iget v6, v4, Lsng;->b:I

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

    :goto_1a3
    goto/16 :goto_1a6

    nop

    :pswitch_8
    goto/32 :goto_c1

    nop

    nop

    :goto_1a4
    if-lez v0, :cond_2b

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    :cond_2b
    goto/32 :goto_8d

    nop

    :goto_1a5
    iput v6, v4, Lsng;->b:I

    nop

    nop

    :goto_1a6
    goto/32 :goto_176

    nop

    nop

    nop

    nop

    :goto_1a7
    check-cast v13, Lsng;

    nop

    nop

    nop

    goto/32 :goto_19c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a8
    check-cast v4, Lsng;

    nop

    nop

    goto/32 :goto_111

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a9
    add-int/lit8 v10, v10, 0x1

    nop

    nop

    nop

    goto/32 :goto_12e

    nop

    nop

    nop

    nop

    nop

    :goto_1aa
    check-cast v4, Lsng;

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

    :goto_1ab
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    nop

    nop

    nop

    goto/32 :goto_18a

    nop

    nop

    nop

    nop

    :goto_1ac
    iget-boolean v9, v8, Ljtr;->f:Z

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

    nop

    :goto_1ad
    const-string v11, "Item is no longer in progress but data doesn\'t have a valid URI."

    nop

    nop

    nop

    nop

    goto/32 :goto_19b

    nop

    nop

    :goto_1ae
    iget-object v4, v11, Ltkb;->b:Ltkg;

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

    :goto_1af
    invoke-interface {v6}, Lggl;->d()Llxm;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    :goto_1b0
    goto/16 :goto_ab

    nop

    nop

    nop

    :goto_1b1
    goto/32 :goto_124

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b2
    invoke-virtual {v11}, Ltkb;->o()V

    :goto_1b3
    goto/32 :goto_c8

    nop

    nop

    nop

    :goto_1b4
    goto/16 :goto_16a

    nop

    :goto_1b5
    goto/32 :goto_fc

    nop

    nop

    nop

    :goto_1b6
    aput-char v7, v9, v8

    nop

    nop

    nop

    nop

    nop

    :goto_1b7
    goto/32 :goto_14c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b8
    invoke-static {v2, v9, v10}, Lrrf;->o(ZLjava/lang/String;I)V

    goto/32 :goto_15b

    nop

    nop

    nop

    :goto_1b9
    if-gtz v8, :cond_2c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_2c
    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    :goto_1ba
    invoke-static {v7, v3, v8, v1}, Lfsh;->g(ZZZ[J)Landroid/content/Intent;

    move-result-object v1

    nop

    nop

    goto/32 :goto_117

    nop

    nop

    nop

    :goto_1bb
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_77

    nop

    nop

    nop

    :goto_1bc
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_1bd
    or-int/lit8 v6, v6, 0x4

    nop

    nop

    goto/32 :goto_193

    nop

    nop

    nop

    nop

    :goto_1be
    or-int/lit8 v6, v6, 0x4

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_1bf
    aget-object v11, v1, v10

    nop

    nop

    goto/32 :goto_136

    nop

    nop

    :goto_1c0
    long-to-int v7, v11

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1c1
    iget-object v4, v11, Ltkb;->b:Ltkg;

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

    :goto_1c2
    invoke-virtual {v11}, Ltkb;->o()V

    :goto_1c3
    goto/32 :goto_f9

    nop

    nop

    nop

    :goto_1c4
    invoke-interface {v4}, Lggk;->d()Ljtr;

    move-result-object v8

    nop

    nop

    goto/32 :goto_141

    nop

    nop

    :goto_1c5
    sget-object v11, Lsng;->a:Lsng;

    nop

    goto/32 :goto_154

    nop

    nop

    nop

    nop

    :goto_1c6
    invoke-direct {v0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c7
    goto/16 :goto_1b1

    nop

    nop

    :goto_1c8
    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c9
    invoke-virtual {v12}, Ltkg;->C()Z

    move-result v12

    nop

    nop

    goto/32 :goto_119

    nop

    nop

    nop

    nop

    nop

    :goto_1ca
    invoke-interface {v4}, Lggk;->b()Lggl;

    move-result-object v6

    nop

    nop

    nop

    goto/32 :goto_151

    nop

    nop

    nop
.end method

.method public final c()Lsui;
    .locals 3

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    :goto_1
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0}, Lhot;->v()Z

    move-result v0

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {v0}, Lrrf;->x(Z)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_4
    invoke-interface {v0}, Lsui;->isDone()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0x3

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_6
    invoke-interface {v1, v2, p0}, Lsui;->c(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_7
    return-object p0

    nop

    :goto_8
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    check-cast v1, Lhot;

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_a
    new-instance v0, Lsuu;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_b
    iget-object v0, p0, Lhzq;->d:Ltud;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v0, p0, Lhzq;->l:Lsui;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_d
    invoke-interface {v0}, Ltud;->a()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_0

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_19

    nop

    :goto_f
    invoke-direct {v0}, Lsuu;-><init>()V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v0, 0x11

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_11
    iget-object v1, p0, Lhzq;->d:Ltud;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_12
    check-cast v0, Lhot;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_13
    iget-object p0, p0, Lhzq;->k:Lowu;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_14
    xor-int/lit8 v0, v0, 0x1

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

    :goto_15
    invoke-direct {v2, p0, v0}, Lhzn;-><init>(Lhzq;Lsuu;)V

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_16
    invoke-interface {v1}, Ltud;->a()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_17
    new-instance v2, Lhzn;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p0}, Lhzq;->b()Lsui;

    move-result-object p0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_1a

    nop

    :goto_1c
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

    nop

    nop

    nop

    :goto_1d
    if-nez v0, :cond_1

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

    :cond_1
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v1}, Lhot;->q()Lsui;

    move-result-object v1

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final d()Z
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    check-cast p0, Ljava/lang/Boolean;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1
    if-nez p0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Lhzq;->l:Lsui;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_3
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_4
    if-nez v0, :cond_1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_1
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_5
    goto :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return p0

    nop

    :goto_8
    iget-object p0, p0, Lhzq;->l:Lsui;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_a
    invoke-static {p0}, Lqrg;->G(Ljava/lang/Object;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-interface {v0}, Lsui;->isDone()Z

    move-result v0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_c
    invoke-static {p0}, Lolx;->bl(Lsui;)Ljava/lang/Object;

    move-result-object p0

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

    :goto_d
    return p0

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_f
    const/4 p0, 0x1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop
.end method

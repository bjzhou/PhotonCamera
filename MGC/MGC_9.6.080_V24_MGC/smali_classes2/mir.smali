.class public final Lmir;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lmti;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lmtj;

.field public final c:Landroid/net/Uri;

.field public final d:Ljava/util/concurrent/ScheduledExecutorService;

.field public e:Ljava/util/concurrent/ScheduledFuture;

.field public f:Z

.field public final g:Lnar;

.field private final h:Lmij;

.field private final i:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Lmtj;Landroid/net/Uri;Landroid/content/Context;Lnar;Lmij;Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1
    iput-object p5, p0, Lmir;->h:Lmij;

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

    :goto_2
    iput-object p4, p0, Lmir;->g:Lnar;

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
    iput-object p3, p0, Lmir;->a:Landroid/content/Context;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_4
    iput-boolean v0, p0, Lmir;->f:Z

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

    :goto_5
    iput-object p2, p0, Lmir;->c:Landroid/net/Uri;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_6
    iput-object p7, p0, Lmir;->d:Ljava/util/concurrent/ScheduledExecutorService;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    :goto_9
    iput-object p6, p0, Lmir;->i:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iput-object p1, p0, Lmir;->b:Lmtj;

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
.end method


# virtual methods
.method public final a()V
    .locals 6

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

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

    :goto_1
    const/4 v4, 0x0

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_2
    iget-object v0, p0, Lmir;->g:Lnar;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_3
    const/4 v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_4
    const/4 v1, 0x1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-ne v0, v1, :cond_0

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_e

    nop

    :goto_7
    const/16 v4, 0x26b

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_8
    check-cast v0, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_9
    invoke-interface {v0}, Lmtj;->k()V

    goto/32 :goto_22

    nop

    nop

    :goto_a
    iget-object v1, p0, Lmir;->c:Landroid/net/Uri;

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

    :goto_b
    const/4 v4, 0x0

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_f

    nop

    nop

    :goto_e
    goto/32 :goto_21

    nop

    nop

    :goto_f
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-static {v4, v0, v2}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_11
    const/16 v4, 0x26d

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const/16 v4, 0x26c

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_14
    aput-object v1, v2, v4

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_15
    const/4 v5, 0x0

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_16
    iget-object v0, p0, Lmir;->b:Lmtj;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_17
    invoke-static {p0}, Lcom/google/android/apps/camera/ui/eduimageview/EduImageView;->d(Landroid/content/Context;)V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget-object p0, p0, Lmir;->a:Landroid/content/Context;

    nop

    goto/32 :goto_17

    nop

    nop

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
    goto/32 :goto_18

    nop

    nop

    :goto_1b
    invoke-static {v4, v5, v2}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

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

    :goto_1c
    new-array v2, v2, [Ljava/lang/Object;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1d
    iget-object v0, p0, Lmir;->a:Landroid/content/Context;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_1e
    new-array v2, v2, [Ljava/lang/Object;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-static {v4, p0, v2}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_19

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

    :goto_21
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_22
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const/4 v2, 0x1

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_24
    const v1, 0x1a

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_25
    const v0, 0x13

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    aput-object v0, v2, v4

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
.end method

.method public final b()V
    .locals 1

    goto/32 :goto_3

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
    if-nez v0, :cond_0

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_2
    invoke-interface {v0}, Lmtj;->l()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Lmir;->b:Lmtj;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_4
    invoke-interface {v0}, Lmtj;->q()Z

    move-result v0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_5
    invoke-interface {p0}, Lmtj;->j()V

    :goto_6
    goto/32 :goto_0

    nop

    nop

    :goto_7
    iget-object p0, p0, Lmir;->b:Lmtj;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v0, p0, Lmir;->b:Lmtj;

    nop

    goto/32 :goto_2

    nop

    nop
.end method

.method public final c()V
    .locals 4

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

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

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_2
    iget-object v1, v0, Lmij;->c:Lmir;

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v0}, Lmir;->b()V

    :goto_4
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_6
    invoke-interface {v0}, Lmtj;->a()V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioFocusRequest;)I

    :goto_b
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v1}, Landroid/media/AudioFocusRequest$Builder;->build()Landroid/media/AudioFocusRequest;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v1, v3}, Landroid/media/AudioFocusRequest$Builder;->setOnAudioFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_10
    const/4 v2, 0x1

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

    :goto_11
    const/4 v2, 0x0

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-object v1, v0, Lmij;->d:Lmir;

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_13
    iget-object v0, p0, Lmir;->h:Lmij;

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_14
    if-nez v0, :cond_0

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const v0, 0x16

    nop

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

    nop

    :goto_16
    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_17
    new-instance v1, Landroid/media/AudioAttributes$Builder;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v0}, Lmir;->b()V

    goto/32 :goto_2a

    nop

    nop

    :goto_19
    if-lez v0, :cond_1

    nop

    goto/32 :goto_9

    nop

    :cond_1
    goto/32 :goto_8

    nop

    :goto_1a
    invoke-interface {p0}, Lmtj;->o()V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    :cond_2
    goto/32 :goto_a

    nop

    nop

    :goto_1c
    sget-object v1, Lcom/google/android/apps/camera/legacy/lightcycle/panorama/RpD/WBNWZfrn;->FjIsAuMKldv:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object v0, p0, Lmir;->a:Landroid/content/Context;

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_1e
    const v1, 0x4

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_1f
    iget-boolean v0, p0, Lmir;->f:Z

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_20
    invoke-direct {v3, p0}, Lmiq;-><init>(Lmir;)V

    goto/32 :goto_f

    nop

    nop

    :goto_21
    new-instance v3, Lmiq;

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v1, v2}, Landroid/media/AudioFocusRequest$Builder;->setAcceptsDelayedFocusGain(Z)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v1

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_23
    iget-object p0, p0, Lmir;->b:Lmtj;

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iget-object v0, p0, Lmir;->b:Lmtj;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_25
    if-nez v1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {v3, v1}, Landroid/media/AudioFocusRequest$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v1

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_27
    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

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

    :goto_28
    iget-object v0, v0, Lmij;->d:Lmir;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_29
    check-cast v0, Landroid/media/AudioManager;

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_2a
    goto/16 :goto_4

    nop

    :goto_2b
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    iget-object v0, v0, Lmij;->c:Lmir;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-direct {v3, v2}, Landroid/media/AudioFocusRequest$Builder;-><init>(I)V

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_30
    if-nez v1, :cond_4

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_31
    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

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

    nop

    :goto_32
    new-instance v3, Landroid/media/AudioFocusRequest$Builder;

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_33
    iput-boolean v2, p0, Lmir;->f:Z

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    const/4 v1, 0x0

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

    :goto_36
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method public final d()V
    .locals 1

    goto/32 :goto_6

    nop

    nop

    :goto_0
    iget-object p0, p0, Lmir;->e:Ljava/util/concurrent/ScheduledFuture;

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

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-eqz v0, :cond_0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isDone()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_4
    if-nez v0, :cond_1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_6
    iget-object v0, p0, Lmir;->e:Ljava/util/concurrent/ScheduledFuture;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_7
    invoke-interface {p0, v0}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :goto_8
    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public final e()V
    .locals 3

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v2, 0x6

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
    iget-object v1, p0, Lmir;->c:Landroid/net/Uri;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    invoke-virtual {v0, v1}, Lnar;->h(Landroid/net/Uri;)Lsui;

    move-result-object v0

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_7

    nop

    :goto_4
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0xa

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {v1, p0, v2}, Lmfs;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_9
    invoke-static {v0, v1, p0}, Lolx;->bn(Lsui;Lpbz;Ljava/util/concurrent/Executor;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_b
    const v1, 0x15

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v0, p0, Lmir;->g:Lnar;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_4

    nop

    nop

    :goto_e
    iget-object p0, p0, Lmir;->i:Ljava/util/concurrent/Executor;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_10
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_11
    new-instance v1, Lmfs;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final f()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {v0}, Lmtj;->p()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lmir;->d()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Lmir;->b:Lmtj;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop
.end method

.method public final g(Ljava/lang/String;)V
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

    :goto_1
    iget-object p0, p0, Lmir;->b:Lmtj;

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

    :goto_2
    invoke-interface {p0, p1}, Lmtj;->n(Ljava/lang/String;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final h()V
    .locals 3

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lmir;->b:Lmtj;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0, v1}, Lnar;->h(Landroid/net/Uri;)Lsui;

    move-result-object v0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lmir;->i:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_4
    const v1, 0x1a

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_5
    invoke-direct {v1, p0, v2}, Lmfs;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_3

    nop

    nop

    :goto_6
    const v0, 0x1d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    :goto_8
    goto/32 :goto_1

    nop

    nop

    :goto_9
    goto/32 :goto_8

    nop

    nop

    :goto_a
    goto/32 :goto_0

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

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v1, p0, Lmir;->c:Landroid/net/Uri;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_d
    new-instance v1, Lmfs;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_e
    invoke-interface {v0, p0}, Lmtj;->d(Lmti;)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v0, p0, Lmir;->g:Lnar;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_10
    invoke-static {v0, v1, p0}, Lolx;->bn(Lsui;Lpbz;Ljava/util/concurrent/Executor;)V

    goto/32 :goto_7

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

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_12
    add-int v0, v0, v1

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

    :goto_13
    const/4 v2, 0x5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop
.end method

.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lmir;->b:Lmtj;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    invoke-interface {p0}, Lmtj;->j()V

    goto/32 :goto_2

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
.end method

.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p1, v0}, Lmtj;->m(I)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/16 v0, 0x29

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    invoke-interface {p0}, Lmtj;->j()V

    goto/32 :goto_4

    nop

    nop

    :goto_3
    iget-object p0, p0, Lmir;->b:Lmtj;

    nop

    nop

    nop

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
    iget-object p1, p0, Lmir;->b:Lmtj;

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
.end method

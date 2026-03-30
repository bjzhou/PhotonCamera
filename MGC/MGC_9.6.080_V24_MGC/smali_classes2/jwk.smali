.class public Ljwk;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lsdb;


# instance fields
.field public final b:Lrss;

.field public final c:Ljava/lang/Object;

.field public d:J

.field public e:Z

.field public f:Z

.field public final g:Ljava/util/Set;

.field public final h:Ljxm;

.field public final i:Ljwm;

.field public final j:Ljwm;

.field public final k:Ljwm;

.field private final l:Ljxy;

.field private final m:Z

.field private final n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    goto/32 :goto_7

    nop

    nop

    :goto_0
    new-array v1, v1, [Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    const-string v0, "jwk"

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
    const/4 v3, 0x0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    aput-object v0, v1, v3

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

    :goto_4
    const/4 v4, 0x0

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    :goto_6
    goto/32 :goto_d

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

    goto/32 :goto_8

    nop

    nop

    :goto_8
    const v1, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_9
    const/16 v3, 0x107

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

    :goto_a
    add-int v0, v0, v1

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

    :goto_b
    check-cast v0, Lsdb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_c
    const/4 v1, 0x1

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
    goto/32 :goto_10

    nop

    :goto_e
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    :goto_f
    goto/32 :goto_6

    nop

    nop

    :goto_10
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_11
    invoke-static {v3, v4, v1}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_12
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_13
    sput-object v0, Ljwk;->a:Lsdb;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop
.end method

.method public constructor <init>(Ljxm;Ljxy;Lrss;Lows;Lhoh;Lpcu;)V
    .locals 1

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p3, p0, Ljwk;->b:Lrss;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Ljwk;->h:Ljxm;

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

    nop

    nop

    :goto_2
    iput-object p1, p0, Ljwk;->i:Ljwm;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_4
    sget-object p1, Lhmz;->s:Lhmn;

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_5
    sget-object p1, Lhmz;->l:Lhmn;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const-wide/16 p1, -0x1

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

    :goto_7
    const/4 p2, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_8
    iput-boolean p1, p0, Ljwk;->n:Z

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

    :goto_9
    invoke-direct {p1, p6, p2}, Ljwm;-><init>(Lpcu;Ljava/lang/String;)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_a
    new-instance p1, Ljava/util/HashSet;

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_b
    new-instance p1, Ljwm;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_c
    new-instance p1, Ljso;

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

    :goto_d
    iput-object p1, p0, Ljwk;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_e
    new-instance p1, Ljwm;

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

    nop

    :goto_f
    return-void

    nop

    nop

    :goto_10
    invoke-virtual {p5, p1}, Lhoh;->p(Lhmn;)Z

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_11
    invoke-direct {p1, p6, p2}, Ljwm;-><init>(Lpcu;Ljava/lang/String;)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_12
    invoke-direct {p1, p0, p2}, Ljso;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    new-instance p1, Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_14
    iput-boolean v0, p0, Ljwk;->f:Z

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_15
    new-instance p1, Ljwm;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p4, p1}, Lows;->d(Lpci;)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const-string p2, "Aud"

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

    nop

    nop

    :goto_18
    iput-boolean p1, p0, Ljwk;->m:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_19
    iput-object p1, p0, Ljwk;->k:Ljwm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_1a
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_1b
    iput-object p1, p0, Ljwk;->j:Ljwm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_1c
    const-string p2, "Mtn"

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_1d
    iput-wide p1, p0, Ljwk;->d:J

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1e
    iput-boolean v0, p0, Ljwk;->e:Z

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_1f
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    goto/32 :goto_24

    nop

    nop

    :goto_20
    iput-object p2, p0, Ljwk;->l:Ljxy;

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

    :goto_21
    invoke-virtual {p5, p1}, Lhoh;->p(Lhmn;)Z

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_22
    invoke-direct {p1, p6, p2}, Ljwm;-><init>(Lpcu;Ljava/lang/String;)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    :goto_24
    iput-object p1, p0, Ljwk;->g:Ljava/util/Set;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_25
    const-string p2, "Vid"

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()V
    .locals 6

    goto/32 :goto_9

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_8

    nop

    :goto_2
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Ljwk;->c:Ljava/lang/Object;

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

    :goto_4
    const v1, 0xb

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

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0xb

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_b
    monitor-enter v0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v1, p0, Ljwk;->i:Ljwm;

    nop

    invoke-virtual {v1}, Ljwm;->c()V

    iget-object v1, p0, Ljwk;->j:Ljwm;

    nop

    invoke-virtual {v1}, Ljwm;->c()V

    iget-object v1, p0, Ljwk;->k:Ljwm;

    nop

    nop

    invoke-virtual {v1}, Ljwm;->c()V

    iget-object p0, p0, Ljwk;->g:Ljava/util/Set;

    nop

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    if-eqz v1, :cond_4

    nop

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    check-cast v1, Ljwj;

    nop

    nop

    nop

    iget-object v2, v1, Ljwj;->b:Lsay;

    nop

    nop

    nop

    nop

    nop

    if-nez v2, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_f

    nop

    nop

    nop

    nop

    nop

    :cond_1
    invoke-virtual {v2}, Lsay;->k()Z

    move-result v3

    nop

    nop

    nop

    nop

    if-eqz v3, :cond_2

    nop

    nop

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    nop

    nop

    nop

    const-string v4, "<%d>"

    nop

    nop

    nop

    invoke-virtual {v2}, Lsay;->h()Ljava/lang/Comparable;

    move-result-object v5

    nop

    nop

    nop

    nop

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    nop

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    nop

    nop

    goto :goto_d

    nop

    :cond_2
    const-string v3, "n/a"

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v2}, Lsay;->l()Z

    move-result v4

    nop

    if-eqz v4, :cond_3

    nop

    nop

    nop

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    nop

    const-string v5, "<%d>"

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Lsay;->i()Ljava/lang/Comparable;

    move-result-object v2

    nop

    nop

    nop

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    invoke-static {v4, v5, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto :goto_e

    nop

    nop

    nop

    nop

    nop

    :cond_3
    const-string v2, "n/a"

    nop

    nop

    :goto_e
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    nop

    nop

    nop

    nop

    const-string v5, "%s to %s"

    nop

    nop

    filled-new-array {v3, v2}, [Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    invoke-static {v4, v5, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :goto_f
    iget-boolean v2, v1, Ljwj;->e:Z

    nop

    iget-boolean v1, v1, Ljwj;->c:Z

    nop

    goto/16 :goto_c

    nop

    nop

    nop

    nop

    nop

    :cond_4
    monitor-exit v0

    nop

    return-void

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    monitor-exit v0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_7

    nop

    nop
.end method

.method public final b()V
    .locals 5

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_a

    nop

    :goto_1
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    monitor-enter v0

    nop

    nop

    nop

    :try_start_0
    const/4 v2, 0x1

    nop

    nop

    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    nop

    sget-object v3, Lcom/google/android/apps/camera/ui/captureframe/UrAR/NrBoRltj;->GjRHy:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    const-string v1, "ERROR"

    nop

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Ljwk;->e:Z

    nop

    if-nez v1, :cond_1

    nop

    nop

    iget-object v1, p0, Ljwk;->h:Ljxm;

    nop

    nop

    nop

    nop

    iget-object v3, p0, Ljwk;->i:Ljwm;

    nop

    nop

    nop

    invoke-virtual {v1, v3, p0}, Ljxm;->e(Lqep;Ljwk;)V

    iget-object v1, p0, Ljwk;->l:Ljxy;

    nop

    nop

    nop

    iget-object v3, p0, Ljwk;->k:Ljwm;

    nop

    nop

    nop

    nop

    nop

    iget-object v4, v1, Ljxy;->f:Landroid/media/MediaFormat;

    nop

    invoke-static {v4}, Lsgj;->O(Ljava/lang/Object;)Lsui;

    move-result-object v4

    nop

    nop

    nop

    invoke-interface {v3, v4}, Lqep;->a(Lsui;)V

    iput-object v3, v1, Ljxy;->n:Lqep;

    nop

    nop

    nop

    nop

    nop

    iget-object v3, v1, Ljxy;->p:Lhdn;

    nop

    nop

    invoke-virtual {v3}, Lhdn;->O()Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    move-result-object v3

    nop

    nop

    nop

    iput-object v3, v1, Ljxy;->q:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    nop

    nop

    iget-object v1, p0, Ljwk;->b:Lrss;

    nop

    nop

    nop

    invoke-virtual {v1}, Lrss;->h()Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_0

    nop

    nop

    nop

    nop

    nop

    iget-object v1, p0, Ljwk;->b:Lrss;

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Lrss;->c()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    check-cast v1, Ljwi;

    nop

    nop

    nop

    nop

    iget-object v3, p0, Ljwk;->j:Ljwm;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v3, p0}, Ljwi;->c(Lqep;Ljwk;)V

    goto :goto_3

    nop

    nop

    :cond_0
    iget-object v1, p0, Ljwk;->j:Ljwm;

    nop

    invoke-static {}, Lsgj;->M()Lsui;

    move-result-object v3

    nop

    nop

    nop

    invoke-virtual {v1, v3}, Ljwm;->a(Lsui;)V

    :goto_3
    iput-boolean v2, p0, Ljwk;->e:Z

    nop

    nop

    :cond_1
    monitor-exit v0

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

    monitor-exit v0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_9

    nop

    nop

    :goto_4
    goto/32 :goto_1

    nop

    :goto_5
    iget-object v0, p0, Ljwk;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_6
    const v0, 0x1a

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

    nop

    :goto_7
    add-int v0, v0, v1

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

    :goto_8
    rem-int v0, v0, v1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_9
    throw p0

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_4

    nop

    nop

    :goto_b
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_2
    goto/32 :goto_0

    nop

    :goto_c
    const v1, 0xd

    nop

    goto/32 :goto_7

    nop

    nop
.end method

.method public final c()V
    .locals 4

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_0
    invoke-interface {v0, v1}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_1
    iget-object v1, v0, Ljxm;->d:Landroid/os/Handler;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/16 v1, 0xae9

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

    nop

    :goto_3
    sget-object v0, Ljxm;->a:Lsdb;

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_4
    invoke-direct {v2, v0, v3}, Ljsp;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_8

    nop

    nop

    :goto_5
    goto/32 :goto_10

    nop

    :goto_6
    const/16 v3, 0x14

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_7
    new-instance v2, Ljsp;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_8
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_9
    goto/32 :goto_a

    nop

    nop

    :goto_a
    iget-object v0, p0, Ljwk;->b:Lrss;

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

    :goto_b
    const v0, 0xc

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_d
    iget-object p0, p0, Ljwk;->b:Lrss;

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

    nop

    :goto_e
    add-int v0, v0, v1

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

    :goto_f
    goto/32 :goto_1f

    nop

    nop

    :goto_10
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v0, p0, Ljwk;->h:Ljxm;

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_12
    invoke-interface {v0, v1}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_19

    nop

    nop

    :goto_13
    check-cast v0, Lscz;

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_14
    check-cast p0, Ljwi;

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_1e

    nop

    nop

    :goto_16
    if-nez v1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_f

    nop

    :goto_18
    if-nez v0, :cond_2

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_d

    nop

    nop

    :goto_19
    goto/16 :goto_9

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const v1, 0x1a

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const-string v1, "Trying to start after handler shutdown"

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

    :goto_1d
    invoke-virtual {v0}, Lrss;->h()Z

    move-result v0

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

    :goto_1e
    return-void

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {p0}, Lrss;->c()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_21
    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iget-boolean v1, v0, Ljxm;->h:Z

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop
.end method

.method public final d()V
    .locals 10

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x8

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_11

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

    :goto_5
    monitor-enter v0

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v1, p0, Ljwk;->g:Ljava/util/Set;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    nop

    const-wide/high16 v2, -0x8000000000000000L

    nop

    nop

    nop

    nop

    nop

    :cond_1
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    nop

    nop

    nop

    nop

    nop

    if-eqz v4, :cond_2

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    nop

    check-cast v4, Ljwj;

    nop

    nop

    nop

    nop

    nop

    iget-object v5, v4, Ljwj;->b:Lsay;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v5}, Lsay;->l()Z

    move-result v5

    nop

    nop

    nop

    nop

    if-eqz v5, :cond_1

    nop

    nop

    nop

    iget-object v5, v4, Ljwj;->b:Lsay;

    nop

    nop

    invoke-virtual {v5}, Lsay;->i()Ljava/lang/Comparable;

    move-result-object v5

    nop

    nop

    check-cast v5, Ljava/lang/Long;

    nop

    nop

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    nop

    nop

    iget-wide v7, p0, Ljwk;->d:J

    nop

    nop

    nop

    nop

    cmp-long v5, v5, v7

    nop

    nop

    nop

    nop

    nop

    if-gez v5, :cond_1

    nop

    nop

    nop

    nop

    nop

    iget-object v4, v4, Ljwj;->b:Lsay;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Lsay;->i()Ljava/lang/Comparable;

    move-result-object v4

    nop

    nop

    nop

    check-cast v4, Ljava/lang/Long;

    nop

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    nop

    nop

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    nop

    goto :goto_6

    nop

    :cond_2
    iget-object v1, p0, Ljwk;->g:Ljava/util/Set;

    nop

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    nop

    nop

    nop

    nop

    :cond_3
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    nop

    const/4 v3, 0x1

    nop

    if-eqz v2, :cond_8

    nop

    nop

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    check-cast v2, Ljwj;

    nop

    nop

    iget-boolean v4, v2, Ljwj;->c:Z

    nop

    if-nez v4, :cond_3

    nop

    nop

    nop

    nop

    iget-boolean v4, v2, Ljwj;->f:Z

    nop

    nop

    nop

    if-nez v4, :cond_3

    nop

    nop

    nop

    nop

    nop

    iget-object v4, v2, Ljwj;->b:Lsay;

    nop

    invoke-virtual {v4}, Lsay;->l()Z

    move-result v4

    nop

    nop

    if-nez v4, :cond_4

    nop

    nop

    nop

    iget-boolean v4, v2, Ljwj;->e:Z

    nop

    nop

    if-eqz v4, :cond_3

    nop

    nop

    nop

    nop

    nop

    :cond_4
    iget-boolean v4, v2, Ljwj;->e:Z

    nop

    nop

    nop

    if-eqz v4, :cond_5

    nop

    nop

    nop

    iget-boolean v4, p0, Ljwk;->n:Z

    nop

    nop

    nop

    nop

    goto :goto_8

    nop

    nop

    :cond_5
    iget-boolean v4, p0, Ljwk;->m:Z

    nop

    nop

    :goto_8
    iget-object v5, v2, Ljwj;->a:Llxm;

    nop

    nop

    nop

    nop

    iget-object v5, v2, Ljwj;->k:Lhdn;

    nop

    nop

    nop

    nop

    nop

    iget-object v5, v5, Lhdn;->c:Ljava/lang/Object;

    nop

    nop

    nop

    if-nez v4, :cond_6

    nop

    nop

    nop

    new-instance v4, Ljxc;

    nop

    nop

    nop

    invoke-direct {v4, v5}, Ljxc;-><init>(Lqep;)V

    move-object v5, v4

    nop

    :cond_6
    iget-object v4, p0, Ljwk;->i:Ljwm;

    nop

    nop

    nop

    nop

    nop

    iget-object v6, v2, Ljwj;->b:Lsay;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v6}, Lsay;->h()Ljava/lang/Comparable;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    check-cast v6, Ljava/lang/Long;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    nop

    nop

    nop

    invoke-virtual {v4, v5, v6, v7}, Ljwm;->e(Lqep;J)Ljwl;

    move-result-object v4

    nop

    nop

    nop

    nop

    iput-object v4, v2, Ljwj;->h:Ljwl;

    nop

    nop

    nop

    nop

    nop

    iget-object v4, p0, Ljwk;->k:Ljwm;

    nop

    iget-object v5, v2, Ljwj;->k:Lhdn;

    nop

    nop

    nop

    nop

    iget-object v5, v5, Lhdn;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    iget-object v6, v2, Ljwj;->b:Lsay;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v6}, Lsay;->h()Ljava/lang/Comparable;

    move-result-object v6

    nop

    nop

    check-cast v6, Ljava/lang/Long;

    nop

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    nop

    nop

    nop

    invoke-virtual {v4, v5, v6, v7}, Ljwm;->e(Lqep;J)Ljwl;

    move-result-object v4

    nop

    nop

    nop

    nop

    iput-object v4, v2, Ljwj;->j:Ljwl;

    nop

    iget-object v4, v2, Ljwj;->k:Lhdn;

    nop

    iget-object v4, v4, Lhdn;->a:Ljava/lang/Object;

    nop

    if-eqz v4, :cond_7

    nop

    nop

    iget-object v5, p0, Ljwk;->j:Ljwm;

    nop

    nop

    nop

    nop

    iget-object v6, v2, Ljwj;->b:Lsay;

    nop

    nop

    invoke-virtual {v6}, Lsay;->h()Ljava/lang/Comparable;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    check-cast v6, Ljava/lang/Long;

    nop

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    nop

    invoke-virtual {v5, v4, v6, v7}, Ljwm;->e(Lqep;J)Ljwl;

    move-result-object v4

    nop

    nop

    nop

    iput-object v4, v2, Ljwj;->i:Ljwl;

    nop

    nop

    :cond_7
    iput-boolean v3, v2, Ljwj;->c:Z

    nop

    nop

    nop

    goto/16 :goto_7

    nop

    :cond_8
    iget-object v1, p0, Ljwk;->g:Ljava/util/Set;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    nop

    nop

    :cond_9
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    if-eqz v2, :cond_a

    nop

    nop

    nop

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    check-cast v2, Ljwj;

    nop

    nop

    nop

    nop

    nop

    iget-boolean v4, v2, Ljwj;->c:Z

    nop

    if-eqz v4, :cond_9

    nop

    nop

    nop

    nop

    iget-object v4, v2, Ljwj;->b:Lsay;

    nop

    nop

    invoke-virtual {v4}, Lsay;->l()Z

    move-result v4

    nop

    nop

    nop

    nop

    nop

    if-nez v4, :cond_9

    nop

    nop

    nop

    nop

    iget-boolean v4, v2, Ljwj;->f:Z

    nop

    nop

    nop

    if-nez v4, :cond_9

    nop

    nop

    nop

    iget-boolean v4, v2, Ljwj;->e:Z

    nop

    nop

    if-eqz v4, :cond_9

    nop

    nop

    nop

    nop

    iget-object v4, v2, Ljwj;->a:Llxm;

    nop

    nop

    iget-object v4, v2, Ljwj;->h:Ljwl;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v5, p0, Ljwk;->d:J

    nop

    nop

    const/4 v7, 0x0

    nop

    nop

    invoke-virtual {v4, v5, v6, v7}, Ljwl;->a(JZ)V

    iget-object v4, v2, Ljwj;->j:Ljwl;

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v5, p0, Ljwk;->d:J

    nop

    nop

    nop

    nop

    invoke-virtual {v4, v5, v6, v7}, Ljwl;->a(JZ)V

    iget-object v4, p0, Ljwk;->b:Lrss;

    nop

    nop

    invoke-virtual {v4}, Lrss;->h()Z

    move-result v4

    nop

    nop

    nop

    if-eqz v4, :cond_9

    nop

    nop

    nop

    iget-boolean v4, v2, Ljwj;->e:Z

    nop

    nop

    nop

    if-eqz v4, :cond_9

    nop

    nop

    nop

    nop

    iget-object v2, v2, Ljwj;->i:Ljwl;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v4, p0, Ljwk;->d:J

    nop

    invoke-virtual {v2, v4, v5, v7}, Ljwl;->a(JZ)V

    goto/16 :goto_9

    nop

    nop

    nop

    :cond_a
    iget-object v1, p0, Ljwk;->g:Ljava/util/Set;

    nop

    nop

    nop

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    nop

    nop

    nop

    nop

    :cond_b
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    if-eqz v2, :cond_e

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    check-cast v2, Ljwj;

    nop

    nop

    nop

    nop

    nop

    iget-boolean v4, v2, Ljwj;->c:Z

    nop

    if-eqz v4, :cond_b

    nop

    nop

    iget-object v4, v2, Ljwj;->b:Lsay;

    nop

    nop

    invoke-virtual {v4}, Lsay;->l()Z

    move-result v4

    nop

    nop

    nop

    if-eqz v4, :cond_b

    nop

    nop

    iget-boolean v4, v2, Ljwj;->f:Z

    nop

    nop

    nop

    nop

    if-nez v4, :cond_b

    nop

    iget-boolean v4, v2, Ljwj;->d:Z

    nop

    if-nez v4, :cond_b

    nop

    nop

    nop

    nop

    iget-object v4, v2, Ljwj;->a:Llxm;

    nop

    nop

    nop

    nop

    iget-object v4, v2, Ljwj;->b:Lsay;

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Lsay;->h()Ljava/lang/Comparable;

    iget-object v4, v2, Ljwj;->b:Lsay;

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Lsay;->i()Ljava/lang/Comparable;

    iget-object v4, v2, Ljwj;->b:Lsay;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Lsay;->i()Ljava/lang/Comparable;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    check-cast v4, Ljava/lang/Long;

    nop

    nop

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    iget-object v4, v2, Ljwj;->b:Lsay;

    nop

    nop

    invoke-virtual {v4}, Lsay;->h()Ljava/lang/Comparable;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    check-cast v4, Ljava/lang/Long;

    nop

    nop

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    iget-object v4, v2, Ljwj;->h:Ljwl;

    nop

    nop

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, v2, Ljwj;->b:Lsay;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v5}, Lsay;->i()Ljava/lang/Comparable;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    check-cast v5, Ljava/lang/Long;

    nop

    nop

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    nop

    nop

    nop

    nop

    invoke-virtual {v4, v5, v6, v3}, Ljwl;->a(JZ)V

    iget-object v4, v2, Ljwj;->j:Ljwl;

    nop

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, v2, Ljwj;->b:Lsay;

    nop

    nop

    invoke-virtual {v5}, Lsay;->i()Ljava/lang/Comparable;

    move-result-object v5

    nop

    nop

    nop

    check-cast v5, Ljava/lang/Long;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v4, v5, v6, v3}, Ljwl;->a(JZ)V

    iget-object v4, v2, Ljwj;->i:Ljwl;

    nop

    nop

    nop

    nop

    nop

    if-eqz v4, :cond_d

    nop

    iget-boolean v5, v2, Ljwj;->e:Z

    nop

    nop

    nop

    nop

    nop

    if-eqz v5, :cond_c

    nop

    nop

    nop

    nop

    iget-object v5, v2, Ljwj;->b:Lsay;

    nop

    invoke-virtual {v5}, Lsay;->i()Ljava/lang/Comparable;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    check-cast v5, Ljava/lang/Long;

    nop

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    nop

    nop

    nop

    nop

    invoke-virtual {v4, v5, v6, v3}, Ljwl;->a(JZ)V

    goto :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_c
    iget-object v5, v2, Ljwj;->a:Llxm;

    nop

    nop

    nop

    nop

    nop

    iget-object v5, v2, Ljwj;->b:Lsay;

    nop

    nop

    nop

    invoke-virtual {v5}, Lsay;->h()Ljava/lang/Comparable;

    move-result-object v5

    nop

    nop

    nop

    nop

    check-cast v5, Ljava/lang/Long;

    nop

    nop

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    nop

    nop

    nop

    invoke-virtual {v4, v5, v6, v3}, Ljwl;->a(JZ)V

    :cond_d
    :goto_b
    iput-boolean v3, v2, Ljwj;->d:Z

    nop

    goto/16 :goto_a

    nop

    nop

    nop

    nop

    nop

    :cond_e
    new-instance v1, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Ljwk;->g:Ljava/util/Set;

    nop

    nop

    nop

    nop

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    nop

    nop

    :cond_f
    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    nop

    nop

    nop

    nop

    nop

    if-eqz v3, :cond_11

    nop

    nop

    nop

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    check-cast v3, Ljwj;

    nop

    iget-boolean v4, v3, Ljwj;->f:Z

    nop

    nop

    if-nez v4, :cond_10

    nop

    nop

    nop

    nop

    iget-boolean v4, v3, Ljwj;->d:Z

    nop

    nop

    nop

    nop

    if-eqz v4, :cond_f

    nop

    nop

    nop

    iget-object v4, v3, Ljwj;->b:Lsay;

    nop

    nop

    invoke-virtual {v4}, Lsay;->l()Z

    move-result v4

    nop

    nop

    nop

    nop

    nop

    if-eqz v4, :cond_f

    nop

    nop

    nop

    nop

    iget-object v4, v3, Ljwj;->b:Lsay;

    nop

    nop

    nop

    invoke-virtual {v4}, Lsay;->i()Ljava/lang/Comparable;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    check-cast v4, Ljava/lang/Long;

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    nop

    nop

    nop

    iget-wide v6, p0, Ljwk;->d:J

    nop

    nop

    const-wide/32 v8, -0x989680

    nop

    nop

    add-long/2addr v6, v8

    nop

    nop

    cmp-long v4, v4, v6

    nop

    nop

    nop

    nop

    if-gez v4, :cond_f

    nop

    :cond_10
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, v3, Ljwj;->a:Llxm;

    nop

    nop

    nop

    nop

    goto :goto_c

    nop

    :cond_11
    iget-object p0, p0, Ljwk;->g:Ljava/util/Set;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    monitor-exit v0

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

    monitor-exit v0

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v0, p0, Ljwk;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_10
    const v1, 0x17

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_4

    nop

    nop

    :goto_12
    goto/32 :goto_e

    nop

    nop

    nop

    nop
.end method

.method public final e(J)Luoj;
    .locals 13

    goto/32 :goto_f

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

    nop

    :goto_1
    iget-object v0, p0, Ljwk;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_5
    monitor-enter v0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v1, p0, Ljwk;->g:Ljava/util/Set;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    nop

    nop

    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    move v3, v2

    nop

    :cond_0
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    nop

    nop

    nop

    nop

    const/4 v5, 0x1

    nop

    if-eqz v4, :cond_6

    nop

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    nop

    check-cast v4, Ljwj;

    nop

    nop

    nop

    nop

    iget-boolean v6, v4, Ljwj;->f:Z

    nop

    nop

    nop

    if-nez v6, :cond_0

    nop

    nop

    nop

    nop

    nop

    iget-boolean v6, v4, Ljwj;->e:Z

    nop

    nop

    nop

    nop

    nop

    if-eqz v6, :cond_1

    nop

    nop

    nop

    nop

    iget-boolean v6, p0, Ljwk;->n:Z

    nop

    nop

    goto :goto_7

    nop

    nop

    :cond_1
    iget-boolean v6, p0, Ljwk;->m:Z

    nop

    nop

    :goto_7
    iget-object v7, v4, Ljwj;->b:Lsay;

    nop

    nop

    nop

    nop

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    nop

    invoke-virtual {v7, v8}, Lsay;->j(Ljava/lang/Comparable;)Z

    move-result v7

    nop

    nop

    nop

    if-eqz v7, :cond_2

    nop

    nop

    nop

    nop

    nop

    iget-object p0, v4, Ljwj;->a:Llxm;

    nop

    nop

    nop

    nop

    invoke-static {v6}, Luoj;->n(Z)Luoj;

    move-result-object p0

    nop

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop

    return-object p0

    nop

    nop

    :cond_2
    iget-object v7, v4, Ljwj;->b:Lsay;

    nop

    invoke-virtual {v7}, Lsay;->l()Z

    move-result v7

    nop

    nop

    nop

    if-eqz v7, :cond_4

    nop

    iget-object v7, v4, Ljwj;->b:Lsay;

    nop

    nop

    nop

    invoke-virtual {v7}, Lsay;->i()Ljava/lang/Comparable;

    move-result-object v7

    nop

    check-cast v7, Ljava/lang/Long;

    nop

    nop

    nop

    nop

    nop

    iget-object v9, v4, Ljwj;->b:Lsay;

    nop

    nop

    nop

    invoke-virtual {v9}, Lsay;->i()Ljava/lang/Comparable;

    move-result-object v9

    nop

    nop

    nop

    check-cast v9, Ljava/lang/Long;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    nop

    nop

    nop

    nop

    nop

    iget-boolean v11, v4, Ljwj;->e:Z

    nop

    if-eq v5, v11, :cond_3

    nop

    nop

    nop

    nop

    const-wide/32 v11, 0x1046a

    nop

    nop

    nop

    nop

    nop

    goto :goto_8

    nop

    nop

    nop

    nop

    :cond_3
    const-wide/32 v11, 0xa2c2a

    nop

    nop

    nop

    nop

    :goto_8
    add-long/2addr v9, v11

    nop

    nop

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    nop

    nop

    invoke-static {v7, v9}, Lsay;->e(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lsay;

    move-result-object v7

    nop

    nop

    nop

    nop

    invoke-virtual {v7, v8}, Lsay;->j(Ljava/lang/Comparable;)Z

    move-result v7

    nop

    nop

    nop

    nop

    if-eqz v7, :cond_4

    nop

    nop

    nop

    nop

    iget-object p0, v4, Ljwj;->a:Llxm;

    nop

    nop

    nop

    invoke-static {v6}, Luoj;->n(Z)Luoj;

    move-result-object p0

    nop

    nop

    nop

    monitor-exit v0

    nop

    return-object p0

    nop

    nop

    :cond_4
    iget-object v4, v4, Ljwj;->b:Lsay;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Lsay;->h()Ljava/lang/Comparable;

    move-result-object v4

    nop

    nop

    nop

    check-cast v4, Ljava/lang/Long;

    nop

    nop

    nop

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    nop

    cmp-long v4, v6, p1

    nop

    nop

    nop

    nop

    if-ltz v4, :cond_5

    nop

    nop

    nop

    nop

    move v4, v2

    nop

    nop

    nop

    goto :goto_9

    nop

    nop

    nop

    :cond_5
    move v4, v5

    nop

    nop

    nop

    nop

    nop

    :goto_9
    xor-int/2addr v4, v5

    nop

    or-int/2addr v3, v4

    nop

    goto/16 :goto_6

    nop

    nop

    :cond_6
    if-eqz v3, :cond_7

    nop

    new-instance p0, Luoj;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {p0, v2}, Luoj;-><init>(I)V

    monitor-exit v0

    nop

    return-object p0

    nop

    nop

    :cond_7
    iget-boolean p0, p0, Ljwk;->m:Z

    nop

    if-eq v5, p0, :cond_8

    nop

    nop

    nop

    goto :goto_a

    nop

    nop

    nop

    :cond_8
    const/4 v2, 0x4

    nop

    nop

    nop

    nop

    :goto_a
    new-instance p0, Luoj;

    nop

    nop

    or-int/lit8 p1, v2, 0x3

    nop

    nop

    nop

    invoke-direct {p0, p1}, Luoj;-><init>(I)V

    monitor-exit v0

    nop

    nop

    return-object p0

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    throw p0

    nop

    :goto_c
    goto/32 :goto_e

    nop

    nop

    :goto_d
    const v1, 0x1e

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

    :goto_e
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_f
    const v0, 0x6

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-lez v0, :cond_9

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_9
    goto/32 :goto_2

    nop
.end method

.class public final synthetic Ldgg;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Ldgh;I)V
    .locals 0

    iput p2, p0, Ldgg;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldgg;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ldjf;I)V
    .locals 0

    iput p2, p0, Ldgg;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldgg;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ldjg;I)V
    .locals 0

    iput p2, p0, Ldgg;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldgg;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ldjj;I)V
    .locals 0

    iput p2, p0, Ldgg;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldgg;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ldlb;I)V
    .locals 0

    iput p2, p0, Ldgg;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldgg;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ldlk;I)V
    .locals 0

    iput p2, p0, Ldgg;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldgg;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ldmp;I)V
    .locals 0

    iput p2, p0, Ldgg;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldgg;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ldms;I)V
    .locals 0

    iput p2, p0, Ldgg;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldgg;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ldmu;I)V
    .locals 0

    iput p2, p0, Ldgg;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldgg;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ldoq;I)V
    .locals 0

    iput p2, p0, Ldgg;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldgg;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ldpc;I)V
    .locals 0

    iput p2, p0, Ldgg;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldgg;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ldpn;I)V
    .locals 0

    iput p2, p0, Ldgg;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldgg;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ldqg;I)V
    .locals 0

    iput p2, p0, Ldgg;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldgg;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ldqt;I)V
    .locals 0

    iput p2, p0, Ldgg;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldgg;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ldra;I)V
    .locals 0

    iput p2, p0, Ldgg;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldgg;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Logd;I)V
    .locals 0

    iput p2, p0, Ldgg;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldgg;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Loiw;I)V
    .locals 0

    iput p2, p0, Ldgg;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldgg;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    move-object/from16 v1, p0

    iget v0, v1, Ldgg;->b:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch v0, :pswitch_data_0

    iget-object v0, v1, Ldgg;->a:Ljava/lang/Object;

    check-cast v0, Ldra;

    invoke-virtual {v0}, Ldra;->a()V

    return-void

    :pswitch_0
    iget-object v0, v1, Ldgg;->a:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Ldqt;

    iget-object v2, v2, Ldqt;->a:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-static {v3, v4}, Lcom/google/android/apps/camera/jni/facebeautification/GpuRetoucherNative;->createRetoucher(ZI)J

    move-result-wide v3

    check-cast v0, Ldqt;

    iput-wide v3, v0, Ldqt;->b:J

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :pswitch_1
    iget-object v0, v1, Ldgg;->a:Ljava/lang/Object;

    check-cast v0, Ldqg;

    invoke-virtual {v0}, Ldqg;->b()V

    return-void

    :pswitch_2
    iget-object v0, v1, Ldgg;->a:Ljava/lang/Object;

    invoke-interface {v0}, Logd;->get()Ljava/lang/Object;

    return-void

    :pswitch_3
    iget-object v0, v1, Ldgg;->a:Ljava/lang/Object;

    check-cast v0, Ldqb;

    invoke-virtual {v0}, Ldqb;->b()Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void

    :pswitch_4
    iget-object v0, v1, Ldgg;->a:Ljava/lang/Object;

    check-cast v0, Ldpn;

    iget-wide v2, v0, Ldpn;->d:J

    invoke-static {v2, v3}, Lcom/google/android/apps/camera/jni/facebeautification/FaceBeautificationNative;->releaseHandle(J)V

    return-void

    :pswitch_5
    iget-object v0, v1, Ldgg;->a:Ljava/lang/Object;

    check-cast v0, Ldpc;

    iget-object v2, v0, Ldpc;->b:Loiw;

    invoke-interface {v2}, Loiw;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldos;

    invoke-virtual {v2, v4}, Ldos;->c(Z)V

    iget-object v2, v0, Ldpc;->e:Ljwb;

    invoke-interface {v2}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldoh;

    sget-object v3, Ldoh;->a:Ldoh;

    invoke-virtual {v2, v3}, Ldoh;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v0, Ldpc;->j:Ljwb;

    check-cast v2, Ljvk;

    iget-object v2, v2, Ljvk;->d:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v4}, Lmoz;->p(Z)V

    iget-object v0, v0, Ldpc;->i:Lmqp;

    check-cast v0, Lmqt;

    iget-object v0, v0, Lmqt;->a:Ljava/lang/Object;

    check-cast v0, Lglf;

    invoke-interface {v0}, Lglf;->g()V

    :cond_0
    return-void

    :pswitch_6
    iget-object v0, v1, Ldgg;->a:Ljava/lang/Object;

    check-cast v0, Ldoq;

    iget-object v0, v0, Ldoq;->c:Lmqp;

    check-cast v0, Lmqt;

    iget-object v0, v0, Lmqt;->a:Ljava/lang/Object;

    check-cast v0, Lglf;

    invoke-interface {v0}, Lglf;->i()V

    return-void

    :pswitch_7
    iget-object v0, v1, Ldgg;->a:Ljava/lang/Object;

    invoke-interface {v0}, Logd;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/dynamicdepth/DynamicDepthUtils;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/dynamicdepth/DynamicDepthUtils;->a()Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void

    :pswitch_8
    iget-object v0, v1, Ldgg;->a:Ljava/lang/Object;

    check-cast v0, Ldmu;

    invoke-virtual {v0}, Ldmu;->a()V

    return-void

    :pswitch_9
    iget-object v0, v1, Ldgg;->a:Ljava/lang/Object;

    check-cast v0, Ldms;

    invoke-virtual {v0}, Ldms;->b()V

    invoke-virtual {v0}, Ldms;->c()V

    return-void

    :pswitch_a
    iget-object v0, v1, Ldgg;->a:Ljava/lang/Object;

    check-cast v0, Ldmp;

    invoke-virtual {v0}, Ldmp;->i()V

    return-void

    :pswitch_b
    iget-object v0, v1, Ldgg;->a:Ljava/lang/Object;

    check-cast v0, Ldlk;

    iget-object v2, v0, Ldlk;->d:Lkaq;

    const-string v3, "deleting old data from per-shot log"

    invoke-interface {v2, v3}, Lkaq;->b(Ljava/lang/String;)V

    iget-object v2, v0, Ldlk;->e:Lj$/time/Clock;

    invoke-virtual {v2}, Lj$/time/Clock;->instant()Lj$/time/Instant;

    move-result-object v2

    sget-object v3, Ldlk;->c:Lj$/time/Duration;

    invoke-virtual {v2, v3}, Lj$/time/Instant;->minus(Lj$/time/temporal/TemporalAmount;)Lj$/time/Instant;

    move-result-object v2

    iget-object v3, v0, Ldlk;->g:Ldlm;

    invoke-virtual {v2}, Lj$/time/Instant;->toEpochMilli()J

    move-result-wide v5

    move-object v2, v3

    check-cast v2, Ldls;

    iget-object v7, v2, Ldls;->a:Lapt;

    invoke-virtual {v7}, Lapt;->l()V

    iget-object v7, v2, Ldls;->c:Laqa;

    invoke-virtual {v7}, Laqa;->e()Larf;

    move-result-object v7

    invoke-virtual {v7, v4, v5, v6}, Lare;->e(IJ)V

    iget-object v4, v2, Ldls;->a:Lapt;

    invoke-virtual {v4}, Lapt;->m()V

    :try_start_1
    invoke-virtual {v7}, Larf;->a()I

    move-result v4

    check-cast v3, Ldls;

    iget-object v3, v3, Ldls;->a:Lapt;

    invoke-virtual {v3}, Lapt;->q()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v3, v2, Ldls;->a:Lapt;

    invoke-virtual {v3}, Lapt;->o()V

    iget-object v2, v2, Ldls;->c:Laqa;

    invoke-virtual {v2, v7}, Laqa;->g(Larf;)V

    if-lez v4, :cond_1

    iget-object v2, v0, Ldlk;->d:Lkaq;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleted "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " rows"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lkaq;->b(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0}, Ldlk;->m()V

    return-void

    :catchall_1
    move-exception v0

    iget-object v3, v2, Ldls;->a:Lapt;

    invoke-virtual {v3}, Lapt;->o()V

    iget-object v2, v2, Ldls;->c:Laqa;

    invoke-virtual {v2, v7}, Laqa;->g(Larf;)V

    throw v0

    :pswitch_c
    iget-object v0, v1, Ldgg;->a:Ljava/lang/Object;

    check-cast v0, Ldlb;

    iget-object v0, v0, Ldlb;->d:Lkaq;

    const-string v2, "showing \"Possible shot loss\" warning"

    invoke-interface {v0, v2}, Lkaq;->d(Ljava/lang/String;)V

    return-void

    :pswitch_d
    iget-object v0, v1, Ldgg;->a:Ljava/lang/Object;

    :try_start_2
    check-cast v0, Ldjg;

    iget-object v0, v0, Ldjg;->b:Lgwu;

    invoke-virtual {v0, v3}, Lgwu;->b(Z)V

    iget-object v2, v0, Lgwu;->b:Ldhi;

    sget-object v3, Ldho;->bL:Ldhj;

    invoke-interface {v2, v3}, Ldhi;->l(Ldhj;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0, v4}, Lgwu;->b(Z)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception v0

    sget-object v2, Ldjg;->a:Lnak;

    invoke-virtual {v2}, Lnaf;->b()Lnaz;

    move-result-object v2

    const-string v3, "Failed to restore JPEG files"

    const/16 v4, 0x3a1

    invoke-static {v2, v3, v4, v0}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V

    return-void

    :pswitch_e
    iget-object v0, v1, Ldgg;->a:Ljava/lang/Object;

    check-cast v0, Ldjj;

    invoke-virtual {v0}, Ldjj;->a()V

    return-void

    :pswitch_f
    iget-object v0, v1, Ldgg;->a:Ljava/lang/Object;

    check-cast v0, Ldjf;

    iget-object v2, v0, Ldjf;->k:Lgzm;

    sget-object v5, Lgzd;->at:Lgzr;

    invoke-interface {v2, v5}, Lgzm;->c(Lgzb;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, v0, Ldjf;->f:Lkbc;

    const-string v5, "CameraFilmstripDataAdapter#removeMarsDeletedItems"

    invoke-interface {v2, v5}, Lkbc;->e(Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    iget-object v5, v0, Ldjf;->i:Ldjs;

    invoke-virtual {v5}, Ldjs;->a()I

    move-result v5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v5, v0, Ldjf;->i:Ldjs;

    invoke-virtual {v5}, Ldjs;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lchd;

    invoke-interface {v6}, Lchd;->b()Lche;

    move-result-object v6

    invoke-interface {v6}, Lche;->c()Landroid/net/Uri;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    iget-object v5, v0, Ldjf;->m:Ldjn;

    invoke-virtual {v5, v2}, Ldjn;->a(Ljava/util/List;)Ljava/util/Map;

    move-result-object v5

    iget-object v6, v0, Ldjf;->f:Lkbc;

    invoke-interface {v6}, Lkbc;->f()V

    iget-object v6, v0, Ldjf;->f:Lkbc;

    const-string v7, "RemoveDeletedMarsItems"

    invoke-interface {v6, v7}, Lkbc;->e(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_5

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/Uri;

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    iget-object v9, v0, Ldjf;->i:Ldjs;

    invoke-virtual {v9, v8}, Ldjs;->i(Landroid/net/Uri;)V

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_5
    iget-object v2, v0, Ldjf;->f:Lkbc;

    invoke-interface {v2}, Lkbc;->f()V

    :cond_6
    iget-object v2, v0, Ldjf;->h:Ldjs;

    invoke-virtual {v2}, Ldjs;->f()Lchd;

    move-result-object v2

    if-nez v2, :cond_7

    return-void

    :cond_7
    iget-object v5, v0, Ldjf;->f:Lkbc;

    const-string v6, "CameraFilmstripDataAdapter#removeDeletedItems"

    invoke-interface {v5, v6}, Lkbc;->e(Ljava/lang/String;)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Lchd;->b()Lche;

    move-result-object v6

    invoke-interface {v6}, Lche;->g()Lj$/time/Instant;

    move-result-object v6

    invoke-interface {v2}, Lchd;->b()Lche;

    move-result-object v2

    invoke-interface {v2}, Lche;->h()Lj$/time/Instant;

    move-result-object v2

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    iget-object v8, v0, Ldjf;->e:Ldju;

    iget-object v8, v8, Ldju;->f:Ldjq;

    invoke-virtual {v8, v6, v2, v3}, Ldjq;->e(Lj$/time/Instant;Lj$/time/Instant;Z)Ljava/util/List;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v8, v0, Ldjf;->o:Lcvm;

    iget-object v8, v8, Lcvm;->d:Ljava/lang/Object;

    check-cast v8, Ldjq;

    invoke-virtual {v8, v6, v2, v4}, Ldjq;->e(Lj$/time/Instant;Lj$/time/Instant;Z)Ljava/util/List;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v2, v0, Ldjf;->h:Ldjs;

    invoke-virtual {v2}, Ldjs;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lchd;

    invoke-interface {v4}, Lchd;->b()Lche;

    move-result-object v4

    invoke-interface {v4}, Lche;->j()Z

    move-result v6

    if-nez v6, :cond_8

    invoke-interface {v4}, Lche;->c()Landroid/net/Uri;

    move-result-object v6

    invoke-interface {v7, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    invoke-interface {v4}, Lche;->c()Landroid/net/Uri;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_9
    iget-object v2, v0, Ldjf;->f:Lkbc;

    invoke-interface {v2}, Lkbc;->f()V

    iget-object v2, v0, Ldjf;->n:Lcdi;

    iget-object v4, v2, Lcdi;->a:Ljava/lang/Object;

    monitor-enter v4

    :try_start_3
    iget-object v2, v2, Lcdi;->g:Lcjd;

    invoke-virtual {v2}, Lcjd;->a()Z

    move-result v2

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v2, :cond_a

    sget-object v0, Ldjf;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    const-string v2, "Activity is destroyed. Canceling load."

    const/16 v3, 0x399

    invoke-static {v0, v2, v3}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    return-void

    :cond_a
    iget-object v2, v0, Ldjf;->f:Lkbc;

    const-string v4, "RemoveDeleted"

    invoke-interface {v2, v4}, Lkbc;->e(Ljava/lang/String;)V

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    :goto_3
    if-ge v3, v2, :cond_b

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    iget-object v6, v0, Ldjf;->h:Ldjs;

    invoke-virtual {v6, v4}, Ldjs;->i(Landroid/net/Uri;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_b
    iget-object v0, v0, Ldjf;->f:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    return-void

    :catchall_2
    move-exception v0

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    :pswitch_10
    iget-object v0, v1, Ldgg;->a:Ljava/lang/Object;

    check-cast v0, Ldjf;

    iget-object v0, v0, Ldjf;->c:Lnoj;

    invoke-interface {v0, v2}, Lnoj;->b(Ljava/lang/Object;)V

    return-void

    :pswitch_11
    iget-object v0, v1, Ldgg;->a:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Ldjf;

    iget-object v4, v3, Ldjf;->f:Lkbc;

    const-string v5, "CameraFilmstripDataAdapter#queryFilmStrip"

    invoke-interface {v4, v5}, Lkbc;->e(Ljava/lang/String;)V

    iget-boolean v4, v3, Ldjf;->g:Z

    if-eqz v4, :cond_c

    iget-object v4, v3, Ldjf;->l:Lj$/time/Instant;

    goto :goto_4

    :cond_c
    sget-object v4, Lj$/time/Instant;->EPOCH:Lj$/time/Instant;

    :goto_4
    invoke-virtual {v3}, Ldjf;->s()Ldjs;

    move-result-object v5

    invoke-virtual {v5}, Ldjs;->b()Lchd;

    move-result-object v5

    if-eqz v5, :cond_d

    invoke-interface {v5}, Lchd;->b()Lche;

    move-result-object v6

    invoke-interface {v6}, Lche;->g()Lj$/time/Instant;

    move-result-object v6

    goto :goto_5

    :cond_d
    move-object v6, v4

    :goto_5
    if-eqz v5, :cond_e

    invoke-interface {v5}, Lchd;->b()Lche;

    move-result-object v4

    invoke-interface {v4}, Lche;->h()Lj$/time/Instant;

    move-result-object v4

    :cond_e
    iget-object v5, v3, Ldjf;->f:Lkbc;

    const-string v7, "CameraFilmstripDataAdapter#queryFilmStrip#querySince"

    invoke-interface {v5, v7}, Lkbc;->e(Ljava/lang/String;)V

    :try_start_5
    invoke-static {}, Lmvv;->e()Lmvq;

    move-result-object v5

    move-object v7, v0

    check-cast v7, Ldjf;

    iget-object v7, v7, Ldjf;->e:Ldju;

    iget-object v8, v7, Ldju;->f:Ldjq;

    sget-object v9, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v10, Ldjq;->c:[Ljava/lang/String;

    invoke-virtual {v6}, Lj$/time/Instant;->toEpochMilli()J

    move-result-wide v11

    invoke-virtual {v4}, Lj$/time/Instant;->getEpochSecond()J

    move-result-wide v13

    new-instance v2, Lcwd;

    const/4 v15, 0x3

    invoke-direct {v2, v8, v15}, Lcwd;-><init>(Ldjq;I)V

    const/4 v15, 0x5

    move-object/from16 v16, v2

    invoke-virtual/range {v8 .. v16}, Ldjq;->d(Landroid/net/Uri;[Ljava/lang/String;JJILjava/util/function/Function;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v2

    new-instance v8, Lcwd;

    const/4 v9, 0x5

    invoke-direct {v8, v7, v9}, Lcwd;-><init>(Ldju;I)V

    invoke-interface {v2, v8}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v2

    invoke-static {}, Lj$/util/stream/Collectors;->toList()Lj$/util/stream/Collector;

    move-result-object v7

    invoke-interface {v2, v7}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-virtual {v5, v2}, Lmvq;->h(Ljava/lang/Iterable;)V

    move-object v2, v0

    check-cast v2, Ldjf;

    iget-object v2, v2, Ldjf;->o:Lcvm;

    iget-object v7, v2, Lcvm;->d:Ljava/lang/Object;

    sget-object v9, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v10, Ldjq;->c:[Ljava/lang/String;

    invoke-virtual {v6}, Lj$/time/Instant;->toEpochMilli()J

    move-result-wide v11

    invoke-virtual {v4}, Lj$/time/Instant;->getEpochSecond()J

    move-result-wide v13

    new-instance v4, Lcwd;

    move-object v6, v7

    check-cast v6, Ldjq;

    const/4 v8, 0x4

    invoke-direct {v4, v6, v8}, Lcwd;-><init>(Ldjq;I)V

    move-object v8, v7

    check-cast v8, Ldjq;

    const/4 v15, 0x5

    move-object/from16 v16, v4

    invoke-virtual/range {v8 .. v16}, Ldjq;->d(Landroid/net/Uri;[Ljava/lang/String;JJILjava/util/function/Function;)Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v4

    new-instance v6, Lcwd;

    const/4 v7, 0x6

    const/4 v8, 0x0

    invoke-direct {v6, v2, v7, v8, v8}, Lcwd;-><init>(Lcvm;I[B[B)V

    invoke-interface {v4, v6}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v2

    invoke-static {}, Lj$/util/stream/Collectors;->toList()Lj$/util/stream/Collector;

    move-result-object v4

    invoke-interface {v2, v4}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-virtual {v5, v2}, Lmvq;->h(Ljava/lang/Iterable;)V

    invoke-virtual {v5}, Lmvq;->f()Lmvv;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lmyu;

    iget v4, v4, Lmyu;->c:I

    move-object v4, v0

    check-cast v4, Ldjf;

    iget-object v4, v4, Ldjf;->f:Lkbc;

    const-string v5, "CameraFilmstripDataAdapter#queryFilmStrip#loadMetadata"

    invoke-interface {v4, v5}, Lkbc;->g(Ljava/lang/String;)V

    invoke-virtual {v2}, Lmvv;->s()Lnad;

    move-result-object v4

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lchd;

    move-object v6, v0

    check-cast v6, Ldjf;

    iget-object v6, v6, Ldjf;->p:Lbkc;

    move-object v7, v0

    check-cast v7, Ldjf;

    iget-object v7, v7, Ldjf;->d:Landroid/content/Context;

    invoke-virtual {v6, v7, v5}, Lbkc;->w(Landroid/content/Context;Lchd;)Z

    goto :goto_6

    :cond_f
    move-object v4, v0

    check-cast v4, Ldjf;

    iget-object v4, v4, Ldjf;->h:Ldjs;

    invoke-virtual {v4}, Ldjs;->a()I

    move-result v4

    if-nez v4, :cond_10

    check-cast v0, Ldjf;

    iget-object v0, v0, Ldjf;->h:Ldjs;

    invoke-virtual {v0, v2}, Ldjs;->g(Ljava/util/Collection;)V

    goto :goto_8

    :cond_10
    invoke-virtual {v2}, Lmvv;->s()Lnad;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lchd;

    move-object v5, v0

    check-cast v5, Ldjf;

    iget-object v5, v5, Ldjf;->h:Ldjs;

    invoke-virtual {v5, v4}, Ldjs;->k(Lchd;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_7

    :cond_11
    :goto_8
    iget-object v0, v3, Ldjf;->f:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    iget-object v0, v3, Ldjf;->f:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    return-void

    :catchall_3
    move-exception v0

    iget-object v2, v3, Ldjf;->f:Lkbc;

    invoke-interface {v2}, Lkbc;->f()V

    iget-object v2, v3, Ldjf;->f:Lkbc;

    invoke-interface {v2}, Lkbc;->f()V

    throw v0

    :pswitch_12
    iget-object v0, v1, Ldgg;->a:Ljava/lang/Object;

    check-cast v0, Ldgh;

    invoke-virtual {v0}, Ldgh;->e()V

    return-void

    :pswitch_13
    iget-object v0, v1, Ldgg;->a:Ljava/lang/Object;

    check-cast v0, Ldgh;

    invoke-virtual {v0}, Ldgh;->g()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

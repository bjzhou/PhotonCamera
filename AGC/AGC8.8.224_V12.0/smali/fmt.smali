.class public final Lfmt;
.super Ljava/lang/Object;

# interfaces
.implements Lexz;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public constructor <init>(Leww;I)V
    .locals 0

    iput p2, p0, Lfmt;->b:I

    iput-object p1, p0, Lfmt;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lfmu;I)V
    .locals 0

    iput p2, p0, Lfmt;->b:I

    iput-object p1, p0, Lfmt;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lfng;I)V
    .locals 0

    iput p2, p0, Lfmt;->b:I

    iput-object p1, p0, Lfmt;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 4

    iget v0, p0, Lfmt;->b:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    iget-object p1, p0, Lfmt;->a:Ljava/lang/Object;

    check-cast p1, Lfng;

    iget-object p1, p1, Lfng;->B:Landroid/os/Handler;

    new-instance v0, Lfib;

    const/16 v2, 0x14

    invoke-direct {v0, p0, v2, v1}, Lfib;-><init>(Lfmt;I[C)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_0
    iget-object p1, p0, Lfmt;->a:Ljava/lang/Object;

    check-cast p1, Lfng;

    iget-object p1, p1, Lfng;->B:Landroid/os/Handler;

    new-instance v0, Lfib;

    const/16 v2, 0x13

    invoke-direct {v0, p0, v2, v1}, Lfib;-><init>(Lfmt;I[B)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_1
    iget-object p1, p0, Lfmt;->a:Ljava/lang/Object;

    check-cast p1, Lfng;

    iget v0, p1, Lfng;->p:I

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p1, Lfng;->O:J

    iget-object p1, p0, Lfmt;->a:Ljava/lang/Object;

    check-cast p1, Lfng;

    invoke-virtual {p1}, Lfng;->C()V

    :cond_0
    iget-object p1, p0, Lfmt;->a:Ljava/lang/Object;

    check-cast p1, Lfng;

    iget-object p1, p1, Lfng;->t:Liec;

    invoke-interface {p1}, Liec;->i()V

    iget-object p1, p0, Lfmt;->a:Ljava/lang/Object;

    check-cast p1, Lfng;

    iget v0, p1, Lfng;->p:I

    add-int/2addr v0, v2

    iput v0, p1, Lfng;->p:I

    iget-object p1, p1, Lfng;->B:Landroid/os/Handler;

    const/16 v0, 0x65

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object p1, p0, Lfmt;->a:Ljava/lang/Object;

    check-cast p1, Lfng;

    iget-object p1, p1, Lfng;->e:Lhgy;

    const v0, 0x7f130027

    invoke-interface {p1, v0}, Lhgy;->b(I)V

    iget-object p1, p0, Lfmt;->a:Ljava/lang/Object;

    check-cast p1, Lfng;

    iget-boolean v0, p1, Lfng;->o:Z

    if-nez v0, :cond_4

    iput-boolean v2, p1, Lfng;->o:Z

    iget-object p1, p1, Lfng;->d:Lgpv;

    iget-object v0, p1, Lgpv;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p1, Lgpv;->b:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget v3, p1, Lgpv;->g:I

    if-eq v3, v2, :cond_2

    iget-object v3, p1, Lgpv;->c:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    const/4 v3, 0x1

    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_3

    :try_start_2
    iget-object v1, p1, Lgpv;->a:Lkaq;

    const-string v3, "Suspend processing"

    invoke-interface {v1, v3}, Lkaq;->b(Ljava/lang/String;)V

    iput-boolean v2, p1, Lgpv;->e:Z

    monitor-exit v0

    return-void

    :cond_3
    iget-object p1, p1, Lgpv;->a:Lkaq;

    const-string v1, "Not able to suspend processing."

    invoke-interface {p1, v1}, Lkaq;->b(Ljava/lang/String;)V

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1

    :cond_4
    return-void

    :pswitch_2
    :try_start_5
    iget-object p1, p0, Lfmt;->a:Ljava/lang/Object;

    check-cast p1, Lfng;

    iget-object p1, p1, Lfng;->v:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->join()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    sget-object v0, Lfng;->b:Lnak;

    invoke-virtual {v0}, Lnaf;->b()Lnaz;

    move-result-object v0

    const-string v1, "photoSpherePreviewWriter interrupted."

    const/16 v2, 0x948

    invoke-static {v0, v1, v2, p1}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V

    :goto_1
    iget-object p1, p0, Lfmt;->a:Ljava/lang/Object;

    check-cast p1, Lfng;

    iget-object p1, p1, Lfng;->B:Landroid/os/Handler;

    const/16 v0, 0x68

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :pswitch_3
    iget-object p1, p0, Lfmt;->a:Ljava/lang/Object;

    check-cast p1, Lfng;

    iget-object p1, p1, Lfng;->B:Landroid/os/Handler;

    const/16 v0, 0x69

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :pswitch_4
    iget-object v0, p0, Lfmt;->a:Ljava/lang/Object;

    check-cast v0, Leww;

    iget-object v0, v0, Leww;->F:Lexb;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, v0, Lexb;->a:F

    invoke-virtual {v0}, Lexb;->a()V

    iget-object p1, p0, Lfmt;->a:Ljava/lang/Object;

    check-cast p1, Leww;

    iget-object p1, p1, Leww;->t:Ldzx;

    if-eqz p1, :cond_6

    iget-object v0, p1, Ldzx;->k:Ljava/lang/Object;

    monitor-enter v0

    :try_start_6
    iget-boolean v1, p1, Ldzx;->h:Z

    if-nez v1, :cond_5

    iget-object v1, p1, Ldzx;->i:Landroid/os/Handler;

    iget-object v3, p1, Ldzx;->l:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iput-boolean v2, p1, Ldzx;->h:Z

    :cond_5
    monitor-exit v0

    return-void

    :catchall_2
    move-exception p1

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw p1

    :cond_6
    return-void

    :pswitch_5
    iget-object p1, p0, Lfmt;->a:Ljava/lang/Object;

    check-cast p1, Lfmu;

    iget-object p1, p1, Lfmu;->b:Lfng;

    iput-boolean v2, p1, Lfng;->l:Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

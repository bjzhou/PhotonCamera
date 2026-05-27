.class public final synthetic Lkgk;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Z

.field public final synthetic c:Z

.field public final synthetic d:Ljava/lang/Object;

.field private final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Lhwc;ZZZI)V
    .locals 0

    iput p5, p0, Lkgk;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkgk;->d:Ljava/lang/Object;

    iput-boolean p2, p0, Lkgk;->a:Z

    iput-boolean p3, p0, Lkgk;->b:Z

    iput-boolean p4, p0, Lkgk;->c:Z

    return-void
.end method

.method public synthetic constructor <init>(Lkgl;ZZZI)V
    .locals 0

    iput p5, p0, Lkgk;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkgk;->d:Ljava/lang/Object;

    iput-boolean p2, p0, Lkgk;->a:Z

    iput-boolean p3, p0, Lkgk;->b:Z

    iput-boolean p4, p0, Lkgk;->c:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget v0, p0, Lkgk;->e:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lkgk;->d:Ljava/lang/Object;

    iget-boolean v1, p0, Lkgk;->a:Z

    iget-boolean v2, p0, Lkgk;->b:Z

    iget-boolean v3, p0, Lkgk;->c:Z

    check-cast v0, Lhwc;

    iget-object v4, v0, Lhwc;->o:Lker;

    invoke-virtual {v0, v1, v4, v2, v3}, Lhwc;->b(ZLker;ZZ)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lkgk;->d:Ljava/lang/Object;

    iget-boolean v1, p0, Lkgk;->a:Z

    iget-boolean v2, p0, Lkgk;->b:Z

    iget-boolean v3, p0, Lkgk;->c:Z

    :try_start_0
    move-object v4, v0

    check-cast v4, Lkgl;

    iget-object v4, v4, Lkgl;->b:Lkgh;
    :try_end_0
    .catch Lkdf; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, 0x0

    :try_start_1
    iget-object v6, v4, Lkgh;->b:Lkhf;

    invoke-virtual {v6}, Lkhf;->a()Lkhd;

    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    const/4 v7, 0x1

    :try_start_2
    invoke-virtual {v6, v1, v2, v3, v7}, Lkhd;->d(ZZZZ)Lnou;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v6}, Lkhd;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :try_start_4
    monitor-enter v4
    :try_end_4
    .catch Lkdf; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    :try_start_5
    iget-object v6, v4, Lkgh;->a:Lkht;

    invoke-static {v6}, Lkhs;->c(Lkht;)Lkhs;

    move-result-object v6

    iget-object v7, v4, Lkgh;->a:Lkht;

    iget-object v8, v7, Lkht;->a:Ljava/lang/Boolean;

    iput-object v8, v6, Lkhs;->f:Ljava/lang/Boolean;

    iget-object v8, v7, Lkht;->b:Ljava/lang/Boolean;

    iput-object v8, v6, Lkhs;->g:Ljava/lang/Boolean;

    iget-object v7, v7, Lkht;->c:Ljava/lang/Boolean;

    iput-object v7, v6, Lkhs;->h:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v6, Lkhs;->f:Ljava/lang/Boolean;

    :cond_0
    if-eqz v2, :cond_1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v6, Lkhs;->g:Ljava/lang/Boolean;

    :cond_1
    if-eqz v3, :cond_2

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v6, Lkhs;->h:Ljava/lang/Boolean;

    :cond_2
    invoke-virtual {v6}, Lkhs;->d()Lkht;

    move-result-object v1

    invoke-virtual {v4, v1}, Lkgh;->c(Lkht;)V

    monitor-exit v4

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_0
    :try_start_6
    throw v1
    :try_end_6
    .catch Lkdf; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0

    :catchall_1
    move-exception v7

    :try_start_7
    invoke-virtual {v6}, Lkhd;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v6

    :try_start_8
    invoke-static {v7, v6}, Lklg;->g(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_1
    throw v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :catchall_3
    move-exception v6

    :try_start_9
    monitor-enter v4
    :try_end_9
    .catch Lkdf; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_0

    :try_start_a
    iget-object v7, v4, Lkgh;->a:Lkht;

    invoke-static {v7}, Lkhs;->c(Lkht;)Lkhs;

    move-result-object v7

    iget-object v8, v4, Lkgh;->a:Lkht;

    iget-object v9, v8, Lkht;->a:Ljava/lang/Boolean;

    iput-object v9, v7, Lkhs;->f:Ljava/lang/Boolean;

    iget-object v9, v8, Lkht;->b:Ljava/lang/Boolean;

    iput-object v9, v7, Lkhs;->g:Ljava/lang/Boolean;

    iget-object v8, v8, Lkht;->c:Ljava/lang/Boolean;

    iput-object v8, v7, Lkhs;->h:Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v7, Lkhs;->f:Ljava/lang/Boolean;

    :cond_3
    if-eqz v2, :cond_4

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v7, Lkhs;->g:Ljava/lang/Boolean;

    :cond_4
    if-eqz v3, :cond_5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v7, Lkhs;->h:Ljava/lang/Boolean;

    :cond_5
    invoke-virtual {v7}, Lkhs;->d()Lkht;

    move-result-object v1

    invoke-virtual {v4, v1}, Lkgh;->c(Lkht;)V

    monitor-exit v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :try_start_b
    throw v6
    :try_end_b
    .catch Lkdf; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_0

    :catchall_4
    move-exception v1

    :try_start_c
    monitor-exit v4
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    check-cast v0, Lkgl;

    iget-object v0, v0, Lkgl;->a:Lkaq;

    const-string v2, "Interrupted when calling unlock3A."

    invoke-interface {v0, v2, v1}, Lkaq;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :catch_1
    move-exception v1

    check-cast v0, Lkgl;

    iget-object v0, v0, Lkgl;->a:Lkaq;

    const-string v2, "FrameServer was closed when calling unlock3A."

    invoke-interface {v0, v2, v1}, Lkaq;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.class public final synthetic Lkbu;
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

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lkbu;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    iput-object p2, p0, Lkbu;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput p3, p0, Lkbu;->c:I

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

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

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

    :goto_0
    iput p3, p0, Lkbu;->c:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    :goto_3
    iput-object p1, p0, Lkbu;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_4
    iput-object p2, p0, Lkbu;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method


# virtual methods
.method public final run()V
    .locals 15

    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p0, v7}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :goto_1
    goto/32 :goto_d5

    nop

    nop

    :goto_2
    iget-object p0, v0, Ljuq;->c:Lmyj;

    nop

    nop

    goto/32 :goto_142

    nop

    nop

    nop

    nop

    :goto_3
    new-instance v0, Ljava/util/concurrent/TimeoutException;

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

    :goto_4
    check-cast v0, Lhci;

    nop

    nop

    goto/32 :goto_1a6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    throw p0

    nop

    :pswitch_0
    goto/32 :goto_92

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object p0, p0, Lkbu;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_13c

    nop

    nop

    :goto_7
    invoke-static {v2}, Lpnx;->b(Ljava/lang/String;)Lpnx;

    move-result-object v2

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_119

    nop

    nop

    nop

    nop

    nop

    :goto_9
    new-instance v1, Lkbu;

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object p0, p0, Lkbu;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_107

    nop

    nop

    :goto_b
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    nop

    goto/32 :goto_1b3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v1}, Lcom/google/android/apps/camera/bottombar/BottomBar;->p()V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-boolean p0, v0, Ljuq;->o:Z

    nop

    nop

    goto/32 :goto_112

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v0, p0, Lkbu;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_f
    iget-object p0, p0, Lkbu;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    :try_start_0
    move-object v1, v0

    nop

    nop

    nop

    nop

    nop

    check-cast v1, Lkqw;

    nop

    nop

    nop

    iget-object v1, v1, Lkqw;->b:Lpsf;

    nop

    nop

    nop

    invoke-interface {v1}, Lpsf;->e()Ljava/io/FileOutputStream;

    move-result-object v1

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    nop

    nop

    nop

    nop

    invoke-static {v2}, Lj$/nio/channels/DesugarChannels;->convertMaybeLegacyFileChannelFromLibrary(Ljava/nio/channels/FileChannel;)Ljava/nio/channels/FileChannel;

    move-result-object v2

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_8

    :try_start_2
    check-cast p0, Ljava/nio/ByteBuffer;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2, p0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result p0

    nop

    nop

    nop

    int-to-long v3, p0

    nop

    nop

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-interface {p0, v0}, Lpcm;->a(Ljava/lang/Object;)V

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    nop

    :goto_11
    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13f

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const/4 v3, 0x6

    nop

    nop

    nop

    goto/32 :goto_ca

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-gtz p0, :cond_0

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    :cond_0
    goto/32 :goto_df

    nop

    nop

    :goto_14
    iget-object p0, p0, Lkbu;->b:Ljava/lang/Object;

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

    :goto_15
    invoke-interface {p0}, Lpdf;->g()V

    :goto_16
    goto/32 :goto_69

    nop

    nop

    :goto_17
    iget-object p0, v0, Ljuq;->k:Ljava/util/concurrent/ScheduledFuture;

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_18
    invoke-virtual {p0, v3}, Lkyf;->D(I)V

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    :goto_19
    sget-object v1, Lgln;->b:Lgln;

    nop

    goto/32 :goto_d0

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p0}, Lscs;->c()Lsdo;

    move-result-object p0

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    :goto_1b
    return-void

    nop

    nop

    nop

    :pswitch_1
    goto/32 :goto_ba

    nop

    nop

    nop

    :goto_1c
    iget-object p0, p0, Lkbu;->a:Ljava/lang/Object;

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

    nop

    :goto_1d
    invoke-virtual {v1, v2}, Lnjb;->i(Landroid/util/Size;)V

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const/4 v3, 0x5

    nop

    nop

    :goto_1f
    goto/32 :goto_1b0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v1, v2}, Lryw;->j(Ljava/lang/Iterable;)V

    goto/32 :goto_b6

    nop

    nop

    :goto_21
    iget-object v1, p0, Loyb;->d:Ljava/lang/Object;

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_22
    invoke-virtual {v0}, Lj$/time/Duration;->getSeconds()J

    move-result-wide v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_130

    nop

    nop

    :goto_23
    invoke-virtual {p0}, Lkyf;->m()V

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-interface {v1}, Loyn;->cM()Ljava/lang/Object;

    move-result-object v1

    nop

    goto/32 :goto_169

    nop

    nop

    nop

    nop

    :goto_25
    iget-object p0, v0, Ljuq;->s:Lhii;

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_26
    iget-object v1, v0, Lkqw;->b:Lpsf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    if-nez v1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a1

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_d9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {v0}, Lj$/time/Duration;->getSeconds()J

    move-result-wide v1

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_29
    invoke-interface {p0, v0}, Lkjb;->c(Lprw;)V

    goto/32 :goto_17f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    if-nez p0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_2
    goto/32 :goto_fc

    nop

    nop

    :goto_2b
    iget-object v2, p0, Lkbu;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    if-eqz v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_c8

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_c7

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    check-cast p0, Loyb;

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_2e
    invoke-interface {p0}, Lpsf;->f()V

    :goto_2f
    goto/32 :goto_d8

    nop

    nop

    nop

    nop

    :goto_30
    check-cast v1, Ljut;

    nop

    goto/32 :goto_1ac

    nop

    nop

    nop

    :goto_31
    return-void

    nop

    :pswitch_2
    goto/32 :goto_140

    nop

    nop

    :goto_32
    iget-object p0, v1, Lnjb;->d:Lpdf;

    nop

    nop

    nop

    nop

    goto/32 :goto_197

    nop

    nop

    nop

    nop

    nop

    :goto_33
    check-cast v0, Lkkl;

    nop

    nop

    nop

    nop

    goto/32 :goto_e0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    invoke-virtual {p0, v7}, Lhii;->d(Z)V

    goto/32 :goto_170

    nop

    nop

    nop

    nop

    :goto_35
    monitor-enter v3

    nop

    :try_start_3
    move-object v4, v2

    nop

    nop

    nop

    nop

    check-cast v4, Lkic;

    nop

    nop

    nop

    nop

    nop

    iget-object v4, v4, Lkic;->a:Lkid;

    nop

    nop

    nop

    iget-object v4, v4, Lkid;->e:Lpcu;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p0}, Lprw;->d()J

    move-result-wide v5

    nop

    nop

    new-instance v7, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    invoke-interface {v4, v1}, Lpcu;->b(Ljava/lang/String;)V

    move-object v1, v2

    nop

    nop

    check-cast v1, Lkic;

    nop

    nop

    iget-object v1, v1, Lkic;->a:Lkid;

    nop

    nop

    nop

    iget-boolean v4, v1, Lkid;->g:Z

    nop

    nop

    nop

    nop

    nop

    if-eqz v4, :cond_4

    nop

    nop

    nop

    nop

    nop

    iget-object v1, v1, Lkid;->e:Lpcu;

    nop

    nop

    nop

    nop

    invoke-interface {p0}, Lprw;->d()J

    move-result-wide v4

    nop

    nop

    new-instance v2, Ljava/lang/StringBuilder;

    nop

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    invoke-interface {v1, v0}, Lpcu;->h(Ljava/lang/String;)V

    invoke-interface {p0}, Lprw;->close()V

    monitor-exit v3

    nop

    nop

    nop

    nop

    return-void

    nop

    nop

    nop

    :cond_4
    iget-object v0, v1, Lkid;->f:Ljava/util/Deque;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0, p0}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    check-cast v2, Lkic;

    nop

    nop

    nop

    iget-object p0, v2, Lkic;->a:Lkid;

    nop

    nop

    const-string v0, "ImageSink-write"

    nop

    invoke-virtual {p0, v0}, Lkid;->c(Ljava/lang/String;)V

    monitor-exit v3

    nop

    nop

    nop

    return-void

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    monitor-exit v3

    nop

    nop

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/32 :goto_99

    nop

    nop

    nop

    nop

    nop

    :goto_36
    iget-object p0, v0, Ljuq;->g:Lglm;

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_37
    const-wide/16 v3, 0x3c

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    nop

    :goto_38
    invoke-virtual {p0}, Lnft;->a()V

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_39
    return-void

    nop

    nop

    nop

    nop

    :goto_3a
    goto/32 :goto_102

    nop

    nop

    nop

    :goto_3b
    return-void

    nop

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_4
        :pswitch_11
        :pswitch_d
        :pswitch_10
        :pswitch_12
        :pswitch_f
        :pswitch_8
        :pswitch_e
        :pswitch_1
        :pswitch_6
        :pswitch_13
        :pswitch_0
        :pswitch_2
        :pswitch_c
        :pswitch_a
        :pswitch_3
        :pswitch_7
        :pswitch_5
        :pswitch_b
    .end packed-switch

    :goto_3c
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    const-wide/16 v10, 0x1

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    :goto_3e
    const/4 v8, 0x1

    nop

    nop

    nop

    nop

    packed-switch v2, :pswitch_data_0

    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-virtual {v0}, Lj$/time/Duration;->toMinutes()J

    move-result-wide v3

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_40
    goto/16 :goto_b5

    nop

    :goto_41
    goto/32 :goto_154

    nop

    nop

    nop

    nop

    :goto_42
    iput-object v0, p0, Lkfc;->f:Lrss;

    nop

    nop

    nop

    goto/32 :goto_13a

    nop

    nop

    :goto_43
    iget-object p0, p0, Lkbu;->b:Ljava/lang/Object;

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

    :goto_44
    iget-object v1, p0, Lglm;->a:Lcom/google/android/apps/camera/bottombar/BottomBar;

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

    nop

    nop

    :goto_45
    invoke-static {v9, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

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

    :goto_46
    const-string v2, "#notifyPipelinePaused"

    nop

    nop

    nop

    goto/32 :goto_1a5

    nop

    nop

    nop

    nop

    nop

    :goto_47
    new-instance v9, Lhpv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    :goto_48
    iget-object v1, v0, Ljuq;->v:Lnft;

    nop

    goto/32 :goto_155

    nop

    nop

    nop

    nop

    :goto_49
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    nop

    nop

    goto/32 :goto_13d

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/32 :goto_e2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    check-cast v0, Lkqw;

    nop

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

    :goto_4c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

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

    :goto_4d
    check-cast v0, Lhci;

    nop

    nop

    nop

    goto/32 :goto_eb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    iget-object p0, p0, Lkbu;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ec

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    goto/32 :goto_128

    nop

    nop

    nop

    nop

    :goto_50
    if-eqz v2, :cond_5

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_51
    iget-object p0, p0, Lfdn;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_52
    invoke-virtual {v1, v2}, Lhoh;->p(Lhmn;)Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_192

    nop

    nop

    nop

    nop

    nop

    :goto_53
    check-cast v1, Lixe;

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    :goto_54
    if-nez v2, :cond_6

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    :cond_6
    :try_start_4
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_8

    :goto_55
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    goto/32 :goto_66

    nop

    nop

    :goto_56
    iget-object p0, p0, Lkbu;->a:Ljava/lang/Object;

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

    :goto_57
    iget-object v2, v1, Llko;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    :goto_58
    const-wide/16 v7, 0x1e

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    :goto_59
    iget-object p0, p0, Lkbu;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_bf

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    rem-long/2addr v1, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_19a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    check-cast p0, Landroid/graphics/PointF;

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    :goto_5c
    invoke-interface {p0, v7}, Lndu;->v(Z)V

    goto/32 :goto_183

    nop

    nop

    :goto_5d
    invoke-interface {p0, v0}, Lkjb;->b(Ljava/lang/Throwable;)V

    :goto_5e
    goto/32 :goto_14d

    nop

    nop

    :goto_5f
    move-object v2, v4

    nop

    nop

    goto/32 :goto_cb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_60
    iget-object v3, p0, Lkbu;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_71

    nop

    nop

    :goto_61
    check-cast v4, Lpnx;

    nop

    nop

    nop

    goto/32 :goto_123

    nop

    nop

    nop

    nop

    nop

    :goto_62
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    nop

    goto/32 :goto_14e

    nop

    nop

    :goto_63
    goto :goto_64

    nop

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception v1

    nop

    nop

    nop

    nop

    :try_start_6
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_64
    throw v2

    nop

    nop
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception v1

    nop

    nop

    nop

    nop

    goto/32 :goto_10c

    nop

    nop

    :goto_65
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_3
    goto/32 :goto_a8

    nop

    nop

    nop

    :goto_66
    goto/16 :goto_101

    nop

    nop

    nop

    :catchall_2
    move-exception p0

    nop

    nop

    nop

    goto/32 :goto_105

    nop

    nop

    nop

    nop

    :goto_67
    return-void

    nop

    :catchall_3
    move-exception p0

    nop

    nop

    :try_start_7
    monitor-exit v2

    nop

    nop

    nop

    nop

    nop
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_68
    check-cast p0, Lkfe;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19b

    nop

    nop

    nop

    nop

    nop

    :goto_69
    if-nez v7, :cond_7

    nop

    nop

    goto/32 :goto_15f

    nop

    :cond_7
    goto/32 :goto_129

    nop

    nop

    nop

    :goto_6a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    nop

    goto/32 :goto_14c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    iget-object p0, p0, Lkcb;->b:Lglz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_6c
    return-void

    nop

    nop

    nop

    nop

    :pswitch_4
    goto/32 :goto_1b2

    nop

    nop

    nop

    nop

    :goto_6d
    invoke-interface {p0, v2}, Lpnv;->a(Lpnx;)Lpnu;

    move-result-object p0

    nop

    goto/32 :goto_f1

    nop

    nop

    nop

    nop

    :goto_6e
    iget-object v0, p0, Lkbu;->a:Ljava/lang/Object;

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

    :goto_6f
    invoke-virtual {v0}, Lj$/time/Duration;->getSeconds()J

    move-result-wide v1

    nop

    nop

    goto/32 :goto_bd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_70
    if-eqz v0, :cond_8

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_71
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d6

    nop

    nop

    nop

    nop

    :goto_72
    if-nez v1, :cond_9

    nop

    goto/32 :goto_109

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_108

    nop

    nop

    nop

    nop

    nop

    :goto_73
    const/16 v0, 0xc0c

    nop

    nop

    nop

    nop

    goto/32 :goto_e8

    nop

    nop

    :goto_74
    iget-object p0, p0, Lkbu;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    :goto_75
    check-cast v2, Ljava/lang/String;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_76
    filled-new-array {v7, v1}, [Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_ea

    nop

    nop

    nop

    nop

    :goto_77
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_5
    goto/32 :goto_91

    nop

    nop

    nop

    nop

    :goto_78
    return-void

    nop

    :catchall_4
    move-exception p0

    nop

    nop

    :try_start_8
    monitor-exit v0

    nop
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    goto/32 :goto_fb

    nop

    nop

    nop

    nop

    :goto_79
    return-void

    nop

    :pswitch_6
    goto/32 :goto_b3

    nop

    nop

    :goto_7a
    const/4 p0, 0x4

    nop

    nop

    nop

    goto/32 :goto_e4

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    invoke-virtual {v1, v2}, Lixe;->a(Lixf;)Lpci;

    goto/32 :goto_136

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    invoke-virtual {p0, v0}, Lkob;->e(Ljava/lang/String;)V

    goto/32 :goto_1b1

    nop

    nop

    nop

    nop

    :goto_7d
    invoke-virtual {v0}, Lj$/time/Duration;->getSeconds()J

    move-result-wide v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_fd

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    iget-object v1, v0, Ljuq;->a:Lngo;

    nop

    nop

    nop

    nop

    goto/32 :goto_180

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    iget-object v0, p0, Lkbu;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    :goto_80
    invoke-virtual {v0, v4}, Llay;->f(I)Lryy;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    :goto_81
    invoke-static {}, Lowu;->a()V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_82
    check-cast p0, Lhci;

    nop

    nop

    nop

    goto/32 :goto_19c

    nop

    nop

    nop

    nop

    :goto_83
    goto :goto_84

    nop

    nop

    nop

    nop

    nop

    :catchall_5
    move-exception v1

    nop

    nop

    nop

    nop

    :try_start_9
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_84
    throw p0

    nop

    nop

    nop

    nop
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    :catchall_6
    move-exception p0

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_85
    if-nez v1, :cond_a

    nop

    goto/32 :goto_dc

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    :goto_86
    invoke-virtual {v1, v2}, Lryw;->j(Ljava/lang/Iterable;)V

    goto/32 :goto_166

    nop

    nop

    nop

    nop

    nop

    :goto_87
    check-cast p0, Lkbw;

    nop

    nop

    goto/32 :goto_d2

    nop

    nop

    :goto_88
    iget-object v0, p0, Lkbu;->a:Ljava/lang/Object;

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

    :goto_89
    invoke-virtual {v0, v4, p0}, Llay;->e(ILandroid/graphics/PointF;)Lryy;

    move-result-object v2

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_8a
    iput-boolean p0, v0, Ljuq;->n:Z

    nop

    nop

    goto/32 :goto_143

    nop

    nop

    :goto_8b
    check-cast v0, Lktx;

    nop

    nop

    goto/32 :goto_19d

    nop

    nop

    nop

    nop

    nop

    :goto_8c
    invoke-interface/range {v8 .. v14}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f2

    nop

    nop

    nop

    :goto_8d
    goto/16 :goto_2f

    nop

    nop

    nop

    nop

    :goto_8e
    goto/32 :goto_f4

    nop

    nop

    :goto_8f
    invoke-virtual {v1, v2}, Lryw;->j(Ljava/lang/Iterable;)V

    goto/32 :goto_141

    nop

    nop

    :goto_90
    div-long v7, v1, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_91
    iget-object v0, p0, Lkbu;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_92
    iget-object v0, p0, Lkbu;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_16d

    nop

    nop

    :goto_93
    const-wide/16 v12, 0x1

    nop

    nop

    goto/32 :goto_116

    nop

    nop

    nop

    nop

    nop

    :goto_94
    invoke-virtual {v1, v7}, Landroid/view/View;->performHapticFeedback(I)Z

    :goto_95
    goto/32 :goto_15b

    nop

    nop

    :goto_96
    invoke-virtual {v1, v2}, Lmhf;->d(I)V

    :goto_97
    goto/32 :goto_6f

    nop

    nop

    nop

    :goto_98
    return-void

    nop

    :pswitch_7
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_99
    throw p0

    nop

    nop

    nop

    :pswitch_8
    goto/32 :goto_113

    nop

    nop

    :goto_9a
    if-nez v2, :cond_b

    nop

    nop

    goto/32 :goto_1a1

    nop

    nop

    :cond_b
    goto/32 :goto_f0

    nop

    nop

    nop

    :goto_9b
    const-string v0, "physical cameraID list is empty"

    nop

    goto/32 :goto_160

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9c
    invoke-interface {v1}, Lpsf;->f()V

    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    :goto_9d
    check-cast v2, Lpoh;

    nop

    goto/32 :goto_124

    nop

    nop

    nop

    :goto_9e
    check-cast v1, Lnjb;

    nop

    nop

    goto/32 :goto_17a

    nop

    nop

    nop

    nop

    nop

    :goto_9f
    invoke-virtual {v0}, Lj$/time/Duration;->getSeconds()J

    move-result-wide v1

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    :goto_a0
    iget-object p0, v0, Ljuq;->v:Lnft;

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_a1
    if-nez v1, :cond_c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a2
    iget-object v2, v0, Llay;->e:Lpik;

    nop

    nop

    goto/32 :goto_dd

    nop

    nop

    nop

    :goto_a3
    iget-object v0, p0, Lkbu;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_168

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a4
    invoke-direct {v1, p0, v4}, Ljso;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_1a0

    nop

    nop

    nop

    :goto_a5
    invoke-direct {v1, v3}, Lixa;-><init>(I)V

    :goto_a6
    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    nop

    :goto_a7
    invoke-direct {v1}, Lryw;-><init>()V

    goto/32 :goto_18e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a8
    iget-object v0, p0, Lkbu;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a9
    iget-object p0, p0, Lkof;->c:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_d1

    nop

    nop

    nop

    :goto_aa
    check-cast p0, Ljava/lang/Boolean;

    nop

    nop

    goto/32 :goto_198

    nop

    nop

    nop

    :goto_ab
    check-cast v0, Ljava/lang/String;

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    :goto_ac
    const v0, 0x6

    nop

    nop

    nop

    nop

    goto/32 :goto_16f

    nop

    nop

    nop

    :goto_ad
    invoke-virtual {v0}, Ljuq;->a()V

    :goto_ae
    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_af
    check-cast v0, Lkez;

    nop

    nop

    goto/32 :goto_e7

    nop

    nop

    nop

    :goto_b0
    check-cast v0, Lj$/time/Duration;

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

    :goto_b1
    iget-object v0, v0, Lkbw;->a:Ljuq;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_115

    nop

    nop

    :goto_b2
    check-cast v1, Lkpx;

    nop

    nop

    nop

    goto/32 :goto_159

    nop

    nop

    nop

    :goto_b3
    iget-object v0, p0, Lkbu;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_b4
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    :goto_b5
    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b6
    invoke-virtual {v1}, Lryw;->g()Lryy;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    :goto_b7
    iget-object v0, v0, Lkqw;->a:Llpw;

    nop

    nop

    nop

    nop

    goto/32 :goto_e1

    nop

    nop

    :goto_b8
    iget-object v0, p0, Lkbu;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_b9
    const v2, 0x7f130038

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    :goto_ba
    iget-object v0, p0, Lkbu;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_16c

    nop

    nop

    nop

    :goto_bb
    iget-object v0, p0, Lkbu;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_122

    nop

    nop

    nop

    :goto_bc
    if-eqz p0, :cond_d

    nop

    goto/32 :goto_194

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_179

    nop

    nop

    nop

    :goto_bd
    cmp-long v1, v1, v5

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    :goto_be
    check-cast v0, Lkbw;

    nop

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bf
    invoke-virtual {v0, p0}, Lnee;->j(Lneh;)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_c0
    invoke-virtual {p0, v8}, Lmrp;->d(Z)V

    goto/32 :goto_173

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c1
    iget-object p0, v0, Ljuq;->a:Lngo;

    nop

    nop

    nop

    goto/32 :goto_15c

    nop

    nop

    nop

    nop

    :goto_c2
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_146

    nop

    nop

    nop

    :goto_c3
    invoke-virtual {p0, v2}, Lowu;->c(Ljava/lang/Runnable;)V

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c4
    invoke-virtual {p0}, Loyb;->c()Ljava/util/List;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    nop

    :goto_c5
    iget-object p0, p0, Lkbu;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_ed

    nop

    nop

    nop

    nop

    nop

    :goto_c6
    check-cast p0, Lkob;

    nop

    nop

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c7
    goto/16 :goto_1f

    nop

    :goto_c8
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c9
    iget-object v2, p0, Lkbu;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_175

    nop

    nop

    :goto_ca
    const/4 v4, 0x3

    nop

    goto/32 :goto_139

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_cb
    goto/16 :goto_13e

    nop

    nop

    :goto_cc
    goto/32 :goto_50

    nop

    nop

    nop

    :goto_cd
    new-instance v1, Lixa;

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ce
    const-string v1, "DBG writing image "

    nop

    goto/32 :goto_171

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_cf
    iget-object v0, p0, Lkbu;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_be

    nop

    nop

    :goto_d0
    invoke-virtual {p0, v1}, Lglm;->e(Lgln;)V

    goto/32 :goto_ef

    nop

    nop

    :goto_d1
    invoke-interface {p0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto/32 :goto_c1

    nop

    nop

    nop

    nop

    nop

    :goto_d2
    iget-object p0, p0, Lkbw;->b:Landroid/os/Handler;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_d3
    sget-object v2, Lkpx;->b:Lkpx;

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

    :goto_d4
    iget-object v1, p0, Lklo;->c:Lmhf;

    nop

    nop

    nop

    goto/32 :goto_b9

    nop

    nop

    nop

    nop

    nop

    :goto_d5
    iget-object v8, v0, Ljuq;->e:Ljava/util/concurrent/ScheduledExecutorService;

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_d6
    if-nez v4, :cond_e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_cc

    nop

    :cond_e
    goto/32 :goto_1af

    nop

    nop

    nop

    nop

    nop

    :goto_d7
    invoke-direct {v2, v1, v5}, Ljsp;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_c3

    nop

    nop

    nop

    nop

    nop

    :goto_d8
    check-cast v0, Lkqw;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_165

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d9
    iget-object v1, p0, Lkof;->f:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_da
    iget-object p0, v0, Ljuq;->h:Lowu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_db
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :goto_dc
    goto/32 :goto_79

    nop

    nop

    nop

    :goto_dd
    invoke-virtual {v2, v1}, Lpik;->n(Ljava/util/Set;)V

    goto/32 :goto_14b

    nop

    nop

    nop

    nop

    nop

    :goto_de
    const/4 v7, 0x0

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_df
    move-object p0, v0

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

    :goto_e0
    iget-object v0, v0, Lkkl;->c:Lkkm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    :goto_e1
    invoke-interface {v0}, Llpw;->h()V

    goto/32 :goto_1ab

    nop

    nop

    nop

    :goto_e2
    return-void

    nop

    :pswitch_9
    goto/32 :goto_cf

    nop

    nop

    :goto_e3
    invoke-virtual {v0, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    :goto_e4
    invoke-direct {v9, v0, v1, v2, p0}, Lhpv;-><init>(Ljava/lang/Object;JI)V

    goto/32 :goto_93

    nop

    nop

    nop

    :goto_e5
    cmp-long v1, v1, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_fa

    nop

    nop

    :goto_e6
    check-cast p0, Lklo;

    nop

    nop

    goto/32 :goto_182

    nop

    nop

    nop

    nop

    :goto_e7
    iget-object v0, v0, Lkez;->p:Lglz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11e

    nop

    nop

    nop

    :goto_e8
    invoke-interface {p0, v0}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f5

    nop

    nop

    nop

    nop

    :goto_e9
    invoke-virtual {p0, v8}, Lmrp;->b(Z)V

    goto/32 :goto_147

    nop

    nop

    nop

    nop

    :goto_ea
    const-string v2, "%01d:%02d"

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_eb
    invoke-interface {p0, v0}, Lglz;->c(Lhci;)V

    goto/32 :goto_16b

    nop

    nop

    nop

    nop

    :goto_ec
    invoke-interface {p0, v0}, Lpcm;->a(Ljava/lang/Object;)V

    goto/32 :goto_77

    nop

    nop

    nop

    :goto_ed
    monitor-enter v0

    nop

    nop

    nop

    nop

    nop

    :try_start_a
    move-object v1, v0

    nop

    nop

    nop

    nop

    check-cast v1, Loyb;

    nop

    nop

    nop

    nop

    iget-object v1, v1, Loyb;->b:Ljava/lang/Object;

    nop

    nop

    check-cast v1, Ljava/util/HashSet;

    nop

    nop

    nop

    nop

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result p0

    nop

    if-eqz p0, :cond_f

    nop

    nop

    nop

    move-object v1, v0

    nop

    nop

    nop

    nop

    check-cast v1, Loyb;

    nop

    nop

    nop

    nop

    nop

    iget-object v1, v1, Loyb;->b:Ljava/lang/Object;

    nop

    nop

    nop

    check-cast v1, Ljava/util/HashSet;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    nop

    if-eqz v1, :cond_f

    nop

    nop

    nop

    nop

    nop

    move v1, v8

    nop

    nop

    goto :goto_ee

    nop

    :cond_f
    move v1, v7

    nop

    nop

    :goto_ee
    if-eqz p0, :cond_10

    nop

    nop

    nop

    nop

    nop

    move-object p0, v0

    nop

    nop

    nop

    check-cast p0, Loyb;

    nop

    nop

    nop

    invoke-virtual {p0}, Loyb;->f()Z

    move-result p0

    nop

    nop

    nop

    if-eqz p0, :cond_10

    nop

    nop

    nop

    nop

    nop

    move v7, v8

    nop

    nop

    nop

    :cond_10
    monitor-exit v0

    nop

    nop

    nop
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    goto/32 :goto_138

    nop

    nop

    nop

    nop

    :goto_ef
    iget-object p0, v0, Ljuq;->y:Lkof;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_167

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f0
    iget-object v1, v1, Llko;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10a

    nop

    nop

    nop

    :goto_f1
    invoke-interface {p0}, Lpnu;->g()I

    move-result p0

    nop

    goto/32 :goto_12a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f2
    iput-object p0, v0, Ljuq;->k:Ljava/util/concurrent/ScheduledFuture;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_f3
    if-nez v1, :cond_11

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    :cond_11
    goto/32 :goto_62

    nop

    nop

    nop

    :goto_f4
    move-object p0, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_17d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f5
    check-cast p0, Lscz;

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    :goto_f6
    iget-object v1, p0, Lklo;->a:Landroid/content/Context;

    nop

    nop

    nop

    nop

    goto/32 :goto_11c

    nop

    nop

    nop

    :goto_f7
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_f8
    goto/16 :goto_3a

    nop

    nop

    :goto_f9
    goto/32 :goto_49

    nop

    nop

    nop

    :goto_fa
    if-eqz v1, :cond_12

    nop

    nop

    nop

    nop

    goto/32 :goto_dc

    nop

    nop

    nop

    nop

    :cond_12
    goto/32 :goto_f6

    nop

    nop

    :goto_fb
    throw p0

    nop

    nop

    nop

    nop

    :pswitch_a
    goto/32 :goto_fe

    nop

    nop

    nop

    :goto_fc
    iget-object p0, v0, Ljuq;->k:Ljava/util/concurrent/ScheduledFuture;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_fd
    rem-long/2addr v1, v3

    nop

    nop

    goto/32 :goto_e5

    nop

    nop

    :goto_fe
    iget-object v0, p0, Lkbu;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_10d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ff
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    :goto_100
    const-wide/16 v3, -0x1

    nop

    nop

    nop

    nop

    :goto_101
    goto/32 :goto_125

    nop

    nop

    nop

    nop

    :goto_102
    sget-object p0, Lkta;->a:Lsdb;

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_103
    sget-object v2, Lhmq;->bC:Lhmn;

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    :goto_104
    const-string v3, "Failed to truncate contents of %s"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_131

    nop

    nop

    :goto_105
    if-nez v2, :cond_13

    nop

    nop

    nop

    nop

    goto/32 :goto_185

    nop

    nop

    nop

    nop

    nop

    :cond_13
    :try_start_b
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    goto/32 :goto_184

    nop

    nop

    nop

    :goto_106
    iget-object p0, v0, Ljuq;->b:Lnxc;

    nop

    nop

    nop

    goto/32 :goto_1a2

    nop

    nop

    nop

    nop

    nop

    :goto_107
    check-cast p0, Lkbb;

    nop

    nop

    goto/32 :goto_137

    nop

    nop

    nop

    :goto_108
    goto/16 :goto_ae

    nop

    nop

    :goto_109
    goto/32 :goto_148

    nop

    nop

    nop

    nop

    nop

    :goto_10a
    invoke-interface {v1}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    nop

    :goto_10b
    const/16 v5, 0x9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d7

    nop

    nop

    nop

    :goto_10c
    sget-object v2, Lkfc;->a:Lsdb;

    nop

    nop

    nop

    nop

    goto/32 :goto_187

    nop

    nop

    :goto_10d
    check-cast v0, Lkta;

    nop

    nop

    goto/32 :goto_17c

    nop

    nop

    :goto_10e
    iget-object v1, p0, Lkof;->e:Ljava/lang/Object;

    nop

    goto/32 :goto_114

    nop

    nop

    nop

    nop

    nop

    :goto_10f
    iget-object p0, p0, Lkqw;->b:Lpsf;

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_110
    invoke-direct {v1, p0, v0, v7}, Lkbu;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/32 :goto_87

    nop

    nop

    nop

    :goto_111
    invoke-direct {v2, v0, p0}, Landroid/util/Size;-><init>(II)V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_112
    if-nez p0, :cond_14

    nop

    nop

    goto/32 :goto_ae

    nop

    nop

    :cond_14
    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    :goto_113
    iget-object v0, p0, Lkbu;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_186

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_114
    iget-object v2, p0, Lkof;->a:Ljava/lang/Object;

    nop

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

    :goto_115
    iget-boolean v1, v0, Ljuq;->l:Z

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    :goto_116
    sget-object v14, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_117
    invoke-interface {v1}, Lpnu;->C()Ljava/util/Set;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f3

    nop

    nop

    :goto_118
    iget-object p0, p0, Lnjf;->b:Lpck;

    nop

    goto/32 :goto_196

    nop

    nop

    nop

    :goto_119
    iget-object p0, v0, Lkta;->b:Lpnv;

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

    :goto_11a
    invoke-interface {p0}, Lpsf;->g()V

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    nop

    :goto_11b
    return-void

    nop

    nop

    nop

    :pswitch_b
    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    :goto_11c
    const-string v2, "count"

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11d
    iget-object v3, v3, Lkic;->a:Lkid;

    nop

    nop

    nop

    nop

    goto/32 :goto_150

    nop

    nop

    :goto_11e
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11f
    iget-object p0, p0, Lkqw;->b:Lpsf;

    nop

    goto/32 :goto_11a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_120
    check-cast p0, Loxv;

    nop

    nop

    goto/32 :goto_178

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_121
    return-void

    nop

    nop

    nop

    nop

    :pswitch_c
    goto/32 :goto_1a8

    nop

    nop

    nop

    nop

    nop

    :goto_122
    iget-object p0, p0, Lkbu;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    :try_start_c
    new-instance v1, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    nop

    nop

    nop

    nop

    nop

    move-object v2, p0

    nop

    nop

    nop

    nop

    check-cast v2, Lkfc;

    nop

    nop

    nop

    nop

    nop

    iget-object v2, v2, Lkfc;->d:Lgqi;

    nop

    nop

    nop

    nop

    iget-object v2, v2, Lgqi;->c:Landroid/content/Context;

    nop

    nop

    nop

    const-string v3, "wt"

    nop

    nop

    move-object v4, v0

    nop

    nop

    nop

    nop

    check-cast v4, Landroid/net/Uri;

    nop

    nop

    nop

    nop

    invoke-static {v2, v4, v3}, Lqzc;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    nop

    nop

    nop

    invoke-direct {v1, v2}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0

    :try_start_d
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_9

    :try_start_e
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_0

    goto/32 :goto_18b

    nop

    nop

    nop

    nop

    nop

    :goto_123
    iget-object v5, v4, Lpnx;->a:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_172

    nop

    nop

    nop

    nop

    nop

    :goto_124
    invoke-virtual {v2}, Lpoh;->K()Z

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    nop

    :goto_125
    cmp-long p0, v3, v5

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

    :goto_126
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1aa

    nop

    nop

    nop

    :goto_127
    goto/32 :goto_3c

    nop

    nop

    :goto_128
    goto/32 :goto_1a4

    nop

    nop

    :goto_129
    check-cast v0, Loyb;

    nop

    goto/32 :goto_15e

    nop

    nop

    nop

    nop

    nop

    :goto_12a
    invoke-virtual {v0, p0}, Lkta;->j(I)V

    goto/32 :goto_39

    nop

    nop

    :goto_12b
    invoke-virtual {v1}, Lryw;->g()Lryy;

    move-result-object p0

    nop

    goto/32 :goto_1a9

    nop

    nop

    nop

    nop

    nop

    :goto_12c
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    :goto_12d
    check-cast p0, Lkfc;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_12e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_199

    nop

    nop

    :goto_12f
    iget p0, p0, Lpck;->b:I

    nop

    nop

    goto/32 :goto_17e

    nop

    nop

    nop

    nop

    nop

    :goto_130
    cmp-long v1, v1, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    :goto_131
    const/16 v4, 0xb66

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_189

    nop

    nop

    :goto_132
    check-cast p0, Lkmq;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_174

    nop

    nop

    nop

    nop

    nop

    :goto_133
    const v2, 0x7f140082

    nop

    goto/32 :goto_13b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_134
    iget-object p0, p0, Lkbu;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e6

    nop

    nop

    nop

    nop

    :goto_135
    move-object v1, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    :goto_136
    new-instance v1, Ljso;

    nop

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    :goto_137
    iget-object p0, p0, Lkbb;->d:Lnjf;

    nop

    nop

    nop

    nop

    goto/32 :goto_135

    nop

    nop

    nop

    :goto_138
    if-nez v1, :cond_15

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

    :cond_15
    goto/32 :goto_152

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_139
    const-wide/16 v5, 0x0

    nop

    nop

    nop

    goto/32 :goto_de

    nop

    nop

    nop

    nop

    :goto_13a
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_d
    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13b
    invoke-static {v1, v2, v0}, Lfib;->b(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_188

    nop

    nop

    nop

    :goto_13c
    check-cast p0, Lkcb;

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13d
    const/4 v2, 0x0

    nop

    nop

    nop

    :goto_13e
    goto/32 :goto_60

    nop

    nop

    :goto_13f
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16a

    nop

    nop

    :goto_140
    iget-object v0, p0, Lkbu;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_12c

    nop

    nop

    nop

    :goto_141
    iget-object p0, p0, Lkbu;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19f

    nop

    nop

    nop

    :goto_142
    invoke-interface {p0}, Lmyj;->g()V

    goto/32 :goto_16e

    nop

    nop

    nop

    nop

    nop

    :goto_143
    iput-boolean v8, v0, Ljuq;->l:Z

    nop

    goto/32 :goto_da

    nop

    nop

    nop

    :goto_144
    invoke-virtual {v1, v7}, Lknm;->b(Z)V

    goto/32 :goto_18c

    nop

    nop

    nop

    :goto_145
    check-cast p0, Lkqw;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11f

    nop

    nop

    nop

    nop

    :goto_146
    if-eq v8, v3, :cond_16

    nop

    nop

    goto/32 :goto_13e

    nop

    :cond_16
    goto/32 :goto_5f

    nop

    nop

    :goto_147
    iget-object p0, v0, Ljuq;->r:Lmrp;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_148
    iget-object v1, v0, Ljuq;->x:Lhoh;

    nop

    nop

    goto/32 :goto_103

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_149
    monitor-enter v2

    nop

    nop

    nop

    :try_start_f
    move-object v3, v0

    nop

    nop

    nop

    nop

    nop

    check-cast v3, Lnjb;

    nop

    nop

    nop

    nop

    iget-object v3, v3, Lnjb;->f:Lniv;

    nop

    nop

    nop

    nop

    if-eqz v3, :cond_17

    nop

    nop

    monitor-exit v2

    nop

    nop

    nop

    nop

    return-void

    nop

    nop

    nop

    nop

    :cond_17
    move-object v3, v0

    nop

    nop

    check-cast v3, Lnjb;

    nop

    iget-object v3, v3, Lnjb;->d:Lpdf;

    nop

    nop

    const-string v4, "Viewfinder#prewarmSurfaceView"

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v3, v4}, Lpdf;->f(Ljava/lang/String;)V

    move-object v3, v0

    nop

    nop

    nop

    nop

    nop

    check-cast v3, Lnjb;

    nop

    nop

    invoke-virtual {v3, p0}, Lnjb;->f(Lnjf;)Lsui;

    move-object v3, v0

    nop

    nop

    check-cast v3, Lnjb;

    nop

    nop

    nop

    nop

    nop

    iput-object p0, v3, Lnjb;->g:Lnjf;

    nop

    nop

    nop

    nop

    nop

    check-cast v0, Lnjb;

    nop

    nop

    nop

    nop

    nop

    iput-boolean v8, v0, Lnjb;->h:Z

    nop

    nop

    monitor-exit v2

    nop

    nop

    nop

    nop
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    goto/32 :goto_118

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14a
    if-ne v1, v2, :cond_18

    nop

    nop

    nop

    goto/32 :goto_162

    nop

    nop

    nop

    nop

    :cond_18
    goto/32 :goto_d3

    nop

    nop

    :goto_14b
    new-instance v1, Lryw;

    nop

    nop

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    :goto_14c
    if-nez v2, :cond_19

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :cond_19
    goto/32 :goto_12e

    nop

    nop

    nop

    :goto_14d
    return-void

    nop

    nop

    nop

    nop

    :pswitch_e
    goto/32 :goto_c9

    nop

    nop

    nop

    nop

    nop

    :goto_14e
    if-nez v2, :cond_1a

    nop

    nop

    goto/32 :goto_f9

    nop

    nop

    nop

    nop

    nop

    :cond_1a
    goto/32 :goto_f8

    nop

    nop

    nop

    nop

    :goto_14f
    invoke-direct {v0, v1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_150
    iget-object p0, p0, Lkbu;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_151
    throw p0

    nop

    nop

    :pswitch_f
    goto/32 :goto_181

    nop

    nop

    :goto_152
    move-object p0, v0

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_153
    const-class v1, Ljuq;

    nop

    nop

    goto/32 :goto_193

    nop

    nop

    nop

    nop

    nop

    :goto_154
    iget-object p0, p0, Loyb;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_155
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_18f

    nop

    nop

    nop

    :goto_156
    iget-object v1, v0, Llay;->c:Lknm;

    nop

    nop

    nop

    nop

    goto/32 :goto_144

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_157
    goto/16 :goto_1a1

    nop

    :goto_158
    goto/32 :goto_57

    nop

    nop

    nop

    :goto_159
    sget-object v2, Lkpx;->d:Lkpx;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15a
    const-string v1, "HDR+ timed out after 10000 ms"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14f

    nop

    nop

    nop

    :goto_15b
    iget-object p0, p0, Lkbu;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_132

    nop

    nop

    nop

    nop

    nop

    :goto_15c
    invoke-interface {p0}, Lngo;->V()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_15d
    if-eqz v1, :cond_1b

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    nop

    :cond_1b
    goto/32 :goto_d4

    nop

    nop

    nop

    :goto_15e
    invoke-virtual {v0}, Loyb;->e()V

    :goto_15f
    goto/32 :goto_78

    nop

    nop

    nop

    nop

    :goto_160
    invoke-interface {p0, v0}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_121

    nop

    nop

    :goto_161
    if-eq v1, v2, :cond_1c

    nop

    nop

    goto/32 :goto_1a1

    nop

    nop

    :cond_1c
    :goto_162
    goto/32 :goto_10e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_163
    iget-object v0, p0, Lkbu;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    :goto_164
    invoke-interface {v2}, Llxi;->b()V

    goto/32 :goto_40

    nop

    nop

    :goto_165
    iget-object p0, v0, Lkqw;->a:Llpw;

    nop

    nop

    nop

    goto/32 :goto_18d

    nop

    nop

    nop

    nop

    :goto_166
    invoke-virtual {v0, v8, p0}, Llay;->e(ILandroid/graphics/PointF;)Lryy;

    move-result-object p0

    nop

    goto/32 :goto_17b

    nop

    nop

    :goto_167
    iget-object v1, p0, Lkof;->d:Ljava/lang/Object;

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_168
    check-cast v0, Llay;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_156

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_169
    check-cast v1, Ljava/lang/Boolean;

    nop

    nop

    goto/32 :goto_f7

    nop

    nop

    nop

    nop

    :goto_16a
    rem-long/2addr v1, v3

    nop

    nop

    goto/32 :goto_ff

    nop

    nop

    nop

    nop

    nop

    :goto_16b
    return-void

    nop

    nop

    nop

    :pswitch_10
    goto/32 :goto_bb

    nop

    nop

    nop

    :goto_16c
    check-cast v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    goto/32 :goto_e3

    nop

    nop

    :goto_16d
    iget-object p0, p0, Lkbu;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_c6

    nop

    nop

    nop

    :goto_16e
    iget-object p0, v0, Ljuq;->i:Loyn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_120

    nop

    nop

    nop

    :goto_16f
    const v1, 0x1b

    nop

    nop

    goto/32 :goto_190

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_170
    iget-object p0, v0, Ljuq;->d:Lndu;

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_171
    iget v2, p0, Lkbu;->c:I

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_172
    check-cast v3, Ljava/lang/String;

    nop

    nop

    goto/32 :goto_c2

    nop

    nop

    nop

    nop

    :goto_173
    iget-object p0, v0, Ljuq;->u:Lkyf;

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_174
    iget-boolean p0, p0, Lkmq;->k:Z

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    :goto_175
    move-object v3, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_177

    nop

    nop

    nop

    nop

    nop

    :goto_176
    return-void

    nop

    nop

    nop

    nop

    :pswitch_11
    goto/32 :goto_88

    nop

    nop

    nop

    nop

    :goto_177
    check-cast v3, Lkic;

    nop

    nop

    nop

    nop

    goto/32 :goto_11d

    nop

    nop

    nop

    nop

    :goto_178
    iget-object p0, p0, Loxv;->d:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_179
    iget-object p0, v0, Ljuq;->w:Llad;

    nop

    nop

    nop

    nop

    goto/32 :goto_153

    nop

    nop

    nop

    nop

    :goto_17a
    iget-object v2, v1, Lnjb;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_149

    nop

    nop

    nop

    :goto_17b
    invoke-virtual {v1, p0}, Lryw;->j(Ljava/lang/Iterable;)V

    goto/32 :goto_12b

    nop

    nop

    nop

    nop

    nop

    :goto_17c
    iget-object v1, v0, Lkta;->c:Lpnu;

    nop

    nop

    goto/32 :goto_117

    nop

    nop

    nop

    nop

    nop

    :goto_17d
    check-cast p0, Lkqw;

    nop

    nop

    nop

    goto/32 :goto_10f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17e
    new-instance v2, Landroid/util/Size;

    nop

    goto/32 :goto_111

    nop

    nop

    nop

    :goto_17f
    return-void

    nop

    :pswitch_12
    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    nop

    :goto_180
    invoke-interface {v1}, Lngo;->b()Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;

    move-result-object v1

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    :goto_181
    iget-object v0, p0, Lkbu;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_1a7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_182
    iget-object v2, p0, Lklo;->b:Landroid/widget/TextView;

    nop

    goto/32 :goto_195

    nop

    nop

    nop

    :goto_183
    iget-object p0, v0, Ljuq;->r:Lmrp;

    nop

    nop

    goto/32 :goto_e9

    nop

    nop

    nop

    nop

    :goto_184
    goto :goto_185

    nop

    nop

    :catchall_7
    move-exception v2

    nop

    nop

    nop

    nop

    nop

    :try_start_10
    invoke-virtual {p0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_185
    throw p0

    nop

    nop
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    :catchall_8
    move-exception p0

    nop

    nop

    :try_start_11
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    goto/32 :goto_83

    nop

    nop

    nop

    :goto_186
    iget-object v1, p0, Lkbu;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_19e

    nop

    nop

    nop

    nop

    nop

    :goto_187
    invoke-virtual {v2}, Lscs;->b()Lsdo;

    move-result-object v2

    nop

    nop

    goto/32 :goto_104

    nop

    nop

    nop

    nop

    :goto_188
    iget-object p0, p0, Lklo;->b:Landroid/widget/TextView;

    nop

    nop

    nop

    goto/32 :goto_db

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_189
    invoke-static {v3, v0, v4, v2, v1}, Lfey;->d(Ljava/lang/String;Ljava/lang/Object;CLscz;Ljava/lang/Throwable;)V

    :goto_18a
    goto/32 :goto_191

    nop

    nop

    :goto_18b
    goto :goto_18a

    nop

    :catchall_9
    move-exception v2

    nop

    :try_start_12
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    :goto_18c
    new-instance v1, Lryw;

    nop

    nop

    nop

    nop

    goto/32 :goto_1ae

    nop

    nop

    nop

    :goto_18d
    invoke-interface {p0}, Llpw;->h()V

    goto/32 :goto_31

    nop

    nop

    :goto_18e
    invoke-virtual {v0, v8}, Llay;->f(I)Lryy;

    move-result-object v2

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

    :goto_18f
    new-instance v2, Ljsp;

    nop

    nop

    goto/32 :goto_10b

    nop

    nop

    :goto_190
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_126

    nop

    nop

    nop

    :goto_191
    sget-object v0, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12d

    nop

    nop

    nop

    nop

    :goto_192
    if-nez v1, :cond_1d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    :cond_1d
    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    :goto_193
    invoke-virtual {p0, v1}, Llad;->g(Ljava/lang/Class;)V

    :goto_194
    goto/32 :goto_106

    nop

    nop

    nop

    nop

    nop

    :goto_195
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/32 :goto_22

    nop

    nop

    :goto_196
    iget v0, p0, Lpck;->a:I

    nop

    nop

    nop

    goto/32 :goto_12f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_197
    invoke-interface {p0}, Lpdf;->g()V

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_198
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    nop

    nop

    goto/32 :goto_bc

    nop

    nop

    :goto_199
    check-cast v2, Llxi;

    nop

    nop

    nop

    goto/32 :goto_164

    nop

    nop

    nop

    :goto_19a
    cmp-long v1, v1, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_15d

    nop

    nop

    nop

    :goto_19b
    iget-object p0, p0, Lkfe;->d:Lglz;

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_19c
    invoke-interface {v0, p0}, Lglz;->c(Lhci;)V

    goto/32 :goto_176

    nop

    nop

    nop

    :goto_19d
    iget-object v0, v0, Lktx;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_c5

    nop

    nop

    nop

    :goto_19e
    monitor-enter v1

    nop

    nop

    nop

    nop

    nop

    :try_start_13
    move-object p0, v1

    nop

    check-cast p0, Lkhq;

    nop

    iget-object p0, p0, Lkhq;->j:Ljava/util/Deque;

    nop

    nop

    nop

    invoke-interface {p0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object p0

    nop

    :cond_1e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    nop

    if-eqz v2, :cond_1f

    nop

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    check-cast v2, Lkhl;

    nop

    nop

    nop

    invoke-virtual {v2}, Lkhl;->e()Z

    move-result v3

    nop

    nop

    if-eqz v3, :cond_1e

    nop

    invoke-virtual {v2}, Lkhl;->a()Lkhn;

    move-result-object v2

    nop

    iget-object v2, v2, Lkhn;->c:Llxm;

    nop

    nop

    nop

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    nop

    nop

    nop

    nop

    if-eqz v2, :cond_1e

    nop

    nop

    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    move-object p0, v1

    nop

    nop

    nop

    check-cast p0, Lkhq;

    nop

    nop

    nop

    invoke-virtual {p0}, Lkhq;->o()V

    monitor-exit v1

    nop

    nop

    nop

    nop

    return-void

    nop

    nop

    nop

    :cond_1f
    move-object p0, v1

    nop

    nop

    nop

    nop

    nop

    check-cast p0, Lkhq;

    nop

    nop

    nop

    invoke-virtual {p0}, Lkhq;->g()V

    new-instance p0, Ljava/lang/RuntimeException;

    nop

    nop

    nop

    nop

    const-string v2, "Failed shot "

    nop

    const-string v3, " was not present"

    nop

    invoke-static {v0, v2, v3}, Lfey;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    nop

    :catchall_a
    move-exception p0

    nop

    nop

    monitor-exit v1

    nop

    nop

    nop

    nop

    nop
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_a

    goto/32 :goto_151

    nop

    nop

    nop

    :goto_19f
    check-cast p0, Lfdn;

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_1a0
    goto/16 :goto_a6

    nop

    nop

    nop

    :goto_1a1
    goto/32 :goto_cd

    nop

    nop

    nop

    nop

    nop

    :goto_1a2
    invoke-interface {p0, v8}, Lnxc;->u(Z)V

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a3
    check-cast p0, Lkyf;

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

    nop

    :goto_1a4
    const-string v0, "Image sink closed but still received frame at "

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ce

    nop

    nop

    nop

    :goto_1a5
    invoke-interface {v1, v2}, Lpdf;->f(Ljava/lang/String;)V

    goto/32 :goto_c4

    nop

    nop

    nop

    nop

    nop

    :goto_1a6
    invoke-interface {p0, v0}, Lglz;->c(Lhci;)V

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a7
    iget-object p0, p0, Lkbu;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a8
    iget-object v0, p0, Lkbu;->a:Ljava/lang/Object;

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

    :goto_1a9
    invoke-virtual {v0, p0}, Llay;->c(Lryy;)V

    goto/32 :goto_11b

    nop

    nop

    nop

    :goto_1aa
    if-lez v0, :cond_20

    nop

    nop

    goto/32 :goto_128

    nop

    nop

    nop

    nop

    nop

    :cond_20
    goto/32 :goto_127

    nop

    :goto_1ab
    throw p0

    nop

    nop

    :catch_1
    goto/32 :goto_100

    nop

    nop

    nop

    nop

    :goto_1ac
    invoke-virtual {v1}, Ljut;->e()Llko;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1ad

    nop

    nop

    nop

    :goto_1ad
    if-eqz v1, :cond_21

    nop

    nop

    goto/32 :goto_158

    nop

    nop

    nop

    nop

    nop

    :cond_21
    goto/32 :goto_157

    nop

    nop

    nop

    nop

    nop

    :goto_1ae
    invoke-direct {v1}, Lryw;-><init>()V

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    :goto_1af
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    :goto_1b0
    iget-object p0, p0, Lkbu;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_1a3

    nop

    nop

    nop

    :goto_1b1
    return-void

    nop

    nop

    :pswitch_13
    goto/32 :goto_163

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b2
    iget-object v0, p0, Lkbu;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1b3
    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_133

    nop

    nop
.end method

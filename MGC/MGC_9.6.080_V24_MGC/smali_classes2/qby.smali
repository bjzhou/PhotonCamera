.class public final synthetic Lqby;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lrsk;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput p2, p0, Lqby;->b:I

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lqby;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    return-void

    nop
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    goto/32 :goto_18

    nop

    nop

    :goto_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_ea

    nop

    nop

    :goto_2
    sget-object v0, Lqxh;->a:Ljava/util/concurrent/ConcurrentMap;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_3
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :pswitch_0
    goto/32 :goto_bd

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v2}, Ltkb;->o()V

    :goto_5
    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    :goto_6
    check-cast p1, Lpyd;

    nop

    goto/32 :goto_c2

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return-object p1

    nop

    nop

    nop

    :pswitch_1
    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_8
    check-cast v0, Ltkb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object p0, p0, Lquo;->a:Ljava/util/concurrent/atomic/AtomicReference;

    nop

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object p1, p1, Lscn;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_f9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v0}, Lrss;->h()Z

    move-result v0

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    check-cast p0, Lqwx;

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_d
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_cd

    nop

    nop

    nop

    :goto_e
    iget-object p0, p0, Lqby;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_b1

    nop

    nop

    nop

    nop

    :goto_f
    sget-object v0, Lqwv;->a:Lqwv;

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iput v8, v7, Lqwv;->b:I

    nop

    nop

    goto/32 :goto_fd

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v0, p1, Lpwy;->d:Ltkv;

    nop

    goto/32 :goto_ba

    nop

    nop

    :goto_12
    const-string v0, "oo.muxer.force_sequential"

    nop

    goto/32 :goto_113

    nop

    nop

    :goto_13
    new-instance v0, Lsai;

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :goto_14
    check-cast p0, Lpwy;

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_16
    if-eqz p0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :cond_0
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget-object p1, v1, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    goto/32 :goto_10c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_f3

    nop

    nop

    nop

    nop

    :goto_19
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    nop

    goto/32 :goto_b9

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    check-cast p0, Lpwr;

    nop

    nop

    nop

    nop

    goto/32 :goto_fc

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v5}, Ltkb;->o()V

    :goto_1c
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    check-cast p1, Lqwx;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1e
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_1f
    if-ne p1, v4, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iget-object p1, v0, Ltkb;->b:Ltkg;

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

    :goto_21
    invoke-virtual {v1, p1}, Ltkb;->r(Ltkg;)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_22
    check-cast p0, Lqwz;

    nop

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    :goto_23
    add-int v0, v0, v1

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    :goto_24
    const/4 v2, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_ff

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    if-eqz p1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {v1}, Ltkb;->i()Ltkg;

    move-result-object p0

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

    :goto_27
    check-cast p0, Lpwy;

    nop

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    :goto_28
    new-instance v5, Landroid/os/StrictMode$ThreadPolicy$Builder;

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    nop

    goto/32 :goto_11a

    nop

    nop

    :goto_2a
    iget-object p0, p0, Lqby;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    :goto_2b
    if-eqz v0, :cond_3

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

    :cond_3
    goto/32 :goto_67

    nop

    nop

    :goto_2c
    or-int/lit8 v1, v1, 0x20

    nop

    nop

    nop

    goto/32 :goto_12e

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    const/4 v0, 0x3

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_2e
    check-cast p1, Lpwy;

    nop

    nop

    nop

    nop

    goto/32 :goto_128

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    iget-object p0, p0, Lqby;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_30
    sget-object v0, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    nop

    goto/32 :goto_de

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    iget-wide v6, p0, Lpwr;->g:J

    nop

    goto/32 :goto_88

    nop

    nop

    :goto_32
    iget-object v6, v2, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    goto/32 :goto_10a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    check-cast v0, Lqwv;

    nop

    nop

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_119

    nop

    nop

    nop

    nop

    nop

    :goto_35
    check-cast p1, Lpwy;

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

    nop

    :goto_36
    invoke-virtual {p0}, Ltkb;->i()Ltkg;

    move-result-object p0

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

    :goto_37
    invoke-virtual {p1, v3}, Ltkg;->D(I)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    nop

    :goto_38
    iget-object p0, p0, Lqby;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    :goto_39
    iget v1, p0, Lpwr;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {v2, v1}, Ltkb;->r(Ltkg;)V

    goto/32 :goto_df

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-static {p1}, Lj$/util/DesugarCollections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-virtual {v2}, Ltkb;->o()V

    :goto_3d
    goto/32 :goto_10d

    nop

    nop

    nop

    :goto_3e
    goto/16 :goto_117

    nop

    nop

    :catch_0
    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    check-cast v0, Lqwv;

    nop

    nop

    :goto_40
    goto/32 :goto_75

    nop

    nop

    nop

    nop

    :goto_41
    invoke-virtual {v5}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitDiskWrites()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v5

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    :goto_42
    invoke-virtual {v0}, Ltkb;->o()V

    :goto_43
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_44
    sget v0, Lqca;->d:I

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

    :goto_45
    return-object p0

    nop

    :goto_46
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    invoke-interface {v1, v0}, Ltkv;->get(I)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    goto/32 :goto_105

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    invoke-virtual {v0}, Ltkg;->m()Ltkb;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e0

    nop

    nop

    nop

    nop

    :goto_49
    check-cast p0, Lquo;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    return-object p0

    nop

    nop

    :pswitch_2
    goto/32 :goto_bf

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    add-long/2addr v4, v7

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    iget-object v7, v5, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_129

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    if-eq v0, v1, :cond_4

    nop

    nop

    goto/32 :goto_e9

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_111

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    check-cast p0, Ljava/util/concurrent/atomic/AtomicReference;

    nop

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    :goto_4f
    check-cast p1, Lqwx;

    nop

    nop

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    nop

    nop

    :goto_50
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_bc

    nop

    nop

    nop

    nop

    :goto_51
    invoke-static {v5}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    sget v0, Lqca;->d:I

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    :goto_53
    check-cast p1, Landroid/media/MediaCodec;

    nop

    nop

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    nop

    :goto_54
    invoke-direct {v0, v2}, Lsai;-><init>([C)V

    goto/32 :goto_101

    nop

    nop

    nop

    :goto_55
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    nop

    nop

    nop

    :goto_56
    goto/32 :goto_c6

    nop

    nop

    nop

    nop

    :goto_57
    move-object v0, p0

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_58
    if-eq p1, v0, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_e2

    nop

    :cond_5
    :goto_59
    goto/32 :goto_e1

    nop

    nop

    :goto_5a
    if-eqz v7, :cond_6

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :cond_6
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_5b
    iput v8, v7, Lpwr;->b:I

    nop

    nop

    nop

    goto/32 :goto_121

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    if-lez v0, :cond_7

    nop

    goto/32 :goto_e6

    nop

    :cond_7
    goto/32 :goto_e5

    nop

    :goto_5d
    if-nez v1, :cond_8

    nop

    goto/32 :goto_d9

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    invoke-virtual {v6}, Ltkg;->C()Z

    move-result p0

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

    :goto_5f
    invoke-virtual {p1}, Lpwy;->b()V

    goto/32 :goto_cb

    nop

    nop

    nop

    nop

    nop

    :goto_60
    check-cast p1, Landroid/media/MediaFormat;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e4

    nop

    nop

    :goto_61
    const/4 v4, 0x1

    nop

    nop

    nop

    nop

    packed-switch v0, :pswitch_data_0

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_62
    iget-object p0, p0, Lqby;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    :goto_63
    iget-object p0, p0, Lqby;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_127

    nop

    nop

    nop

    :goto_64
    invoke-virtual {v1}, Ltkb;->o()V

    :goto_65
    goto/32 :goto_ef

    nop

    nop

    :goto_66
    invoke-virtual {p1}, Ltkg;->C()Z

    move-result p1

    nop

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    nop

    :goto_67
    return-object p1

    nop

    nop

    nop

    nop

    :pswitch_3
    goto/32 :goto_12f

    nop

    nop

    :goto_68
    check-cast p0, Landroid/net/Uri;

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    :goto_69
    invoke-virtual {v5}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v5

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_6a
    iget-object v1, p1, Lpwy;->d:Ltkv;

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    iget-object p0, p0, Lqby;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    :try_start_0
    sget-object v5, Lqyc;->a:Ljava/lang/Object;

    nop

    monitor-enter v5

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    move-object v6, p0

    nop

    check-cast v6, Lqyc;

    nop

    nop

    nop

    nop

    iget-object v6, v6, Lqyc;->f:Lrtm;

    nop

    nop

    nop

    nop

    invoke-interface {v6}, Lrtm;->a()Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    nop

    check-cast v6, Lhdn;

    nop

    nop

    nop

    nop

    nop

    move-object v7, p0

    nop

    nop

    nop

    nop

    check-cast v7, Lqyc;

    nop

    nop

    nop

    iget-object v7, v7, Lqyc;->i:Landroid/net/Uri;

    nop

    nop

    nop

    nop

    iget-object v8, p1, Lqwu;->c:Lqwq;

    nop

    if-nez v8, :cond_9

    nop

    nop

    nop

    nop

    sget-object v8, Lqwq;->b:Lqwq;

    nop

    nop

    :cond_9
    new-instance v9, Lrav;

    nop

    nop

    nop

    invoke-direct {v9, v8}, Lrav;-><init>(Ltlq;)V

    new-array v8, v4, [Lsai;

    nop

    nop

    aput-object v0, v8, v1

    nop

    iput-object v8, v9, Lrav;->a:[Lsai;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v6, v7, v9}, Lhdn;->D(Landroid/net/Uri;Lqzo;)Ljava/lang/Object;

    iget-object v6, p1, Lqwu;->c:Lqwq;

    nop

    nop

    nop

    nop

    nop

    if-nez v6, :cond_a

    nop

    sget-object v6, Lqwq;->b:Lqwq;

    nop

    nop

    nop

    :cond_a
    move-object v7, p0

    nop

    nop

    nop

    nop

    nop

    check-cast v7, Lqyc;

    nop

    nop

    nop

    nop

    iput-object v6, v7, Lqyc;->j:Lqwq;

    nop

    monitor-exit v5

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    sget-object v5, Lqyc;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    monitor-enter v5

    nop

    nop

    nop

    nop

    nop
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    move-object v6, p0

    nop

    check-cast v6, Lqyc;

    nop

    nop

    nop

    nop

    nop

    iget-object v6, v6, Lqyc;->f:Lrtm;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v6}, Lrtm;->a()Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    nop

    nop

    check-cast v6, Lhdn;

    nop

    nop

    nop

    nop

    move-object v7, p0

    nop

    nop

    check-cast v7, Lqyc;

    nop

    nop

    iget-object v7, v7, Lqyc;->k:Landroid/net/Uri;

    nop

    nop

    nop

    nop

    nop

    iget-object v8, p1, Lqwu;->d:Lqws;

    nop

    nop

    nop

    if-nez v8, :cond_b

    nop

    sget-object v8, Lqws;->b:Lqws;

    nop

    nop

    nop

    nop

    :cond_b
    new-instance v9, Lrav;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v9, v8}, Lrav;-><init>(Ltlq;)V

    new-array v4, v4, [Lsai;

    nop

    nop

    nop

    nop

    nop

    aput-object v0, v4, v1

    nop

    nop

    nop

    nop

    nop

    iput-object v4, v9, Lrav;->a:[Lsai;

    nop

    nop

    invoke-virtual {v6, v7, v9}, Lhdn;->D(Landroid/net/Uri;Lqzo;)Ljava/lang/Object;

    iget-object p1, p1, Lqwu;->d:Lqws;

    nop

    nop

    nop

    nop

    if-nez p1, :cond_c

    nop

    nop

    nop

    nop

    nop

    sget-object p1, Lqws;->b:Lqws;

    nop

    nop

    nop

    nop

    nop

    :cond_c
    check-cast p0, Lqyc;

    nop

    nop

    nop

    nop

    iput-object p1, p0, Lqyc;->l:Lqws;

    nop

    nop

    nop

    nop

    nop

    monitor-exit v5

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    :goto_6c
    check-cast v7, Lpwr;

    nop

    nop

    goto/32 :goto_118

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    check-cast p0, Landroid/net/Uri;

    nop

    nop

    nop

    nop

    goto/32 :goto_123

    nop

    nop

    nop

    :goto_6e
    const-string v0, "%s: Failed to call mobstore fileSize on uri %s!"

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

    :goto_6f
    move-object v0, p0

    nop

    nop

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

    :goto_70
    if-eqz v6, :cond_d

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_71
    invoke-virtual {v0, v1, v2}, Ltkb;->C(Ljava/lang/String;Lqwv;)V

    goto/32 :goto_d8

    nop

    nop

    nop

    nop

    :goto_72
    iget-object p1, p1, Lorv;->a:Lorr;

    nop

    nop

    nop

    nop

    goto/32 :goto_da

    nop

    nop

    :goto_73
    goto/16 :goto_12d

    nop

    nop

    nop

    nop

    nop

    :goto_74
    goto/32 :goto_f0

    nop

    nop

    :goto_75
    iget-object p0, v0, Lqwv;->c:Ltkv;

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    :goto_76
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :pswitch_4
    goto/32 :goto_8c

    nop

    nop

    :goto_77
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    :goto_78
    return-object p0

    nop

    nop

    nop

    :pswitch_5
    goto/32 :goto_8e

    nop

    nop

    :goto_79
    check-cast p0, Lpwy;

    nop

    nop

    nop

    nop

    goto/32 :goto_e8

    nop

    nop

    nop

    :goto_7a
    invoke-interface {p1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    iget v8, v7, Lqwv;->b:I

    nop

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

    :goto_7c
    invoke-static {v3}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    :goto_7d
    check-cast p1, Lpwy;

    nop

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    :goto_7e
    check-cast p0, Ljava/util/concurrent/atomic/AtomicReference;

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    :goto_7f
    goto :goto_80

    nop

    :catch_1
    move-exception p0

    nop

    nop

    nop

    :try_start_4
    new-instance p1, Ljava/lang/RuntimeException;

    nop

    nop

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    nop

    nop

    nop

    nop

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :goto_80
    goto/32 :goto_d4

    nop

    nop

    :goto_81
    if-nez v1, :cond_e

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :cond_e
    goto/32 :goto_ee

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_82
    iget-object v3, v3, Lqwv;->c:Ltkv;

    nop

    goto/32 :goto_12c

    nop

    nop

    :goto_83
    check-cast p1, Lqwx;

    nop

    nop

    nop

    goto/32 :goto_125

    nop

    nop

    nop

    nop

    nop

    :goto_84
    check-cast p1, Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    :try_start_5
    new-instance v0, Ljava/lang/ProcessBuilder;

    nop

    nop

    nop

    const-string v1, "/system/bin/trigger_perfetto"

    nop

    nop

    filled-new-array {v1, p1}, [Ljava/lang/String;

    move-result-object p1

    nop

    invoke-direct {v0, p1}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_85
    invoke-static {p1, p0}, Lqvg;->c(Lpyd;Landroid/net/Uri;)Lrss;

    move-result-object v0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_86
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_87
    check-cast v0, Landroid/view/Surface;

    nop

    nop

    nop

    goto/32 :goto_f1

    nop

    nop

    :goto_88
    add-long/2addr v4, v6

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_89
    check-cast p1, Lpwy;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    :goto_8a
    iget-object v0, p1, Lpwy;->d:Ltkv;

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    :goto_8b
    return-object p0

    nop

    nop

    nop

    :pswitch_6
    goto/32 :goto_11b

    nop

    nop

    nop

    nop

    nop

    :goto_8c
    check-cast p1, Lscn;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8d
    iget-object v6, v2, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    nop

    :goto_8e
    check-cast p1, Ljava/lang/Void;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d5

    nop

    nop

    nop

    :goto_8f
    iget-wide v7, p0, Lpwr;->h:J

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_90
    iget-object p0, p0, Lqby;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_c7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_91
    check-cast v1, Ltkb;

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_92
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto/32 :goto_c5

    nop

    nop

    nop

    :goto_93
    check-cast p0, Ltkb;

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    :goto_94
    invoke-virtual {v0}, Ltkb;->i()Ltkg;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_95
    iput-wide v4, p0, Lpwr;->h:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c8

    nop

    nop

    nop

    nop

    nop

    :goto_96
    invoke-interface {p1, p0}, Ltkv;->add(Ljava/lang/Object;)Z

    goto/32 :goto_fa

    nop

    nop

    :goto_97
    invoke-virtual {v5, v6}, Ltkb;->B(Ljava/lang/String;)V

    goto/32 :goto_73

    nop

    nop

    nop

    :goto_98
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b3

    nop

    nop

    nop

    nop

    :goto_99
    sget-object v0, Lqxh;->a:Ljava/util/concurrent/ConcurrentMap;

    nop

    nop

    nop

    goto/32 :goto_108

    nop

    nop

    :goto_9a
    check-cast v2, Ltkb;

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

    :goto_9b
    rem-int v0, v0, v1

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_9c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    nop

    nop

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    :goto_9d
    return-object p0

    nop

    nop

    nop

    nop

    :pswitch_7
    goto/32 :goto_83

    nop

    nop

    nop

    nop

    :goto_9e
    iget-object p1, p1, Lqwx;->b:Ltll;

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

    :goto_9f
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    nop

    nop

    nop

    nop

    goto/32 :goto_c3

    nop

    nop

    :goto_a0
    invoke-virtual {v5}, Ltkg;->m()Ltkb;

    move-result-object v5

    nop

    nop

    nop

    nop

    goto/32 :goto_c0

    nop

    nop

    nop

    :goto_a1
    sget-object v0, Ltma;->a:Ltma;

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

    :goto_a2
    invoke-static {v0, p0, p1}, Lqoe;->y(Ljava/lang/String;Landroid/media/MediaFormat;Landroid/media/MediaFormat;)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_a3
    move-object v7, v6

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    :goto_a4
    if-nez v6, :cond_f

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_a5
    return-object v2

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    :try_start_6
    monitor-exit v5

    nop
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw p0

    nop

    nop

    nop
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_1
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    :try_start_8
    monitor-exit v5

    nop

    nop
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw p0

    nop

    nop

    nop

    nop

    nop
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :catchall_2
    move-exception p0

    nop

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    :goto_a6
    check-cast p0, Lpwr;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_a7
    invoke-direct {v5, v3}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>(Landroid/os/StrictMode$ThreadPolicy;)V

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_a8
    iget-object p0, p0, Lqby;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_e7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_5f

    nop

    nop

    :goto_aa
    invoke-virtual {p0}, Ltkb;->o()V

    :goto_ab
    goto/32 :goto_d0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ac
    const-wide/16 p0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    :goto_ad
    invoke-virtual {p0, p1}, Ltkb;->r(Ltkg;)V

    goto/32 :goto_11f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ae
    if-eqz p1, :cond_10

    nop

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

    :cond_10
    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    :goto_af
    iget-wide v4, v1, Lpwr;->h:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    :goto_b0
    check-cast p0, Lqpi;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_116

    nop

    nop

    nop

    nop

    :goto_b1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

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

    nop

    nop

    :goto_b2
    iget-object v1, p0, Lqby;->a:Ljava/lang/Object;

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

    :goto_b3
    check-cast p0, Ljava/util/List;

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_b4
    const/4 v1, -0x1

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_b5
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :pswitch_8
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_b6
    invoke-virtual {v5}, Ltkb;->i()Ltkg;

    move-result-object v2

    nop

    nop

    goto/32 :goto_12b

    nop

    nop

    nop

    nop

    nop

    :goto_b7
    iget-object p0, p0, Lqby;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    nop

    :goto_b8
    sget-object v0, Lqwv;->a:Lqwv;

    nop

    nop

    goto/32 :goto_dc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b9
    check-cast v6, Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    :goto_ba
    new-instance v1, Lnvl;

    nop

    goto/32 :goto_109

    nop

    nop

    :goto_bb
    invoke-virtual {p1}, Lpwy;->b()V

    goto/32 :goto_d2

    nop

    nop

    nop

    :goto_bc
    const/4 v3, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    :goto_bd
    check-cast p1, Lpwy;

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_be
    check-cast p1, Lqwu;

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_bf
    check-cast p1, Ljava/lang/String;

    nop

    nop

    goto/32 :goto_102

    nop

    nop

    nop

    :goto_c0
    iget-object v6, v3, Lqwv;->d:Ljava/lang/String;

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_c1
    or-int/lit8 v8, v8, 0x10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_c2
    iget-object p0, p0, Lqby;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c3
    if-eqz v7, :cond_11

    nop

    nop

    nop

    goto/32 :goto_12d

    nop

    nop

    :cond_11
    goto/32 :goto_97

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c4
    invoke-virtual {v1, v3}, Ltkg;->D(I)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    :goto_c5
    return-object p1

    nop

    nop

    nop

    :pswitch_9
    goto/32 :goto_84

    nop

    nop

    :goto_c6
    return-object p0

    nop

    :pswitch_a
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_c7
    if-nez p1, :cond_12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_104

    nop

    nop

    :cond_12
    :try_start_a
    check-cast p0, Lqcg;

    nop

    nop

    iget-object p0, p0, Lqcg;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    check-cast p0, Lhdn;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0, p1}, Lhdn;->B(Landroid/net/Uri;)J

    move-result-wide v0

    nop

    nop

    nop

    nop

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    goto/32 :goto_e3

    nop

    nop

    nop

    nop

    :goto_c8
    invoke-virtual {v2}, Ltkb;->i()Ltkg;

    move-result-object p0

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

    nop

    :goto_c9
    check-cast v1, Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_b6

    nop

    nop

    :goto_ca
    invoke-virtual {p1}, Ltkg;->C()Z

    move-result p1

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_cb
    iget-object p1, p1, Lpwy;->d:Ltkv;

    nop

    nop

    nop

    nop

    goto/32 :goto_10b

    nop

    nop

    nop

    nop

    nop

    :goto_cc
    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    :goto_cd
    check-cast v3, Lqwv;

    nop

    nop

    nop

    goto/32 :goto_ec

    nop

    nop

    nop

    nop

    nop

    :goto_ce
    invoke-virtual {v7}, Ltkg;->C()Z

    move-result v7

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_cf
    const-string v0, "StorageLogger"

    nop

    goto/32 :goto_cc

    nop

    nop

    :goto_d0
    iget-object p1, p0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    :goto_d1
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    :goto_d2
    iget-object p1, p1, Lpwy;->d:Ltkv;

    nop

    nop

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    :goto_d3
    goto/32 :goto_e6

    nop

    nop

    nop

    nop

    nop

    :goto_d4
    invoke-static {v3}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto/32 :goto_11d

    nop

    nop

    :goto_d5
    sget p1, Lqca;->d:I

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d6
    check-cast p0, Lpwr;

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_d7
    if-eqz p1, :cond_13

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :cond_13
    goto/32 :goto_64

    nop

    nop

    nop

    nop

    :goto_d8
    goto/16 :goto_1

    nop

    nop

    nop

    :goto_d9
    goto/32 :goto_94

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_da
    iget p1, p1, Lorr;->a:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_db
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    goto/32 :goto_eb

    nop

    nop

    :goto_dc
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_10f

    nop

    nop

    nop

    :goto_dd
    invoke-interface {p0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_de
    invoke-static {p1, p0, v0}, Lqvg;->b(Lpyd;Landroid/net/Uri;Lrss;)Lpyd;

    move-result-object p0

    nop

    goto/32 :goto_106

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_df
    iget-wide v4, v1, Lpwr;->g:J

    nop

    nop

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    :goto_e0
    iget-object p1, p1, Lqwx;->b:Ltll;

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_e1
    move v1, v4

    nop

    nop

    nop

    :goto_e2
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e3
    goto/16 :goto_56

    nop

    nop

    :catch_2
    move-exception p0

    nop

    goto/32 :goto_cf

    nop

    nop

    :goto_e4
    if-nez p1, :cond_14

    nop

    nop

    nop

    nop

    goto/32 :goto_114

    nop

    nop

    :cond_14
    goto/32 :goto_63

    nop

    nop

    :goto_e5
    goto/32 :goto_107

    nop

    nop

    nop

    :goto_e6
    goto/32 :goto_f4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e7
    move-object v0, p0

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    :goto_e8
    goto/16 :goto_15

    nop

    nop

    nop

    :goto_e9
    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    :goto_ea
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_eb
    invoke-static {v0, v1}, Lrgw;->P(Ljava/util/Iterator;Lrsv;)I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    nop

    :goto_ec
    sget-object v5, Lqwv;->a:Lqwv;

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    :goto_ed
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    nop

    goto/32 :goto_110

    nop

    nop

    nop

    nop

    nop

    :goto_ee
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    :goto_ef
    iget-object p1, v1, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    :goto_f0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    nop

    goto/32 :goto_c9

    nop

    nop

    nop

    nop

    nop

    :goto_f1
    invoke-virtual {p1, v0}, Landroid/media/MediaCodec;->setInputSurface(Landroid/view/Surface;)V

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f2
    iget-object p0, p0, Lhwy;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_dd

    nop

    nop

    :goto_f3
    const v1, 0x17

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_f4
    iget v0, p0, Lqby;->b:I

    nop

    goto/32 :goto_d1

    nop

    nop

    nop

    :goto_f5
    check-cast p0, Lhwy;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f6
    return-object p0

    nop

    nop

    :pswitch_b
    goto/32 :goto_be

    nop

    nop

    nop

    nop

    nop

    :goto_f7
    invoke-interface {p1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_100

    nop

    nop

    :goto_f8
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f9
    check-cast p1, Lorv;

    nop

    nop

    goto/32 :goto_112

    nop

    nop

    nop

    :goto_fa
    invoke-virtual {v0}, Ltkb;->i()Ltkg;

    move-result-object p0

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    :goto_fb
    iget-object p1, v0, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_ca

    nop

    nop

    :goto_fc
    invoke-virtual {p1, v3}, Ltkg;->D(I)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_fd
    iput-object v6, v7, Lqwv;->d:Ljava/lang/String;

    nop

    :goto_fe
    goto/32 :goto_82

    nop

    nop

    nop

    :goto_ff
    invoke-direct {v1, p0, v2}, Lnvl;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_db

    nop

    nop

    :goto_100
    if-nez v1, :cond_15

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :cond_15
    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    :goto_101
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v3

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_102
    iget-object p0, p0, Lqby;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_f5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_103
    invoke-static {p0, v0, p1}, Lqbq;->g(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_104
    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_105
    check-cast v1, Lpwr;

    nop

    goto/32 :goto_c4

    nop

    nop

    nop

    :goto_106
    return-object p0

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_0
        :pswitch_a
        :pswitch_6
        :pswitch_1
        :pswitch_d
        :pswitch_9
        :pswitch_4
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_c
        :pswitch_b
        :pswitch_3
    .end packed-switch

    :goto_107
    goto/32 :goto_d3

    nop

    nop

    :goto_108
    iget-object p0, p0, Lqby;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    nop

    :goto_109
    iget-object p0, p0, Lqby;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_10a
    invoke-virtual {v6}, Ltkg;->C()Z

    move-result v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    :goto_10b
    invoke-interface {p1, v0, p0}, Ltkv;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_26

    nop

    nop

    :goto_10c
    invoke-virtual {p1}, Ltkg;->C()Z

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_d7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10d
    iget-object p0, v2, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_d6

    nop

    nop

    nop

    :goto_10e
    invoke-static {v0}, Lolx;->ag(Ljava/lang/Object;)V

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    :goto_10f
    iget-object p1, p1, Lqwx;->b:Ltll;

    nop

    nop

    nop

    goto/32 :goto_f7

    nop

    nop

    :goto_110
    check-cast v2, Ljava/util/Map$Entry;

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

    :goto_111
    invoke-virtual {p1, v3}, Ltkg;->D(I)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_112
    iget-object v0, p1, Lorv;->a:Lorr;

    nop

    nop

    goto/32 :goto_10e

    nop

    nop

    nop

    :goto_113
    invoke-static {v0, p0, p1}, Lqoe;->y(Ljava/lang/String;Landroid/media/MediaFormat;Landroid/media/MediaFormat;)V

    :goto_114
    goto/32 :goto_7

    nop

    nop

    :goto_115
    check-cast p0, Landroid/media/MediaFormat;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    nop

    :goto_116
    iput-boolean v4, p0, Lqpi;->b:Z

    nop

    :goto_117
    goto/32 :goto_12a

    nop

    nop

    nop

    nop

    nop

    :goto_118
    iget v8, v7, Lpwr;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_c1

    nop

    nop

    nop

    nop

    :goto_119
    iget-object p0, v0, Lqwv;->d:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_b5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11a
    if-eqz v6, :cond_16

    nop

    nop

    goto/32 :goto_fe

    nop

    nop

    :cond_16
    goto/32 :goto_11e

    nop

    nop

    nop

    nop

    nop

    :goto_11b
    check-cast p1, Landroid/net/Uri;

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    :goto_11c
    invoke-virtual {v0, p1}, Ltkb;->r(Ltkg;)V

    goto/32 :goto_fb

    nop

    nop

    :goto_11d
    throw p0

    nop

    nop

    nop

    :pswitch_c
    goto/32 :goto_4f

    nop

    nop

    :goto_11e
    iget-object v6, v3, Lqwv;->d:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_126

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11f
    iget-object p1, p0, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    :goto_120
    sget-object v0, Lqwx;->a:Lqwx;

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_121
    iput-wide v4, v7, Lpwr;->g:J

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_122
    iput-object v0, p1, Lpwy;->d:Ltkv;

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

    :goto_123
    invoke-static {p1, p0}, Lqvg;->c(Lpyd;Landroid/net/Uri;)Lrss;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_f6

    nop

    nop

    nop

    :goto_124
    or-int/2addr v8, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_125
    sget-object v0, Lqxh;->a:Ljava/util/concurrent/ConcurrentMap;

    nop

    nop

    goto/32 :goto_120

    nop

    nop

    nop

    nop

    nop

    :goto_126
    iget-object v7, v5, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ce

    nop

    nop

    nop

    nop

    :goto_127
    const-string v0, "oo.muxer.drop_initial_non_keyframes"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_115

    nop

    nop

    nop

    :goto_128
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    nop

    :goto_129
    check-cast v7, Lqwv;

    nop

    goto/32 :goto_f8

    nop

    nop

    nop

    nop

    nop

    :goto_12a
    return-object v2

    nop

    nop

    nop

    :pswitch_d
    goto/32 :goto_60

    nop

    nop

    nop

    :goto_12b
    check-cast v2, Lqwv;

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    :goto_12c
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    nop

    nop

    :goto_12d
    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    :goto_12e
    iput v1, p0, Lpwr;->b:I

    nop

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    :goto_12f
    check-cast p1, Lpyd;

    nop

    goto/32 :goto_38

    nop

    nop

    nop
.end method

.class public final synthetic Lqbj;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lssx;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lqbj;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    iput p2, p0, Lqbj;->b:I

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lsui;
    .locals 7

    goto/32 :goto_85

    nop

    nop

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_dd

    nop

    nop

    nop

    nop

    :goto_1
    const/16 v1, 0x7365

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lrbs;->e:Lrbp;

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_3
    check-cast p1, Ljava/lang/Void;

    nop

    nop

    nop

    goto/32 :goto_b3

    nop

    nop

    :goto_4
    iget-object v1, p0, Lqxd;->g:Lqxz;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_5
    goto :goto_6

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-eqz v1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a9

    nop

    nop

    :goto_8
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_a
    goto/16 :goto_77

    nop

    nop

    :catch_0
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    :goto_b
    const-string v0, "MuxerImpl"

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

    :goto_c
    const/16 v1, 0x7366

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v1}, Lqxz;->c()Z

    move-result v1

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_e
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_bc

    nop

    nop

    :goto_f
    const-string v3, "Error trying to construct MediaMuxer."

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_10
    const-string v2, "MobStoreFlagStore"

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    :goto_11
    invoke-static {p0}, Lsgj;->O(Ljava/lang/Object;)Lsui;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    check-cast p1, Landroid/net/Uri;

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-nez v2, :cond_1

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_44

    nop

    nop

    :goto_14
    check-cast p1, Ljava/lang/Void;

    nop

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const/16 v1, 0x7364

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-object v0, p1, Lpwy;->f:Lpxa;

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

    :goto_17
    const/4 v2, 0x0

    nop

    packed-switch v0, :pswitch_data_0

    goto/32 :goto_b2

    nop

    nop

    :goto_18
    const/4 v2, 0x3

    nop

    nop

    nop

    goto/32 :goto_d8

    nop

    nop

    :goto_19
    if-ne v0, v1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_e0

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    check-cast p1, Lqwf;

    nop

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    :goto_1b
    iget-object p0, p0, Lqyc;->g:Lrtm;

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

    :goto_1c
    iget-object p0, p0, Landroidx/wear/ambient/AmbientMode$AmbientController;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    :goto_1d
    invoke-static {v0, v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    check-cast v0, Landroid/net/Uri;

    nop

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    :goto_1f
    iget-object v2, v0, Lqca;->c:Lrbs;

    nop

    nop

    nop

    nop

    goto/32 :goto_d0

    nop

    nop

    nop

    :goto_20
    move-object v0, p0

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

    :goto_21
    invoke-static {p1, v0}, Lqqm;->l(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_dc

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {p0}, Lrof;->c()Lsui;

    move-result-object p0

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-direct {p1, p0, v0}, Lpzv;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_9b

    nop

    nop

    :goto_24
    iget-object v0, p0, Lrbp;->c:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iget-object v0, v0, Lqvg;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    return-object p0

    nop

    nop

    :pswitch_0
    goto/32 :goto_c5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    check-cast p0, Lqxd;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_28
    iget-object p0, p0, Lqca;->c:Lrbs;

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    :goto_29
    const/16 v1, 0x7362

    nop

    nop

    nop

    nop

    goto/32 :goto_c3

    nop

    nop

    nop

    nop

    :goto_2a
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :pswitch_1
    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_2b
    iget-object p0, p0, Lqbj;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_c7

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-static {p1}, Lsgj;->N(Ljava/lang/Throwable;)Lsui;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_da

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    check-cast p0, Lqxz;

    nop

    nop

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    check-cast p0, Lrbp;

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_30
    check-cast p1, Landroid/net/Uri;

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    :goto_31
    iget-object p0, p0, Lqbj;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    iget-object p0, p0, Lqbj;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_c2

    nop

    nop

    :goto_33
    const/16 v0, 0x12

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_34
    check-cast p0, Lrbl;

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_3e

    nop

    nop

    :goto_36
    check-cast p0, Lrbp;

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    :goto_37
    if-ne v0, v1, :cond_3

    nop

    goto/32 :goto_e0

    nop

    nop

    :cond_3
    goto/32 :goto_9f

    nop

    nop

    nop

    :goto_38
    invoke-direct {p1, v1}, Lpzu;-><init>(I)V

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_39
    check-cast p0, Lrbs;

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    check-cast v0, Ljava/io/IOException;

    nop

    nop

    goto/32 :goto_c9

    nop

    nop

    :goto_3b
    monitor-enter v0

    nop

    :try_start_0
    check-cast p0, Lrbp;

    nop

    nop

    iget-object p0, p0, Lrbp;->h:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop

    nop

    return-object p0

    nop

    :catchall_1
    move-exception p0

    nop

    nop

    monitor-exit v0

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto/32 :goto_81

    nop

    nop

    :goto_3c
    check-cast p1, Ljava/util/Map;

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

    :goto_3d
    const v1, 0xf

    nop

    nop

    nop

    nop

    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    :goto_3e
    const-string v3, ". Experiments may be delayed til next app start. Error code: "

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    :goto_3f
    const-string v0, ".bak"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_40
    const/16 v1, 0x733d

    nop

    nop

    goto/32 :goto_d4

    nop

    nop

    nop

    nop

    :goto_41
    iget-object p0, p0, Lrbl;->f:Landroidx/wear/ambient/AmbientMode$AmbientController;

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_42
    invoke-virtual {p0, p1}, Lqbl;->e(Ljava/util/Map;)Lsui;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_d6

    nop

    nop

    nop

    nop

    nop

    :goto_43
    iget-object p0, p0, Lqbj;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    invoke-virtual {v2}, Landroid/media/MediaMuxer;->release()V

    goto/32 :goto_60

    nop

    nop

    :goto_45
    invoke-static {p1}, Lqdd;->e(Lsui;)Lqdd;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    :goto_46
    if-lez v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    :cond_4
    goto/32 :goto_4c

    nop

    :goto_47
    iget-object v0, v0, Lqca;->a:Ljava/util/concurrent/Executor;

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

    nop

    :goto_48
    check-cast p1, Lqya;

    nop

    nop

    nop

    goto/32 :goto_ce

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    const/16 v1, 0x7363

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    :goto_4a
    invoke-virtual {p0, p1}, Lqxz;->b(Lqya;)Lsui;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_cf

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    iget v0, v0, Lpxa;->b:I

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

    nop

    :goto_4c
    goto/32 :goto_d7

    nop

    nop

    nop

    nop

    :goto_4d
    goto/32 :goto_86

    nop

    nop

    nop

    nop

    :goto_4e
    invoke-interface {p0}, Lrtm;->a()Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    :goto_4f
    check-cast p1, Ljava/lang/Void;

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_50
    const/16 v1, 0x7361

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    :goto_51
    check-cast p1, Ltlq;

    nop

    nop

    nop

    goto/32 :goto_e3

    nop

    nop

    nop

    nop

    nop

    :goto_52
    return-object p0

    nop

    nop

    nop

    :pswitch_2
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_53
    check-cast p0, Ljava/lang/Throwable;

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    :goto_54
    const/4 v1, 0x1

    nop

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

    :goto_55
    invoke-virtual {p0}, Lrbs;->a()Lsui;

    move-result-object p0

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

    :goto_56
    invoke-virtual {p0}, Lrbp;->a()Lsui;

    move-result-object p0

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    iget-object p0, p0, Lqbj;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    :goto_58
    return-object p0

    nop

    nop

    :pswitch_3
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_59
    return-object p0

    nop

    nop

    nop

    nop

    :pswitch_4
    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_5a
    check-cast p1, Lqya;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c8

    nop

    nop

    nop

    :goto_5b
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    if-ne v0, v1, :cond_5

    nop

    goto/32 :goto_e0

    nop

    :cond_5
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_5d
    invoke-direct {v1, p0, p1, v3, v2}, Lquu;-><init>(Ljava/lang/Object;Ljava/lang/Object;I[B)V

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    :goto_5e
    if-eqz v1, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_cd

    nop

    :cond_6
    goto/32 :goto_cc

    nop

    nop

    nop

    nop

    :goto_5f
    invoke-static {p0}, Lsgj;->O(Ljava/lang/Object;)Lsui;

    move-result-object p0

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    :goto_60
    iput-boolean v1, p0, Lqld;->i:Z

    nop

    nop

    :goto_61
    goto/32 :goto_2c

    nop

    nop

    :goto_62
    iget-object p0, p0, Lqbj;->a:Ljava/lang/Object;

    nop

    :try_start_1
    move-object p1, p0

    nop

    nop

    check-cast p1, Lqld;

    nop

    nop

    nop

    nop

    nop

    iget-object p1, p1, Lqld;->b:Lsui;

    nop

    nop

    invoke-static {p1}, Lsgj;->W(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    check-cast p1, Ljava/lang/Integer;

    nop

    invoke-static {p1}, Lrss;->i(Ljava/lang/Object;)Lrss;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    move-object v0, p0

    nop

    check-cast v0, Lqld;

    nop

    nop

    nop

    nop

    iget-object v0, v0, Lqld;->c:Lsui;

    nop

    nop

    nop

    invoke-static {v0}, Lsgj;->W(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0

    nop

    check-cast v0, Ljava/lang/Float;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v0}, Lrss;->i(Ljava/lang/Object;)Lrss;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    move-object v3, p0

    nop

    nop

    nop

    nop

    check-cast v3, Lqld;

    nop

    iget-object v3, v3, Lqld;->d:Lsui;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v3}, Lsgj;->W(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v3

    nop

    check-cast v3, Ljava/lang/Float;

    nop

    invoke-static {v3}, Lrss;->i(Ljava/lang/Object;)Lrss;

    move-result-object v3

    nop

    nop

    nop

    nop

    move-object v4, p0

    nop

    nop

    check-cast v4, Lqld;

    nop

    nop

    nop

    iget-object v4, v4, Lqld;->a:Lsui;

    nop

    nop

    nop

    nop

    invoke-static {v4}, Lsgj;->W(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    check-cast v4, Lqau;

    nop

    nop

    nop

    nop

    nop

    iget-object v5, v4, Lqau;->a:Ljava/lang/Object;

    nop

    nop

    new-instance v5, Landroid/media/MediaMuxer;

    nop

    iget-object v4, v4, Lqau;->b:Ljava/lang/Object;

    nop

    check-cast v4, Lrsx;

    nop

    iget-object v4, v4, Lrsx;->a:Ljava/lang/Object;

    nop

    nop

    check-cast v4, Ljava/io/FileDescriptor;

    nop

    nop

    nop

    nop

    nop

    const/4 v6, 0x0

    nop

    nop

    invoke-direct {v5, v4, v6}, Landroid/media/MediaMuxer;-><init>(Ljava/io/FileDescriptor;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p1}, Lrss;->h()Z

    move-result v2

    nop

    if-eqz v2, :cond_7

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Lrss;->c()Ljava/lang/Object;

    move-result-object p1

    nop

    check-cast p1, Ljava/lang/Integer;

    nop

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    nop

    invoke-virtual {v5, p1}, Landroid/media/MediaMuxer;->setOrientationHint(I)V

    :cond_7
    invoke-virtual {v0}, Lrss;->h()Z

    move-result p1

    nop

    nop

    nop

    nop

    nop

    if-eqz p1, :cond_8

    nop

    invoke-virtual {v3}, Lrss;->h()Z

    move-result p1

    nop

    nop

    if-eqz p1, :cond_8

    nop

    nop

    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object p1

    nop

    check-cast p1, Ljava/lang/Float;

    nop

    nop

    nop

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    check-cast v0, Ljava/lang/Float;

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v5, p1, v0}, Landroid/media/MediaMuxer;->setLocation(FF)V

    :cond_8
    invoke-static {v5}, Lsgj;->O(Ljava/lang/Object;)Lsui;

    move-result-object p0

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto/32 :goto_d5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_63
    check-cast v0, Lqvg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_64
    invoke-virtual {p0, p1}, Lrbp;->b(Landroid/net/Uri;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_d9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_65
    if-ne v0, v1, :cond_9

    nop

    nop

    nop

    goto/32 :goto_e0

    nop

    :cond_9
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_66
    if-eqz p0, :cond_a

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    :cond_a
    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_67
    invoke-virtual {p0, p1, v0}, Lqdd;->f(Lrsk;Ljava/util/concurrent/Executor;)Lqdd;

    move-result-object p0

    nop

    nop

    nop

    nop

    :goto_68
    goto/32 :goto_ae

    nop

    nop

    :goto_69
    const/4 v3, 0x5

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    invoke-static {p1}, Lsgj;->N(Ljava/lang/Throwable;)Lsui;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    :goto_6b
    goto :goto_6e

    nop

    nop

    :catch_1
    move-exception p0

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    :goto_6c
    throw p0

    nop

    nop

    nop

    nop

    nop

    :pswitch_5
    goto/32 :goto_3c

    nop

    nop

    :goto_6d
    invoke-static {p0}, Lsgj;->N(Ljava/lang/Throwable;)Lsui;

    move-result-object p0

    nop

    nop

    nop

    nop

    :goto_6e
    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    check-cast p1, Ljava/lang/Void;

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

    :goto_70
    return-object p0

    nop

    nop

    nop

    nop

    :pswitch_6
    goto/32 :goto_57

    nop

    nop

    nop

    :goto_71
    iget-object p0, p0, Lrbs;->b:Lrof;

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_72
    check-cast p0, Lqld;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_73
    check-cast p1, Lpwy;

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_74
    sget-object p0, Lpxa;->a:Lpxa;

    nop

    nop

    nop

    nop

    nop

    :goto_75
    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :goto_76
    invoke-static {p0}, Lsgj;->N(Ljava/lang/Throwable;)Lsui;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_77
    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_78
    invoke-static {p0}, Lsgj;->O(Ljava/lang/Object;)Lsui;

    move-result-object p0

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    :goto_79
    if-eqz v0, :cond_b

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_13

    nop

    nop

    :goto_7a
    check-cast p0, Lqca;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_7b
    and-int/2addr v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c6

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :pswitch_7
    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    new-instance v1, Lqbj;

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_7e
    const/16 v1, 0x7368

    nop

    nop

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    :goto_7f
    if-eqz v0, :cond_c

    nop

    nop

    nop

    nop

    goto/32 :goto_cb

    nop

    :cond_c
    goto/32 :goto_ca

    nop

    nop

    nop

    nop

    :goto_80
    sget-object p0, Lsue;->a:Lsui;

    nop

    nop

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    :goto_81
    throw p0

    nop

    nop

    nop

    :pswitch_8
    goto/32 :goto_12

    nop

    nop

    :goto_82
    check-cast p0, Lrbs;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_83
    invoke-static {v0}, Lsgj;->W(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0

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

    :goto_84
    check-cast p0, Lsui;

    nop

    nop

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    :goto_85
    const v0, 0x4

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_86
    iget v0, p0, Lqbj;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    :goto_87
    iget v0, p1, Lqwf;->a:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_88
    check-cast v0, Lqca;

    nop

    nop

    nop

    goto/32 :goto_c4

    nop

    nop

    nop

    :goto_89
    invoke-interface {p0, v0, p1}, Lrbk;->a(Lqop;Ltlq;)Ltlq;

    move-result-object p0

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_8a
    return-object p0

    nop

    :pswitch_9
    goto/32 :goto_ac

    nop

    nop

    nop

    :goto_8b
    iget-object p0, p0, Lqbj;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8c
    iget-object v1, p0, Lrbl;->e:Landroid/content/SharedPreferences;

    nop

    nop

    nop

    nop

    goto/32 :goto_aa

    nop

    nop

    :goto_8d
    sget-object p0, Lstd;->a:Lstd;

    nop

    goto/32 :goto_e2

    nop

    nop

    nop

    nop

    :goto_8e
    new-instance p1, Lpzv;

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_8f
    return-object p0

    nop

    nop

    nop

    nop

    :pswitch_a
    goto/32 :goto_51

    nop

    nop

    nop

    :goto_90
    iget-object p0, p0, Lqbj;->a:Ljava/lang/Object;

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

    :goto_91
    iget-object p0, p0, Lqbj;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_92
    return-object p0

    nop

    nop

    nop

    :pswitch_b
    goto/32 :goto_96

    nop

    nop

    nop

    :goto_93
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_c1

    nop

    nop

    nop

    nop

    nop

    :goto_94
    check-cast p1, Lrbp;

    nop

    nop

    goto/32 :goto_de

    nop

    nop

    nop

    nop

    :goto_95
    iget-object p1, p0, Lrbp;->c:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_bd

    nop

    nop

    nop

    nop

    :goto_96
    iget-object p0, p0, Lqbj;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_97
    invoke-virtual {p0, v0, p1}, Lrbp;->c(Landroid/net/Uri;Ljava/lang/Object;)V

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    :goto_98
    iget-object p0, p0, Lqbj;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    :try_start_3
    move-object p1, p0

    nop

    check-cast p1, Lram;

    nop

    nop

    nop

    nop

    iget-object p1, p1, Lram;->f:Lhdn;

    nop

    check-cast p0, Lram;

    nop

    iget-object p0, p0, Lram;->a:Landroid/net/Uri;

    nop

    invoke-virtual {p1, p0}, Lhdn;->G(Landroid/net/Uri;)V

    sget-object p0, Lsue;->a:Lsui;

    nop

    nop

    nop

    nop

    nop
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_99
    check-cast p0, Lqxz;

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_9a
    move-object v2, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_9b
    move-object v0, p0

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    :goto_9c
    sget-object p0, Lsue;->a:Lsui;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    :goto_9d
    invoke-static {p0}, Lsgj;->P(Lsui;)Lsui;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_9e
    move-object v0, p0

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

    :goto_9f
    const/16 v1, 0x7367

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_a0
    check-cast p1, Landroid/net/Uri;

    nop

    goto/32 :goto_b9

    nop

    nop

    nop

    nop

    nop

    :goto_a1
    return-object p0

    nop

    :pswitch_c
    goto/32 :goto_14

    nop

    nop

    :goto_a2
    move-object p1, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    nop

    :goto_a3
    iget-object p0, v0, Lqca;->a:Ljava/util/concurrent/Executor;

    nop

    nop

    goto/32 :goto_d1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a4
    new-instance p1, Lpzu;

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    :goto_a5
    if-ne v0, v1, :cond_d

    nop

    goto/32 :goto_e0

    nop

    nop

    :cond_d
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_a6
    invoke-interface {p0, p1}, Lrsk;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_78

    nop

    nop

    :goto_a7
    invoke-virtual {p0, p1}, Lqxz;->b(Lqya;)Lsui;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_e4

    nop

    nop

    nop

    nop

    nop

    :goto_a8
    check-cast p1, Ljava/lang/Void;

    nop

    goto/32 :goto_bb

    nop

    nop

    nop

    :goto_a9
    const-string v2, ". Triggering flag update."

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_aa
    invoke-direct {v0, v1}, Lqop;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_ab
    if-eq v0, v1, :cond_e

    nop

    nop

    nop

    goto/32 :goto_cd

    nop

    :cond_e
    goto/32 :goto_df

    nop

    nop

    nop

    :goto_ac
    iget-object p0, p0, Lqbj;->a:Ljava/lang/Object;

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

    :goto_ad
    const/16 v1, 0x14

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

    :goto_ae
    return-object p0

    nop

    :pswitch_d
    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    :goto_af
    if-ne v0, v1, :cond_f

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

    nop

    :cond_f
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_b0
    goto/16 :goto_68

    nop

    nop

    nop

    nop

    nop

    :goto_b1
    goto/32 :goto_e5

    nop

    nop

    nop

    nop

    nop

    :goto_b2
    check-cast p1, Ljava/io/IOException;

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_b3
    iget-object p0, p0, Lqbj;->a:Ljava/lang/Object;

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

    :goto_b4
    new-instance v1, Lquu;

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    :goto_b5
    iget-object p0, p0, Lqbj;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    :goto_b6
    iget-object p0, p1, Lpwy;->f:Lpxa;

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    :goto_b7
    new-instance v0, Lqop;

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b8
    check-cast p0, Ljava/lang/Throwable;

    nop

    nop

    nop

    nop

    goto/32 :goto_bf

    nop

    nop

    :goto_b9
    invoke-interface {v0}, Lrbx;->a()Lsui;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    :goto_ba
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_d3

    nop

    nop

    :goto_bb
    iget-object p0, p0, Lqbj;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    :goto_bc
    iget-object v3, p0, Lqxd;->c:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_bd
    invoke-static {p1}, Lsgj;->W(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_be
    check-cast p1, Ljava/util/List;

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bf
    throw p0

    nop

    :pswitch_e
    goto/32 :goto_b5

    nop

    nop

    nop

    nop

    nop

    :goto_c0
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :pswitch_f
    goto/32 :goto_73

    nop

    nop

    :goto_c1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_db

    nop

    nop

    nop

    nop

    :goto_c2
    check-cast p0, Lqbl;

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

    :goto_c3
    if-ne v0, v1, :cond_10

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

    :cond_10
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_c4
    iget-object v1, v0, Lqca;->a:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_c5
    check-cast p1, Landroidx/wear/ambient/AmbientMode$AmbientController;

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    :goto_c6
    if-nez v0, :cond_11

    nop

    goto/32 :goto_b1

    nop

    nop

    :cond_11
    goto/32 :goto_b6

    nop

    nop

    nop

    :goto_c7
    check-cast p0, Lqyc;

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_c8
    iget-object p0, p0, Lqbj;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_c9
    invoke-virtual {v0, p1}, Ljava/io/IOException;->addSuppressed(Ljava/lang/Throwable;)V

    goto/32 :goto_b8

    nop

    nop

    nop

    :goto_ca
    sget-object v0, Lpxa;->a:Lpxa;

    nop

    nop

    nop

    nop

    nop

    :goto_cb
    goto/32 :goto_4b

    nop

    nop

    :goto_cc
    invoke-virtual {p0}, Lqxd;->b()V

    :goto_cd
    goto/32 :goto_6a

    nop

    nop

    :goto_ce
    iget-object p0, p0, Lqbj;->a:Ljava/lang/Object;

    nop

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

    :goto_cf
    return-object p0

    nop

    :pswitch_10
    goto/32 :goto_1a

    nop

    nop

    :goto_d0
    invoke-virtual {v2, p1, v1}, Lrbs;->b(Lrsk;Ljava/util/concurrent/Executor;)Lsui;

    move-result-object p1

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_d1
    invoke-virtual {p1, v1, p0}, Lqdd;->g(Lssx;Ljava/util/concurrent/Executor;)Lqdd;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    :goto_d2
    iget-boolean v0, p0, Lqld;->i:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    :goto_d3
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_d4
    if-ne v0, v1, :cond_12

    nop

    nop

    goto/32 :goto_e0

    nop

    nop

    :cond_12
    goto/32 :goto_50

    nop

    nop

    nop

    :goto_d5
    goto/16 :goto_2d

    nop

    nop

    :catchall_2
    move-exception p1

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d6
    return-object p0

    nop

    nop

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_d
        :pswitch_f
        :pswitch_11
        :pswitch_12
        :pswitch_4
        :pswitch_10
        :pswitch_1
        :pswitch_2
        :pswitch_c
        :pswitch_a
        :pswitch_b
        :pswitch_9
        :pswitch_3
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_e
    .end packed-switch

    :goto_d7
    goto/32 :goto_e1

    nop

    nop

    nop

    nop

    nop

    :goto_d8
    invoke-direct {v1, p0, v2}, Lqbj;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    nop

    :goto_d9
    invoke-static {p0}, Lsgj;->O(Ljava/lang/Object;)Lsui;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    :goto_da
    return-object p0

    nop

    nop

    nop

    :pswitch_11
    goto/32 :goto_a8

    nop

    nop

    nop

    :goto_db
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_dc
    iget-object p0, p0, Lqbj;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    :try_start_4
    move-object v1, p0

    nop

    nop

    nop

    nop

    check-cast v1, Lrbp;

    nop

    nop

    iget-object v1, v1, Lrbp;->e:Ljava/lang/Object;

    nop

    nop

    nop

    check-cast v1, Lhdn;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v0}, Lhdn;->I(Landroid/net/Uri;)Z

    move-result v1

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_13

    nop

    nop

    check-cast p0, Lrbp;

    nop

    nop

    nop

    nop

    nop

    iget-object p0, p0, Lrbp;->e:Ljava/lang/Object;

    nop

    nop

    check-cast p0, Lhdn;

    nop

    invoke-virtual {p0, v0, p1}, Lhdn;->H(Landroid/net/Uri;Landroid/net/Uri;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_13
    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_dd
    const-string v3, "Failed to commit due to stale snapshot for "

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_de
    iget-object v0, p1, Lrbp;->a:Ljava/lang/Object;

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

    :goto_df
    move v0, v1

    nop

    nop

    nop

    :goto_e0
    goto/32 :goto_90

    nop

    nop

    nop

    :goto_e1
    goto/32 :goto_4d

    nop

    :goto_e2
    invoke-static {v0, v1, p0}, Lsso;->i(Lsui;Lrsk;Ljava/util/concurrent/Executor;)Lsui;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e3
    iget-object p0, p0, Lqbj;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    :goto_e4
    return-object p0

    nop

    nop

    :pswitch_12
    goto/32 :goto_be

    nop

    nop

    :goto_e5
    iget-object p0, p0, Lqbj;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop
.end method

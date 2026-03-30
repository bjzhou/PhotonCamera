.class public final synthetic Loxl;
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
    iput-object p1, p0, Loxl;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    iput p3, p0, Loxl;->c:I

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p2, p0, Loxl;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_4
    return-void

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
    iput p3, p0, Loxl;->c:I

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

    :goto_1
    iput-object p2, p0, Loxl;->a:Ljava/lang/Object;

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

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_4

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p1, p0, Loxl;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Loxv;Lowo;I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iput p3, p0, Loxl;->c:I

    nop

    nop

    goto/32 :goto_3

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
    iput-object p1, p0, Loxl;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p2, p0, Loxl;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop
.end method


# virtual methods
.method public final run()V
    .locals 7

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance p0, Lpcv;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Loxl;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_c1

    nop

    nop

    nop

    :goto_2
    iget-object v1, p0, Loxl;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_3
    check-cast v0, Lpey;

    nop

    nop

    goto/32 :goto_ce

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_89

    nop

    nop

    nop

    :goto_6
    invoke-interface {v0, p0}, Lpas;->b(Lpar;)V

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v0, p0, Loxl;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/16 :goto_b6

    nop

    :catch_0
    move-exception v1

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_9
    iget-object p0, p0, Loxl;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_a
    check-cast v0, Lpas;

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

    nop

    :goto_b
    invoke-static {v0}, Lsgj;->X(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d3

    nop

    nop

    nop

    :goto_c
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :goto_d
    goto/32 :goto_46

    nop

    nop

    nop

    :goto_e
    if-nez v2, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    :goto_f
    invoke-interface {p0, v0}, Lpcm;->a(Ljava/lang/Object;)V

    goto/32 :goto_cf

    nop

    nop

    nop

    :goto_10
    check-cast v0, Ljava/lang/Throwable;

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_c9

    nop

    nop

    nop

    :goto_12
    return-void

    nop

    nop

    nop

    nop

    :pswitch_0
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_13
    invoke-interface {v3, v4}, Lpag;->c(Landroid/media/MediaFormat;)V

    goto/32 :goto_bd

    nop

    nop

    nop

    nop

    :goto_14
    iget-object p0, p0, Loxl;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget-object p0, p0, Loyg;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    :goto_16
    iget-object v0, p0, Loxl;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p0, v0}, Lowo;->a(Ljava/lang/Object;)V

    goto/32 :goto_75

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v0, p0}, Loxv;->d(Ljava/lang/Object;)V

    goto/32 :goto_d2

    nop

    nop

    nop

    nop

    :goto_19
    iget-object v0, p0, Loxl;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_d5

    nop

    nop

    :goto_1a
    check-cast p0, Lphp;

    nop

    goto/32 :goto_99

    nop

    nop

    :goto_1b
    check-cast p0, Lpez;

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    :goto_1c
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iget-object v0, p0, Loxl;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_1f
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    :goto_20
    add-long/2addr v1, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    :goto_21
    iget-object p0, p0, Loxl;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :goto_22
    return-void

    nop

    nop

    nop

    nop

    nop

    :catch_1
    move-exception v0

    nop

    nop

    goto/32 :goto_bc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    throw p0

    nop

    nop

    :pswitch_1
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iget-object p0, p0, Loxl;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_25
    check-cast p0, Lpax;

    nop

    nop

    nop

    nop

    goto/32 :goto_c6

    nop

    nop

    nop

    nop

    :goto_26
    iget-object v0, p0, Loxl;->a:Ljava/lang/Object;

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

    :goto_27
    invoke-virtual {p0, v0}, Lpuq;->a(Lpro;)V

    goto/32 :goto_c0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    check-cast p0, Loxv;

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    :goto_29
    check-cast p0, Lpdp;

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    iget-object v0, p0, Loxl;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_2b
    iget-object v1, v1, Loxv;->d:Ljava/lang/Object;

    nop

    nop

    :goto_2c
    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_2d
    iget-object v0, v0, Lpau;->e:Lrss;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    move-object v1, v0

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    const-string v2, "MediaMuxerMul"

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

    :goto_30
    iget-object v2, v1, Loyr;->e:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_31
    iget-object v0, p0, Loxl;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    :goto_32
    goto/16 :goto_5

    nop

    nop

    nop

    :goto_33
    goto/32 :goto_a0

    nop

    nop

    :goto_34
    return-void

    nop

    nop

    :pswitch_2
    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    iget v0, p0, Loxl;->c:I

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    :goto_36
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_be

    nop

    nop

    :goto_37
    invoke-interface {v0, p0}, Lpcm;->a(Ljava/lang/Object;)V

    goto/32 :goto_88

    nop

    nop

    nop

    :goto_38
    iget-object v0, p0, Loxl;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_4c

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

    :pswitch_3
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_3a
    return-void

    nop

    :pswitch_4
    goto/32 :goto_a4

    nop

    nop

    :goto_3b
    iget-object p0, p0, Loxl;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    goto/32 :goto_7c

    nop

    nop

    :goto_3d
    iget-object v0, p0, Loxl;->b:Ljava/lang/Object;

    nop

    :try_start_0
    invoke-interface {v0}, Lpsc;->h()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_3e
    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_3f
    check-cast p0, Lpdp;

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    :goto_40
    const v0, 0x1c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    invoke-interface {p0, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    iget-object p0, p0, Loxl;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    check-cast v1, Loyr;

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

    :goto_44
    check-cast p0, Lowo;

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    :goto_45
    iget-object v0, p0, Loxl;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_46
    return-void

    nop

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_3
        :pswitch_12
        :pswitch_8
        :pswitch_d
        :pswitch_a
        :pswitch_e
        :pswitch_13
        :pswitch_9
        :pswitch_4
        :pswitch_0
        :pswitch_c
        :pswitch_1
        :pswitch_6
        :pswitch_f
        :pswitch_7
        :pswitch_2
        :pswitch_5
        :pswitch_b
        :pswitch_10
    .end packed-switch

    :goto_47
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    invoke-virtual {p0, v0}, Lpuq;->cI(Lpna;)V

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    :goto_49
    const-string v3, "Failed to stop previous media muxer"

    nop

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    iget-object p0, p0, Loxl;->a:Ljava/lang/Object;

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

    :goto_4b
    return-void

    nop

    :pswitch_5
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_4c
    iget-object p0, p0, Loxl;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    check-cast v0, Loxv;

    nop

    goto/32 :goto_9c

    nop

    nop

    :goto_4e
    rem-int v0, v0, v1

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    :goto_4f
    check-cast v0, Loxv;

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    invoke-interface {p0, v0}, Lpcm;->a(Ljava/lang/Object;)V

    goto/32 :goto_a2

    nop

    nop

    nop

    :goto_51
    new-instance v1, Lpcv;

    nop

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    :goto_52
    check-cast p0, Loyg;

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_53
    iget p0, p0, Lpdp;->c:I

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_54
    return-void

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    monitor-exit v1

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_70

    nop

    nop

    nop

    :goto_55
    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    nop

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

    nop

    :goto_56
    iget-object v0, v0, Lpax;->a:Lj$/util/concurrent/ConcurrentLinkedQueue;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    :goto_57
    iget-object p0, p0, Loxl;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_c4

    nop

    nop

    nop

    :goto_58
    iget-wide v3, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    :goto_59
    iget-object v0, p0, Loxl;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_aa

    nop

    nop

    nop

    :goto_5a
    check-cast v1, Landroid/media/MediaCodec$BufferInfo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_5b
    check-cast p0, Lpar;

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_5c
    check-cast p0, Lphp;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    if-lt v1, v2, :cond_1

    nop

    goto/32 :goto_d1

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    check-cast v0, Lpau;

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    return-void

    nop

    nop

    nop

    :pswitch_6
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_60
    iget-object p0, p0, Lphp;->a:Lpuq;

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    :goto_61
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    nop

    nop

    nop

    :goto_62
    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    :goto_63
    check-cast p0, Lowo;

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_64
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_65
    goto/32 :goto_b9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_66
    iget-object v0, p0, Loxl;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_67
    invoke-virtual {p0, v0}, Lpep;->e(Lpdz;)V

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_68
    check-cast v0, Ljava/lang/Throwable;

    nop

    nop

    goto/32 :goto_cd

    nop

    nop

    nop

    :goto_69
    iget-object p0, p0, Lpez;->b:Lpep;

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

    nop

    nop

    :goto_6a
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c9

    nop

    :cond_2
    goto/32 :goto_c8

    nop

    :goto_6b
    invoke-virtual {p0, v0}, Loxv;->d(Ljava/lang/Object;)V

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_6c
    check-cast p0, Lphp;

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    :goto_6d
    throw v1

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    iget-object v0, p0, Loxl;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_70
    throw p0

    nop

    nop

    nop

    :pswitch_7
    goto/32 :goto_6f

    nop

    nop

    nop

    :goto_71
    iget-object p0, p0, Loyl;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    nop

    :goto_72
    iget-object p0, p0, Lpap;->i:Lryb;

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    :goto_73
    iget-object p0, p0, Loxl;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_74
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/32 :goto_b5

    nop

    nop

    nop

    nop

    :goto_75
    return-void

    nop

    :pswitch_8
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_76
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_77
    iget-object p0, p0, Lphp;->a:Lpuq;

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    :goto_78
    int-to-long v5, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    :goto_79
    return-void

    nop

    nop

    nop

    :pswitch_9
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_7b
    iget-wide v3, p0, Ltrg;->a:J

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_7c
    iget-object p0, p0, Loxl;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    iget-object v0, p0, Loxl;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    check-cast v0, Loya;

    nop

    nop

    nop

    nop

    goto/32 :goto_c3

    nop

    nop

    nop

    nop

    :goto_7f
    const-string v2, "Failed to release previous media muxer"

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_80
    iget-object p0, p0, Loxl;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    :goto_81
    if-nez v1, :cond_3

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_82
    iget-object p0, p0, Loxl;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_83
    check-cast v0, Lpgi;

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    :goto_84
    iget-object p0, p0, Lpdp;->b:Ljava/util/Set;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_85
    invoke-virtual {p0, v0}, Lpuq;->l(Lpgi;)V

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_86
    move-object v1, v0

    nop

    nop

    goto/32 :goto_bf

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_87
    iget-object v0, p0, Loxl;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_88
    return-void

    nop

    nop

    nop

    nop

    :pswitch_a
    goto/32 :goto_c5

    nop

    nop

    nop

    :goto_89
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    :goto_8a
    check-cast p0, Ltrg;

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

    :goto_8b
    invoke-interface {v0, p0}, Lpcm;->a(Ljava/lang/Object;)V

    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    :goto_8c
    iget-object v1, v1, Loyr;->e:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8d
    const/4 v1, 0x0

    nop

    packed-switch v0, :pswitch_data_0

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_8e
    move-object v4, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_cb

    nop

    nop

    nop

    :goto_8f
    iget-object p0, p0, Loxy;->c:Lpcm;

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_90
    iget-object p0, p0, Loxl;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_91
    monitor-enter v1

    nop

    nop

    :try_start_2
    iget-object p0, p0, Lpep;->c:Ljava/util/Set;

    nop

    nop

    nop

    nop

    invoke-interface {p0, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    nop

    :goto_92
    return-void

    nop

    nop

    nop

    nop

    :pswitch_b
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_93
    invoke-direct {p0, v0}, Lpcv;-><init>(Ljava/lang/Throwable;)V

    goto/32 :goto_23

    nop

    nop

    :goto_94
    iget-object v0, p0, Loxl;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_95
    invoke-interface {v0, p0}, Lpcm;->a(Ljava/lang/Object;)V

    goto/32 :goto_d4

    nop

    nop

    :goto_96
    iget-object v1, p0, Lpep;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    :goto_97
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_d0

    nop

    nop

    :goto_98
    invoke-interface {v2, v3, v4, v5, v6}, Lpah;->k(JJ)V

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_99
    iget-object p0, p0, Lphp;->a:Lpuq;

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9a
    check-cast p0, Ljava/lang/String;

    nop

    goto/32 :goto_68

    nop

    nop

    :goto_9b
    const v1, 0x6

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

    :goto_9c
    iget-object v0, v0, Loxv;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    :goto_9d
    iget-object p0, p0, Loxl;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_9e
    iget-object v0, v0, Loyb;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    :goto_9f
    check-cast p0, Loyl;

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    :goto_a0
    return-void

    nop

    :pswitch_c
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_a1
    iget-object p0, p0, Loxl;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    :goto_a2
    return-void

    nop

    nop

    nop

    :pswitch_d
    goto/32 :goto_94

    nop

    nop

    nop

    :goto_a3
    iget-object p0, p0, Lowo;->a:Lpcm;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_a4
    iget-object v0, p0, Loxl;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a5
    check-cast v2, Lpah;

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

    nop

    nop

    :goto_a6
    check-cast p0, Loxy;

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

    :goto_a7
    goto/16 :goto_65

    nop

    nop

    :goto_a8
    goto/32 :goto_22

    nop

    nop

    :goto_a9
    check-cast v3, Lpag;

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_aa
    iget-object p0, p0, Loxl;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_ab
    check-cast p0, Lpez;

    nop

    nop

    nop

    nop

    goto/32 :goto_c2

    nop

    nop

    nop

    :goto_ac
    if-nez p0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ad
    check-cast p0, Lpap;

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ae
    return-void

    nop

    nop

    nop

    nop

    :pswitch_e
    goto/32 :goto_7

    nop

    nop

    :goto_af
    goto/16 :goto_2c

    nop

    nop

    :goto_b0
    goto/32 :goto_86

    nop

    nop

    nop

    nop

    nop

    :goto_b1
    check-cast v0, Lpna;

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_b2
    iget-object v0, p0, Loxl;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    :goto_b3
    sget-object v0, Lpar;->h:Lpar;

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_b4
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_b5
    const/4 v1, 0x1

    nop

    nop

    :goto_b6
    :try_start_3
    invoke-interface {v0}, Lpsc;->c()V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1

    goto/32 :goto_c7

    nop

    nop

    :goto_b7
    iget-object v1, p0, Lpdp;->b:Ljava/util/Set;

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    :goto_b8
    return-void

    nop

    :pswitch_f
    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    :goto_b9
    iget-object p0, p0, Loxl;->a:Ljava/lang/Object;

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

    nop

    :goto_ba
    invoke-interface {v0}, Lpdz;->a()V

    goto/32 :goto_54

    nop

    nop

    :goto_bb
    invoke-virtual {p0, v0}, Lpau;->a(Lpar;)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_bc
    const-string v1, "MediaMuxerMul"

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    :goto_bd
    invoke-interface {v3}, Lpag;->l()V

    goto/32 :goto_97

    nop

    nop

    :goto_be
    if-eqz v0, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    :cond_5
    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_bf
    check-cast v1, Loxv;

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_c0
    return-void

    nop

    nop

    :pswitch_10
    goto/32 :goto_38

    nop

    nop

    nop

    :goto_c1
    check-cast v0, Lpax;

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_c2
    iget-object p0, p0, Lpez;->b:Lpep;

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

    :goto_c3
    iget-object v0, v0, Loya;->a:Loyb;

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    :goto_c4
    check-cast v1, Ljava/lang/Long;

    nop

    nop

    nop

    nop

    goto/32 :goto_cc

    nop

    nop

    nop

    nop

    nop

    :goto_c5
    iget-object v0, p0, Loxl;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_c6
    iget-object p0, p0, Lpax;->d:Lpau;

    nop

    nop

    nop

    goto/32 :goto_bb

    nop

    nop

    nop

    :goto_c7
    if-nez v1, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_a8

    nop

    :cond_6
    goto/32 :goto_a7

    nop

    nop

    nop

    :goto_c8
    goto/32 :goto_47

    nop

    nop

    :goto_c9
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_ca
    iget-object v0, p0, Loxl;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_cb
    check-cast v4, Landroid/media/MediaFormat;

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

    :goto_cc
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    :goto_cd
    invoke-direct {v1, p0, v0}, Lpcv;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    :goto_ce
    invoke-virtual {v0, p0}, Lpey;->a(I)V

    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_cf
    return-void

    nop

    nop

    :pswitch_11
    goto/32 :goto_ca

    nop

    nop

    nop

    nop

    :goto_d0
    goto/16 :goto_62

    nop

    nop

    nop

    :goto_d1
    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    :goto_d2
    return-void

    nop

    nop

    nop

    nop

    :pswitch_12
    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    nop

    :goto_d3
    check-cast v0, Ljava/lang/Boolean;

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_d4
    return-void

    nop

    nop

    nop

    :pswitch_13
    goto/32 :goto_66

    nop

    nop

    nop

    :goto_d5
    iget-object p0, p0, Loxl;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    nop

    :goto_d6
    iget-object p0, p0, Loxl;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    nop
.end method

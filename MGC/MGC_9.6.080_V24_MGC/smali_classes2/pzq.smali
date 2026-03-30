.class public final synthetic Lpzq;
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

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput p2, p0, Lpzq;->b:I

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
    return-void

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lpzq;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lsui;
    .locals 10

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    check-cast p0, Lpzt;

    nop

    goto/32 :goto_f6

    nop

    nop

    :goto_1
    invoke-interface {v0, v1, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0x1b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_de

    nop

    nop

    nop

    nop

    :goto_4
    invoke-interface {p0}, Lpzj;->b()Lsui;

    move-result-object p0

    nop

    goto/32 :goto_c0

    nop

    nop

    nop

    nop

    :goto_5
    check-cast p1, Lpxb;

    nop

    nop

    nop

    nop

    goto/32 :goto_b9

    nop

    nop

    nop

    :goto_6
    const/4 p0, -0x1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {p1}, Lsgj;->O(Ljava/lang/Object;)Lsui;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_df

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    check-cast p1, Ljava/lang/Void;

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    :goto_a
    invoke-interface {p1, v0, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

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

    :goto_b
    const-string v2, "gms_icing_mdd_shared_file_manager_metadata"

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    :goto_c
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    nop

    nop

    goto/32 :goto_ec

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-nez v3, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_109

    nop

    nop

    :goto_e
    invoke-static {v0}, Lpuq;->Q(Landroid/content/Context;)V

    :goto_f
    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    nop

    :goto_10
    sget-object v6, Lcom/google/android/apps/camera/ui/remotecontrol/Gizr/bXyemjIV;->XhTljXKBwW:Ljava/lang/String;

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_11
    const/16 v2, 0x13

    nop

    nop

    goto/32 :goto_e8

    nop

    nop

    :goto_12
    iget-object v0, p1, Lpzt;->f:Lqah;

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-direct {p1, v0}, Lpmy;-><init>(I)V

    goto/32 :goto_eb

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-eqz p1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_12f

    nop

    nop

    :cond_1
    goto/32 :goto_b3

    nop

    nop

    nop

    nop

    :goto_15
    const/4 v1, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_12c

    nop

    nop

    nop

    nop

    :goto_16
    iget v0, p0, Lpzq;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_137

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iput-object p1, p0, Ltar;->d:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_13c

    nop

    nop

    :goto_19
    iget-object p1, v3, Lqak;->a:Ljava/util/concurrent/Executor;

    nop

    goto/32 :goto_c9

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-static {}, Lpwf;->a()Ltar;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    :goto_1b
    return-object p0

    nop

    :pswitch_0
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_1c
    sget-object p0, Lsue;->a:Lsui;

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_126

    nop

    nop

    :goto_1e
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object p0, p1, Lpzt;->k:Ljava/util/concurrent/Executor;

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    check-cast p0, Lqah;

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

    :goto_21
    sget v0, Lqbq;->a:I

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

    :goto_22
    return-object p0

    nop

    :pswitch_1
    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iget-object v3, p1, Lpzt;->m:Lpwh;

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_24
    const/4 v4, 0x0

    nop

    nop

    nop

    goto/32 :goto_aa

    nop

    nop

    nop

    :goto_25
    goto/16 :goto_da

    nop

    nop

    nop

    :catch_0
    goto/32 :goto_76

    nop

    nop

    nop

    nop

    :goto_26
    check-cast p1, Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_27
    invoke-static {v0, v1, p0}, Lqrf;->r(Lsui;Lssx;Ljava/util/concurrent/Executor;)Lsui;

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

    nop

    :goto_28
    move-object p1, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    :goto_29
    if-eqz p1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_d3

    nop

    nop

    :cond_2
    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    const/4 v6, 0x0

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_2b
    iget-object p0, p0, Lpzq;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    iget-object v1, v0, Lqah;->a:Landroid/content/Context;

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

    :goto_2d
    goto/16 :goto_132

    nop

    :goto_2e
    goto/32 :goto_131

    nop

    nop

    nop

    :goto_2f
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    :goto_30
    invoke-interface {v3}, Lpwh;->l()I

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    :goto_31
    iget-object p1, p0, Lpzt;->j:Lrss;

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    :goto_32
    iget-object v1, p1, Lpzt;->b:Landroid/content/Context;

    nop

    nop

    nop

    goto/32 :goto_135

    nop

    nop

    nop

    :goto_33
    goto/16 :goto_118

    nop

    :goto_34
    goto/32 :goto_117

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-interface {p1}, Lpxo;->a()V

    :cond_3
    goto/32 :goto_a5

    nop

    nop

    :goto_36
    invoke-virtual {v3, v4}, Lqak;->g(Lpww;)Lsui;

    move-result-object v3

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    :goto_37
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :goto_38
    goto/32 :goto_8b

    nop

    nop

    nop

    :goto_39
    const-class v1, Ljava/io/IOException;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f8

    nop

    nop

    nop

    :goto_3a
    return-object p0

    nop

    nop

    nop

    nop

    :pswitch_2
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    const-string v1, "gms_icing_mdd_reset_trigger"

    nop

    goto/32 :goto_ce

    nop

    nop

    nop

    :goto_3c
    invoke-static {v7}, Lsgj;->O(Ljava/lang/Object;)Lsui;

    move-result-object p0

    nop

    nop

    nop

    :goto_3d
    goto/32 :goto_e5

    nop

    nop

    :goto_3e
    iget-object p0, p0, Lpzq;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_ea

    nop

    nop

    :goto_3f
    invoke-virtual {p1, v0, p0}, Lqar;->l(Lssw;Ljava/util/concurrent/Executor;)Lsui;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_40
    new-instance v0, Ljava/util/ArrayList;

    nop

    goto/32 :goto_6f

    nop

    nop

    :goto_41
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_42
    check-cast p1, Ljava/lang/Void;

    nop

    nop

    goto/32 :goto_d6

    nop

    nop

    nop

    :goto_43
    invoke-direct {p0}, Lqai;-><init>()V

    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    goto/32 :goto_f2

    nop

    nop

    nop

    :goto_45
    iget-object p0, p0, Lpzt;->e:Lpzj;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_46
    return-object p0

    nop

    nop

    nop

    nop

    :pswitch_3
    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    new-instance v1, Lpzq;

    nop

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    :goto_48
    move-object p1, p0

    nop

    goto/32 :goto_11a

    nop

    nop

    nop

    nop

    nop

    :goto_49
    check-cast p1, Ljava/lang/Void;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    :goto_4a
    iget-object v0, p1, Lpzt;->g:Lqaj;

    nop

    nop

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    :goto_4b
    const-string v5, "gms_icing_mdd_manager_metadata"

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_4c
    goto/16 :goto_b0

    nop

    nop

    :goto_4d
    goto/32 :goto_af

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    invoke-static {v9}, Lsgj;->O(Ljava/lang/Object;)Lsui;

    move-result-object p0

    nop

    nop

    goto/32 :goto_12e

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    invoke-static {v0, v5, p1}, Lpuq;->af(Landroid/content/Context;Ljava/lang/String;Lrss;)Landroid/content/SharedPreferences;

    move-result-object p1

    nop

    goto/32 :goto_10e

    nop

    nop

    nop

    nop

    :goto_50
    const/4 v7, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_51
    check-cast p0, Ljava/lang/Throwable;

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    invoke-virtual {p0, p1}, Lpwf;->addSuppressed(Ljava/lang/Throwable;)V

    goto/32 :goto_9e

    nop

    nop

    nop

    :goto_53
    iget-object p0, p0, Lpzt;->n:Lqbr;

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    :goto_54
    invoke-interface {v0}, Lqaj;->a()Lsui;

    move-result-object v0

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_55
    invoke-static {v0, v1, p0}, Lqrf;->q(Lsui;Lrsk;Ljava/util/concurrent/Executor;)Lsui;

    move-result-object p0

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

    :goto_56
    check-cast p0, Lpwf;

    nop

    nop

    nop

    nop

    goto/32 :goto_e6

    nop

    nop

    :goto_57
    invoke-virtual {p0, p1, v0}, Lqdd;->f(Lrsk;Ljava/util/concurrent/Executor;)Lqdd;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_58
    goto/32 :goto_d8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_59
    iget-object p0, p0, Lpzw;->c:Lrbs;

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_5a
    invoke-direct {v1, p1, v3}, Lpht;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_c4

    nop

    nop

    nop

    nop

    :goto_5b
    invoke-virtual {p0, p1, v0}, Lrbs;->b(Lrsk;Ljava/util/concurrent/Executor;)Lsui;

    move-result-object p0

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_5c
    iget-object p0, p0, Lpzq;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    nop

    nop

    :goto_5d
    iget-object v1, v0, Lqah;->c:Lqaj;

    nop

    nop

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    :goto_5e
    iget-object p0, p0, Lqah;->j:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_5f
    iget-object v0, p0, Lpzw;->b:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    :goto_60
    sget-object p1, Lpwe;->I:Lpwe;

    nop

    goto/32 :goto_119

    nop

    nop

    nop

    nop

    nop

    :goto_61
    return-object p0

    nop

    nop

    :pswitch_4
    goto/32 :goto_42

    nop

    nop

    nop

    :goto_62
    return-object p0

    nop

    nop

    :pswitch_5
    goto/32 :goto_10d

    nop

    nop

    nop

    nop

    :goto_63
    iget-object p0, p0, Lpzq;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    :goto_64
    if-eqz p1, :cond_4

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_147

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_65
    check-cast p1, Ljava/lang/Void;

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

    :goto_66
    const-string p1, "%s: Unable to write back download info for file entry with %s"

    nop

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    :goto_67
    check-cast p1, Ljava/lang/Void;

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_68
    invoke-static {v1, v2, v0}, Lqrf;->r(Lsui;Lssx;Ljava/util/concurrent/Executor;)Lsui;

    move-result-object v0

    nop

    goto/32 :goto_e1

    nop

    nop

    nop

    :goto_69
    return-object p0

    nop

    nop

    :pswitch_6
    goto/32 :goto_123

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    iget-object p0, p0, Lpzq;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_111

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    iget-object p0, p0, Lpzq;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_6c
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_138

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    invoke-static {p0}, Lsgj;->N(Ljava/lang/Throwable;)Lsui;

    move-result-object p0

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    const/16 v0, 0xe

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_6f
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_d9

    nop

    nop

    nop

    nop

    nop

    :goto_70
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    nop

    goto/32 :goto_c1

    nop

    nop

    nop

    :goto_71
    invoke-static {p0}, Lsgj;->N(Ljava/lang/Throwable;)Lsui;

    move-result-object p0

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

    :goto_72
    iget-object v0, p0, Lpzt;->b:Landroid/content/Context;

    nop

    goto/32 :goto_4f

    nop

    nop

    :goto_73
    check-cast p0, Lpzw;

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_74
    invoke-interface {p1}, Lpwh;->v()Z

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_d1

    nop

    nop

    nop

    nop

    nop

    :goto_75
    invoke-direct {v1, p0, v4}, Lpzq;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_112

    nop

    nop

    nop

    nop

    :goto_76
    move-object p1, p0

    nop

    nop

    nop

    goto/32 :goto_136

    nop

    nop

    nop

    nop

    :goto_77
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    nop

    nop

    nop

    packed-switch v0, :pswitch_data_0

    goto/32 :goto_122

    nop

    nop

    :goto_78
    iget-object v3, v0, Lqah;->i:Lrss;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    :goto_79
    iget-object p0, p0, Lpzq;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_100

    nop

    nop

    :goto_7a
    invoke-static {p1, v2, p0}, Lqbq;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    return-object p0

    nop

    nop

    nop

    :pswitch_7
    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    iget-object p0, p1, Lpzt;->k:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    :goto_7d
    const/16 v2, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    :goto_7e
    iget-object p0, p0, Lpzq;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_116

    nop

    nop

    :goto_7f
    sget-object p1, Lpwe;->w:Lpwe;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_80
    iget-object v3, p0, Lpzq;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    :goto_81
    invoke-virtual {p0}, Lpzt;->a()Lsui;

    move-result-object v0

    nop

    goto/32 :goto_f0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_82
    check-cast p1, Lpzt;

    nop

    goto/32 :goto_dc

    nop

    nop

    nop

    nop

    nop

    :goto_83
    invoke-interface {p0}, Lqbr;->b()Lsui;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_dd

    nop

    nop

    nop

    :goto_84
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e2

    nop

    nop

    :goto_85
    check-cast p1, Lpzt;

    nop

    goto/32 :goto_13d

    nop

    nop

    nop

    nop

    :goto_86
    move-object p1, p0

    nop

    nop

    goto/32 :goto_130

    nop

    nop

    nop

    :goto_87
    check-cast p1, Ljava/lang/Void;

    nop

    goto/32 :goto_d5

    nop

    nop

    nop

    :goto_88
    invoke-static {v0, v1, p0}, Lqrf;->r(Lsui;Lssx;Ljava/util/concurrent/Executor;)Lsui;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c5

    nop

    nop

    :goto_89
    invoke-static {v0}, Lpuq;->aL(Ljava/lang/Iterable;)Lqar;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_10a

    nop

    nop

    nop

    :goto_8a
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :pswitch_8
    goto/32 :goto_11f

    nop

    nop

    nop

    nop

    nop

    :goto_8b
    invoke-static {v7}, Lsgj;->O(Ljava/lang/Object;)Lsui;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    :goto_8c
    invoke-direct {p1, v3}, Lpmy;-><init>(I)V

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    :goto_8d
    check-cast p1, Ljava/io/IOException;

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_8e
    iget-object p0, p0, Lpzq;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_103

    nop

    nop

    nop

    nop

    nop

    :goto_8f
    sget-object v0, Lstd;->a:Lstd;

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_90
    invoke-static {v0, v1, p0}, Lqrf;->r(Lsui;Lssx;Ljava/util/concurrent/Executor;)Lsui;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_91
    check-cast p1, Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_140

    nop

    nop

    nop

    nop

    nop

    :goto_92
    invoke-direct {v1, p0, v2}, Lpzq;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_7c

    nop

    nop

    :goto_93
    const/16 v3, 0xb

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f9

    nop

    nop

    nop

    nop

    nop

    :goto_94
    goto/16 :goto_8

    nop

    :goto_95
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_96
    check-cast p1, Ljava/lang/Void;

    nop

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    nop

    :goto_97
    invoke-static {v1, v2, v3}, Lpuq;->af(Landroid/content/Context;Ljava/lang/String;Lrss;)Landroid/content/SharedPreferences;

    move-result-object v1

    nop

    goto/32 :goto_bf

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_98
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    :goto_99
    invoke-direct {v0, p0, v1}, Lgte;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_9a
    iget-object p0, p0, Lpzq;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9b
    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_10b

    nop

    nop

    :goto_9c
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_fb

    nop

    nop

    nop

    nop

    nop

    :goto_9d
    invoke-static {p0}, Lsgj;->N(Ljava/lang/Throwable;)Lsui;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_e9

    nop

    nop

    :goto_9e
    sget-object p0, Lsue;->a:Lsui;

    nop

    nop

    goto/32 :goto_cc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9f
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    nop

    goto/32 :goto_ed

    nop

    nop

    :goto_a0
    invoke-interface {v0}, Lqaj;->d()Lsui;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_148

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a1
    invoke-interface {p0}, Lpzj;->f()Lsui;

    move-result-object p0

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :goto_a2
    check-cast v4, Lpww;

    nop

    nop

    goto/32 :goto_f5

    nop

    nop

    :goto_a3
    new-instance v1, Lpyw;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_a4
    invoke-static {p0}, Lsgj;->N(Ljava/lang/Throwable;)Lsui;

    move-result-object p0

    nop

    goto/32 :goto_94

    nop

    nop

    :goto_a5
    invoke-static {v0}, Lpuq;->aL(Ljava/lang/Iterable;)Lqar;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_11e

    nop

    nop

    nop

    :goto_a6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_b1

    nop

    nop

    nop

    nop

    :goto_a7
    invoke-interface {v1}, Lqaj;->c()Lsui;

    move-result-object v1

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    nop

    :goto_a8
    const/4 v8, 0x0

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    :goto_a9
    invoke-direct {p1, v4}, Lpzu;-><init>(I)V

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_aa
    invoke-direct {v2, p1, v0, v1, v4}, Lpxk;-><init>(Ljava/lang/Object;Ljava/lang/Object;I[B)V

    goto/32 :goto_143

    nop

    nop

    nop

    nop

    :goto_ab
    iget-object p0, p0, Lpzq;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_e7

    nop

    nop

    :goto_ac
    new-instance v2, Lpzq;

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    nop

    :goto_ad
    iget-object p0, p1, Lpzt;->k:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    nop

    goto/32 :goto_11c

    nop

    nop

    nop

    :goto_ae
    iget-object v3, p1, Lpzt;->m:Lpwh;

    nop

    nop

    nop

    goto/32 :goto_11d

    nop

    nop

    nop

    nop

    nop

    :goto_af
    sget-object p0, Lsue;->a:Lsui;

    nop

    nop

    nop

    nop

    :goto_b0
    goto/32 :goto_d4

    nop

    nop

    nop

    :goto_b1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    nop

    nop

    nop

    nop

    :goto_b2
    goto/32 :goto_80

    nop

    nop

    :goto_b3
    iget-object p0, p0, Lpzq;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_fc

    nop

    nop

    nop

    :goto_b4
    check-cast p0, Lpzt;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_b5
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

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

    :goto_b6
    invoke-static {p1, v6, p0}, Lqbq;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b7
    goto/16 :goto_58

    nop

    nop

    nop

    nop

    :goto_b8
    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b9
    if-eqz p1, :cond_5

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    :cond_5
    goto/32 :goto_cd

    nop

    nop

    :goto_ba
    return-object p0

    nop

    nop

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_8
        :pswitch_4
        :pswitch_d
        :pswitch_9
        :pswitch_3
        :pswitch_10
        :pswitch_a
        :pswitch_1
        :pswitch_f
        :pswitch_2
        :pswitch_11
        :pswitch_0
        :pswitch_6
        :pswitch_e
        :pswitch_5
        :pswitch_13
        :pswitch_b
        :pswitch_7
        :pswitch_12
    .end packed-switch

    :goto_bb
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bc
    goto/16 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_bd
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_be
    new-instance p0, Lqai;

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

    :goto_bf
    const-string v2, "migrated_to_new_file_key"

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_c0
    return-object p0

    nop

    nop

    :pswitch_9
    goto/32 :goto_12b

    nop

    nop

    :goto_c1
    if-nez v4, :cond_6

    nop

    goto/32 :goto_139

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_106

    nop

    nop

    nop

    nop

    nop

    :goto_c2
    invoke-static {}, Lpwf;->a()Ltar;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    :goto_c3
    const-string p1, "%s: getSharedFile called on file that doesn\'t exist! Key = %s"

    nop

    nop

    goto/32 :goto_127

    nop

    nop

    nop

    nop

    :goto_c4
    iget-object p0, p0, Lpzt;->k:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_c5
    return-object p0

    nop

    nop

    :pswitch_a
    goto/32 :goto_9

    nop

    nop

    :goto_c6
    const/16 v1, 0x415

    nop

    nop

    nop

    nop

    goto/32 :goto_13e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c7
    check-cast p1, Ljava/lang/Boolean;

    nop

    goto/32 :goto_12a

    nop

    nop

    nop

    nop

    :goto_c8
    const/4 v4, 0x5

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

    :goto_c9
    invoke-virtual {p0, v2, p1}, Lqar;->l(Lssw;Ljava/util/concurrent/Executor;)Lsui;

    move-result-object p0

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    :goto_ca
    iget-object v0, p1, Lpzt;->c:Lqbn;

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

    nop

    :goto_cb
    check-cast p0, Lpzt;

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_cc
    return-object p0

    nop

    :pswitch_b
    goto/32 :goto_c7

    nop

    nop

    nop

    :goto_cd
    iget-object p0, p0, Lpzq;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_c3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ce
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_113

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_cf
    if-lt v2, v3, :cond_7

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_98

    nop

    nop

    nop

    nop

    nop

    :goto_d0
    check-cast p1, Ljava/lang/Boolean;

    nop

    nop

    nop

    goto/32 :goto_10f

    nop

    nop

    :goto_d1
    if-eqz p1, :cond_8

    nop

    nop

    goto/32 :goto_b8

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_6

    nop

    nop

    :goto_d2
    return-object p0

    nop

    :goto_d3
    goto/32 :goto_144

    nop

    nop

    nop

    :goto_d4
    return-object p0

    nop

    nop

    :pswitch_c
    goto/32 :goto_87

    nop

    nop

    :goto_d5
    iget-object p0, p0, Lpzq;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_d6
    iget-object p0, p0, Lpzq;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d7
    invoke-virtual {p0}, Ltar;->c()Lpwf;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_fa

    nop

    nop

    :goto_d8
    return-object p0

    nop

    :pswitch_d
    goto/32 :goto_105

    nop

    nop

    nop

    nop

    :goto_d9
    iget-object p0, p0, Lpzq;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    nop

    nop

    nop

    nop

    :goto_da
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    if-eqz v2, :cond_3

    nop

    nop

    nop

    nop

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    nop

    check-cast v2, Lpwz;

    nop

    nop

    nop

    move-object v3, p0

    nop

    nop

    check-cast v3, Lqah;

    nop

    nop

    nop

    iget-object v3, v3, Lqah;->c:Lqaj;

    nop

    nop

    invoke-interface {v3, v2}, Lqaj;->e(Lpwz;)Lsui;

    move-result-object v3

    nop

    nop

    nop

    new-instance v4, Lpzy;

    nop

    nop

    nop

    invoke-direct {v4, p0, v2, v1}, Lpzy;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    move-object v2, p0

    nop

    nop

    nop

    check-cast v2, Lqah;

    nop

    nop

    nop

    nop

    iget-object v2, v2, Lqah;->j:Ljava/util/concurrent/Executor;

    nop

    nop

    invoke-static {v3, v4, v2}, Lqrf;->r(Lsui;Lssx;Ljava/util/concurrent/Executor;)Lsui;

    move-result-object v2

    nop

    nop

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_db
    return-object p0

    nop

    nop

    nop

    nop

    :pswitch_e
    goto/32 :goto_91

    nop

    nop

    :goto_dc
    iget-object v0, p1, Lpzt;->f:Lqah;

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_dd
    invoke-static {p0}, Lqdd;->e(Lsui;)Lqdd;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ee

    nop

    nop

    :goto_de
    const v1, 0x17

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_df
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :pswitch_f
    goto/32 :goto_141

    nop

    nop

    nop

    nop

    nop

    :goto_e0
    iget-object p0, p0, Lpzq;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    :goto_e1
    new-instance v1, Lpzq;

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    :goto_e2
    if-lez v0, :cond_9

    nop

    nop

    nop

    goto/32 :goto_f2

    nop

    nop

    :cond_9
    goto/32 :goto_f1

    nop

    :goto_e3
    return-object p0

    nop

    nop

    nop

    nop

    :pswitch_10
    goto/32 :goto_d0

    nop

    nop

    nop

    :goto_e4
    iget-object p0, p0, Lpzt;->e:Lpzj;

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    :goto_e5
    return-object p0

    nop

    nop

    :pswitch_11
    goto/32 :goto_129

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e6
    invoke-virtual {p0, p1}, Lpwf;->addSuppressed(Ljava/lang/Throwable;)V

    goto/32 :goto_12d

    nop

    nop

    nop

    nop

    :goto_e7
    const-string p1, "%s: Unable to modify file subscription for key %s"

    nop

    nop

    nop

    goto/32 :goto_101

    nop

    nop

    nop

    nop

    nop

    :goto_e8
    invoke-direct {v1, p0, v2}, Lpyw;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    :goto_e9
    goto/16 :goto_145

    nop

    nop

    nop

    :pswitch_12
    goto/32 :goto_96

    nop

    nop

    :goto_ea
    check-cast p0, Lpwf;

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    :goto_eb
    sget-object v0, Lstd;->a:Lstd;

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_ec
    invoke-static {p0}, Lsgj;->O(Ljava/lang/Object;)Lsui;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    :goto_ed
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ee
    new-instance p1, Lpmy;

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    :goto_ef
    const/16 v1, 0xa

    nop

    nop

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    :goto_f0
    new-instance v1, Lpht;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_f1
    goto/32 :goto_bb

    nop

    nop

    nop

    :goto_f2
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_f3
    const/16 v3, 0xf

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c8

    nop

    nop

    nop

    :goto_f4
    invoke-direct {v1, p0, v2}, Lpzq;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f5
    check-cast v3, Lqak;

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

    :goto_f6
    iget-object p1, p0, Lpzt;->m:Lpwh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    :goto_f7
    iget-object p0, p0, Lpzq;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_cb

    nop

    nop

    nop

    nop

    :goto_f8
    invoke-virtual {p0, v1, p1, v0}, Lqdd;->b(Ljava/lang/Class;Lrsk;Ljava/util/concurrent/Executor;)Lqdd;

    move-result-object p0

    nop

    nop

    goto/32 :goto_11b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f9
    invoke-direct {v2, v0, v3}, Lpzq;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_13a

    nop

    nop

    nop

    :goto_fa
    invoke-static {p0}, Lsgj;->N(Ljava/lang/Throwable;)Lsui;

    move-result-object p0

    nop

    nop

    goto/32 :goto_fe

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_fb
    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_fc
    const-string p1, "%s: Unable to write back subscription for file entry with %s"

    nop

    goto/32 :goto_b6

    nop

    nop

    nop

    nop

    :goto_fd
    invoke-static {v9}, Lsgj;->O(Ljava/lang/Object;)Lsui;

    move-result-object p0

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

    :goto_fe
    goto/16 :goto_1d

    nop

    nop

    nop

    :goto_ff
    goto/32 :goto_1c

    nop

    nop

    :goto_100
    const-string p1, "%s: Shared file not found, newFileKey = %s"

    nop

    nop

    goto/32 :goto_108

    nop

    nop

    nop

    :goto_101
    invoke-static {p1, v6, p0}, Lqbq;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_fd

    nop

    nop

    :goto_102
    iget-object v0, p1, Lpzt;->g:Lqaj;

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_103
    check-cast p0, Lpzt;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e4

    nop

    nop

    nop

    nop

    :goto_104
    invoke-virtual {p0}, Lpzt;->a()Lsui;

    move-result-object p0

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_105
    check-cast p1, Ljava/lang/Void;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    nop

    :goto_106
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    :goto_107
    const-string p1, "%s Clearing MDD since FilesMetadata failed or needs migration."

    nop

    nop

    nop

    goto/32 :goto_133

    nop

    nop

    nop

    nop

    nop

    :goto_108
    invoke-static {p1, v2, p0}, Lqbq;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_c2

    nop

    nop

    nop

    nop

    nop

    :goto_109
    invoke-interface {v1, v2, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_146

    nop

    nop

    nop

    :goto_10a
    new-instance v2, Lpxk;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10b
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :goto_10c
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10d
    check-cast p1, Ljava/io/IOException;

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

    :goto_10e
    const-string v0, "mdd_migrated_to_offroad"

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_10f
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    :goto_110
    invoke-static {p1, v0}, Lqbq;->h(Ljava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_142

    nop

    nop

    nop

    nop

    nop

    :goto_111
    move-object p1, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    :goto_112
    iget-object p0, p1, Lpzt;->k:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    :goto_113
    if-eqz v2, :cond_a

    nop

    goto/32 :goto_10c

    nop

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_114
    iget-object p1, p1, Lqah;->b:Lpxo;

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_115
    sget v0, Lqbq;->a:I

    nop

    goto/32 :goto_81

    nop

    nop

    :goto_116
    check-cast p0, Ljava/lang/Throwable;

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    :goto_117
    sget-object p0, Lsue;->a:Lsui;

    nop

    nop

    nop

    nop

    :goto_118
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_119
    iput-object p1, p0, Ltar;->d:Ljava/lang/Object;

    nop

    goto/32 :goto_d7

    nop

    nop

    :goto_11a
    check-cast p1, Lpzt;

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_11b
    new-instance p1, Lpmy;

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11c
    invoke-static {v0, v1, p0}, Lqrf;->r(Lsui;Lssx;Ljava/util/concurrent/Executor;)Lsui;

    move-result-object p0

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

    :goto_11d
    invoke-interface {v3}, Lpwh;->l()I

    move-result v3

    nop

    goto/32 :goto_cf

    nop

    nop

    nop

    nop

    :goto_11e
    new-instance v0, Lgte;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ef

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11f
    check-cast p1, Ljava/lang/Void;

    nop

    nop

    nop

    nop

    goto/32 :goto_f7

    nop

    nop

    :goto_120
    iget-object p0, p0, Lpzq;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    :goto_121
    new-instance p1, Lpzu;

    nop

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_122
    check-cast p1, Lpxb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_123
    check-cast p1, Ljava/lang/Boolean;

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

    :goto_124
    invoke-static {v7}, Lsgj;->O(Ljava/lang/Object;)Lsui;

    move-result-object p0

    nop

    nop

    nop

    nop

    :goto_125
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_126
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :pswitch_13
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_127
    invoke-static {p1, v6, p0}, Lqbq;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_be

    nop

    nop

    :goto_128
    if-eqz v0, :cond_b

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    :cond_b
    goto/32 :goto_115

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_129
    check-cast p1, Ljava/util/List;

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_12a
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_134

    nop

    nop

    nop

    :goto_12b
    check-cast p1, Ljava/lang/Void;

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    :goto_12c
    const-string v2, "DownloaderCallbackImpl"

    nop

    nop

    nop

    goto/32 :goto_f3

    nop

    nop

    nop

    nop

    :goto_12d
    sget-object p0, Lsue;->a:Lsui;

    nop

    goto/32 :goto_db

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12e
    goto :goto_125

    nop

    nop

    nop

    nop

    nop

    :goto_12f
    goto/32 :goto_124

    nop

    nop

    :goto_130
    check-cast p1, Lpzt;

    nop

    nop

    goto/32 :goto_102

    nop

    nop

    nop

    nop

    :goto_131
    sget-object p0, Lsue;->a:Lsui;

    nop

    :goto_132
    goto/32 :goto_e3

    nop

    nop

    nop

    :goto_133
    const-string v0, "MDDManager"

    nop

    nop

    goto/32 :goto_110

    nop

    nop

    nop

    nop

    nop

    :goto_134
    if-eqz p1, :cond_c

    nop

    goto/32 :goto_ff

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_120

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_135
    invoke-static {v1, v5, v0}, Lpuq;->af(Landroid/content/Context;Ljava/lang/String;Lrss;)Landroid/content/SharedPreferences;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_136
    check-cast p1, Lqah;

    nop

    nop

    nop

    nop

    goto/32 :goto_114

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_137
    if-eqz p1, :cond_d

    nop

    goto/32 :goto_bd

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_138
    goto/16 :goto_b2

    nop

    nop

    :goto_139
    goto/32 :goto_89

    nop

    nop

    :goto_13a
    iget-object v0, v0, Lqah;->j:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    :goto_13b
    const/4 v2, 0x6

    nop

    nop

    goto/32 :goto_f4

    nop

    nop

    :goto_13c
    invoke-virtual {p0}, Ltar;->c()Lpwf;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    :goto_13d
    iget-object v0, p1, Lpzt;->j:Lrss;

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

    :goto_13e
    invoke-interface {v0, v1}, Lqbn;->j(I)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_13f
    iget-object v0, v0, Lqah;->a:Landroid/content/Context;

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

    :goto_140
    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    :goto_141
    check-cast p1, Ljava/lang/Void;

    nop

    goto/32 :goto_121

    nop

    nop

    nop

    nop

    nop

    :goto_142
    check-cast p0, Lpzt;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_104

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_143
    check-cast v3, Lqak;

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_144
    invoke-static {p1}, Lsgj;->O(Ljava/lang/Object;)Lsui;

    move-result-object p0

    nop

    nop

    :goto_145
    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_146
    if-nez v3, :cond_e

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_13f

    nop

    nop

    :goto_147
    iget-object p0, p0, Lpzq;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_107

    nop

    nop

    nop

    nop

    :goto_148
    new-instance v1, Lpzq;

    nop

    nop

    nop

    nop

    goto/32 :goto_13b

    nop

    nop
.end method

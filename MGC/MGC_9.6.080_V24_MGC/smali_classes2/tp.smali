.class final Ltp;
.super Luar;
.source "PG"

# interfaces
.implements Lubo;


# instance fields
.field a:Ljava/lang/Object;

.field b:Ljava/lang/Object;

.field c:I

.field final synthetic d:Lrbh;

.field private synthetic e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lrbh;Ltzy;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    :goto_0
    invoke-direct {p0, p1, p2}, Luar;-><init>(ILtzy;)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    const/4 p1, 0x2

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

    :goto_3
    iput-object p1, p0, Ltp;->d:Lrbh;

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    goto/32 :goto_5

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, p2}, Lual;->c(Ljava/lang/Object;Ltzy;)Ltzy;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1
    check-cast p0, Ltp;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, p1}, Ltp;->bX(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-object p0

    nop

    nop

    nop

    nop

    :goto_4
    check-cast p2, Ltzy;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_5
    check-cast p1, Lufs;

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_6
    sget-object p1, Ltyg;->a:Ltyg;

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method public final bX(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    goto/32 :goto_135

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object v1, v0, Ltp;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_c4

    nop

    nop

    nop

    :goto_1
    check-cast v3, Lufs;

    nop

    nop

    nop

    nop

    goto/32 :goto_140

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v3, 0x1

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_3
    iput-object v12, v0, Ltp;->e:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_4
    move-object v2, v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_5
    check-cast v4, Le;

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual/range {v1 .. v6}, Lrbh;->w(Ljava/lang/String;Ljava/util/List;Lubk;Lufs;Ltzy;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_ba

    nop

    nop

    nop

    :goto_7
    check-cast v4, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_8
    move-object v3, v12

    nop

    nop

    :goto_9
    goto/32 :goto_124

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/16 :goto_f

    nop

    nop

    :pswitch_0
    goto/32 :goto_197

    nop

    nop

    nop

    nop

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    :goto_c
    goto/16 :goto_176

    nop

    nop

    :goto_d
    goto/32 :goto_b2

    nop

    nop

    :goto_e
    move-object v3, v12

    nop

    :goto_f
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-static/range {p1 .. p1}, Lrgw;->ak(Ljava/lang/Object;)V

    goto/32 :goto_c9

    nop

    nop

    nop

    nop

    :goto_11
    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto/32 :goto_89

    nop

    nop

    nop

    :goto_12
    if-ne v4, v7, :cond_0

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_87

    nop

    nop

    :goto_13
    check-cast v3, Le;

    nop

    goto/32 :goto_b5

    nop

    nop

    nop

    nop

    :goto_14
    invoke-static {v9, v14}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_15
    invoke-direct {v4, v2, v10, v1}, Lsn;-><init>(Lta;Ltzy;I)V

    goto/32 :goto_9a

    nop

    nop

    nop

    :goto_16
    iget-object v1, v0, Ltp;->d:Lrbh;

    nop

    nop

    goto/32 :goto_134

    nop

    nop

    nop

    nop

    nop

    :goto_17
    new-instance v0, Ljava/lang/IllegalStateException;

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iput-object v11, v0, Ltp;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_19
    check-cast v4, Landroidx/wear/ambient/AmbientDelegate;

    nop

    nop

    nop

    goto/32 :goto_183

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object v4, v0, Ltp;->d:Lrbh;

    nop

    goto/32 :goto_18e

    nop

    nop

    nop

    :goto_1b
    goto/16 :goto_15b

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_181

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    new-instance v5, Lnb;

    nop

    goto/32 :goto_15f

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iget-object v1, v0, Ltp;->d:Lrbh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    nop

    nop

    goto/32 :goto_11c

    nop

    nop

    nop

    nop

    nop

    :goto_20
    instance-of v4, v13, Ltd;

    nop

    nop

    nop

    nop

    goto/32 :goto_e3

    nop

    nop

    nop

    nop

    nop

    :goto_21
    return-object v7

    nop

    nop

    nop

    :pswitch_1
    goto/32 :goto_c8

    nop

    nop

    nop

    nop

    :goto_22
    iget-object v1, v1, Lrbh;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_24
    goto/32 :goto_dd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iget-object v2, v0, Ltp;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_e0

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iget-object v1, v0, Ltp;->d:Lrbh;

    nop

    nop

    nop

    goto/32 :goto_17c

    nop

    nop

    :goto_27
    goto :goto_2a

    nop

    nop

    nop

    :pswitch_2
    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {v4, v5, v0}, Lrbh;->v(Ljava/util/List;Ltzy;)Ljava/lang/Object;

    move-result-object v4

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

    :goto_29
    goto/16 :goto_157

    nop

    nop

    :goto_2a
    goto/32 :goto_192

    nop

    nop

    :goto_2b
    invoke-interface {v2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_2c
    const-string v1, "Check failed."

    nop

    nop

    nop

    goto/32 :goto_13c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    iget-object v4, v0, Ltp;->d:Lrbh;

    nop

    nop

    goto/32 :goto_185

    nop

    nop

    :goto_2e
    if-nez v15, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_84

    nop

    nop

    :goto_2f
    iget-object v2, v0, Ltp;->d:Lrbh;

    nop

    nop

    goto/32 :goto_f4

    nop

    nop

    :goto_30
    goto/32 :goto_b4

    nop

    nop

    :goto_31
    goto/32 :goto_13d

    nop

    nop

    nop

    nop

    nop

    :goto_32
    iget-object v2, v4, Ltd;->a:Ltr;

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    :goto_33
    invoke-static {v1, v3}, Lrkm;->aL(Ljava/util/List;Lubk;)V

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_34
    iget-object v4, v0, Ltp;->d:Lrbh;

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    iget-object v1, v0, Ltp;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_f8

    nop

    nop

    nop

    nop

    :goto_36
    iput-object v1, v0, Ltp;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    :goto_37
    monitor-exit v3

    nop

    goto/32 :goto_16f

    nop

    nop

    nop

    nop

    nop

    :goto_38
    invoke-static {v6}, Lkg;->A(Ltr;)V

    :goto_39
    goto/32 :goto_196

    nop

    nop

    nop

    nop

    :goto_3a
    iget-object v2, v0, Ltp;->e:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_3b
    const/4 v2, 0x2

    nop

    nop

    goto/32 :goto_d8

    nop

    nop

    nop

    :goto_3c
    move-object v2, v11

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

    :goto_3d
    const/4 v2, -0x1

    nop

    nop

    :goto_3e
    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_3f
    iput-object v11, v0, Ltp;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_dc

    nop

    nop

    :goto_40
    check-cast v4, Landroidx/wear/ambient/AmbientDelegate;

    nop

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    :goto_41
    iget-object v4, v0, Ltp;->d:Lrbh;

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

    :goto_42
    check-cast v5, Ltd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_189

    nop

    nop

    nop

    :goto_43
    goto/16 :goto_f9

    nop

    nop

    nop

    :pswitch_3
    goto/32 :goto_35

    nop

    nop

    :goto_44
    invoke-static/range {p1 .. p1}, Lrgw;->ak(Ljava/lang/Object;)V

    goto/32 :goto_117

    nop

    nop

    nop

    :goto_45
    iget-object v1, v4, Ltd;->a:Ltr;

    nop

    nop

    goto/32 :goto_131

    nop

    nop

    :goto_46
    iput v3, v0, Ltp;->c:I

    nop

    nop

    goto/32 :goto_141

    nop

    nop

    nop

    nop

    nop

    :goto_47
    check-cast v3, Lufs;

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_48
    iput-object v1, v0, Ltp;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_132

    nop

    nop

    nop

    nop

    :goto_49
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_4a
    goto/16 :goto_c0

    nop

    nop

    nop

    nop

    :goto_4b
    goto/32 :goto_bf

    nop

    nop

    nop

    :goto_4c
    if-eqz v9, :cond_2

    nop

    nop

    goto/32 :goto_f0

    nop

    :cond_2
    goto/32 :goto_ef

    nop

    nop

    nop

    :goto_4d
    goto/16 :goto_9

    nop

    nop

    :pswitch_4
    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    check-cast v1, Ljava/util/ArrayList;

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

    :goto_4f
    iput-object v3, v0, Ltp;->e:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_146

    nop

    nop

    nop

    nop

    :goto_50
    return-object v7

    nop

    nop

    nop

    nop

    :goto_51
    goto/32 :goto_174

    nop

    nop

    nop

    nop

    :goto_52
    check-cast v1, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_105

    nop

    nop

    nop

    :goto_53
    check-cast v4, Ltd;

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    :goto_54
    new-instance v4, Lnb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    :goto_55
    iget-object v1, v0, Ltp;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_19f

    nop

    nop

    :goto_56
    check-cast v2, Lufs;

    nop

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    nop

    :goto_57
    check-cast v6, Ltd;

    nop

    nop

    nop

    goto/32 :goto_194

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_58
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    nop

    :goto_59
    check-cast v5, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    goto/32 :goto_150

    nop

    nop

    :goto_5a
    iget-object v2, v0, Ltp;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_137

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    if-gez v2, :cond_3

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

    nop

    :cond_3
    goto/32 :goto_198

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    move-object v1, v13

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    :goto_5d
    check-cast v4, Ltd;

    nop

    nop

    goto/32 :goto_e2

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    move-object v3, v12

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_5f
    new-instance v6, Ljava/util/ArrayList;

    nop

    goto/32 :goto_14d

    nop

    nop

    nop

    nop

    nop

    :goto_60
    if-eq v1, v7, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15d

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_bd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_61
    iget-object v5, v0, Ltp;->d:Lrbh;

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :goto_62
    check-cast v3, Lufs;

    nop

    goto/32 :goto_170

    nop

    nop

    nop

    nop

    nop

    :goto_63
    iget-object v1, v1, Lrbh;->g:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_14c

    nop

    nop

    nop

    :goto_64
    move-object v1, v11

    nop

    nop

    nop

    nop

    goto/32 :goto_121

    nop

    nop

    nop

    nop

    :goto_65
    move-object v3, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_e8

    nop

    nop

    nop

    :goto_66
    iget-object v1, v1, Lrbh;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_67
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    nop

    goto/32 :goto_d5

    nop

    nop

    :goto_68
    instance-of v5, v5, Lsk;

    nop

    nop

    nop

    nop

    goto/32 :goto_17d

    nop

    nop

    nop

    :goto_69
    instance-of v4, v4, Ltb;

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    :goto_6a
    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    iget-object v5, v4, Ltd;->a:Ltr;

    nop

    nop

    nop

    goto/32 :goto_1b1

    nop

    nop

    nop

    nop

    :goto_6c
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_6d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    :goto_6e
    iget-object v2, v0, Ltp;->d:Lrbh;

    nop

    goto/32 :goto_54

    nop

    nop

    :goto_6f
    goto/16 :goto_15b

    nop

    :goto_70
    goto/32 :goto_32

    nop

    nop

    :goto_71
    invoke-static {v2, v4}, Lrkm;->aL(Ljava/util/List;Lubk;)V

    goto/32 :goto_1ae

    nop

    nop

    :goto_72
    if-eq v4, v7, :cond_5

    nop

    nop

    nop

    goto/32 :goto_fd

    nop

    nop

    :cond_5
    goto/32 :goto_16d

    nop

    nop

    :goto_73
    move-object v5, v12

    nop

    nop

    goto/32 :goto_110

    nop

    nop

    :goto_74
    new-instance v5, Lsn;

    nop

    nop

    nop

    nop

    goto/32 :goto_195

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_75
    iput v8, v0, Ltp;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1a4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_76
    const/4 v9, 0x4

    nop

    goto/32 :goto_1b0

    nop

    nop

    :goto_77
    invoke-virtual/range {v16 .. v16}, Landroidx/wear/ambient/AmbientDelegate;->j()Ljava/lang/String;

    move-result-object v9

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_78
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_79
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    :goto_7a
    if-eq v4, v7, :cond_6

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_175

    nop

    nop

    :goto_7b
    if-ne v1, v7, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_18d

    nop

    :cond_7
    goto/32 :goto_18c

    nop

    nop

    nop

    :goto_7c
    iget-object v1, v1, Ltl;->a:Lou;

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    :goto_7d
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    nop

    nop

    :goto_7e
    goto/32 :goto_c5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    invoke-virtual {v4, v1}, Ltr;->a(Lou;)V

    goto/32 :goto_128

    nop

    nop

    nop

    :goto_80
    move-object v2, v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    :goto_81
    move-object v2, v3

    nop

    goto/32 :goto_14e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_82
    invoke-static/range {p1 .. p1}, Lrgw;->ak(Ljava/lang/Object;)V

    goto/32 :goto_169

    nop

    nop

    nop

    nop

    nop

    :goto_83
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ec

    nop

    nop

    :goto_84
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a6

    nop

    nop

    nop

    nop

    :goto_85
    goto :goto_7e

    nop

    nop

    :goto_86
    goto/32 :goto_101

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_87
    goto/16 :goto_1c

    nop

    nop

    nop

    :goto_88
    goto/32 :goto_21

    nop

    nop

    :goto_89
    goto/16 :goto_24

    nop

    nop

    nop

    :goto_8a
    goto/32 :goto_1a1

    nop

    nop

    nop

    :goto_8b
    invoke-direct {v4, v6, v5}, Lnb;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_9c

    nop

    nop

    nop

    :goto_8c
    check-cast v2, Le;

    nop

    nop

    goto/32 :goto_11b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8d
    iget-object v4, v4, Lrbh;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_171

    nop

    nop

    nop

    nop

    nop

    :goto_8e
    iget-object v1, v0, Ltp;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_184

    nop

    nop

    nop

    nop

    :goto_8f
    move-object v4, v13

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

    :goto_90
    check-cast v1, Ljava/util/Iterator;

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_91
    iget-object v2, v2, Lrbh;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_92
    iget-object v2, v0, Ltp;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_16a

    nop

    nop

    :goto_93
    const/4 v9, 0x4

    nop

    goto/32 :goto_94

    nop

    nop

    :goto_94
    const/4 v10, 0x0

    nop

    nop

    nop

    packed-switch v1, :pswitch_data_0

    goto/32 :goto_12b

    nop

    nop

    nop

    nop

    nop

    :goto_95
    goto/16 :goto_119

    nop

    nop

    nop

    nop

    :goto_96
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_97
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v2

    nop

    nop

    goto/32 :goto_ce

    nop

    nop

    nop

    :goto_98
    move-object v2, v10

    nop

    nop

    nop

    nop

    nop

    :goto_99
    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    nop

    :goto_9a
    invoke-static {v12, v10, v3, v4, v1}, Lucd;->x(Lufs;Luad;ILubo;I)Lugy;

    goto/32 :goto_14b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9b
    monitor-exit v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9c
    iget-object v2, v2, Lrbh;->e:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9d
    iget-object v4, v1, Ltl;->b:Landroidx/wear/ambient/AmbientDelegate;

    nop

    nop

    nop

    nop

    goto/32 :goto_106

    nop

    nop

    nop

    :goto_9e
    if-nez v4, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_cf

    nop

    nop

    :cond_8
    goto/32 :goto_138

    nop

    nop

    nop

    :goto_9f
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_a0
    if-nez v2, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_be

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_c1

    nop

    nop

    :goto_a1
    move-object v13, v1

    nop

    nop

    nop

    goto/32 :goto_147

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a2
    move-object v2, v11

    nop

    nop

    nop

    nop

    goto/32 :goto_fc

    nop

    nop

    nop

    :goto_a3
    invoke-static/range {p1 .. p1}, Lrgw;->ak(Ljava/lang/Object;)V

    goto/32 :goto_122

    nop

    nop

    nop

    :goto_a4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_a5
    const/4 v1, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    :goto_a6
    invoke-interface {v2, v6}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    :goto_a7
    iget-object v1, v1, Lrbh;->c:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_11a

    nop

    nop

    nop

    :goto_a8
    check-cast v3, Lufs;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_a9
    iput-object v3, v0, Ltp;->e:Ljava/lang/Object;

    nop

    goto/32 :goto_115

    nop

    nop

    nop

    nop

    :goto_aa
    if-nez v4, :cond_a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_176

    nop

    :cond_a
    goto/32 :goto_cb

    nop

    nop

    nop

    :goto_ab
    move-object v2, v10

    nop

    nop

    nop

    nop

    :goto_ac
    goto/32 :goto_155

    nop

    nop

    :goto_ad
    if-nez v3, :cond_b

    nop

    goto/32 :goto_193

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_178

    nop

    nop

    nop

    nop

    :goto_ae
    check-cast v2, Landroidx/wear/ambient/AmbientDelegate;

    nop

    nop

    nop

    nop

    goto/32 :goto_19b

    nop

    nop

    nop

    nop

    :goto_af
    goto/16 :goto_99

    nop

    nop

    nop

    :goto_b0
    goto/32 :goto_98

    nop

    nop

    :goto_b1
    if-nez v3, :cond_c

    nop

    nop

    goto/32 :goto_154

    nop

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b2
    move-object v4, v13

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

    nop

    nop

    :goto_b3
    return-object v7

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_7
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_5
        :pswitch_8
    .end packed-switch

    :goto_b4
    goto/32 :goto_16c

    nop

    nop

    nop

    nop

    nop

    :goto_b5
    instance-of v3, v3, Lta;

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    nop

    :goto_b6
    check-cast v13, Le;

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_b7
    iget-object v5, v2, Lta;->a:Landroidx/wear/ambient/AmbientDelegate;

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    :goto_b8
    invoke-static {v12, v10, v3, v5, v1}, Lucd;->x(Lufs;Luad;ILubo;I)Lugy;

    goto/32 :goto_95

    nop

    nop

    nop

    :goto_b9
    iget-object v1, v0, Ltp;->d:Lrbh;

    nop

    nop

    nop

    nop

    goto/32 :goto_d7

    nop

    nop

    nop

    :goto_ba
    if-ne v1, v7, :cond_d

    nop

    goto/32 :goto_12e

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_bb
    if-nez v4, :cond_e

    nop

    nop

    nop

    goto/32 :goto_1ab

    nop

    nop

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_10e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bc
    check-cast v4, Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_1ad

    nop

    nop

    nop

    nop

    nop

    :goto_bd
    return-object v7

    nop

    :goto_be
    goto/32 :goto_144

    nop

    nop

    nop

    nop

    :goto_bf
    move-object v2, v10

    nop

    :goto_c0
    goto/32 :goto_ae

    nop

    nop

    :goto_c1
    move-object v4, v11

    nop

    nop

    nop

    goto/32 :goto_bc

    nop

    nop

    nop

    :goto_c2
    instance-of v13, v6, Ltd;

    nop

    goto/32 :goto_1a3

    nop

    nop

    :goto_c3
    check-cast v3, Lezz;

    nop

    nop

    goto/32 :goto_13e

    nop

    nop

    nop

    nop

    :goto_c4
    iput v9, v0, Ltp;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_19a

    nop

    nop

    nop

    :goto_c5
    iget-object v14, v2, Ltr;->a:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c6
    iget-object v2, v0, Ltp;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_df

    nop

    nop

    :goto_c7
    check-cast v1, Le;

    nop

    nop

    nop

    nop

    goto/32 :goto_130

    nop

    nop

    nop

    nop

    :goto_c8
    iget-object v1, v0, Ltp;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_c7

    nop

    nop

    :goto_c9
    goto/16 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :pswitch_5
    goto/32 :goto_8e

    nop

    nop

    nop

    :goto_ca
    iget v1, v0, Ltp;->c:I

    nop

    nop

    goto/32 :goto_14f

    nop

    nop

    :goto_cb
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    goto/32 :goto_18f

    nop

    nop

    :goto_cc
    iget-object v1, v1, Lrbh;->e:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_cd
    invoke-interface {v2}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_111

    nop

    nop

    nop

    nop

    :goto_ce
    invoke-interface {v11, v2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    :goto_cf
    goto/32 :goto_cd

    nop

    nop

    :goto_d0
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_162

    nop

    nop

    nop

    nop

    :goto_d1
    throw v0

    nop

    nop

    nop

    nop

    nop

    :goto_d2
    goto/32 :goto_b3

    nop

    nop

    nop

    nop

    nop

    :goto_d3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_173

    nop

    nop

    nop

    nop

    nop

    :goto_d4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_167

    nop

    nop

    nop

    nop

    nop

    :goto_d5
    if-nez v4, :cond_f

    nop

    nop

    nop

    nop

    goto/32 :goto_10d

    nop

    nop

    :cond_f
    goto/32 :goto_1ac

    nop

    nop

    nop

    nop

    nop

    :goto_d6
    iput v5, v0, Ltp;->c:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ee

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d7
    iget-object v1, v1, Lrbh;->e:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_d8
    iput v2, v0, Ltp;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_127

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d9
    goto/16 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_da
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_db
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    goto/32 :goto_142

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_dc
    iput-object v13, v0, Ltp;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_133

    nop

    nop

    nop

    nop

    nop

    :goto_dd
    move-object v1, v2

    nop

    nop

    nop

    goto/32 :goto_15a

    nop

    nop

    nop

    :goto_de
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_103

    nop

    nop

    nop

    :goto_df
    iget-object v3, v0, Ltp;->e:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    :goto_e0
    iget-object v3, v0, Ltp;->e:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_e1
    iput-object v13, v0, Ltp;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_d6

    nop

    nop

    nop

    :goto_e2
    iget-object v4, v4, Ltd;->a:Ltr;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e3
    if-nez v4, :cond_10

    nop

    nop

    nop

    goto/32 :goto_f7

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_8f

    nop

    nop

    :goto_e4
    goto/16 :goto_15d

    nop

    nop

    nop

    nop

    :goto_e5
    goto/32 :goto_d3

    nop

    nop

    nop

    nop

    :goto_e6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    nop

    goto/32 :goto_159

    nop

    nop

    :goto_e7
    iget-object v1, v0, Ltp;->d:Lrbh;

    nop

    goto/32 :goto_160

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e8
    check-cast v3, Landroidx/wear/ambient/AmbientDelegate;

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

    :goto_e9
    iput-object v11, v0, Ltp;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_e1

    nop

    nop

    nop

    :goto_ea
    if-eqz v3, :cond_11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e5

    nop

    nop

    :cond_11
    goto/32 :goto_e4

    nop

    nop

    :goto_eb
    iget-object v1, v0, Ltp;->d:Lrbh;

    nop

    goto/32 :goto_10f

    nop

    nop

    :goto_ec
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    nop

    nop

    goto/32 :goto_ea

    nop

    nop

    nop

    nop

    :goto_ed
    if-ne v4, v2, :cond_12

    nop

    goto/32 :goto_152

    nop

    nop

    nop

    :cond_12
    goto/32 :goto_125

    nop

    nop

    nop

    nop

    :goto_ee
    move-object v2, v14

    nop

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    :goto_ef
    invoke-interface {v6, v15}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :goto_f0
    goto/32 :goto_102

    nop

    nop

    nop

    nop

    :goto_f1
    instance-of v4, v2, Ltc;

    nop

    nop

    goto/32 :goto_bb

    nop

    nop

    nop

    :goto_f2
    check-cast v4, Landroidx/wear/ambient/AmbientDelegate;

    nop

    nop

    goto/32 :goto_1a7

    nop

    nop

    :goto_f3
    move-object v11, v1

    nop

    nop

    nop

    goto/32 :goto_13f

    nop

    nop

    :goto_f4
    iget-object v2, v2, Lrbh;->c:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_118

    nop

    nop

    nop

    nop

    nop

    :goto_f5
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_11d

    nop

    nop

    nop

    nop

    :goto_f6
    throw v0

    nop

    nop

    nop

    nop

    :goto_f7
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f8
    iget-object v2, v0, Ltp;->e:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    :goto_f9
    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_fa
    iget-object v2, v0, Ltp;->e:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_112

    nop

    nop

    nop

    :goto_fb
    iput v3, v0, Ltp;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_188

    nop

    nop

    :goto_fc
    move-object v3, v12

    nop

    nop

    nop

    nop

    nop

    :goto_fd
    goto/32 :goto_d4

    nop

    nop

    :goto_fe
    check-cast v2, Lta;

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    nop

    :goto_ff
    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    nop

    goto/32 :goto_164

    nop

    nop

    nop

    nop

    :goto_100
    sget-object v7, Luag;->a:Luag;

    nop

    nop

    nop

    goto/32 :goto_ca

    nop

    nop

    nop

    nop

    nop

    :goto_101
    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    nop

    nop

    goto/32 :goto_18b

    nop

    nop

    :goto_102
    const/4 v9, 0x4

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    :goto_103
    if-lez v0, :cond_13

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :cond_13
    goto/32 :goto_30

    nop

    :goto_104
    if-ne v3, v7, :cond_14

    nop

    nop

    nop

    nop

    goto/32 :goto_d2

    nop

    nop

    nop

    nop

    :cond_14
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_105
    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/32 :goto_12d

    nop

    nop

    nop

    :goto_106
    if-nez v4, :cond_15

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

    :cond_15
    goto/32 :goto_19c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_107
    new-instance v1, Ljava/util/ArrayList;

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

    :goto_108
    check-cast v2, Lufs;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_107

    nop

    nop

    nop

    nop

    :goto_109
    goto/16 :goto_15b

    nop

    nop

    nop

    nop

    nop

    :goto_10a
    goto/32 :goto_e7

    nop

    nop

    nop

    nop

    :goto_10b
    invoke-virtual {v0}, Landroidx/wear/ambient/AmbientDelegate;->j()Ljava/lang/String;

    goto/32 :goto_190

    nop

    nop

    nop

    nop

    :goto_10c
    goto/16 :goto_1af

    nop

    nop

    :goto_10d
    goto/32 :goto_6c

    nop

    nop

    nop

    :goto_10e
    move-object v1, v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_10f
    iget-object v3, v4, Ltd;->b:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_16b

    nop

    nop

    :goto_110
    move-object/from16 v6, p0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_111
    if-nez v4, :cond_16

    nop

    nop

    nop

    nop

    goto/32 :goto_da

    nop

    nop

    :cond_16
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_112
    check-cast v2, Lufs;

    nop

    goto/32 :goto_156

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_113
    return-object v7

    nop

    nop

    nop

    nop

    :goto_114
    goto/32 :goto_80

    nop

    nop

    nop

    :goto_115
    iput-object v2, v0, Ltp;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_116
    iget-object v2, v0, Ltp;->d:Lrbh;

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    :goto_117
    goto/16 :goto_fd

    nop

    nop

    nop

    nop

    :pswitch_6
    goto/32 :goto_191

    nop

    nop

    nop

    :goto_118
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    nop

    nop

    nop

    :goto_119
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_11a
    invoke-interface {v1}, Ljava/util/Set;->clear()V

    goto/32 :goto_b9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11b
    if-nez v2, :cond_17

    nop

    nop

    nop

    nop

    goto/32 :goto_1ab

    nop

    nop

    nop

    :cond_17
    goto/32 :goto_f1

    nop

    nop

    nop

    :goto_11c
    if-nez v4, :cond_18

    nop

    nop

    goto/32 :goto_96

    nop

    :cond_18
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_11d
    move-object v3, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_11e
    iget-object v1, v0, Ltp;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_fa

    nop

    nop

    nop

    :goto_11f
    move-object v2, v1

    nop

    goto/32 :goto_108

    nop

    nop

    :goto_120
    check-cast v1, Le;

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    :goto_121
    move-object v2, v12

    nop

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    :goto_122
    goto/16 :goto_15b

    nop

    nop

    nop

    nop

    :pswitch_7
    goto/32 :goto_11e

    nop

    nop

    nop

    :goto_123
    new-instance v4, Lsn;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_124
    check-cast v1, Ltl;

    nop

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    nop

    :goto_125
    add-int/lit8 v4, v4, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_151

    nop

    nop

    nop

    nop

    :goto_126
    iget-object v1, v1, Lrbh;->c:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_153

    nop

    nop

    nop

    nop

    nop

    :goto_127
    invoke-virtual {v1, v0}, Landroidx/wear/ambient/AmbientDelegate;->i(Ltzy;)Ljava/lang/Object;

    move-result-object v1

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_128
    move-object v1, v2

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_129
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_136

    nop

    nop

    nop

    :goto_12a
    iput-object v2, v0, Ltp;->e:Ljava/lang/Object;

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

    :goto_12b
    iget-object v1, v0, Ltp;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_177

    nop

    nop

    nop

    nop

    :goto_12c
    invoke-virtual {v3, v1, v0}, Lrbh;->x(Ljava/util/List;Ltzy;)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    goto/32 :goto_104

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12d
    goto/16 :goto_176

    nop

    nop

    nop

    nop

    :goto_12e
    goto/32 :goto_50

    nop

    nop

    nop

    :goto_12f
    invoke-direct {v5, v4, v10, v8, v10}, Lsn;-><init>(Landroidx/wear/ambient/AmbientDelegate;Ltzy;I[B)V

    goto/32 :goto_19d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_130
    iget-object v2, v0, Ltp;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_15e

    nop

    nop

    :goto_131
    iput-object v12, v0, Ltp;->e:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_132
    iput-object v10, v0, Ltp;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_133
    const/16 v3, 0x9

    nop

    nop

    nop

    goto/32 :goto_fb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_134
    new-instance v3, Lnb;

    nop

    goto/32 :goto_161

    nop

    nop

    nop

    nop

    nop

    :goto_135
    const v0, 0x18

    nop

    goto/32 :goto_158

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_136
    check-cast v6, Le;

    nop

    goto/32 :goto_c2

    nop

    nop

    nop

    nop

    :goto_137
    iget-object v3, v0, Ltp;->e:Ljava/lang/Object;

    nop

    goto/32 :goto_143

    nop

    nop

    :goto_138
    invoke-interface {v2}, Ljava/util/ListIterator;->nextIndex()I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_d9

    nop

    nop

    nop

    nop

    :goto_139
    if-nez v1, :cond_19

    nop

    nop

    nop

    goto/32 :goto_b0

    nop

    :cond_19
    goto/32 :goto_fe

    nop

    nop

    nop

    nop

    :goto_13a
    invoke-static {v3, v14}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    nop

    nop

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

    :goto_13b
    const/16 v6, 0x8

    nop

    goto/32 :goto_17a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13c
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_d1

    nop

    nop

    nop

    nop

    nop

    :goto_13d
    move-object/from16 v0, p0

    nop

    nop

    goto/32 :goto_100

    nop

    nop

    nop

    nop

    :goto_13e
    iget-object v3, v3, Lezz;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13f
    move-object v12, v2

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_140
    invoke-static/range {p1 .. p1}, Lrgw;->ak(Ljava/lang/Object;)V

    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_141
    iget-object v3, v0, Ltp;->d:Lrbh;

    nop

    goto/32 :goto_12c

    nop

    nop

    nop

    :goto_142
    if-nez v2, :cond_1a

    nop

    nop

    goto/32 :goto_179

    nop

    nop

    nop

    nop

    :cond_1a
    goto/32 :goto_f5

    nop

    nop

    nop

    :goto_143
    check-cast v3, Lufs;

    nop

    goto/32 :goto_17f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_144
    invoke-static {v11}, Lrkm;->au(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    :goto_145
    if-eqz v2, :cond_1b

    nop

    nop

    goto/32 :goto_10a

    nop

    nop

    nop

    nop

    nop

    :cond_1b
    goto/32 :goto_116

    nop

    nop

    nop

    nop

    nop

    :goto_146
    iput-object v2, v0, Ltp;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_165

    nop

    nop

    nop

    nop

    nop

    :goto_147
    move-object/from16 v1, p1

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_148
    invoke-static {v4, v5}, Lrkm;->aL(Ljava/util/List;Lubk;)V

    goto/32 :goto_123

    nop

    nop

    :goto_149
    iget-object v1, v0, Ltp;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    :goto_14a
    goto/32 :goto_120

    nop

    nop

    :goto_14b
    iget-object v1, v2, Lta;->a:Landroidx/wear/ambient/AmbientDelegate;

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

    :goto_14c
    move-object v3, v1

    nop

    goto/32 :goto_c3

    nop

    nop

    nop

    :goto_14d
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_187

    nop

    nop

    :goto_14e
    const/4 v9, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_109

    nop

    nop

    nop

    nop

    :goto_14f
    const/4 v8, 0x5

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    nop

    :goto_150
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    goto/32 :goto_129

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_151
    goto/16 :goto_199

    nop

    :goto_152
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_153
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    :goto_154
    goto/32 :goto_e6

    nop

    nop

    :goto_155
    instance-of v1, v2, Lta;

    nop

    goto/32 :goto_139

    nop

    nop

    nop

    nop

    :goto_156
    invoke-static/range {p1 .. p1}, Lrgw;->ak(Ljava/lang/Object;)V

    :goto_157
    goto/32 :goto_f3

    nop

    nop

    nop

    nop

    :goto_158
    const v1, 0x6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_168

    nop

    nop

    :goto_159
    if-nez v2, :cond_1c

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :cond_1c
    goto/32 :goto_6d

    nop

    nop

    :goto_15a
    move-object v2, v3

    nop

    nop

    nop

    nop

    nop

    :goto_15b
    goto/32 :goto_12a

    nop

    nop

    nop

    :goto_15c
    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_15d
    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    :goto_15e
    iget-object v3, v0, Ltp;->e:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_15f
    invoke-direct {v5, v2, v9}, Lnb;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_186

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_160
    iget-object v2, v4, Ltd;->a:Ltr;

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_161
    invoke-direct {v3, v2, v8}, Lnb;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_cc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_162
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_166

    nop

    nop

    nop

    nop

    :goto_163
    if-eqz v1, :cond_1d

    nop

    nop

    nop

    goto/32 :goto_114

    nop

    nop

    :cond_1d
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_164
    if-nez v4, :cond_1e

    nop

    goto/32 :goto_172

    nop

    nop

    nop

    nop

    :cond_1e
    goto/32 :goto_34

    nop

    nop

    nop

    :goto_165
    iput-object v1, v0, Ltp;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_13b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_166
    move-object v13, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_b6

    nop

    nop

    nop

    nop

    nop

    :goto_167
    if-nez v4, :cond_1f

    nop

    nop

    goto/32 :goto_16e

    nop

    nop

    nop

    nop

    nop

    :cond_1f
    goto/32 :goto_17e

    nop

    nop

    nop

    :goto_168
    add-int v0, v0, v1

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

    nop

    nop

    :goto_169
    iget-object v1, v0, Ltp;->e:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11f

    nop

    nop

    :goto_16a
    iget-object v3, v0, Ltp;->e:Ljava/lang/Object;

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16b
    iget-object v4, v4, Ltd;->d:Lubk;

    nop

    nop

    goto/32 :goto_1a5

    nop

    nop

    nop

    nop

    :goto_16c
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_16d
    return-object v7

    nop

    nop

    nop

    nop

    nop

    :goto_16e
    goto/32 :goto_19e

    nop

    nop

    nop

    nop

    :goto_16f
    iget-object v1, v0, Ltp;->d:Lrbh;

    nop

    nop

    goto/32 :goto_126

    nop

    nop

    nop

    nop

    nop

    :goto_170
    invoke-static/range {p1 .. p1}, Lrgw;->ak(Ljava/lang/Object;)V

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_171
    invoke-interface {v4, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :goto_172
    goto/32 :goto_41

    nop

    nop

    nop

    :goto_173
    check-cast v0, Landroidx/wear/ambient/AmbientDelegate;

    nop

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

    nop

    :goto_174
    iget-boolean v1, v4, Ltd;->c:Z

    nop

    nop

    goto/32 :goto_163

    nop

    nop

    nop

    nop

    :goto_175
    return-object v7

    nop

    nop

    nop

    nop

    nop

    :goto_176
    goto/32 :goto_1a8

    nop

    nop

    nop

    nop

    :goto_177
    goto/16 :goto_14a

    nop

    :pswitch_8
    goto/32 :goto_149

    nop

    nop

    nop

    nop

    nop

    :goto_178
    goto/16 :goto_ac

    nop

    nop

    nop

    nop

    :goto_179
    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    :goto_17a
    iput v6, v0, Ltp;->c:I

    nop

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

    nop

    :goto_17b
    check-cast v2, Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_d0

    nop

    nop

    nop

    nop

    nop

    :goto_17c
    iget-object v1, v1, Lrbh;->c:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    :goto_17d
    if-eqz v5, :cond_20

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    :cond_20
    goto/32 :goto_15c

    nop

    nop

    nop

    :goto_17e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

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

    :goto_17f
    invoke-static/range {p1 .. p1}, Lrgw;->ak(Ljava/lang/Object;)V

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_180
    invoke-virtual {v3}, Landroidx/wear/ambient/AmbientDelegate;->j()Ljava/lang/String;

    move-result-object v3

    nop

    goto/32 :goto_13a

    nop

    nop

    nop

    nop

    nop

    :goto_181
    move-object v4, v2

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_182
    move-object v5, v11

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_183
    new-instance v5, Lsn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12f

    nop

    nop

    nop

    nop

    nop

    :goto_184
    check-cast v1, Le;

    nop

    goto/32 :goto_c6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_185
    iget-object v4, v4, Lrbh;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_1a0

    nop

    nop

    nop

    nop

    :goto_186
    iget-object v4, v4, Lrbh;->e:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_148

    nop

    nop

    nop

    :goto_187
    iget-object v5, v5, Lrbh;->c:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    :goto_188
    invoke-virtual {v2, v1}, Landroidx/wear/ambient/AmbientDelegate;->l(Ltr;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    :goto_189
    iget-object v5, v5, Ltd;->b:Ljava/util/List;

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_18a
    check-cast v16, Landroidx/wear/ambient/AmbientDelegate;

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    :goto_18b
    const/4 v5, 0x6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_145

    nop

    nop

    nop

    :goto_18c
    goto/16 :goto_114

    nop

    nop

    nop

    nop

    :goto_18d
    goto/32 :goto_113

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18e
    move-object v5, v1

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18f
    check-cast v4, Landroidx/wear/ambient/AmbientDelegate;

    nop

    nop

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    :goto_190
    check-cast v2, Ltc;

    nop

    nop

    nop

    goto/32 :goto_1aa

    nop

    nop

    nop

    :goto_191
    iget-object v1, v0, Ltp;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_192
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    nop

    nop

    nop

    nop

    :goto_193
    goto/32 :goto_db

    nop

    nop

    :goto_194
    iget-object v6, v6, Ltd;->a:Ltr;

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_195
    invoke-direct {v5, v4, v10, v9}, Lsn;-><init>(Landroidx/wear/ambient/AmbientDelegate;Ltzy;I)V

    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    nop

    :goto_196
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto/32 :goto_ed

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_197
    iget-object v1, v0, Ltp;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    nop

    :goto_198
    move v4, v3

    nop

    nop

    :goto_199
    goto/32 :goto_182

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19a
    invoke-virtual {v4, v0}, Landroidx/wear/ambient/AmbientDelegate;->i(Ltzy;)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    :goto_19b
    if-eqz v2, :cond_21

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :cond_21
    goto/32 :goto_eb

    nop

    nop

    nop

    :goto_19c
    iget-object v1, v0, Ltp;->d:Lrbh;

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_19d
    invoke-static {v12, v10, v3, v5, v1}, Lucd;->x(Lufs;Luad;ILubo;I)Lugy;

    goto/32 :goto_10c

    nop

    nop

    nop

    :goto_19e
    iget-object v1, v0, Ltp;->d:Lrbh;

    nop

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19f
    check-cast v1, Ljava/util/Iterator;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_1a0
    iget-object v5, v2, Lta;->a:Landroidx/wear/ambient/AmbientDelegate;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ff

    nop

    nop

    nop

    nop

    :goto_1a1
    move-object v2, v11

    nop

    nop

    nop

    goto/32 :goto_17b

    nop

    nop

    nop

    nop

    nop

    :goto_1a2
    monitor-enter v3

    nop

    nop

    :try_start_0
    new-instance v6, Loz;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v6, v14}, Loz;-><init>(Ljava/lang/String;)V

    check-cast v1, Lezz;

    nop

    iget-object v1, v1, Lezz;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    invoke-interface {v1, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_1a3
    if-nez v13, :cond_22

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :cond_22
    goto/32 :goto_57

    nop

    nop

    nop

    :goto_1a4
    invoke-virtual {v4, v0}, Landroidx/wear/ambient/AmbientDelegate;->i(Ltzy;)Ljava/lang/Object;

    move-result-object v4

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

    nop

    :goto_1a5
    iput-object v12, v0, Ltp;->e:Ljava/lang/Object;

    nop

    goto/32 :goto_e9

    nop

    nop

    nop

    :goto_1a6
    move-object/from16 v16, v15

    nop

    nop

    nop

    nop

    goto/32 :goto_18a

    nop

    nop

    nop

    nop

    :goto_1a7
    iput-object v3, v0, Ltp;->e:Ljava/lang/Object;

    nop

    goto/32 :goto_1a9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a8
    move-object v1, v2

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    :goto_1a9
    iput-object v2, v0, Ltp;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_1aa
    throw v10

    nop

    nop

    nop

    nop

    nop

    :goto_1ab
    goto/32 :goto_97

    nop

    nop

    :goto_1ac
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_1ad
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/32 :goto_2d

    nop

    nop

    :goto_1ae
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    nop

    :goto_1af
    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    :goto_1b0
    goto/16 :goto_1c

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    nop

    :goto_1b1
    invoke-virtual {v5}, Ltr;->b()Le;

    move-result-object v5

    nop

    goto/32 :goto_68

    nop

    nop
.end method

.method public final c(Ljava/lang/Object;Ltzy;)Ltzy;
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, v0, Ltp;->e:Ljava/lang/Object;

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

    :goto_1
    return-object v0

    nop

    nop

    :goto_2
    invoke-direct {v0, p0, p2}, Ltp;-><init>(Lrbh;Ltzy;)V

    goto/32 :goto_0

    nop

    nop

    :goto_3
    new-instance v0, Ltp;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object p0, p0, Ltp;->d:Lrbh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method

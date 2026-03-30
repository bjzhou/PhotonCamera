.class public final synthetic Lqtb;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lssw;


# instance fields
.field public final synthetic a:Lqtc;


# direct methods
.method public synthetic constructor <init>(Lqtc;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lqtb;->a:Lqtc;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop
.end method


# virtual methods
.method public final a()Lsui;
    .locals 19

    goto/32 :goto_e3

    nop

    nop

    nop

    :goto_0
    invoke-static {v4}, Lpvb;->d(Landroid/content/Context;)Z

    move-result v4

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v0, v1, Lqtc;->d:Ltud;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_164

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {}, Lqzk;->b()V

    goto/32 :goto_fd

    nop

    nop

    nop

    nop

    nop

    :goto_3
    sget-object v7, Ltma;->a:Ltma;

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

    :goto_4
    iget v9, v8, Luqy;->b:I

    nop

    nop

    nop

    goto/32 :goto_e2

    nop

    nop

    nop

    :goto_5
    invoke-static {}, Lqzk;->b()V

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput v9, v8, Luqy;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_7
    iput-wide v6, v8, Luqy;->c:J

    nop

    nop

    goto/32 :goto_132

    nop

    nop

    :goto_8
    invoke-virtual {v4}, Ltkb;->o()V

    :goto_9
    goto/32 :goto_10f

    nop

    nop

    nop

    :goto_a
    iget-wide v6, v0, Landroid/content/pm/PackageStats;->externalCodeSize:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_b
    invoke-interface {v0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_c
    or-int/lit16 v8, v8, 0x80

    nop

    nop

    goto/32 :goto_15e

    nop

    nop

    :goto_d
    iget-object v8, v4, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_e
    iget-object v0, v1, Lqtc;->e:Lqts;

    nop

    nop

    goto/32 :goto_ea

    nop

    nop

    :goto_f
    const-string v1, "PackageStats capture failed."

    nop

    goto/32 :goto_13c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-lez v0, :cond_0

    nop

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

    :cond_0
    goto/32 :goto_2d

    nop

    :goto_11
    if-eqz v8, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_12
    move-object/from16 v18, v1

    nop

    nop

    goto/32 :goto_11d

    nop

    nop

    nop

    :goto_13
    iget-object v8, v4, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    :goto_14
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    invoke-interface {v0}, Lj$/nio/file/attribute/BasicFileAttributes;->isDirectory()Z

    move-result v0

    nop

    if-eqz v0, :cond_2

    nop

    nop

    new-instance v0, Lqsv;

    nop

    nop

    nop

    nop

    invoke-interface {v15}, Lj$/nio/file/Path;->getFileName()Lj$/nio/file/Path;

    move-result-object v10

    nop

    nop

    nop

    nop

    invoke-interface {v10}, Lj$/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v10

    nop

    const/4 v11, 0x1

    nop

    nop

    nop

    invoke-direct {v0, v12, v11, v10}, Lqsv;-><init>(Lqsv;ZLjava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    :cond_2
    goto/32 :goto_41

    nop

    nop

    nop

    :goto_15
    iget-object v0, v3, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_10c

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget v8, v0, Luqy;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_17
    new-instance v9, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    goto/32 :goto_f5

    nop

    nop

    :goto_18
    move-object/from16 v18, v1

    nop

    nop

    goto/32 :goto_115

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/16 :goto_e6

    nop

    nop

    :goto_1a
    goto/32 :goto_e5

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    sget-wide v2, Lqtc;->a:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    sget-object v0, Lsue;->a:Lsui;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v1}, Ltkg;->C()Z

    move-result v1

    nop

    goto/32 :goto_100

    nop

    nop

    nop

    nop

    :goto_1e
    iget v9, v8, Luqy;->b:I

    nop

    goto/32 :goto_b9

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object v0, v0, Lqts;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_20
    invoke-virtual {v0}, Ltkg;->C()Z

    move-result v0

    nop

    nop

    goto/32 :goto_146

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-static {v0}, Lpvb;->d(Landroid/content/Context;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_ff

    nop

    nop

    nop

    :goto_22
    move-object/from16 v18, v1

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_136

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    :goto_25
    iget-object v1, v4, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_26
    if-nez v4, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_135

    nop

    nop

    nop

    :goto_27
    iput v9, v8, Luqy;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    :goto_28
    goto/16 :goto_d8

    nop

    nop

    :cond_4
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_29
    iput-wide v6, v8, Luqy;->f:J

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_2a
    iget-object v8, v4, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_102

    nop

    nop

    nop

    nop

    :goto_2b
    goto/16 :goto_f0

    nop

    :catch_0
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_12e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    iget-object v0, v4, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_104

    nop

    nop

    :goto_2e
    goto/32 :goto_fe

    nop

    nop

    nop

    nop

    :goto_2f
    check-cast v8, Luqy;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_30
    iget-object v8, v4, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    :goto_31
    add-long/2addr v8, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    :goto_32
    move-object/from16 v18, v1

    nop

    nop

    nop

    goto/32 :goto_116

    nop

    nop

    nop

    nop

    :goto_33
    invoke-virtual {v4}, Ltkb;->o()V

    :goto_34
    goto/32 :goto_e9

    nop

    nop

    nop

    nop

    :goto_35
    iput v9, v8, Luqy;->b:I

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

    :goto_36
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_6e

    nop

    nop

    :goto_37
    check-cast v0, Lqsx;

    nop

    nop

    goto/32 :goto_145

    nop

    nop

    :goto_38
    move v10, v14

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    :goto_39
    move-object/from16 v1, v18

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    :goto_3a
    iget-object v0, v1, Lqtc;->b:Lqoz;

    nop

    nop

    nop

    goto/32 :goto_e8

    nop

    nop

    nop

    :goto_3b
    invoke-virtual {v8}, Ltkg;->C()Z

    move-result v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_131

    nop

    nop

    nop

    :goto_3c
    check-cast v0, Landroid/content/SharedPreferences;

    nop

    nop

    nop

    goto/32 :goto_144

    nop

    nop

    :goto_3d
    invoke-virtual {v1}, Luqy;->c()V

    goto/32 :goto_ce

    nop

    nop

    :goto_3e
    iput v9, v8, Luqy;->b:I

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-virtual {v8}, Ltkg;->C()Z

    move-result v8

    nop

    nop

    goto/32 :goto_138

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    invoke-interface {v4, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    nop

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    :goto_41
    move v11, v1

    nop

    nop

    nop

    nop

    nop

    :goto_42
    goto/32 :goto_59

    nop

    nop

    :goto_43
    invoke-virtual {v4}, Ltkb;->o()V

    :goto_44
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    move v1, v15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_157

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    iput v9, v8, Luqy;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_128

    nop

    nop

    nop

    nop

    :goto_47
    goto/16 :goto_126

    nop

    nop

    nop

    nop

    nop

    :goto_48
    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    move-object/from16 v18, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_eb

    nop

    nop

    :goto_4a
    or-int/lit8 v9, v9, 0x40

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    iget v9, v8, Luqy;->b:I

    nop

    nop

    nop

    goto/32 :goto_153

    nop

    nop

    nop

    nop

    :goto_4c
    iget-object v0, v1, Lqtc;->d:Ltud;

    nop

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    :goto_4d
    iget-object v4, v0, Lqts;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    :goto_4e
    check-cast v1, Luqy;

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    invoke-static {v9}, Lryb;->j(Ljava/util/Collection;)Lryb;

    move-result-object v0

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

    :goto_50
    const/4 v2, 0x0

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

    nop

    :goto_51
    move v1, v11

    nop

    nop

    nop

    goto/32 :goto_112

    nop

    nop

    nop

    nop

    nop

    :goto_52
    check-cast v0, Lqta;

    nop

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

    :goto_53
    if-eqz v6, :cond_5

    nop

    goto/32 :goto_60

    nop

    :cond_5
    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_54
    move-object/from16 v1, v18

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_55
    sget-object v1, Lqmo;->a:Lsdb;

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    :goto_56
    check-cast v0, Lqta;

    nop

    goto/32 :goto_142

    nop

    nop

    nop

    nop

    :goto_57
    invoke-static {}, Lqzk;->b()V

    goto/32 :goto_14c

    nop

    nop

    :goto_58
    invoke-virtual {v8}, Ltkg;->C()Z

    move-result v8

    nop

    nop

    nop

    nop

    goto/32 :goto_122

    nop

    nop

    nop

    :goto_59
    move-object/from16 v1, v18

    nop

    nop

    nop

    goto/32 :goto_111

    nop

    nop

    nop

    nop

    :goto_5a
    invoke-virtual {v4}, Ltkb;->o()V

    :goto_5b
    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    :goto_5c
    const-wide/16 v6, -0x1

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    const-string v5, "primes.packageMetric.lastSendTime"

    nop

    nop

    nop

    goto/32 :goto_d6

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    cmp-long v0, v10, v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    invoke-virtual {v4}, Ltkb;->o()V

    :goto_60
    goto/32 :goto_14f

    nop

    nop

    nop

    :goto_61
    invoke-virtual {v4}, Ltkb;->o()V

    :goto_62
    goto/32 :goto_bf

    nop

    nop

    nop

    :goto_63
    invoke-virtual {v1}, Lscs;->c()Lsdo;

    move-result-object v1

    nop

    goto/32 :goto_c6

    nop

    nop

    nop

    :goto_64
    const/4 v10, 0x1

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    :goto_65
    iget-object v8, v4, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    goto/32 :goto_bc

    nop

    nop

    nop

    nop

    :goto_66
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/32 :goto_b1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_67
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_68
    check-cast v4, Landroid/content/Context;

    nop

    nop

    goto/32 :goto_151

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_69
    cmp-long v4, v10, v8

    nop

    nop

    goto/32 :goto_160

    nop

    nop

    nop

    nop

    :goto_6a
    if-eqz v0, :cond_6

    nop

    goto/32 :goto_c4

    nop

    nop

    :cond_6
    goto/32 :goto_c7

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    iget-wide v6, v0, Landroid/content/pm/PackageStats;->dataSize:J

    nop

    nop

    nop

    nop

    goto/32 :goto_ed

    nop

    nop

    :goto_6c
    iget-object v0, v0, Lqts;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    :goto_6d
    iget v1, v0, Lurc;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_110

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    iput-object v1, v0, Lurc;->i:Luqy;

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    :goto_6f
    const/16 v16, 0x0

    nop

    nop

    nop

    :try_start_1
    aput-object v17, v11, v16

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    invoke-static {v15, v0, v11}, Lj$/nio/file/Files;->readAttributes(Lj$/nio/file/Path;Ljava/lang/Class;[Lj$/nio/file/LinkOption;)Lj$/nio/file/attribute/BasicFileAttributes;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Lj$/nio/file/attribute/BasicFileAttributes;->isSymbolicLink()Z

    move-result v11

    nop

    if-nez v11, :cond_4

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Lj$/nio/file/attribute/BasicFileAttributes;->isRegularFile()Z

    move-result v11

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    goto/32 :goto_f2

    nop

    nop

    :goto_70
    iget-object v8, v0, Lqsx;->b:Lryb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_133

    nop

    nop

    nop

    nop

    nop

    :goto_71
    move-object/from16 v18, v1

    nop

    nop

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

    :goto_72
    invoke-virtual {v4}, Ltkb;->i()Ltkg;

    move-result-object v0

    nop

    goto/32 :goto_ba

    nop

    nop

    :goto_73
    invoke-virtual {v0, v4}, Ltkg;->D(I)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    :goto_74
    iget-object v6, v4, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_129

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_75
    move-object/from16 v1, v18

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_76
    if-eqz v8, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_9c

    nop

    nop

    :goto_77
    invoke-interface {v0, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_78
    if-eqz v0, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_c1

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_c0

    nop

    nop

    nop

    nop

    :goto_79
    iput-wide v6, v8, Luqy;->h:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14d

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    invoke-virtual {v1, v2}, Lqou;->e(Lurc;)V

    goto/32 :goto_e4

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    invoke-interface {v0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    :goto_7c
    check-cast v0, Landroid/content/SharedPreferences;

    nop

    nop

    nop

    nop

    goto/32 :goto_12a

    nop

    nop

    :goto_7d
    goto/16 :goto_11f

    nop

    nop

    :goto_7e
    goto/32 :goto_11e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    invoke-virtual {v0}, Lrss;->h()Z

    move-result v6

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    :goto_80
    if-lez v0, :cond_9

    nop

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_81
    check-cast v8, Luqy;

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

    :goto_82
    move v11, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_d5

    nop

    nop

    nop

    :goto_83
    iput-wide v6, v8, Luqy;->i:J

    nop

    nop

    nop

    goto/32 :goto_101

    nop

    nop

    nop

    nop

    nop

    :goto_84
    goto/16 :goto_f1

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    :goto_85
    invoke-interface {v0}, Ltud;->a()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    :goto_86
    move-object/from16 v18, v1

    nop

    nop

    nop

    nop

    nop

    :goto_87
    goto/32 :goto_108

    nop

    nop

    :goto_88
    goto :goto_8d

    nop

    nop

    nop

    :catchall_1
    move-exception v0

    nop

    goto/32 :goto_8c

    nop

    nop

    :goto_89
    goto/16 :goto_23

    nop

    nop

    nop

    :catchall_2
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_127

    nop

    nop

    nop

    nop

    :goto_8a
    const/4 v4, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    :goto_8b
    goto/16 :goto_d8

    nop

    :cond_a
    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    nop

    :goto_8c
    move-object v11, v0

    nop

    :try_start_3
    invoke-virtual {v10, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_8d
    throw v10

    nop

    nop

    nop

    nop

    nop
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :catch_1
    move-exception v0

    nop

    nop

    goto/32 :goto_124

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8e
    iget-object v1, v4, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_161

    nop

    nop

    nop

    :goto_8f
    goto/16 :goto_ae

    nop

    nop

    nop

    nop

    nop

    :catchall_3
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_90
    invoke-virtual {v4}, Ltkb;->o()V

    :goto_91
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_92
    iget-object v4, v0, Lqts;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_9a

    nop

    nop

    :goto_93
    iget v9, v8, Luqy;->b:I

    nop

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

    :goto_94
    iget v9, v8, Luqy;->b:I

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    nop

    :goto_95
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    nop

    nop

    nop

    goto/32 :goto_d1

    nop

    nop

    nop

    :goto_96
    rem-int v0, v0, v1

    nop

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

    :goto_97
    invoke-static {v2}, Lpvb;->d(Landroid/content/Context;)Z

    move-result v2

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_98
    or-int/lit8 v9, v9, 0x8

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_99
    invoke-virtual {v8}, Ltkg;->C()Z

    move-result v8

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9a
    check-cast v4, Landroid/content/Context;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_9b
    iget-object v8, v4, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    goto/32 :goto_c9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9c
    invoke-virtual {v4}, Ltkb;->o()V

    :goto_9d
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_9e
    sget-object v0, Lsue;->a:Lsui;

    nop

    nop

    nop

    nop

    goto/32 :goto_105

    nop

    nop

    nop

    nop

    nop

    :goto_9f
    if-nez v2, :cond_b

    nop

    goto/32 :goto_10e

    nop

    nop

    :cond_b
    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    :goto_a0
    const/4 v11, 0x0

    nop

    :try_start_4
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    nop

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    nop

    nop

    invoke-virtual {v12, v13, v11}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v12

    nop

    nop

    nop

    nop

    nop

    new-instance v13, Ljava/io/File;

    nop

    nop

    nop

    nop

    nop

    iget-object v12, v12, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    nop

    nop

    nop

    invoke-direct {v13, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    goto/32 :goto_c2

    nop

    nop

    nop

    nop

    :goto_a1
    goto/16 :goto_126

    nop

    nop

    nop

    nop

    nop

    :goto_a2
    goto/32 :goto_15d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a3
    sget-object v3, Lurc;->a:Lurc;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b5

    nop

    nop

    nop

    nop

    :goto_a4
    move-object v10, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_a5
    if-nez v6, :cond_c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    :cond_c
    goto/32 :goto_156

    nop

    nop

    nop

    nop

    :goto_a6
    iget v9, v8, Luqy;->b:I

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_a7
    iput-object v7, v6, Luqy;->k:Ltkv;

    nop

    nop

    nop

    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    :goto_a8
    sget-object v0, Lsue;->a:Lsui;

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_a9
    iget-object v0, v0, Lqta;->a:Lrss;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    :goto_aa
    move-object/from16 v18, v1

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_ab
    check-cast v6, Luqy;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_ac
    invoke-virtual {v0}, Ltkg;->C()Z

    move-result v0

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    :goto_ad
    if-nez v13, :cond_d

    nop

    nop

    goto/32 :goto_118

    nop

    nop

    nop

    :cond_d
    :try_start_5
    iget-object v13, v12, Lqsv;->b:Ljava/io/File;

    nop

    invoke-static {v13}, Lj$/io/FileRetargetClass;->toPath(Ljava/io/File;)Lj$/nio/file/Path;

    move-result-object v13

    nop

    nop

    nop

    iget-object v14, v12, Lqsv;->f:Ljava/lang/String;

    nop

    nop

    nop

    nop

    invoke-interface {v13, v14}, Lj$/nio/file/Path;->resolve(Ljava/lang/String;)Lj$/nio/file/Path;

    move-result-object v13

    nop

    invoke-static {v13}, Lj$/nio/file/Files;->newDirectoryStream(Lj$/nio/file/Path;)Ljava/nio/file/DirectoryStream;

    move-result-object v13

    nop
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    :try_start_6
    invoke-interface {v13}, Ljava/nio/file/DirectoryStream;->iterator()Ljava/util/Iterator;

    move-result-object v14

    nop

    nop

    nop

    nop

    :goto_ae
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    nop

    nop

    nop

    nop

    if-eqz v15, :cond_a

    nop

    nop

    nop

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    nop

    check-cast v15, Lj$/nio/file/Path;

    nop

    nop

    nop

    nop

    const-class v0, Lj$/nio/file/attribute/BasicFileAttributes;

    nop

    nop
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    new-array v11, v10, [Lj$/nio/file/LinkOption;

    nop

    nop

    sget-object v17, Lj$/nio/file/LinkOption;->NOFOLLOW_LINKS:Lj$/nio/file/LinkOption;

    nop

    nop

    nop
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_af
    move v1, v11

    nop

    :try_start_8
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    move-object v10, v0

    nop

    nop

    nop

    nop

    check-cast v10, Ljava/util/Map$Entry;

    nop
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :try_start_9
    new-instance v0, Lqsv;

    nop

    nop

    nop

    nop

    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    nop

    check-cast v11, Luqw;

    nop

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    nop

    check-cast v13, Ljava/io/File;

    nop

    nop

    invoke-virtual {v13}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v13

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v0, v11, v13}, Lqsv;-><init>(Luqw;Ljava/io/File;)V

    invoke-virtual {v6, v0}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    goto/32 :goto_f6

    nop

    nop

    :goto_b0
    check-cast v0, Luqy;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_b1
    move-wide v8, v6

    nop

    nop

    nop

    :goto_b2
    goto/32 :goto_dd

    nop

    nop

    nop

    :goto_b3
    const/16 v6, 0x154c

    nop

    nop

    nop

    goto/32 :goto_cb

    nop

    nop

    :goto_b4
    check-cast v8, Luqy;

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_b5
    invoke-virtual {v3}, Ltkg;->m()Ltkb;

    move-result-object v3

    nop

    nop

    goto/32 :goto_d0

    nop

    nop

    :goto_b6
    iget-object v8, v4, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_134

    nop

    nop

    nop

    :goto_b7
    iget-wide v6, v0, Landroid/content/pm/PackageStats;->cacheSize:J

    nop

    nop

    nop

    goto/32 :goto_107

    nop

    nop

    nop

    nop

    nop

    :goto_b8
    check-cast v4, Ltkb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d9

    nop

    nop

    :goto_b9
    const/4 v10, 0x1

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

    nop

    :goto_ba
    check-cast v0, Luqy;

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    :goto_bb
    iget-object v6, v1, Lqtc;->c:Landroid/content/Context;

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_bc
    check-cast v8, Luqy;

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bd
    invoke-virtual {v4}, Ltkb;->i()Ltkg;

    move-result-object v1

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

    :goto_be
    sget v0, Lryb;->d:I

    nop

    nop

    goto/32 :goto_13e

    nop

    nop

    :goto_bf
    iget-object v8, v4, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_c0
    invoke-virtual {v3}, Ltkb;->o()V

    :goto_c1
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_c2
    move-object v2, v13

    nop

    goto/32 :goto_ee

    nop

    nop

    nop

    nop

    :goto_c3
    goto/16 :goto_126

    nop

    :goto_c4
    goto/32 :goto_a3

    nop

    nop

    nop

    :goto_c5
    check-cast v8, Luqy;

    nop

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    nop

    :goto_c6
    const-string v2, "Failed to retrieve DirStats."

    nop

    nop

    goto/32 :goto_b3

    nop

    nop

    nop

    :goto_c7
    new-instance v0, Ljava/lang/IllegalStateException;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_c8
    iput v9, v8, Luqy;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_f8

    nop

    nop

    :goto_c9
    check-cast v8, Luqy;

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

    :goto_ca
    invoke-virtual {v8}, Ltkg;->C()Z

    move-result v8

    nop

    goto/32 :goto_12d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_cb
    invoke-static {v2, v6, v1, v0}, Lmf;->f(Ljava/lang/String;CLscz;Ljava/lang/Throwable;)V

    goto/32 :goto_be

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_cc
    iget-object v8, v4, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    goto/32 :goto_ca

    nop

    nop

    nop

    nop

    nop

    :goto_cd
    if-nez v13, :cond_e

    nop

    goto/32 :goto_8d

    nop

    nop

    :cond_e
    :try_start_a
    invoke-interface {v13}, Ljava/nio/file/DirectoryStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ce
    iget-object v1, v1, Luqy;->k:Ltkv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e7

    nop

    nop

    :goto_cf
    or-int/2addr v9, v10

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d0
    sget-object v4, Luqy;->a:Luqy;

    nop

    nop

    nop

    goto/32 :goto_141

    nop

    nop

    nop

    nop

    :goto_d1
    invoke-interface {v0, v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    nop

    nop

    goto/32 :goto_10d

    nop

    nop

    nop

    nop

    nop

    :goto_d2
    move-object v10, v0

    nop

    nop

    nop

    nop

    :goto_d3
    goto/32 :goto_cd

    nop

    nop

    nop

    nop

    :goto_d4
    iput v9, v8, Luqy;->b:I

    nop

    nop

    goto/32 :goto_10a

    nop

    nop

    nop

    nop

    :goto_d5
    move-object/from16 v1, v18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13d

    nop

    nop

    nop

    nop

    nop

    :goto_d6
    if-eqz v4, :cond_f

    nop

    nop

    nop

    nop

    goto/32 :goto_15a

    nop

    :cond_f
    goto/32 :goto_159

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d7
    move v1, v11

    nop

    nop

    :goto_d8
    goto/32 :goto_d2

    nop

    nop

    nop

    :goto_d9
    invoke-virtual {v4, v0}, Ltkb;->r(Ltkg;)V

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_da
    or-int/lit8 v9, v9, 0x20

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_db
    iput v1, v0, Lurc;->b:I

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_dc
    goto/16 :goto_109

    nop

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_dd
    cmp-long v0, v8, v6

    nop

    nop

    goto/32 :goto_150

    nop

    nop

    nop

    :goto_de
    if-eqz v8, :cond_11

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

    :cond_11
    goto/32 :goto_90

    nop

    nop

    nop

    :goto_df
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    :goto_e0
    iget-object v0, v3, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    :goto_e1
    iget-object v0, v4, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_e2
    or-int/lit8 v9, v9, 0x2

    nop

    nop

    nop

    goto/32 :goto_c8

    nop

    nop

    nop

    :goto_e3
    const v0, 0xe

    nop

    nop

    nop

    nop

    goto/32 :goto_14e

    nop

    nop

    nop

    nop

    nop

    :goto_e4
    invoke-virtual {v1}, Lqou;->a()Lqov;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_125

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e5
    move-object/from16 v18, v1

    nop

    nop

    nop

    :goto_e6
    goto/32 :goto_e0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e7
    invoke-static {v0, v1}, Ltir;->e(Ljava/lang/Iterable;Ljava/util/List;)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_e8
    invoke-static {}, Lqov;->a()Lqou;

    move-result-object v1

    nop

    goto/32 :goto_140

    nop

    nop

    nop

    nop

    :goto_e9
    iget-object v8, v4, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_12f

    nop

    nop

    nop

    nop

    nop

    :goto_ea
    iget-object v2, v0, Lqts;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_15f

    nop

    nop

    nop

    nop

    nop

    :goto_eb
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    :goto_ec
    goto/16 :goto_13f

    nop

    nop

    :cond_12
    goto/32 :goto_12

    nop

    nop

    :goto_ed
    iget-object v8, v4, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_ee
    goto :goto_ef

    nop

    nop

    nop

    nop

    :catch_2
    :try_start_b
    sget-object v12, Lqmo;->a:Lsdb;

    nop

    nop

    invoke-virtual {v12}, Lscs;->c()Lsdo;

    move-result-object v12

    nop

    nop

    nop

    const/16 v13, 0x154d

    nop

    nop

    nop

    nop

    invoke-interface {v12, v13}, Lscz;->M(I)Lsdo;

    move-result-object v12

    nop

    check-cast v12, Lscz;

    nop

    nop

    nop

    nop

    nop

    const-string v13, "Failed to use package manager getting data directory from context instead."

    nop

    invoke-interface {v12, v13}, Lscz;->s(Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    nop

    nop

    nop

    if-eqz v6, :cond_13

    nop

    nop

    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    nop

    nop

    nop

    :cond_13
    :goto_ef
    if-eqz v2, :cond_14

    nop

    nop

    nop

    nop

    sget-object v6, Luqw;->b:Luqw;

    nop

    nop

    invoke-interface {v0, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    new-instance v2, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/PriorityQueue;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v6}, Ljava/util/PriorityQueue;-><init>()V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    nop

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    nop

    nop

    nop

    nop

    :goto_f0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    if-nez v0, :cond_12

    nop

    nop

    nop

    nop

    nop

    :goto_f1
    invoke-virtual {v6}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    move-object v12, v0

    nop

    nop

    check-cast v12, Lqsv;

    nop

    nop

    nop

    nop

    nop

    if-eqz v12, :cond_1b

    nop

    nop

    nop

    nop

    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean v13, v12, Lqsv;->e:Z

    nop

    nop

    nop

    nop

    nop
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    nop

    :goto_f2
    if-nez v11, :cond_15

    nop

    goto/32 :goto_158

    nop

    nop

    nop

    nop

    nop

    :cond_15
    :try_start_c
    invoke-interface {v0}, Lj$/nio/file/attribute/BasicFileAttributes;->size()J

    move-result-wide v10

    nop

    nop

    nop

    nop
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    goto/32 :goto_130

    nop

    nop

    nop

    nop

    :goto_f3
    invoke-interface {v4}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v4

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

    nop

    :goto_f4
    iget-object v1, v0, Lqtb;->a:Lqtc;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_f5
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    :try_start_d
    new-instance v0, Ljava/util/EnumMap;

    nop

    nop

    nop

    const-class v11, Luqw;

    nop

    nop

    invoke-direct {v0, v11}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5

    goto/32 :goto_a0

    nop

    nop

    :goto_f6
    goto :goto_f7

    nop

    nop

    nop

    nop

    :catch_3
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    :try_start_e
    sget-object v11, Lqmo;->a:Lsdb;

    nop

    nop

    invoke-virtual {v11}, Lscs;->c()Lsdo;

    move-result-object v11

    nop

    nop

    nop

    nop

    const-string v13, "couldn\'t canonicalize %s, skipping"

    nop

    nop

    const/16 v15, 0x154b

    nop

    nop

    invoke-static {v13, v10, v15, v11, v0}, Lfey;->d(Ljava/lang/String;Ljava/lang/Object;CLscz;Ljava/lang/Throwable;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0

    :goto_f7
    goto/32 :goto_14a

    nop

    nop

    nop

    nop

    :goto_f8
    iput-wide v6, v8, Luqy;->d:J

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    :goto_f9
    invoke-virtual {v0, v2}, Lqoz;->c(Ljava/lang/String;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_fa

    nop

    nop

    nop

    nop

    nop

    :goto_fa
    if-eqz v0, :cond_16

    nop

    nop

    nop

    goto/32 :goto_106

    nop

    :cond_16
    goto/32 :goto_9e

    nop

    nop

    nop

    :goto_fb
    if-nez v6, :cond_17

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :cond_17
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_fc
    iput-wide v6, v0, Luqy;->j:J

    nop

    goto/32 :goto_72

    nop

    nop

    :goto_fd
    invoke-static {v0}, Lqsy;->a(Landroid/content/Context;)Landroid/content/pm/PackageStats;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    :goto_fe
    move-object/from16 v0, p0

    nop

    nop

    goto/32 :goto_f4

    nop

    nop

    nop

    nop

    nop

    :goto_ff
    if-eqz v0, :cond_18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    :cond_18
    goto/32 :goto_a8

    nop

    nop

    :goto_100
    if-eqz v1, :cond_19

    nop

    nop

    nop

    nop

    goto/32 :goto_13b

    nop

    nop

    nop

    nop

    :cond_19
    goto/32 :goto_13a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_101
    iget-wide v6, v0, Landroid/content/pm/PackageStats;->externalObbSize:J

    nop

    nop

    goto/32 :goto_e1

    nop

    nop

    nop

    nop

    nop

    :goto_102
    invoke-virtual {v8}, Ltkg;->C()Z

    move-result v8

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_103
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_104
    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    :goto_105
    goto/16 :goto_126

    nop

    nop

    :goto_106
    goto/32 :goto_152

    nop

    nop

    nop

    nop

    :goto_107
    iget-object v8, v4, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    :goto_108
    const/4 v15, 0x0

    nop

    :goto_109
    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    nop

    :goto_10a
    iput-wide v6, v8, Luqy;->g:J

    nop

    goto/32 :goto_12c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10b
    iget v9, v8, Luqy;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_da

    nop

    nop

    nop

    nop

    nop

    :goto_10c
    check-cast v0, Lurc;

    nop

    goto/32 :goto_bd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10d
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :goto_10e
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_10f
    iget-object v8, v4, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_c5

    nop

    nop

    nop

    nop

    :goto_110
    or-int/lit16 v1, v1, 0x80

    nop

    nop

    goto/32 :goto_db

    nop

    nop

    nop

    nop

    nop

    :goto_111
    const/4 v10, 0x1

    nop

    goto/32 :goto_12b

    nop

    nop

    nop

    nop

    nop

    :goto_112
    if-nez v13, :cond_1a

    nop

    nop

    goto/32 :goto_113

    nop

    nop

    nop

    nop

    nop

    :cond_1a
    :try_start_f
    invoke-interface {v13}, Ljava/nio/file/DirectoryStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_f .. :try_end_f} :catch_1
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0

    :goto_113
    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    :goto_114
    or-int/lit8 v9, v9, 0x4

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

    nop

    :goto_115
    move/from16 v1, v16

    nop

    nop

    nop

    goto/32 :goto_15b

    nop

    nop

    nop

    :goto_116
    move v1, v11

    nop

    nop

    nop

    nop

    :goto_117
    :try_start_10
    sget-object v10, Lqmo;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v10}, Lscs;->c()Lsdo;

    move-result-object v10

    nop

    nop

    nop

    nop

    invoke-interface {v10, v0}, Lscz;->i(Ljava/lang/Throwable;)Lsdo;

    move-result-object v0

    nop

    nop

    nop

    check-cast v0, Lscz;

    nop

    nop

    nop

    nop

    nop

    const/16 v10, 0x154a

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0, v10}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    check-cast v0, Lscz;

    nop

    nop

    nop

    nop

    const-string v10, "exception while collecting DirStats for dir %s"

    nop

    nop

    nop

    iget-object v11, v12, Lqsv;->f:Ljava/lang/String;

    nop

    nop

    invoke-interface {v0, v10, v11}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_113

    nop

    nop

    :goto_118
    move-object/from16 v18, v1

    nop

    goto/16 :goto_f1

    nop

    nop

    :cond_1b
    move-object/from16 v18, v1

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    nop

    :cond_1c
    :goto_119
    add-int/lit8 v0, v0, -0x1

    nop

    nop

    nop

    if-ltz v0, :cond_1d

    nop

    nop

    nop

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    check-cast v1, Lqsv;

    nop

    nop

    iget-boolean v6, v1, Lqsv;->e:Z

    nop

    nop

    nop

    nop

    nop

    if-eqz v6, :cond_1c

    nop

    iget-object v6, v1, Lqsv;->c:Lqsv;

    nop

    nop

    if-eqz v6, :cond_1c

    nop

    nop

    iget-wide v10, v6, Lqsv;->g:J

    nop

    nop

    nop

    iget-wide v12, v1, Lqsv;->g:J

    nop

    nop

    nop

    add-long/2addr v10, v12

    nop

    nop

    nop

    nop

    nop

    iput-wide v10, v6, Lqsv;->g:J

    nop

    nop

    nop

    nop

    nop

    goto :goto_119

    nop

    nop

    nop

    nop

    :cond_1d
    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    nop

    nop

    nop

    nop

    :goto_11a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    nop

    if-eqz v2, :cond_22

    nop

    nop

    nop

    nop

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    check-cast v2, Lqsv;

    nop

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    nop

    nop

    nop

    const/16 v8, 0x200

    nop

    if-ge v6, v8, :cond_22

    nop

    nop

    nop

    iget v6, v2, Lqsv;->d:I

    nop

    if-le v6, v7, :cond_1e

    nop

    nop

    nop

    nop

    goto/16 :goto_11b

    nop

    :cond_1e
    sget-object v6, Luqx;->a:Luqx;

    nop

    nop

    nop

    invoke-virtual {v6}, Ltkg;->m()Ltkb;

    move-result-object v6

    nop

    nop

    nop

    iget-object v10, v2, Lqsv;->a:Luqw;

    nop

    iget-object v11, v6, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    invoke-virtual {v11}, Ltkg;->C()Z

    move-result v11

    nop

    nop

    nop

    if-nez v11, :cond_1f

    nop

    nop

    invoke-virtual {v6}, Ltkb;->o()V

    :cond_1f
    iget-object v11, v6, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    move-object v12, v11

    nop

    nop

    nop

    check-cast v12, Luqx;

    nop

    nop

    nop

    nop

    nop

    iget v10, v10, Luqw;->d:I

    nop

    nop

    nop

    nop

    nop

    iput v10, v12, Luqx;->f:I

    nop

    nop

    nop

    nop

    nop

    iget v10, v12, Luqx;->b:I

    nop

    nop

    nop

    nop

    or-int/lit8 v10, v10, 0x4

    nop

    nop

    nop

    nop

    iput v10, v12, Luqx;->b:I

    nop

    nop

    nop

    iget-object v10, v2, Lqsv;->f:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v11}, Ltkg;->C()Z

    move-result v11

    nop

    nop

    nop

    if-nez v11, :cond_20

    nop

    nop

    nop

    nop

    invoke-virtual {v6}, Ltkb;->o()V

    :cond_20
    iget-object v11, v6, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    move-object v12, v11

    nop

    nop

    check-cast v12, Luqx;

    nop

    nop

    nop

    nop

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v13, v12, Luqx;->b:I

    nop

    nop

    nop

    nop

    const/4 v14, 0x1

    nop

    or-int/2addr v13, v14

    nop

    nop

    nop

    iput v13, v12, Luqx;->b:I

    nop

    nop

    nop

    iput-object v10, v12, Luqx;->c:Ljava/lang/String;

    nop

    nop

    nop

    iget-wide v12, v2, Lqsv;->g:J

    nop

    nop

    nop

    nop

    invoke-virtual {v11}, Ltkg;->C()Z

    move-result v2

    nop

    nop

    nop

    nop

    if-nez v2, :cond_21

    nop

    nop

    invoke-virtual {v6}, Ltkb;->o()V

    :cond_21
    iget-object v2, v6, Ltkb;->b:Ltkg;

    nop

    nop

    check-cast v2, Luqx;

    nop

    nop

    nop

    nop

    nop

    iget v10, v2, Luqx;->b:I

    nop

    nop

    nop

    nop

    or-int/lit8 v10, v10, 0x2

    nop

    nop

    nop

    nop

    nop

    iput v10, v2, Luqx;->b:I

    nop

    nop

    iput-wide v12, v2, Luqx;->e:J

    nop

    nop

    nop

    nop

    invoke-virtual {v6}, Ltkb;->i()Ltkg;

    move-result-object v2

    nop

    nop

    check-cast v2, Luqx;

    nop

    nop

    nop

    nop

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_11a

    nop

    nop

    :cond_22
    :goto_11b
    invoke-interface {v9, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_0

    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_11c
    move v11, v15

    nop

    nop

    nop

    goto/32 :goto_163

    nop

    nop

    nop

    :goto_11d
    move v14, v10

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11e
    move-wide v8, v6

    nop

    nop

    nop

    nop

    :goto_11f
    goto/32 :goto_df

    nop

    nop

    nop

    nop

    nop

    :goto_120
    move-object/from16 v18, v1

    nop

    nop

    nop

    :goto_121
    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_122
    if-eqz v8, :cond_23

    nop

    nop

    nop

    nop

    goto/32 :goto_155

    nop

    nop

    nop

    nop

    nop

    :cond_23
    goto/32 :goto_154

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_123
    const/4 v15, 0x0

    nop

    :try_start_11
    invoke-direct {v0, v12, v15, v1}, Lqsv;-><init>(Lqsv;ZLjava/lang/String;)V

    invoke-virtual {v8}, Lryb;->t()Lscq;

    move-result-object v1

    nop

    nop

    :cond_24
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    nop

    nop

    nop

    nop

    nop

    if-eqz v16, :cond_25

    nop

    nop

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    nop

    nop

    nop

    nop

    check-cast v16, Lqsw;

    nop

    nop

    nop

    invoke-interface/range {v16 .. v16}, Lqsw;->a()Z

    move-result v16

    nop

    nop

    nop

    nop

    nop

    if-eqz v16, :cond_24

    nop

    nop

    nop

    nop

    nop

    iput-wide v10, v0, Lqsv;->g:J

    nop

    nop

    nop

    nop

    invoke-virtual {v6, v0}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    :cond_25
    goto/32 :goto_11c

    nop

    nop

    nop

    :goto_124
    goto/16 :goto_117

    nop

    :catch_4
    move-exception v0

    nop

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

    nop

    :goto_125
    invoke-virtual {v0, v1}, Lqoz;->b(Lqov;)Lsui;

    move-result-object v0

    nop

    nop

    :goto_126
    goto/32 :goto_103

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_127
    goto/16 :goto_87

    nop

    nop

    nop

    nop

    :catchall_4
    move-exception v0

    nop

    goto/32 :goto_86

    nop

    nop

    :goto_128
    iput-wide v6, v8, Luqy;->e:J

    nop

    goto/32 :goto_14b

    nop

    nop

    nop

    nop

    :goto_129
    invoke-virtual {v6}, Ltkg;->C()Z

    move-result v6

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_12a
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    :goto_12b
    goto/16 :goto_ae

    nop

    nop

    :catchall_5
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_12c
    iget-wide v6, v0, Landroid/content/pm/PackageStats;->externalDataSize:J

    nop

    nop

    nop

    goto/32 :goto_b6

    nop

    nop

    :goto_12d
    if-eqz v8, :cond_26

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :cond_26
    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_12e
    goto/16 :goto_121

    nop

    nop

    nop

    :catch_5
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_120

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12f
    check-cast v8, Luqy;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_130
    move-object/from16 v18, v1

    nop

    nop

    nop

    :try_start_12
    iget-wide v0, v12, Lqsv;->g:J

    nop

    nop

    add-long/2addr v0, v10

    nop

    iput-wide v0, v12, Lqsv;->g:J

    nop

    nop

    nop

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v0

    nop

    if-nez v0, :cond_10

    nop

    nop

    nop

    nop

    invoke-virtual {v6}, Ljava/util/PriorityQueue;->size()I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    nop

    add-int/2addr v0, v1

    nop

    nop

    nop

    const/16 v1, 0x200

    nop

    nop

    nop

    nop

    nop

    if-gt v0, v1, :cond_10

    nop

    nop

    nop

    nop

    nop

    new-instance v0, Lqsv;

    nop

    invoke-interface {v15}, Lj$/nio/file/Path;->getFileName()Lj$/nio/file/Path;

    move-result-object v1

    nop

    nop

    nop

    nop

    invoke-interface {v1}, Lj$/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    nop
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    goto/32 :goto_123

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_131
    if-eqz v8, :cond_27

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    :cond_27
    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :goto_132
    iget-wide v6, v0, Landroid/content/pm/PackageStats;->codeSize:J

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_133
    invoke-static {}, Lqzk;->b()V

    goto/32 :goto_17

    nop

    nop

    :goto_134
    invoke-virtual {v8}, Ltkg;->C()Z

    move-result v8

    nop

    goto/32 :goto_de

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_135
    iget-object v4, v0, Lqts;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_f3

    nop

    nop

    nop

    nop

    nop

    :goto_136
    const/4 v11, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    :goto_137
    check-cast v4, Landroid/content/SharedPreferences;

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_138
    if-eqz v8, :cond_28

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_28
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_139
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    :goto_13a
    invoke-virtual {v4}, Ltkb;->o()V

    :goto_13b
    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    nop

    :goto_13c
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_148

    nop

    nop

    :goto_13d
    const/4 v10, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    :goto_13e
    sget-object v0, Lsbh;->a:Lryb;

    nop

    :goto_13f
    goto/32 :goto_25

    nop

    nop

    :goto_140
    invoke-virtual {v3}, Ltkb;->i()Ltkg;

    move-result-object v2

    nop

    nop

    goto/32 :goto_15c

    nop

    nop

    nop

    nop

    :goto_141
    invoke-virtual {v4}, Ltkg;->m()Ltkb;

    move-result-object v4

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    nop

    :goto_142
    iget-object v0, v1, Lqtc;->c:Landroid/content/Context;

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

    :goto_143
    check-cast v6, Lqsx;

    nop

    nop

    nop

    goto/32 :goto_162

    nop

    nop

    :goto_144
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    :goto_145
    iget v7, v0, Lqsx;->a:I

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    :goto_146
    if-eqz v0, :cond_29

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :cond_29
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_147
    move-object/from16 v18, v1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_148
    invoke-static {v0}, Lsgj;->N(Ljava/lang/Throwable;)Lsui;

    move-result-object v0

    nop

    nop

    goto/32 :goto_c3

    nop

    nop

    nop

    nop

    nop

    :goto_149
    iget-object v8, v4, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14a
    move v11, v1

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_14b
    iget-wide v6, v0, Landroid/content/pm/PackageStats;->externalCacheSize:J

    nop

    goto/32 :goto_149

    nop

    nop

    nop

    :goto_14c
    iget-object v0, v1, Lqtc;->e:Lqts;

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_14d
    iget-wide v6, v0, Landroid/content/pm/PackageStats;->externalMediaSize:J

    nop

    goto/32 :goto_cc

    nop

    nop

    nop

    nop

    :goto_14e
    const v1, 0x19

    nop

    nop

    nop

    nop

    goto/32 :goto_139

    nop

    nop

    nop

    nop

    nop

    :goto_14f
    iget-object v6, v4, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    :goto_150
    if-nez v0, :cond_2a

    nop

    nop

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    :cond_2a
    goto/32 :goto_31

    nop

    nop

    nop

    :goto_151
    invoke-static {v4}, Lpvb;->d(Landroid/content/Context;)Z

    move-result v4

    nop

    goto/32 :goto_5c

    nop

    nop

    :goto_152
    iget-object v0, v1, Lqtc;->c:Landroid/content/Context;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_153
    or-int/lit8 v9, v9, 0x10

    nop

    nop

    nop

    goto/32 :goto_d4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_154
    invoke-virtual {v4}, Ltkb;->o()V

    :goto_155
    goto/32 :goto_65

    nop

    nop

    nop

    nop

    :goto_156
    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_143

    nop

    nop

    :goto_157
    goto/16 :goto_d3

    nop

    nop

    nop

    nop

    :goto_158
    goto/32 :goto_147

    nop

    nop

    nop

    :goto_159
    goto/16 :goto_a2

    nop

    nop

    nop

    :goto_15a
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15b
    goto/16 :goto_d8

    nop

    :catchall_6
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_15c
    check-cast v2, Lurc;

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    :goto_15d
    iget-object v0, v1, Lqtc;->b:Lqoz;

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_15e
    iput v8, v0, Luqy;->b:I

    nop

    nop

    goto/32 :goto_fc

    nop

    nop

    nop

    nop

    :goto_15f
    check-cast v2, Landroid/content/Context;

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    :goto_160
    if-ltz v4, :cond_2b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b2

    nop

    nop

    nop

    :cond_2b
    goto/32 :goto_1f

    nop

    nop

    :goto_161
    check-cast v1, Luqy;

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_162
    invoke-virtual {v6}, Lqsx;->b()Z

    move-result v6

    nop

    nop

    nop

    goto/32 :goto_fb

    nop

    nop

    nop

    nop

    :goto_163
    goto/16 :goto_42

    nop

    nop

    :catchall_7
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_dc

    nop

    nop

    nop

    :goto_164
    invoke-interface {v0}, Ltud;->a()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    nop
.end method

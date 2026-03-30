.class public final synthetic Lqsa;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lssx;


# instance fields
.field public final synthetic a:Lqsb;

.field public final synthetic b:J

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lqsb;JILjava/lang/String;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    iput-object p5, p0, Lqsa;->c:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    iput p4, p0, Lqsa;->d:I

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    iput-wide p2, p0, Lqsa;->b:J

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    :goto_5
    iput-object p1, p0, Lqsa;->a:Lqsb;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lsui;
    .locals 14

    goto/32 :goto_13c

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v9}, Ltkg;->m()Ltkb;

    move-result-object v9

    nop

    goto/32 :goto_b4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v4}, Ltkg;->C()Z

    move-result v4

    nop

    goto/32 :goto_d9

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput v2, p0, Lurc;->b:I

    nop

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-nez v4, :cond_0

    nop

    goto/32 :goto_10e

    nop

    :cond_0
    goto/32 :goto_83

    nop

    nop

    :goto_4
    iget v2, p0, Lurc;->b:I

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v7

    nop

    nop

    nop

    :try_start_0
    iget-object v8, v2, Lqse;->c:Ltxm;

    nop

    nop

    nop

    nop

    invoke-interface {v8}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v8

    nop

    nop

    check-cast v8, Ljava/lang/Boolean;

    nop

    nop

    nop

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    nop

    nop

    nop

    nop

    if-eqz v8, :cond_1

    nop

    new-instance v8, Ljava/io/File;

    nop

    const-string v9, "/proc/"

    nop

    nop

    const-string v10, "/status"

    nop

    nop

    nop

    nop

    nop

    invoke-static {v5, v9, v10}, La;->br(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    nop

    invoke-direct {v8, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_6

    nop

    nop

    nop

    :cond_1
    new-instance v8, Ljava/io/File;

    nop

    nop

    nop

    nop

    nop

    const-string v5, "/proc/self/status"

    nop

    nop

    nop

    nop

    invoke-direct {v8, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_6
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v5

    nop

    nop

    nop

    nop

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v9, Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v8}, Lsir;->a(Ljava/io/File;)[B

    move-result-object v8

    nop

    invoke-direct {v9, v8, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    nop

    nop

    nop

    if-eqz v5, :cond_2

    nop

    sget-object v5, Lqmo;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v5}, Lscs;->c()Lsdo;

    move-result-object v5

    nop

    nop

    const/16 v8, 0x1542

    nop

    nop

    nop

    invoke-interface {v5, v8}, Lscz;->M(I)Lsdo;

    move-result-object v5

    nop

    check-cast v5, Lscz;

    nop

    nop

    nop

    nop

    nop

    const/4 v8, 0x0

    nop

    nop

    nop

    sget-object v8, Lcom/google/android/apps/camera/logging/PTc/RjdpW;->cTpUDJYFQ:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v5, v8}, Lscz;->s(Ljava/lang/String;)V

    move-object v5, v6

    nop

    nop

    goto :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_2
    new-instance v5, Lqsd;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v5}, Lqsd;-><init>()V

    sget-object v8, Lqsd;->a:Ljava/util/regex/Pattern;

    nop

    nop

    invoke-static {v8, v9}, Lqse;->b(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    nop

    nop

    nop

    iput-object v8, v5, Lqsd;->f:Ljava/lang/Long;

    nop

    nop

    nop

    sget-object v8, Lqsd;->b:Ljava/util/regex/Pattern;

    nop

    nop

    nop

    invoke-static {v8, v9}, Lqse;->b(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    nop

    nop

    nop

    iput-object v8, v5, Lqsd;->g:Ljava/lang/Long;

    nop

    nop

    nop

    nop

    nop

    sget-object v8, Lqsd;->c:Ljava/util/regex/Pattern;

    nop

    invoke-static {v8, v9}, Lqse;->b(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    nop

    iput-object v8, v5, Lqsd;->h:Ljava/lang/Long;

    nop

    nop

    nop

    sget-object v8, Lqsd;->d:Ljava/util/regex/Pattern;

    nop

    nop

    invoke-static {v8, v9}, Lqse;->b(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    nop

    iput-object v8, v5, Lqsd;->i:Ljava/lang/Long;

    nop

    nop

    sget-object v8, Lqsd;->e:Ljava/util/regex/Pattern;

    nop

    nop

    nop

    nop

    invoke-static {v8, v9}, Lqse;->b(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    nop

    nop

    nop

    nop

    nop

    iput-object v8, v5, Lqsd;->j:Ljava/lang/Long;

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_7
    goto/32 :goto_13a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    throw p0

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v10, v9, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_103

    nop

    nop

    :goto_b
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    nop

    goto/32 :goto_145

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v2, v7, Ltkb;->b:Ltkg;

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

    :goto_d
    if-eqz v4, :cond_3

    nop

    nop

    nop

    goto/32 :goto_110

    nop

    nop

    :cond_3
    goto/32 :goto_10f

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-eqz v4, :cond_4

    nop

    goto/32 :goto_130

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_12f

    nop

    nop

    :goto_f
    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v4, v9, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_12
    iput-wide v10, v4, Lups;->h:J

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iput-object v5, v4, Lupv;->c:Lupu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12d

    nop

    nop

    nop

    :goto_15
    iput v3, v2, Lupv;->b:I

    nop

    goto/32 :goto_e7

    nop

    nop

    nop

    nop

    :goto_16
    iput-object v2, p0, Lurc;->f:Lupv;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_17
    iget v12, v11, Lups;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_b9

    nop

    nop

    nop

    :goto_18
    new-instance v4, Landroid/app/ActivityManager$MemoryInfo;

    nop

    goto/32 :goto_b1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v5}, Ltkg;->C()Z

    move-result v5

    nop

    goto/32 :goto_13e

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    if-nez v4, :cond_5

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_c4

    nop

    nop

    :goto_1b
    iput-object v4, v3, Lupv;->d:Luqh;

    nop

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    :goto_1c
    check-cast v4, Lqrr;

    nop

    goto/32 :goto_11f

    nop

    nop

    nop

    :goto_1d
    iget-object v4, v2, Lqse;->a:Ltxm;

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    check-cast v4, Lups;

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

    nop

    :goto_1f
    check-cast v10, Lups;

    nop

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iget v3, v2, Lupv;->b:I

    nop

    nop

    goto/32 :goto_c6

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v7}, Ltkb;->o()V

    :goto_22
    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    or-int/2addr v12, v13

    nop

    nop

    nop

    goto/32 :goto_e1

    nop

    nop

    :goto_24
    invoke-virtual {v3}, Ltkg;->C()Z

    move-result v3

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    :goto_25
    invoke-virtual {v4}, Ltkb;->o()V

    :goto_26
    goto/32 :goto_132

    nop

    nop

    nop

    nop

    :goto_27
    iput-object v2, v3, Lupv;->g:Ljava/lang/String;

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_100

    nop

    nop

    nop

    nop

    :goto_29
    iget v3, p0, Lqsa;->d:I

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    iput-wide v10, v4, Lups;->g:J

    nop

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {v4}, Ltkg;->C()Z

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_125

    nop

    nop

    nop

    :goto_2d
    or-int/lit8 v2, v2, 0x8

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    iget-object v4, v7, Ltkd;->b:Ltkg;

    nop

    nop

    nop

    nop

    goto/32 :goto_143

    nop

    nop

    nop

    :goto_2f
    sget-object v0, Lurc;->a:Lurc;

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

    nop

    nop

    :goto_30
    iget-object v5, v8, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_cd

    nop

    nop

    nop

    nop

    :goto_31
    iget-object v4, v5, Lqsd;->j:Ljava/lang/Long;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_32
    invoke-virtual {v10}, Ltkg;->C()Z

    move-result v10

    nop

    nop

    nop

    goto/32 :goto_146

    nop

    nop

    :goto_33
    iget-object v2, v1, Lqsb;->e:Lqse;

    nop

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    :goto_34
    const v1, 0x16

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    :goto_35
    if-eqz v12, :cond_6

    nop

    nop

    nop

    goto/32 :goto_11a

    nop

    nop

    :cond_6
    goto/32 :goto_119

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    if-nez v2, :cond_7

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_dc

    nop

    nop

    nop

    nop

    nop

    :goto_37
    iget-object v4, v9, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_12b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    iput v5, v4, Lupv;->b:I

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    :goto_39
    iput-object v2, v0, Lqou;->f:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_11c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    or-int/2addr v11, v12

    nop

    goto/32 :goto_137

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-static {}, Lqov;->a()Lqou;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_101

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    iget-wide v10, v4, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12e

    nop

    nop

    nop

    :goto_3d
    invoke-virtual {v9}, Ltkb;->o()V

    :goto_3e
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-virtual {v7}, Ltkb;->o()V

    :goto_40
    goto/32 :goto_81

    nop

    nop

    nop

    :goto_41
    invoke-virtual {v7, v4}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    :goto_42
    iget-wide v3, p0, Lqsa;->b:J

    nop

    nop

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    :goto_43
    monitor-enter v8

    nop

    :try_start_1
    sget-object v9, Lqnz;->a:Landroid/app/ActivityManager;

    nop

    nop

    nop

    nop

    if-nez v9, :cond_8

    nop

    nop

    nop

    nop

    nop

    const-string v9, "activity"

    nop

    nop

    invoke-virtual {v7, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    nop

    nop

    nop

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v7, Landroid/app/ActivityManager;

    nop

    nop

    nop

    nop

    nop

    sput-object v7, Lqnz;->a:Landroid/app/ActivityManager;

    nop

    nop

    nop

    :cond_8
    monitor-exit v8

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_50

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    monitor-exit v8

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_44
    iput-object v3, v5, Luqh;->c:Luqg;

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_45
    or-int/2addr v12, v13

    nop

    nop

    nop

    goto/32 :goto_115

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    iget-object v3, v0, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_47
    iput-object p1, v0, Lqou;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_11b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    invoke-virtual {v9}, Ltkb;->o()V

    :goto_49
    goto/32 :goto_37

    nop

    nop

    :goto_4a
    sget-object v8, Lupu;->a:Lupu;

    nop

    nop

    nop

    goto/32 :goto_da

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-static {v7}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto/32 :goto_e5

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    check-cast v11, Lups;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_4d
    iget v4, v5, Lupu;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    iput-object v4, v5, Lupu;->c:Lups;

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    throw p0

    nop

    nop

    nop

    :goto_50
    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    nop

    :goto_51
    invoke-virtual {v9}, Ltkb;->i()Ltkg;

    move-result-object v4

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

    :goto_52
    invoke-virtual {v0}, Lqou;->a()Lqov;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_e4

    nop

    nop

    :goto_53
    invoke-virtual {v2}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v2

    nop

    nop

    goto/32 :goto_bc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_54
    iget-object v4, v3, Ltkb;->b:Ltkg;

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

    :goto_55
    if-eqz v3, :cond_9

    nop

    goto/32 :goto_106

    nop

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_105

    nop

    nop

    nop

    nop

    nop

    :goto_56
    check-cast v5, Lupu;

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    :goto_57
    iget v12, v4, Lups;->b:I

    nop

    goto/32 :goto_128

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_58
    if-nez v4, :cond_a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    :cond_a
    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_59
    invoke-virtual {v3}, Ltkg;->m()Ltkb;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_cb

    nop

    nop

    nop

    nop

    :goto_5a
    const/4 v6, 0x0

    nop

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    :goto_5b
    iput v3, v4, Lupv;->e:I

    nop

    nop

    nop

    nop

    goto/32 :goto_129

    nop

    nop

    nop

    :goto_5c
    iget v11, v10, Lups;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    :goto_5d
    const-class v8, Lqnz;

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_5e
    iget v3, v5, Luqh;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_123

    nop

    nop

    nop

    :goto_5f
    invoke-virtual {v8}, Ltkb;->i()Ltkg;

    move-result-object v5

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

    :goto_60
    invoke-virtual {v4}, Ltkg;->m()Ltkb;

    move-result-object v4

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

    nop

    :goto_61
    check-cast v4, Lups;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e2

    nop

    nop

    nop

    nop

    :goto_62
    iget-object v11, v9, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_63
    iput-wide v10, v4, Lups;->f:J

    nop

    nop

    nop

    nop

    :goto_64
    goto/32 :goto_111

    nop

    nop

    nop

    nop

    :goto_65
    invoke-interface {v4}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v4

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

    :goto_66
    check-cast p0, Lurc;

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_67
    iget-object v10, v9, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_68
    iput v12, v11, Lups;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_dd

    nop

    nop

    nop

    :goto_69
    goto/16 :goto_e6

    nop

    :catchall_1
    move-exception p0

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

    :goto_6a
    iget-object v4, v5, Lqsd;->i:Ljava/lang/Long;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_6b
    iput v12, v4, Lups;->b:I

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_6c
    iget-object v4, v7, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_6d
    goto/32 :goto_fa

    nop

    nop

    nop

    :goto_6e
    if-eqz v8, :cond_b

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    goto/16 :goto_10e

    nop

    nop

    :goto_70
    goto/32 :goto_96

    nop

    nop

    nop

    nop

    :goto_71
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_4e

    nop

    nop

    :goto_72
    goto/16 :goto_b6

    nop

    nop

    nop

    nop

    :goto_73
    goto/32 :goto_b5

    nop

    nop

    nop

    nop

    nop

    :goto_74
    invoke-virtual {v5}, Ltkg;->C()Z

    move-result v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_75
    iget-object v3, v7, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    :goto_76
    iget v11, v10, Lups;->b:I

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

    nop

    :goto_77
    iput v4, v3, Lupv;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_db

    nop

    nop

    nop

    nop

    nop

    :goto_78
    invoke-virtual {v0, v9}, Lqou;->c(Z)V

    goto/32 :goto_127

    nop

    nop

    nop

    nop

    nop

    :goto_79
    or-int/2addr v5, v9

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

    :goto_7a
    const/high16 v12, 0x800000

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

    :goto_7b
    add-int v0, v0, v1

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

    :goto_7c
    check-cast v4, Lupv;

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    iget-object v3, v7, Ltkd;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d8

    nop

    nop

    nop

    nop

    :goto_7e
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_ca

    nop

    nop

    nop

    nop

    :goto_7f
    invoke-virtual {v3, v4}, Lhdn;->L(Lqoa;)Z

    move-result v3

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_80
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    nop

    nop

    nop

    goto/32 :goto_10a

    nop

    nop

    nop

    nop

    nop

    :goto_81
    iget-object v2, p0, Lqsa;->c:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_82
    invoke-virtual {v0}, Ltkg;->m()Ltkb;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f8

    nop

    nop

    :goto_83
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    nop

    nop

    nop

    goto/32 :goto_c1

    nop

    nop

    nop

    nop

    nop

    :goto_84
    invoke-virtual {v3}, Ltkg;->C()Z

    move-result v3

    nop

    nop

    goto/32 :goto_c7

    nop

    nop

    nop

    nop

    nop

    :goto_85
    iput v4, v5, Lupu;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    :goto_86
    check-cast v4, Lups;

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

    :goto_87
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_136

    nop

    nop

    :goto_88
    iget-object p0, v1, Lqsb;->d:Lqoz;

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    :goto_89
    check-cast v7, Ltkd;

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_8a
    iput v5, v4, Lupt;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_11e

    nop

    nop

    :goto_8b
    iget v4, v3, Lupv;->b:I

    nop

    goto/32 :goto_bd

    nop

    nop

    nop

    nop

    nop

    :goto_8c
    check-cast v4, Luqh;

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    :goto_8d
    const/4 v9, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    :goto_8e
    iget-object v5, v4, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    :goto_8f
    check-cast p1, Lupq;

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_90
    iget v4, v3, Lupv;->b:I

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

    :goto_91
    or-int/lit8 v4, v4, 0x10

    nop

    nop

    nop

    nop

    goto/32 :goto_141

    nop

    nop

    nop

    nop

    :goto_92
    iget-wide v10, v4, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    nop

    nop

    goto/32 :goto_112

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_93
    check-cast v2, Lupv;

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_94
    iget-object v4, v2, Lqse;->b:Landroid/content/Context;

    nop

    nop

    nop

    goto/32 :goto_bf

    nop

    nop

    nop

    :goto_95
    or-int/2addr v4, v9

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    :goto_96
    iget-object v4, v5, Lqsd;->f:Ljava/lang/Long;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_be

    nop

    nop

    :goto_97
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_14

    nop

    nop

    :goto_98
    iget v5, v4, Lupt;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    :goto_99
    or-int/2addr v12, v13

    nop

    nop

    goto/32 :goto_135

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9a
    invoke-virtual {v3}, Ltkg;->C()Z

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    :goto_9b
    const/high16 v13, 0x100000

    nop

    goto/32 :goto_99

    nop

    nop

    :goto_9c
    invoke-virtual {v4}, Ltkg;->C()Z

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    :goto_9d
    iget-object v3, v2, Lqse;->e:Lhdn;

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

    :goto_9e
    check-cast v5, Landroid/content/Context;

    nop

    goto/32 :goto_f1

    nop

    nop

    :goto_9f
    if-eqz v4, :cond_c

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_a0
    iget-object p0, v0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    goto/32 :goto_133

    nop

    nop

    nop

    nop

    nop

    :goto_a1
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_d1

    nop

    nop

    nop

    nop

    :goto_a2
    or-int/2addr v5, v9

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_a3
    goto/16 :goto_109

    nop

    :goto_a4
    goto/32 :goto_92

    nop

    nop

    nop

    :goto_a5
    iput v3, v4, Lupv;->b:I

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_a6
    invoke-virtual {v7}, Ltkg;->m()Ltkb;

    move-result-object v7

    nop

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    :goto_a7
    invoke-virtual {v7}, Ltkb;->o()V

    :goto_a8
    goto/32 :goto_116

    nop

    nop

    :goto_a9
    invoke-virtual {v8}, Ltkb;->o()V

    :goto_aa
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ab
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_1b

    nop

    nop

    :goto_ac
    iget v12, v4, Lups;->b:I

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

    :goto_ad
    if-eqz v3, :cond_d

    nop

    nop

    goto/32 :goto_139

    nop

    nop

    :cond_d
    goto/32 :goto_138

    nop

    nop

    nop

    nop

    :goto_ae
    invoke-virtual {v0}, Ltkb;->i()Ltkg;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    :goto_af
    sget-object v4, Luqh;->a:Luqh;

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    :goto_b0
    if-nez v4, :cond_e

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_b1
    invoke-direct {v4}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    goto/32 :goto_144

    nop

    nop

    :goto_b2
    iget-object v4, v5, Lqsd;->g:Ljava/lang/Long;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    :goto_b3
    sget-object v8, Lqnz;->a:Landroid/app/ActivityManager;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    :goto_b4
    if-eqz v4, :cond_f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    :cond_f
    goto/32 :goto_a3

    nop

    nop

    nop

    :goto_b5
    move-object v4, v6

    nop

    nop

    nop

    nop

    :goto_b6
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_b7
    if-eqz v4, :cond_10

    nop

    nop

    nop

    goto/32 :goto_118

    nop

    :cond_10
    goto/32 :goto_117

    nop

    nop

    nop

    :goto_b8
    goto/16 :goto_d7

    nop

    :catch_0
    move-exception v5

    nop

    nop

    :try_start_2
    sget-object v8, Lqmo;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v8}, Lscs;->c()Lsdo;

    move-result-object v8

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v8, v5}, Lscz;->i(Ljava/lang/Throwable;)Lsdo;

    move-result-object v5

    nop

    nop

    nop

    check-cast v5, Lscz;

    nop

    nop

    const/16 v8, 0x1541

    nop

    nop

    nop

    nop

    invoke-interface {v5, v8}, Lscz;->M(I)Lsdo;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    check-cast v5, Lscz;

    nop

    nop

    nop

    nop

    const-string v8, "Error reading proc status"

    nop

    nop

    nop

    nop

    invoke-interface {v5, v8}, Lscz;->s(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b9
    const/high16 v13, 0x20000

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_fc

    nop

    nop

    nop

    nop

    nop

    :goto_ba
    iget-object v4, v9, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_bb
    sget-object v7, Lqnz;->a:Landroid/app/ActivityManager;

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bc
    iget-object v4, v3, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_bd
    or-int/lit8 v4, v4, 0x2

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    :goto_be
    if-nez v4, :cond_11

    nop

    nop

    nop

    nop

    goto/32 :goto_ea

    nop

    nop

    :cond_11
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_bf
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    nop

    nop

    goto/32 :goto_c5

    nop

    nop

    nop

    nop

    nop

    :goto_c0
    iput v11, v10, Lups;->b:I

    nop

    goto/32 :goto_108

    nop

    nop

    nop

    nop

    :goto_c1
    iget-object v10, v9, Ltkb;->b:Ltkg;

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

    :goto_c2
    add-int/lit8 v3, v3, -0x1

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_c3
    if-nez v4, :cond_12

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

    :cond_12
    goto/32 :goto_12a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c4
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    nop

    goto/32 :goto_114

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c5
    invoke-static {v4}, Lqnz;->a(Landroid/content/Context;)Lqoa;

    move-result-object v4

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    :goto_c6
    or-int/lit8 v3, v3, 0x8

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

    nop

    :goto_c7
    if-eqz v3, :cond_13

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :cond_13
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_c8
    iget-object v5, v2, Lqse;->d:Lqro;

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

    :goto_c9
    invoke-static {}, Lqzk;->b()V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_ca
    if-lez v0, :cond_14

    nop

    goto/32 :goto_fa

    nop

    nop

    nop

    nop

    nop

    :cond_14
    goto/32 :goto_f9

    nop

    :goto_cb
    iget-object v2, v2, Lqse;->b:Landroid/content/Context;

    nop

    nop

    goto/32 :goto_13b

    nop

    nop

    nop

    nop

    :goto_cc
    iget v12, v4, Lups;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_142

    nop

    nop

    nop

    nop

    nop

    :goto_cd
    check-cast v5, Lupu;

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    :goto_ce
    iget-object v4, v9, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_df

    nop

    nop

    :goto_cf
    long-to-int v4, v10

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    :goto_d0
    invoke-virtual {v4}, Ltkg;->C()Z

    move-result v4

    nop

    goto/32 :goto_f5

    nop

    nop

    nop

    nop

    :goto_d1
    iput-object v3, v2, Lupv;->f:Lupt;

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d2
    invoke-virtual {v2}, Ltkg;->C()Z

    move-result v2

    nop

    nop

    goto/32 :goto_f7

    nop

    nop

    nop

    nop

    :goto_d3
    or-int/lit8 v3, v3, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    :goto_d4
    iget-object v12, v9, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    goto/32 :goto_fe

    nop

    nop

    nop

    :goto_d5
    if-eqz v5, :cond_15

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    :cond_15
    goto/32 :goto_25

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

    nop

    :goto_d7
    goto/32 :goto_eb

    nop

    nop

    :goto_d8
    check-cast v3, Lupv;

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d9
    if-eqz v4, :cond_16

    nop

    nop

    nop

    goto/32 :goto_148

    nop

    nop

    nop

    :cond_16
    goto/32 :goto_147

    nop

    nop

    :goto_da
    invoke-virtual {v8}, Ltkg;->m()Ltkb;

    move-result-object v8

    nop

    nop

    nop

    nop

    goto/32 :goto_f3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_db
    sget-object v3, Lupt;->a:Lupt;

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_dc
    iget-object v3, v7, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    :goto_dd
    iput v10, v11, Lups;->c:I

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_de
    iget-object v3, v7, Ltkd;->b:Ltkg;

    nop

    nop

    goto/32 :goto_f6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_df
    check-cast v4, Lups;

    nop

    nop

    goto/32 :goto_131

    nop

    nop

    nop

    :goto_e0
    invoke-static {v3, v5}, Lqro;->b(ZLqoa;)Luqg;

    move-result-object v3

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    :goto_e1
    iput v12, v4, Lups;->b:I

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

    :goto_e2
    iget-object v5, v8, Ltkb;->b:Ltkg;

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

    :goto_e3
    invoke-virtual {v4}, Ltkg;->C()Z

    move-result v4

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

    :goto_e4
    invoke-virtual {p0, p1}, Lqoz;->b(Lqov;)Lsui;

    move-result-object p0

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

    nop

    :goto_e5
    move-object v5, v6

    nop

    nop

    nop

    :goto_e6
    goto/32 :goto_13f

    nop

    nop

    :goto_e7
    iget-object v2, v7, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f0

    nop

    nop

    :goto_e8
    or-int/2addr v12, v13

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e9
    iput-wide v10, v4, Lups;->e:J

    nop

    nop

    nop

    nop

    :goto_ea
    goto/32 :goto_b2

    nop

    nop

    :goto_eb
    invoke-static {v7}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto/32 :goto_8

    nop

    nop

    :goto_ec
    shr-long/2addr v10, v4

    nop

    nop

    goto/32 :goto_126

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ed
    check-cast v3, Lupt;

    nop

    goto/32 :goto_a1

    nop

    nop

    :goto_ee
    check-cast v4, Lupt;

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    :goto_ef
    check-cast v5, Luqh;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_f0
    invoke-virtual {v2}, Ltkg;->C()Z

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_102

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f1
    invoke-static {v5}, Lqnz;->a(Landroid/content/Context;)Lqoa;

    move-result-object v5

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

    nop

    :goto_f2
    iput v3, v5, Luqh;->b:I

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    :goto_f3
    sget-object v9, Lups;->a:Lups;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_f4
    const/high16 v13, 0x200000

    nop

    nop

    nop

    nop

    goto/32 :goto_e8

    nop

    nop

    nop

    :goto_f5
    if-eqz v4, :cond_17

    nop

    nop

    nop

    nop

    goto/32 :goto_121

    nop

    nop

    nop

    nop

    nop

    :cond_17
    goto/32 :goto_120

    nop

    nop

    nop

    nop

    nop

    :goto_f6
    check-cast v3, Lupv;

    nop

    goto/32 :goto_149

    nop

    nop

    nop

    nop

    :goto_f7
    if-eqz v2, :cond_18

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

    :cond_18
    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    :goto_f8
    iget-object v1, p0, Lqsa;->a:Lqsb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_f9
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_fa
    goto/32 :goto_8f

    nop

    nop

    nop

    :goto_fb
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_fc
    or-int/2addr v12, v13

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    :goto_fd
    iget-object v5, v5, Lqro;->b:Ljava/lang/Object;

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

    :goto_fe
    invoke-virtual {v12}, Ltkg;->C()Z

    move-result v12

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

    :goto_ff
    shr-long/2addr v10, v12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d4

    nop

    nop

    nop

    nop

    :goto_100
    invoke-virtual {v7}, Ltkb;->i()Ltkg;

    move-result-object v2

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

    :goto_101
    iput-object v6, v0, Lqou;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    :goto_102
    if-eqz v2, :cond_19

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    :cond_19
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_103
    check-cast v10, Lups;

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_104
    check-cast v2, Lupv;

    nop

    nop

    nop

    goto/32 :goto_12c

    nop

    nop

    nop

    nop

    :goto_105
    invoke-virtual {v0}, Ltkb;->o()V

    :goto_106
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_107
    const/high16 v12, 0x40000

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

    :goto_108
    iput v4, v10, Lups;->d:I

    nop

    nop

    nop

    nop

    nop

    :goto_109
    goto/32 :goto_11d

    nop

    nop

    nop

    nop

    nop

    :goto_10a
    iget-object v4, v9, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_e3

    nop

    nop

    nop

    nop

    :goto_10b
    invoke-virtual {v3}, Ltkb;->o()V

    :goto_10c
    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_10d
    iput-wide v4, v10, Lups;->i:J

    nop

    nop

    nop

    nop

    :goto_10e
    goto/32 :goto_51

    nop

    nop

    :goto_10f
    invoke-virtual {v9}, Ltkb;->o()V

    :goto_110
    goto/32 :goto_122

    nop

    nop

    nop

    nop

    nop

    :goto_111
    iget-object v4, v5, Lqsd;->h:Ljava/lang/Long;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c3

    nop

    nop

    :goto_112
    const/16 v12, 0xa

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ff

    nop

    nop

    :goto_113
    or-int/2addr v11, v12

    nop

    nop

    nop

    goto/32 :goto_c0

    nop

    nop

    nop

    nop

    nop

    :goto_114
    iget-object v4, v9, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    goto/32 :goto_140

    nop

    nop

    nop

    nop

    :goto_115
    iput v12, v4, Lups;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_e9

    nop

    nop

    nop

    nop

    nop

    :goto_116
    iget-object v2, v7, Ltkd;->b:Ltkg;

    nop

    goto/32 :goto_104

    nop

    nop

    nop

    :goto_117
    invoke-virtual {v9}, Ltkb;->o()V

    :goto_118
    goto/32 :goto_ce

    nop

    nop

    nop

    :goto_119
    invoke-virtual {v9}, Ltkb;->o()V

    :goto_11a
    goto/32 :goto_134

    nop

    nop

    nop

    nop

    nop

    :goto_11b
    invoke-virtual {v0, v9}, Lqou;->d(Z)V

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    :goto_11c
    invoke-virtual {v0, p0}, Lqou;->e(Lurc;)V

    goto/32 :goto_47

    nop

    nop

    :goto_11d
    if-eqz v5, :cond_1a

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    :cond_1a
    goto/32 :goto_6f

    nop

    nop

    nop

    :goto_11e
    iput-boolean v2, v4, Lupt;->c:Z

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11f
    iget-boolean v4, v4, Lqrr;->b:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_120
    invoke-virtual {v9}, Ltkb;->o()V

    :goto_121
    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_122
    iget-object v4, v9, Ltkb;->b:Ltkg;

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

    :goto_123
    or-int/2addr v3, v9

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

    :goto_124
    iget-object v4, v7, Ltkd;->b:Ltkg;

    nop

    goto/32 :goto_7c

    nop

    nop

    :goto_125
    if-eqz v4, :cond_1b

    nop

    nop

    nop

    nop

    goto/32 :goto_10c

    nop

    nop

    :cond_1b
    goto/32 :goto_10b

    nop

    nop

    nop

    nop

    :goto_126
    iget-object v4, v9, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_13d

    nop

    nop

    nop

    nop

    nop

    :goto_127
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_128
    const/high16 v13, 0x400000

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_129
    iget v3, v4, Lupv;->b:I

    nop

    nop

    nop

    goto/32 :goto_d3

    nop

    nop

    nop

    :goto_12a
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_12b
    check-cast v4, Lups;

    nop

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12c
    invoke-virtual {v3}, Ltkb;->i()Ltkg;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_ed

    nop

    nop

    nop

    nop

    nop

    :goto_12d
    iget v5, v4, Lupv;->b:I

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    :goto_12e
    const/16 v4, 0x14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ec

    nop

    nop

    nop

    :goto_12f
    invoke-virtual {v9}, Ltkb;->o()V

    :goto_130
    goto/32 :goto_cf

    nop

    nop

    nop

    nop

    :goto_131
    iget v12, v4, Lups;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_f4

    nop

    nop

    :goto_132
    iget-object v5, v4, Ltkb;->b:Ltkg;

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

    :goto_133
    check-cast p0, Lurc;

    nop

    nop

    nop

    goto/32 :goto_fb

    nop

    nop

    :goto_134
    long-to-int v10, v10

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    :goto_135
    iput v12, v4, Lups;->b:I

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    :goto_136
    check-cast v2, Landroid/os/PowerManager;

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

    :goto_137
    iput v11, v10, Lups;->b:I

    nop

    goto/32 :goto_10d

    nop

    nop

    :goto_138
    invoke-virtual {v7}, Ltkb;->o()V

    :goto_139
    goto/32 :goto_de

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13a
    invoke-static {v7}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    :goto_13b
    const-string v4, "power"

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_13c
    const v0, 0x9

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

    :goto_13d
    invoke-virtual {v4}, Ltkg;->C()Z

    move-result v4

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

    nop

    :goto_13e
    if-eqz v5, :cond_1c

    nop

    nop

    goto/32 :goto_aa

    nop

    nop

    :cond_1c
    goto/32 :goto_a9

    nop

    nop

    :goto_13f
    sget-object v7, Lupv;->a:Lupv;

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_140
    invoke-virtual {v4}, Ltkg;->C()Z

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_141
    iput v4, v3, Lupv;->b:I

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_142
    const/high16 v13, 0x80000

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_143
    check-cast v4, Lupv;

    nop

    nop

    goto/32 :goto_c2

    nop

    nop

    :goto_144
    iget-object v7, v2, Lqse;->b:Landroid/content/Context;

    nop

    goto/32 :goto_b3

    nop

    nop

    :goto_145
    iget-object v4, v9, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_d0

    nop

    nop

    nop

    nop

    nop

    :goto_146
    if-eqz v10, :cond_1d

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :cond_1d
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_147
    invoke-virtual {v7}, Ltkb;->o()V

    :goto_148
    goto/32 :goto_124

    nop

    nop

    :goto_149
    invoke-virtual {v4}, Ltkb;->i()Ltkg;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop
.end method

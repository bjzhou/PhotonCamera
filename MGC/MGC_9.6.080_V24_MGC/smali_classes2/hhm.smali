.class Lhhm;
.super Lhhr;
.source "PG"


# instance fields
.field final synthetic a:Lhhq;


# direct methods
.method public constructor <init>(Lhhq;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    iput-object p1, p0, Lhhm;->a:Lhhq;

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

    :goto_2
    invoke-direct {p0}, Lhhr;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()V
    .locals 24

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object v2, v3, Lhex;->g:Lhgg;

    nop

    :goto_1
    goto/32 :goto_b4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/16 :goto_1

    nop

    nop

    :goto_3
    :try_start_0
    iget-object v8, v3, Lhex;->e:Lhep;

    nop

    nop

    invoke-virtual {v8}, Lhep;->h()Ltkd;

    move-result-object v9

    nop

    nop

    nop

    invoke-virtual {v8, v9}, Lhep;->j(Ltkd;)V

    invoke-virtual {v8, v9}, Lhep;->i(Ltkd;)V

    invoke-virtual {v8}, Lhep;->e()Z

    move-result v10

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7

    goto/32 :goto_b5

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    :goto_5
    if-eqz v1, :cond_0

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

    :cond_0
    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_6
    move-object v1, v0

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    :goto_7
    iget-object v1, v3, Lhex;->e:Lhep;

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-eqz v14, :cond_1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_1
    :try_start_1
    invoke-virtual {v12}, Ltkb;->o()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    :goto_9
    :try_start_2
    iget-object v14, v12, Ltkd;->b:Ltkg;

    nop

    nop

    nop

    check-cast v14, Ltox;

    nop

    nop

    nop

    nop

    nop

    iget v15, v14, Ltox;->b:I

    nop

    nop

    nop

    nop

    or-int/lit8 v15, v15, 0x10

    nop

    nop

    nop

    iput v15, v14, Ltox;->b:I

    nop

    nop

    nop

    nop

    const v15, 0x3e99999a    # 0.3f

    nop

    nop

    nop

    nop

    iput v15, v14, Ltox;->f:F

    nop

    nop

    nop

    nop

    iget-object v14, v12, Ltkb;->b:Ltkg;

    nop

    nop

    invoke-virtual {v14}, Ltkg;->C()Z

    move-result v14

    nop
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    move-object/from16 v3, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_b
    invoke-virtual {v3, v4, v7}, Lhex;->a(Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_c
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/16 :goto_c1

    nop

    nop

    nop

    :catch_0
    move-exception v0

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

    :goto_e
    if-eqz v4, :cond_2

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_6a

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v1, v4}, Lhep;->f(I)Lrec;

    move-result-object v6

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

    :goto_10
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    :goto_11
    check-cast v4, Lreb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    :goto_12
    const-string v4, "Failed to read assets for Non Barcode engines. Starting VisionKit with barcode only configuration"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_13
    if-eqz v5, :cond_3

    nop

    goto/32 :goto_14

    nop

    :cond_3
    :try_start_3
    invoke-virtual {v10}, Ltkb;->o()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    :goto_14
    :try_start_4
    iget-object v5, v10, Ltkb;->b:Ltkg;

    nop

    nop

    move-object v15, v5

    nop

    nop

    nop

    nop

    check-cast v15, Lren;

    nop

    iget v5, v15, Lren;->b:I

    nop

    nop

    nop

    const/16 v19, 0x1

    nop

    nop

    or-int/lit8 v5, v5, 0x1

    nop

    nop

    iput v5, v15, Lren;->b:I

    nop

    iput v14, v15, Lren;->c:I

    nop

    nop

    nop

    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v14

    nop

    nop

    nop

    nop

    nop

    iget-object v5, v10, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v5}, Ltkg;->C()Z

    move-result v5

    nop

    nop

    nop
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget-object v3, v3, Lhex;->h:Lpdf;

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-eqz v7, :cond_4

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :cond_4
    :try_start_5
    invoke-virtual {v6}, Ltkb;->o()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    :goto_17
    :try_start_6
    iget-object v7, v6, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    check-cast v7, Luty;

    nop

    nop

    nop

    iget v8, v7, Luty;->b:I

    nop

    nop

    const/4 v10, 0x4

    nop

    nop

    nop

    nop

    nop

    or-int/2addr v8, v10

    nop

    nop

    nop

    nop

    iput v8, v7, Luty;->b:I

    nop

    nop

    nop

    nop

    nop

    const/high16 v8, 0x3e800000    # 0.25f

    nop

    nop

    nop

    nop

    iput v8, v7, Luty;->c:F

    nop

    nop

    nop

    nop

    sget-object v7, Lutx;->a:Lutx;

    nop

    nop

    invoke-virtual {v7}, Ltkg;->m()Ltkb;

    move-result-object v7

    nop

    nop

    nop

    nop

    iget-object v8, v7, Ltkb;->b:Ltkg;

    nop

    invoke-virtual {v8}, Ltkg;->C()Z

    move-result v8

    nop

    nop
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v1, v2}, Lhep;->j(Ltkd;)V

    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget-object v7, v4, Lhex;->h:Lpdf;

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :goto_1a
    goto/16 :goto_c

    nop

    nop

    :catch_1
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_1b
    move-object/from16 v21, v2

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_1c
    move-object/from16 v21, v13

    nop

    nop

    :try_start_7
    iget v13, v5, Ltow;->b:I

    nop

    nop

    nop

    nop

    const/16 v20, 0x4

    nop

    nop

    nop

    or-int/lit8 v13, v13, 0x4

    nop

    nop

    iput v13, v5, Ltow;->b:I

    nop

    nop

    nop

    nop

    iput-wide v1, v5, Ltow;->e:J

    nop

    nop

    nop

    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v1

    nop

    iget-object v4, v15, Ltkb;->b:Ltkg;

    nop

    invoke-virtual {v4}, Ltkg;->C()Z

    move-result v4

    nop

    nop

    nop

    nop

    if-nez v4, :cond_5

    nop

    nop

    invoke-virtual {v15}, Ltkb;->o()V

    :cond_5
    iget-object v4, v15, Ltkb;->b:Ltkg;

    nop

    check-cast v4, Ltow;

    nop

    iget v5, v4, Ltow;->b:I

    nop

    nop

    nop

    const/4 v13, 0x2

    nop

    nop

    nop

    nop

    nop

    or-int/2addr v5, v13

    nop

    nop

    iput v5, v4, Ltow;->b:I

    nop

    nop

    nop

    nop

    nop

    iput-wide v1, v4, Ltow;->d:J

    nop

    nop

    invoke-virtual {v15}, Ltkb;->i()Ltkg;

    move-result-object v1

    nop

    check-cast v1, Ltow;

    nop

    iget-object v2, v14, Ltkb;->b:Ltkg;

    nop

    nop

    invoke-virtual {v2}, Ltkg;->C()Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    if-nez v2, :cond_6

    nop

    nop

    invoke-virtual {v14}, Ltkb;->o()V

    :cond_6
    iget-object v2, v14, Ltkb;->b:Ltkg;

    nop

    check-cast v2, Ltov;

    nop

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, v2, Ltov;->c:Ltow;

    nop

    nop

    nop

    nop

    iget v1, v2, Ltov;->b:I

    nop

    nop

    nop

    const/4 v4, 0x4

    nop

    nop

    nop

    or-int/2addr v1, v4

    nop

    nop

    iput v1, v2, Ltov;->b:I

    nop

    nop

    sget-object v1, Ltow;->a:Ltow;

    nop

    invoke-virtual {v1}, Ltkg;->m()Ltkb;

    move-result-object v1

    nop

    nop

    nop

    nop

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v2

    nop

    iget-object v4, v1, Ltkb;->b:Ltkg;

    nop

    invoke-virtual {v4}, Ltkg;->C()Z

    move-result v4

    nop

    nop

    nop

    nop

    nop

    if-nez v4, :cond_7

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Ltkb;->o()V

    :cond_7
    iget-object v4, v1, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    check-cast v4, Ltow;

    nop

    iget v5, v4, Ltow;->b:I

    nop

    nop

    const/4 v13, 0x1

    nop

    or-int/lit8 v15, v5, 0x1

    nop

    nop

    nop

    iput v15, v4, Ltow;->b:I

    nop

    nop

    nop

    nop

    iput v2, v4, Ltow;->c:I

    nop

    nop

    nop

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v4

    nop

    iget-object v2, v1, Ltkb;->b:Ltkg;

    nop

    invoke-virtual {v2}, Ltkg;->C()Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    if-nez v2, :cond_8

    nop

    nop

    invoke-virtual {v1}, Ltkb;->o()V

    :cond_8
    iget-object v2, v1, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    check-cast v2, Ltow;

    nop

    iget v13, v2, Ltow;->b:I

    nop

    const/4 v15, 0x4

    nop

    nop

    nop

    nop

    nop

    or-int/2addr v13, v15

    nop

    nop

    nop

    nop

    iput v13, v2, Ltow;->b:I

    nop

    nop

    nop

    iput-wide v4, v2, Ltow;->e:J

    nop

    nop

    nop

    nop

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    nop

    nop

    iget-object v2, v1, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Ltkg;->C()Z

    move-result v2

    nop

    nop

    if-nez v2, :cond_9

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Ltkb;->o()V

    :cond_9
    iget-object v2, v1, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    check-cast v2, Ltow;

    nop

    nop

    nop

    nop

    nop

    iget v6, v2, Ltow;->b:I

    nop

    const/4 v13, 0x2

    nop

    or-int/2addr v6, v13

    nop

    nop

    iput v6, v2, Ltow;->b:I

    nop

    nop

    nop

    iput-wide v4, v2, Ltow;->d:J

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Ltkb;->i()Ltkg;

    move-result-object v1

    nop

    nop

    nop

    check-cast v1, Ltow;

    nop

    nop

    nop

    nop

    iget-object v2, v14, Ltkb;->b:Ltkg;

    nop

    invoke-virtual {v2}, Ltkg;->C()Z

    move-result v2

    nop

    nop

    if-nez v2, :cond_a

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v14}, Ltkb;->o()V

    :cond_a
    iget-object v2, v14, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    check-cast v2, Ltov;

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, v2, Ltov;->d:Ltow;

    nop

    nop

    nop

    iget v1, v2, Ltov;->b:I

    nop

    nop

    nop

    nop

    or-int/lit8 v1, v1, 0x20

    nop

    nop

    iput v1, v2, Ltov;->b:I

    nop

    nop

    nop

    nop

    nop

    sget-object v1, Ltow;->a:Ltow;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Ltkg;->m()Ltkb;

    move-result-object v1

    nop

    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    nop

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v2

    nop

    iget-object v4, v1, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    invoke-virtual {v4}, Ltkg;->C()Z

    move-result v4

    nop

    if-nez v4, :cond_b

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Ltkb;->o()V

    :cond_b
    iget-object v4, v1, Ltkb;->b:Ltkg;

    nop

    nop

    check-cast v4, Ltow;

    nop

    iget v5, v4, Ltow;->b:I

    nop

    nop

    nop

    nop

    nop

    const/4 v6, 0x1

    nop

    nop

    nop

    or-int/lit8 v13, v5, 0x1

    nop

    iput v13, v4, Ltow;->b:I

    nop

    iput v2, v4, Ltow;->c:I

    nop

    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v5

    nop

    nop

    nop

    nop

    iget-object v2, v1, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    invoke-virtual {v2}, Ltkg;->C()Z

    move-result v2

    nop

    if-nez v2, :cond_c

    nop

    nop

    nop

    invoke-virtual {v1}, Ltkb;->o()V

    :cond_c
    iget-object v2, v1, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    check-cast v2, Ltow;

    nop

    nop

    nop

    nop

    iget v4, v2, Ltow;->b:I

    nop

    nop

    nop

    const/4 v13, 0x4

    nop

    or-int/2addr v4, v13

    nop

    nop

    nop

    nop

    nop

    iput v4, v2, Ltow;->b:I

    nop

    iput-wide v5, v2, Ltow;->e:J

    nop

    nop

    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    nop

    nop

    nop

    nop

    iget-object v2, v1, Ltkb;->b:Ltkg;

    nop

    invoke-virtual {v2}, Ltkg;->C()Z

    move-result v2

    nop

    nop

    if-nez v2, :cond_d

    nop

    nop

    nop

    invoke-virtual {v1}, Ltkb;->o()V

    :cond_d
    iget-object v2, v1, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    check-cast v2, Ltow;

    nop

    iget v6, v2, Ltow;->b:I

    nop

    nop

    nop

    nop

    const/4 v7, 0x2

    nop

    nop

    or-int/2addr v6, v7

    nop

    iput v6, v2, Ltow;->b:I

    nop

    nop

    nop

    nop

    nop

    iput-wide v4, v2, Ltow;->d:J

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Ltkb;->i()Ltkg;

    move-result-object v1

    nop

    nop

    nop

    check-cast v1, Ltow;

    nop

    iget-object v2, v14, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Ltkg;->C()Z

    move-result v2

    nop

    nop

    nop

    if-nez v2, :cond_e

    nop

    nop

    nop

    nop

    invoke-virtual {v14}, Ltkb;->o()V

    :cond_e
    iget-object v2, v14, Ltkb;->b:Ltkg;

    nop

    nop

    check-cast v2, Ltov;

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, v2, Ltov;->e:Ltow;

    nop

    nop

    nop

    iget v1, v2, Ltov;->b:I

    nop

    or-int/lit16 v1, v1, 0x100

    nop

    nop

    iput v1, v2, Ltov;->b:I

    nop

    nop

    nop

    nop

    invoke-virtual {v14}, Ltkb;->i()Ltkg;

    move-result-object v1

    nop

    check-cast v1, Ltov;

    nop

    nop

    nop

    nop

    iget-object v2, v12, Ltkb;->b:Ltkg;

    nop

    nop

    invoke-virtual {v2}, Ltkg;->C()Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    if-nez v2, :cond_f

    nop

    nop

    nop

    invoke-virtual {v12}, Ltkb;->o()V

    :cond_f
    iget-object v2, v12, Ltkd;->b:Ltkg;

    nop

    nop

    nop

    check-cast v2, Ltox;

    nop

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, v2, Ltox;->i:Ltov;

    nop

    nop

    iget v1, v2, Ltox;->b:I

    nop

    nop

    nop

    nop

    or-int/lit16 v1, v1, 0x2000

    nop

    nop

    iput v1, v2, Ltox;->b:I

    nop

    nop
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto/32 :goto_68

    nop

    nop

    nop

    :goto_1d
    const/16 v6, 0x3c8

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

    :goto_1e
    invoke-interface {v2, v3, v4}, Loyd;->cL(Lpcm;Ljava/util/concurrent/Executor;)Lpci;

    move-result-object v2

    nop

    goto/32 :goto_9d

    nop

    nop

    :goto_1f
    iget-object v1, v3, Lhhm;->a:Lhhq;

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    :goto_20
    invoke-interface {v1}, Lhfw;->e()V

    goto/32 :goto_b3

    nop

    nop

    nop

    nop

    :goto_21
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_29

    nop

    nop

    :goto_22
    const v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_b8

    nop

    nop

    nop

    :goto_23
    iget-wide v8, v7, Lrdx;->b:J

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_24
    const/high16 v7, 0x3f000000    # 0.5f

    nop

    nop

    nop

    nop

    :try_start_8
    const-string v4, "camera_vkp/mobile_ica_v2_classifier_embedder.tflite.uncompressed"

    nop

    invoke-virtual {v11, v4}, Lhep;->a(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v4

    nop

    nop

    nop

    nop

    sget-object v5, Lutw;->a:Lutw;

    nop

    nop

    nop

    invoke-virtual {v5}, Ltkg;->m()Ltkb;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    sget-object v5, Lrem;->a:Lrem;

    nop

    nop

    invoke-virtual {v5}, Ltkg;->m()Ltkb;

    move-result-object v8

    nop

    nop

    sget-object v5, Lren;->a:Lren;

    nop

    nop

    invoke-virtual {v5}, Ltkg;->m()Ltkb;

    move-result-object v10

    nop

    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v14

    nop

    nop

    nop

    nop

    nop

    iget-object v5, v10, Ltkb;->b:Ltkg;

    nop

    invoke-virtual {v5}, Ltkg;->C()Z

    move-result v5

    nop

    nop

    nop

    nop
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    goto/32 :goto_13

    nop

    nop

    :goto_25
    invoke-interface {v1, v8, v9, v2}, Lrdv;->disableSubpipeline(JLjava/lang/String;)Z

    :goto_26
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    goto/16 :goto_59

    nop

    nop

    nop

    nop

    nop

    :catch_2
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    :goto_28
    iget-object v4, v3, Lhhm;->a:Lhhq;

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    nop

    nop

    :goto_29
    goto :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    cmp-long v1, v8, v1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    iget-object v4, v2, Ltkd;->b:Ltkg;

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

    :goto_2d
    const v7, 0x8000

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    iget-object v1, v7, Lrdx;->a:Lrdv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_2f
    iget-object v4, v3, Lhex;->h:Lpdf;

    nop

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    goto/16 :goto_4d

    nop

    nop

    :catch_3
    move-exception v0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_31
    if-eqz v5, :cond_10

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :cond_10
    :try_start_9
    invoke-virtual {v8}, Ltkb;->o()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    :goto_32
    :try_start_a
    iget-object v5, v8, Ltkb;->b:Ltkg;

    nop

    nop

    check-cast v5, Lrem;

    nop

    nop

    nop

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v4, v5, Lrem;->c:Lren;

    nop

    nop

    nop

    nop

    iget v4, v5, Lrem;->b:I

    nop

    nop

    const/4 v7, 0x4

    nop

    or-int/2addr v4, v7

    nop

    iput v4, v5, Lrem;->b:I

    nop

    nop

    invoke-virtual {v8}, Ltkb;->i()Ltkg;

    move-result-object v4

    nop

    nop

    check-cast v4, Lrem;

    nop

    nop

    nop

    nop

    nop

    iget-object v5, v6, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v5}, Ltkg;->C()Z

    move-result v5

    nop
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    goto/32 :goto_55

    nop

    nop

    nop

    :goto_33
    const/4 v4, 0x1

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

    :goto_34
    if-eqz v6, :cond_11

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :cond_11
    :try_start_b
    invoke-virtual {v9}, Ltkb;->o()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    :goto_35
    :try_start_c
    iget-object v6, v9, Ltkd;->b:Ltkg;

    nop

    nop

    nop

    check-cast v6, Lreb;

    nop

    nop

    nop

    nop

    nop

    sget-object v7, Lreb;->a:Lreb;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v7, v6, Lreb;->f:Ltkv;

    nop

    invoke-interface {v7}, Ltkv;->c()Z

    move-result v8

    nop

    nop

    nop

    nop

    nop
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    goto/32 :goto_bb

    nop

    nop

    nop

    :goto_36
    if-eqz v5, :cond_12

    nop

    goto/32 :goto_4d

    nop

    :cond_12
    :try_start_d
    invoke-virtual {v15}, Ltkb;->o()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_3

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_37
    iget-object v1, v4, Lhex;->h:Lpdf;

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_38
    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_39
    goto/16 :goto_46

    nop

    nop

    :goto_3a
    goto/32 :goto_98

    nop

    nop

    nop

    :goto_3b
    if-eqz v6, :cond_13

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

    :cond_13
    :try_start_e
    invoke-virtual {v7}, Ltkb;->o()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_6

    :goto_3c
    :try_start_f
    iget-object v6, v7, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    check-cast v6, Lutx;

    nop

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v4, v6, Lutx;->c:Lutw;

    nop

    nop

    nop

    iget v4, v6, Lutx;->b:I

    nop

    nop

    nop

    nop

    nop

    const/4 v5, 0x1

    nop

    nop

    nop

    nop

    or-int/2addr v4, v5

    nop

    nop

    nop

    nop

    nop

    iput v4, v6, Lutx;->b:I

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v7}, Ltkb;->i()Ltkg;

    move-result-object v4

    nop

    nop

    check-cast v4, Lutx;

    nop

    nop

    iget-object v6, v9, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    invoke-virtual {v6}, Ltkg;->C()Z

    move-result v6

    nop

    nop

    nop
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_7

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_3d
    add-int v0, v0, v1

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

    :goto_3e
    const/4 v7, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_3f
    invoke-interface {v7, v8}, Lpdf;->f(Ljava/lang/String;)V

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    if-nez v4, :cond_14

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_14
    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    move-object/from16 v1, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    :goto_42
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    :goto_43
    move-object v4, v0

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_44
    iget-object v4, v2, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    :goto_45
    move-object v1, v0

    nop

    nop

    nop

    nop

    nop

    :goto_46
    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_47
    invoke-interface {v1}, Lpdf;->g()V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_48
    return-void

    nop

    nop

    nop

    :goto_49
    goto/32 :goto_a4

    nop

    nop

    :goto_4a
    move-object v7, v0

    nop

    nop

    nop

    nop

    nop

    :try_start_10
    iget-object v8, v4, Lrdx;->a:Lrdv;

    nop

    iget-wide v9, v4, Lrdx;->b:J

    nop

    nop

    invoke-interface {v8, v9, v10}, Lrdv;->stop(J)Z

    throw v7

    nop

    nop

    nop

    nop

    :goto_4b
    new-instance v4, Lcom/google/android/libraries/vision/visionkit/pipeline/PipelineException;

    nop

    nop

    sget-object v7, Lrdz;->j:Lrdz;

    nop

    invoke-virtual {v7}, Lrdz;->ordinal()I

    move-result v7

    nop

    nop

    nop

    nop

    nop

    const-string v8, "Pipeline has been closed or was not initialized"

    nop

    nop

    nop

    invoke-direct {v4, v7, v8}, Lcom/google/android/libraries/vision/visionkit/pipeline/PipelineException;-><init>(ILjava/lang/String;)V

    throw v4

    nop
    :try_end_10
    .catch Lcom/google/android/libraries/vision/visionkit/pipeline/PipelineException; {:try_start_10 .. :try_end_10} :catch_4

    :catch_4
    move-exception v0

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

    nop

    :goto_4c
    goto/16 :goto_46

    nop

    :goto_4d
    :try_start_11
    iget-object v5, v15, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    check-cast v5, Ltow;

    nop

    nop

    nop

    nop

    nop
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_0

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    iget v6, v4, Lreb;->b:I

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    if-nez v10, :cond_15

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

    :cond_15
    :try_start_12
    const-string v10, "camera_vkp/mobilenet_v2_050_combined_16classes.tflite.uncompressed"

    nop

    invoke-virtual {v8, v10}, Lhep;->a(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v10

    nop

    nop

    nop

    nop

    sget-object v16, Lreq;->a:Lreq;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual/range {v16 .. v16}, Ltkg;->m()Ltkb;

    move-result-object v6

    nop

    nop

    nop

    nop

    iget-object v4, v6, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Ltkg;->C()Z

    move-result v4

    nop

    nop

    nop

    nop

    nop

    if-nez v4, :cond_16

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v6}, Ltkb;->o()V

    :cond_16
    iget-object v4, v6, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    check-cast v4, Lreq;

    nop

    nop

    nop

    nop

    iget v14, v4, Lreq;->b:I

    nop

    nop

    nop

    nop

    nop

    or-int/2addr v14, v5

    nop

    nop

    nop

    nop

    iput v14, v4, Lreq;->b:I

    nop

    nop

    iput-object v13, v4, Lreq;->c:Ljava/lang/String;

    nop

    nop

    nop

    nop

    sget-object v4, Lrem;->a:Lrem;

    nop

    nop

    invoke-virtual {v4}, Ltkg;->m()Ltkb;

    move-result-object v4

    nop

    nop

    sget-object v14, Lren;->a:Lren;

    nop

    nop

    nop

    nop

    invoke-virtual {v14}, Ltkg;->m()Ltkb;

    move-result-object v14

    nop

    nop

    invoke-virtual {v10}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v18

    nop

    nop

    nop

    nop

    nop

    invoke-virtual/range {v18 .. v18}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v11

    nop

    nop

    nop

    nop

    iget-object v5, v14, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    invoke-virtual {v5}, Ltkg;->C()Z

    move-result v5

    nop

    nop

    nop

    if-nez v5, :cond_17

    nop

    invoke-virtual {v14}, Ltkb;->o()V

    :cond_17
    iget-object v5, v14, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    check-cast v5, Lren;

    nop

    nop

    nop

    iget v15, v5, Lren;->b:I

    nop

    nop

    nop

    nop

    or-int/2addr v15, v7

    nop

    nop

    nop

    nop

    nop

    iput v15, v5, Lren;->b:I

    nop

    nop

    iput v11, v5, Lren;->c:I

    nop

    nop

    move-object v11, v8

    nop

    nop

    nop

    nop

    invoke-virtual {v10}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v7

    nop

    nop

    iget-object v15, v14, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v15}, Ltkg;->C()Z

    move-result v15

    nop

    if-nez v15, :cond_18

    nop

    nop

    nop

    nop

    invoke-virtual {v14}, Ltkb;->o()V

    :cond_18
    iget-object v15, v14, Ltkb;->b:Ltkg;

    nop

    nop

    check-cast v15, Lren;

    nop

    nop

    nop

    nop

    iget v5, v15, Lren;->b:I

    nop

    nop

    nop

    nop

    nop

    const/16 v20, 0x4

    nop

    or-int/lit8 v5, v5, 0x4

    nop

    nop

    nop

    nop

    nop

    iput v5, v15, Lren;->b:I

    nop

    nop

    nop

    iput-wide v7, v15, Lren;->e:J

    nop

    nop

    invoke-virtual {v10}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v7

    nop

    nop

    nop

    iget-object v5, v14, Ltkb;->b:Ltkg;

    nop

    nop

    invoke-virtual {v5}, Ltkg;->C()Z

    move-result v5

    nop

    nop

    nop

    if-nez v5, :cond_19

    nop

    nop

    nop

    nop

    invoke-virtual {v14}, Ltkb;->o()V

    :cond_19
    iget-object v5, v14, Ltkb;->b:Ltkg;

    nop

    nop

    check-cast v5, Lren;

    nop

    nop

    nop

    iget v10, v5, Lren;->b:I

    nop

    nop

    nop

    nop

    const/4 v15, 0x2

    nop

    nop

    nop

    nop

    nop

    or-int/2addr v10, v15

    nop

    nop

    nop

    nop

    iput v10, v5, Lren;->b:I

    nop

    nop

    nop

    nop

    iput-wide v7, v5, Lren;->d:J

    nop

    invoke-virtual {v14}, Ltkb;->i()Ltkg;

    move-result-object v5

    nop

    nop

    nop

    nop

    check-cast v5, Lren;

    nop

    nop

    iget-object v7, v4, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    invoke-virtual {v7}, Ltkg;->C()Z

    move-result v7

    nop

    if-nez v7, :cond_1a

    nop

    nop

    invoke-virtual {v4}, Ltkb;->o()V

    :cond_1a
    iget-object v7, v4, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    check-cast v7, Lrem;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v5, v7, Lrem;->c:Lren;

    nop

    nop

    nop

    nop

    iget v5, v7, Lrem;->b:I

    nop

    nop

    const/4 v8, 0x4

    nop

    or-int/2addr v5, v8

    nop

    iput v5, v7, Lrem;->b:I

    nop

    nop

    nop

    invoke-virtual {v4}, Ltkb;->i()Ltkg;

    move-result-object v4

    nop

    nop

    check-cast v4, Lrem;

    nop

    nop

    nop

    nop

    nop

    iget-object v5, v6, Ltkb;->b:Ltkg;

    nop

    nop

    invoke-virtual {v5}, Ltkg;->C()Z

    move-result v5

    nop

    if-nez v5, :cond_1b

    nop

    nop

    invoke-virtual {v6}, Ltkb;->o()V

    :cond_1b
    iget-object v5, v6, Ltkb;->b:Ltkg;

    nop

    move-object v7, v5

    nop

    nop

    nop

    nop

    nop

    check-cast v7, Lreq;

    nop

    nop

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v4, v7, Lreq;->d:Lrem;

    nop

    nop

    nop

    nop

    iget v4, v7, Lreq;->b:I

    nop

    nop

    nop

    nop

    or-int/lit8 v4, v4, 0x8

    nop

    nop

    nop

    iput v4, v7, Lreq;->b:I

    nop

    invoke-virtual {v5}, Ltkg;->C()Z

    move-result v4

    nop

    nop

    if-nez v4, :cond_1c

    nop

    nop

    nop

    invoke-virtual {v6}, Ltkb;->o()V

    :cond_1c
    iget-object v4, v6, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    check-cast v4, Lreq;

    nop

    nop

    nop

    iget-object v5, v4, Lreq;->f:Ltkv;

    nop

    nop

    nop

    nop

    invoke-interface {v5}, Ltkv;->c()Z

    move-result v7

    nop

    nop

    nop

    nop

    if-nez v7, :cond_1d

    nop

    nop

    nop

    nop

    invoke-static {v5}, Ltkg;->v(Ltkv;)Ltkv;

    move-result-object v5

    nop

    nop

    nop

    nop

    iput-object v5, v4, Lreq;->f:Ltkv;

    nop

    nop

    nop

    nop

    nop

    :cond_1d
    iget-object v4, v4, Lreq;->f:Ltkv;

    nop

    invoke-interface {v4, v12}, Ltkv;->add(Ljava/lang/Object;)Z

    iget-object v4, v6, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Ltkg;->C()Z

    move-result v4

    nop

    nop

    nop

    nop

    if-nez v4, :cond_1e

    nop

    nop

    invoke-virtual {v6}, Ltkb;->o()V

    :cond_1e
    iget-object v4, v6, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    check-cast v4, Lreq;

    nop

    nop

    nop

    iget v5, v4, Lreq;->b:I

    nop

    nop

    nop

    nop

    nop

    or-int/lit16 v5, v5, 0x100

    nop

    iput v5, v4, Lreq;->b:I

    nop

    nop

    nop

    nop

    const/high16 v7, 0x3f000000    # 0.5f

    nop

    nop

    iput v7, v4, Lreq;->e:F

    nop

    nop

    nop

    invoke-virtual {v6}, Ltkb;->i()Ltkg;

    move-result-object v4

    nop

    check-cast v4, Lreq;

    nop

    nop

    nop

    iget-object v5, v9, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    invoke-virtual {v5}, Ltkg;->C()Z

    move-result v5

    nop

    nop

    nop

    nop

    nop

    if-nez v5, :cond_1f

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v9}, Ltkb;->o()V

    :cond_1f
    iget-object v5, v9, Ltkd;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    check-cast v5, Lreb;

    nop

    nop

    nop

    nop

    sget-object v6, Lreb;->a:Lreb;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v6, v5, Lreb;->c:Ltkv;

    nop

    nop

    invoke-interface {v6}, Ltkv;->c()Z

    move-result v8

    nop

    nop

    nop

    if-nez v8, :cond_20

    nop

    nop

    nop

    nop

    invoke-static {v6}, Ltkg;->v(Ltkv;)Ltkv;

    move-result-object v6

    nop

    nop

    iput-object v6, v5, Lreb;->c:Ltkv;

    nop

    nop

    :cond_20
    iget-object v5, v5, Lreb;->c:Ltkv;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v5, v4}, Ltkv;->add(Ljava/lang/Object;)Z
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_6

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    :goto_50
    move-object v13, v2

    nop

    nop

    nop

    nop

    nop

    :try_start_13
    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v1

    nop

    nop

    iget-object v5, v15, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    invoke-virtual {v5}, Ltkg;->C()Z

    move-result v5

    nop
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_0

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_51
    const-string v1, "VKP"

    nop

    nop

    nop

    nop

    goto/32 :goto_be

    nop

    nop

    :goto_52
    const-string v2, "LazyPipeline"

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    move-object/from16 v21, v2

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_54
    invoke-virtual {v4}, Ltkg;->C()Z

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_55
    if-eqz v5, :cond_21

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :cond_21
    :try_start_14
    invoke-virtual {v6}, Ltkb;->o()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_6

    :goto_56
    :try_start_15
    iget-object v5, v6, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    move-object v7, v5

    nop

    nop

    nop

    check-cast v7, Lutw;

    nop

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v4, v7, Lutw;->c:Lrem;

    nop

    nop

    nop

    nop

    nop

    iget v4, v7, Lutw;->b:I

    nop

    nop

    nop

    nop

    const/4 v5, 0x1

    nop

    nop

    nop

    or-int/2addr v4, v5

    nop

    nop

    nop

    nop

    nop

    iput v4, v7, Lutw;->b:I

    nop

    nop

    invoke-virtual {v6}, Ltkb;->i()Ltkg;

    move-result-object v4

    nop

    nop

    nop

    nop

    check-cast v4, Lutw;

    nop

    nop

    nop

    nop

    sget-object v6, Luty;->a:Luty;

    nop

    invoke-virtual {v6}, Ltkg;->m()Ltkb;

    move-result-object v6

    nop

    nop

    nop

    iget-object v7, v6, Ltkb;->b:Ltkg;

    nop

    invoke-virtual {v7}, Ltkg;->C()Z

    move-result v7

    nop

    nop
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_7

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    sget-object v2, Lhex;->a:Lsdb;

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

    nop

    :goto_58
    move-object/from16 v6, v21

    nop

    nop

    nop

    nop

    :goto_59
    goto/32 :goto_43

    nop

    nop

    nop

    :goto_5a
    iget-object v3, v1, Lhhm;->a:Lhhq;

    nop

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    :goto_5b
    const-string v7, "Unable to start VisionKitPipeline"

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_5c
    const/4 v4, 0x3

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_5d
    invoke-direct {v3, v1, v4}, Lhih;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    :goto_5e
    const-string v8, "camera_vkp_disable_sub_pipeline"

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_5f
    iget-object v4, v3, Lhhm;->a:Lhhq;

    nop

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    nop

    :goto_60
    goto/16 :goto_a0

    nop

    :catch_5
    move-exception v0

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

    nop

    :goto_61
    if-lez v0, :cond_22

    nop

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    :cond_22
    goto/32 :goto_8d

    nop

    :goto_62
    iget-object v7, v4, Lhex;->g:Lhgg;

    nop

    nop

    nop

    goto/32 :goto_b9

    nop

    nop

    nop

    nop

    :goto_63
    if-eqz v14, :cond_23

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    :cond_23
    :try_start_16
    invoke-virtual {v12}, Ltkb;->o()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_6

    :goto_64
    :try_start_17
    iget-object v14, v12, Ltkd;->b:Ltkg;

    nop

    nop

    nop

    check-cast v14, Ltox;

    nop

    nop

    nop

    nop

    invoke-static {v14}, Ltox;->G(Ltox;)V

    iget-object v14, v12, Ltkb;->b:Ltkg;

    nop

    nop

    invoke-virtual {v14}, Ltkg;->C()Z

    move-result v14

    nop

    nop

    nop
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_7

    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    :goto_65
    if-eqz v14, :cond_24

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    :cond_24
    :try_start_18
    invoke-virtual {v12}, Ltkb;->o()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_6

    :goto_66
    :try_start_19
    iget-object v14, v12, Ltkd;->b:Ltkg;

    nop

    check-cast v14, Ltox;

    nop

    nop

    nop

    nop

    iget v15, v14, Ltox;->b:I

    nop

    nop

    nop

    nop

    nop

    or-int/lit16 v15, v15, 0x80

    nop

    nop

    nop

    iput v15, v14, Ltox;->b:I

    nop

    nop

    nop

    nop

    const/4 v5, 0x1

    nop

    nop

    nop

    nop

    iput-boolean v5, v14, Ltox;->g:Z

    nop

    nop

    nop

    nop

    nop

    const/4 v14, 0x0

    nop

    nop

    nop

    nop

    nop

    sget-object v14, Lcom/google/android/apps/camera/debug/metrics/Rn/hhAHoOiyE;->CYYwZrPDeYquR:Ljava/lang/String;

    nop

    nop

    iget-object v15, v12, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v15}, Ltkg;->C()Z

    move-result v15

    nop

    nop

    nop

    nop
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_7

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    :goto_67
    iget-object v1, v1, Lhhq;->a:Lhfw;

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_68
    const-string v1, "MobileIca8bitV2"

    nop

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_69
    const-string v2, "camera_vkp_start"

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    invoke-virtual {v2}, Ltkb;->o()V

    :goto_6b
    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_6c
    if-eqz v15, :cond_25

    nop

    goto/32 :goto_6d

    nop

    :cond_25
    :try_start_1a
    invoke-virtual {v12}, Ltkb;->o()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_6

    :goto_6d
    :try_start_1b
    iget-object v15, v12, Ltkd;->b:Ltkg;

    nop

    check-cast v15, Ltox;

    nop

    iget v5, v15, Ltox;->b:I

    nop

    nop

    nop

    nop

    nop

    const/16 v21, 0x1

    nop

    nop

    nop

    nop

    nop

    or-int/lit8 v5, v5, 0x1

    nop

    iput v5, v15, Ltox;->b:I

    nop

    iput-object v14, v15, Ltox;->c:Ljava/lang/String;

    nop

    nop

    sget-object v5, Ltov;->a:Ltov;

    nop

    nop

    nop

    invoke-virtual {v5}, Ltkg;->m()Ltkb;

    move-result-object v14

    nop

    nop

    nop

    sget-object v5, Ltow;->a:Ltow;

    nop

    invoke-virtual {v5}, Ltkg;->m()Ltkb;

    move-result-object v15

    nop

    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    nop

    nop

    nop

    nop

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v5

    nop

    nop

    nop

    nop

    move/from16 v21, v5

    nop

    nop

    nop

    nop

    nop

    iget-object v5, v15, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v5}, Ltkg;->C()Z

    move-result v5

    nop
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_7

    goto/32 :goto_a5

    nop

    nop

    nop

    :goto_6e
    invoke-virtual {v2}, Lscs;->b()Lsdo;

    move-result-object v2

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    const/4 v7, 0x3

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    :goto_70
    goto/16 :goto_bd

    nop

    :catch_6
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

    :goto_71
    invoke-interface {v3}, Lpdf;->g()V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_72
    cmp-long v9, v7, v1

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

    :goto_73
    sget-object v4, Lstd;->a:Lstd;

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_74
    if-nez v9, :cond_26

    nop

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

    :cond_26
    :try_start_1c
    iget-object v9, v4, Lrdx;->a:Lrdv;

    nop

    nop

    nop

    invoke-interface {v9, v7, v8}, Lrdv;->start(J)V

    iget-object v7, v4, Lrdx;->a:Lrdv;

    nop

    iget-wide v8, v4, Lrdx;->b:J

    nop

    nop

    nop

    invoke-interface {v7, v8, v9}, Lrdv;->waitUntilIdle(J)V
    :try_end_1c
    .catch Lcom/google/android/libraries/vision/visionkit/pipeline/PipelineException; {:try_start_1c .. :try_end_1c} :catch_1

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_75
    iget-object v1, v1, Lhhq;->l:Landroidx/wear/ambient/AmbientDelegate;

    nop

    nop

    nop

    nop

    goto/32 :goto_bf

    nop

    nop

    nop

    nop

    nop

    :goto_76
    if-eqz v7, :cond_27

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    :cond_27
    :try_start_1d
    invoke-virtual {v6}, Ltkb;->o()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_6

    :goto_77
    :try_start_1e
    iget-object v7, v6, Ltkb;->b:Ltkg;

    nop

    check-cast v7, Luty;

    nop

    nop

    iget-object v8, v7, Luty;->d:Ltkv;

    nop

    invoke-interface {v8}, Ltkv;->c()Z

    move-result v10

    nop

    nop

    nop
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_7

    goto/32 :goto_7b

    nop

    nop

    :goto_78
    new-instance v2, Lhgg;

    nop

    nop

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    nop

    nop

    :goto_79
    if-eqz v5, :cond_28

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    :cond_28
    :try_start_1f
    invoke-virtual {v10}, Ltkb;->o()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_6

    :goto_7a
    :try_start_20
    iget-object v5, v10, Ltkb;->b:Ltkg;

    nop

    nop

    check-cast v5, Lren;

    nop

    iget v7, v5, Lren;->b:I

    nop

    nop

    const/16 v20, 0x4

    nop

    nop

    or-int/lit8 v7, v7, 0x4

    nop

    nop

    nop

    nop

    nop

    iput v7, v5, Lren;->b:I

    nop

    nop

    nop

    nop

    nop

    iput-wide v14, v5, Lren;->e:J

    nop

    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    nop

    nop

    nop

    nop

    iget-object v7, v10, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    invoke-virtual {v7}, Ltkg;->C()Z

    move-result v7

    nop

    nop

    nop
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_7

    goto/32 :goto_ad

    nop

    nop

    :goto_7b
    if-eqz v10, :cond_29

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    :cond_29
    :try_start_21
    invoke-static {v8}, Ltkg;->v(Ltkv;)Ltkv;

    move-result-object v8

    nop

    iput-object v8, v7, Luty;->d:Ltkv;

    nop

    nop
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_21} :catch_6

    :goto_7c
    :try_start_22
    iget-object v7, v7, Luty;->d:Ltkv;

    nop

    nop

    nop

    invoke-interface {v7, v12}, Ltkv;->add(Ljava/lang/Object;)Z

    iget-object v7, v6, Ltkb;->b:Ltkg;

    nop

    invoke-virtual {v7}, Ltkg;->C()Z

    move-result v7

    nop

    nop

    nop
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_22} :catch_7

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    if-nez v8, :cond_2a

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    :cond_2a
    :try_start_23
    invoke-static {v12}, Lhhg;->l(Ltkd;)Ltkb;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    const/4 v4, 0x1

    nop

    nop

    if-eq v4, v10, :cond_2b

    nop

    move-object v13, v1

    nop

    nop

    goto :goto_7e

    nop

    nop

    nop

    :cond_2b
    move-object/from16 v13, v23

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    if-eq v4, v10, :cond_2c

    nop

    const/high16 v1, 0x3e800000    # 0.25f

    nop

    nop

    nop

    goto :goto_7f

    nop

    nop

    :cond_2c
    const/high16 v1, 0x3f000000    # 0.5f

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    sget-object v4, Lrel;->a:Lrel;

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Ltkg;->m()Ltkb;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    iget-object v6, v4, Ltkb;->b:Ltkg;

    nop

    nop

    invoke-virtual {v6}, Ltkg;->C()Z

    move-result v6

    nop

    if-nez v6, :cond_2d

    nop

    invoke-virtual {v4}, Ltkb;->o()V

    :cond_2d
    iget-object v6, v4, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    move-object v7, v6

    nop

    nop

    nop

    check-cast v7, Lrel;

    nop

    nop

    nop

    iget v8, v7, Lrel;->b:I

    nop

    nop

    const/4 v10, 0x2

    nop

    nop

    nop

    nop

    nop

    or-int/2addr v8, v10

    nop

    nop

    iput v8, v7, Lrel;->b:I

    nop

    nop

    iput-object v13, v7, Lrel;->f:Ljava/lang/String;

    nop

    nop

    invoke-virtual {v6}, Ltkg;->C()Z

    move-result v6

    nop

    nop

    nop

    if-nez v6, :cond_2e

    nop

    invoke-virtual {v4}, Ltkb;->o()V

    :cond_2e
    iget-object v6, v4, Ltkb;->b:Ltkg;

    nop

    nop

    check-cast v6, Lrel;

    nop

    invoke-static {v6}, Lrel;->b(Lrel;)V

    iget-object v6, v4, Ltkb;->b:Ltkg;

    nop

    invoke-virtual {v6}, Ltkg;->C()Z

    move-result v6

    nop

    nop

    nop

    if-nez v6, :cond_2f

    nop

    nop

    nop

    invoke-virtual {v4}, Ltkb;->o()V

    :cond_2f
    iget-object v6, v4, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    check-cast v6, Lrel;

    nop

    nop

    nop

    nop

    iget v7, v6, Lrel;->b:I

    nop

    const/4 v5, 0x1

    nop

    or-int/2addr v7, v5

    nop

    nop

    nop

    nop

    nop

    iput v7, v6, Lrel;->b:I

    nop

    iput v1, v6, Lrel;->e:F

    nop

    nop

    nop

    invoke-virtual {v4}, Ltkb;->i()Ltkg;

    move-result-object v1

    nop

    check-cast v1, Lrel;

    nop

    iget-object v4, v2, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    invoke-virtual {v4}, Ltkg;->C()Z

    move-result v4

    nop

    nop

    if-nez v4, :cond_30

    nop

    nop

    nop

    invoke-virtual {v2}, Ltkb;->o()V

    :cond_30
    iget-object v4, v2, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    check-cast v4, Lreo;

    nop

    nop

    nop

    sget-object v6, Lreo;->a:Lreo;

    nop

    nop

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Lreo;->b()V

    iget-object v4, v4, Lreo;->f:Ltkv;

    nop

    nop

    nop

    invoke-interface {v4, v1}, Ltkv;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Ltkb;->i()Ltkg;

    move-result-object v1

    nop

    nop

    check-cast v1, Lreo;

    nop

    nop

    nop

    nop

    goto/16 :goto_81

    nop

    :goto_80
    invoke-static {v12}, Lhhg;->l(Ltkd;)Ltkb;

    move-result-object v2

    nop

    nop

    nop

    nop

    sget-object v4, Lrel;->a:Lrel;

    nop

    nop

    nop

    invoke-virtual {v4}, Ltkg;->m()Ltkb;

    move-result-object v4

    nop

    nop

    nop

    nop

    iget-object v6, v4, Ltkb;->b:Ltkg;

    nop

    nop

    invoke-virtual {v6}, Ltkg;->C()Z

    move-result v6

    nop

    nop

    nop

    nop

    nop

    if-nez v6, :cond_31

    nop

    nop

    nop

    invoke-virtual {v4}, Ltkb;->o()V

    :cond_31
    iget-object v6, v4, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    move-object v7, v6

    nop

    nop

    check-cast v7, Lrel;

    nop

    nop

    nop

    nop

    iget v8, v7, Lrel;->b:I

    nop

    nop

    nop

    nop

    nop

    const/4 v10, 0x2

    nop

    nop

    nop

    nop

    nop

    or-int/2addr v8, v10

    nop

    nop

    iput v8, v7, Lrel;->b:I

    nop

    nop

    nop

    iput-object v1, v7, Lrel;->f:Ljava/lang/String;

    nop

    nop

    invoke-virtual {v6}, Ltkg;->C()Z

    move-result v1

    nop

    nop

    nop

    if-nez v1, :cond_32

    nop

    invoke-virtual {v4}, Ltkb;->o()V

    :cond_32
    iget-object v1, v4, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    check-cast v1, Lrel;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v1}, Lrel;->b(Lrel;)V

    iget-object v1, v4, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Ltkg;->C()Z

    move-result v1

    nop

    nop

    nop

    if-nez v1, :cond_33

    nop

    nop

    invoke-virtual {v4}, Ltkb;->o()V

    :cond_33
    iget-object v1, v4, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    check-cast v1, Lrel;

    nop

    nop

    nop

    nop

    nop

    iget v6, v1, Lrel;->b:I

    nop

    nop

    nop

    nop

    const/4 v5, 0x1

    nop

    nop

    nop

    or-int/2addr v6, v5

    nop

    nop

    nop

    nop

    iput v6, v1, Lrel;->b:I

    nop

    nop

    nop

    nop

    const/high16 v6, 0x3e800000    # 0.25f

    nop

    nop

    nop

    nop

    nop

    iput v6, v1, Lrel;->e:F

    nop

    nop

    nop

    nop

    invoke-virtual {v2, v4}, Ltkb;->at(Ltkb;)V

    iget-object v1, v2, Ltkb;->b:Ltkg;

    nop

    nop

    invoke-virtual {v1}, Ltkg;->C()Z

    move-result v1

    nop

    nop

    nop

    if-nez v1, :cond_34

    nop

    nop

    invoke-virtual {v2}, Ltkb;->o()V

    :cond_34
    iget-object v1, v2, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    check-cast v1, Lreo;

    nop

    nop

    sget-object v4, Lreo;->a:Lreo;

    nop

    nop

    nop

    nop

    iget-object v4, v1, Lreo;->g:Ltkl;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v4}, Ltkl;->c()Z

    move-result v6

    nop

    nop

    nop

    nop

    if-nez v6, :cond_35

    nop

    nop

    nop

    invoke-static {v4}, Ltkg;->s(Ltkl;)Ltkl;

    move-result-object v4

    nop

    nop

    iput-object v4, v1, Lreo;->g:Ltkl;

    nop

    nop

    nop

    nop

    nop

    :cond_35
    iget-object v1, v1, Lreo;->g:Ltkl;

    nop

    nop

    nop

    const v4, 0x3f351af1

    nop

    nop

    nop

    nop

    invoke-interface {v1, v4}, Ltkl;->g(F)V

    iget-object v1, v2, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    invoke-virtual {v1}, Ltkg;->C()Z

    move-result v1

    nop

    nop

    nop

    if-nez v1, :cond_36

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Ltkb;->o()V

    :cond_36
    iget-object v1, v2, Ltkb;->b:Ltkg;

    nop

    check-cast v1, Lreo;

    nop

    nop

    nop

    iget v4, v1, Lreo;->b:I

    nop

    nop

    nop

    or-int/lit8 v4, v4, 0x8

    nop

    nop

    nop

    nop

    iput v4, v1, Lreo;->b:I

    nop

    const v4, 0x3e4ccccd    # 0.2f

    nop

    nop

    iput v4, v1, Lreo;->h:F

    nop

    nop

    nop

    invoke-virtual {v2}, Ltkb;->i()Ltkg;

    move-result-object v1

    nop

    check-cast v1, Lreo;

    nop

    :goto_81
    iget-object v2, v9, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Ltkg;->C()Z

    move-result v2

    nop

    nop

    nop

    if-nez v2, :cond_37

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v9}, Ltkb;->o()V

    :cond_37
    iget-object v2, v9, Ltkd;->b:Ltkg;

    nop

    nop

    nop

    nop

    check-cast v2, Lreb;

    nop

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, v2, Lreb;->g:Lreo;

    nop

    nop

    nop

    nop

    iget v1, v2, Lreb;->b:I

    nop

    nop

    nop

    nop

    nop

    or-int/lit8 v1, v1, 0x8

    nop

    nop

    nop

    nop

    iput v1, v2, Lreb;->b:I

    nop

    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v11, v1}, Lhep;->f(I)Lrec;

    move-result-object v2

    nop

    nop

    iget-object v1, v9, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Ltkg;->C()Z

    move-result v1

    nop

    nop

    nop

    nop

    if-nez v1, :cond_38

    nop

    nop

    invoke-virtual {v9}, Ltkb;->o()V

    :cond_38
    iget-object v1, v9, Ltkd;->b:Ltkg;

    nop

    nop

    nop

    check-cast v1, Lreb;

    nop

    nop

    nop

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v2, v1, Lreb;->i:Lrec;

    nop

    nop

    nop

    nop

    nop

    iget v2, v1, Lreb;->b:I

    nop

    nop

    nop

    const v4, 0x8000

    nop

    nop

    nop

    or-int/2addr v2, v4

    nop

    nop

    iput v2, v1, Lreb;->b:I

    nop

    nop

    nop

    nop

    nop

    iget-object v1, v11, Lhep;->d:Lhoh;

    nop

    nop

    sget-object v2, Lhmx;->i:Lhmn;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v2}, Lhoh;->p(Lhmn;)Z

    move-result v1

    nop

    nop

    const/high16 v2, 0x100000

    nop

    nop

    if-eqz v1, :cond_50

    nop

    nop

    iget-object v1, v9, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Ltkg;->C()Z

    move-result v1

    nop

    if-nez v1, :cond_39

    nop

    nop

    nop

    invoke-virtual {v9}, Ltkb;->o()V

    :cond_39
    iget-object v1, v9, Ltkd;->b:Ltkg;

    nop

    nop

    nop

    nop

    check-cast v1, Lreb;

    nop

    nop

    nop

    nop

    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    nop

    iput v4, v1, Lreb;->j:I

    nop

    nop

    nop

    nop

    iget v4, v1, Lreb;->b:I

    nop

    or-int/2addr v2, v4

    nop

    nop

    iput v2, v1, Lreb;->b:I

    nop

    nop

    nop

    nop

    nop

    sget-object v1, Ltnq;->a:Ltnq;

    nop

    nop

    nop

    invoke-virtual {v1}, Ltkg;->m()Ltkb;

    move-result-object v1

    nop

    nop

    nop

    nop

    const-string v2, "oriole"

    nop

    nop

    invoke-virtual {v1, v2}, Ltkb;->P(Ljava/lang/String;)V

    const-string v2, "raven"

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v2}, Ltkb;->P(Ljava/lang/String;)V

    const/4 v2, 0x0

    nop

    sget-object v2, Lcom/google/android/apps/camera/filmstrip/transition/KkW/xCXUu;->jxEEDo:Ljava/lang/String;

    nop

    nop

    nop

    invoke-virtual {v1, v2}, Ltkb;->P(Ljava/lang/String;)V

    iget-object v2, v1, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    invoke-virtual {v2}, Ltkg;->C()Z

    move-result v2

    nop

    nop

    nop

    if-nez v2, :cond_3a

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Ltkb;->o()V

    :cond_3a
    iget-object v2, v1, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    check-cast v2, Ltnq;

    nop

    nop

    nop

    nop

    nop

    iget v4, v2, Ltnq;->b:I

    nop

    nop

    or-int/lit8 v4, v4, 0x20

    nop

    nop

    nop

    nop

    iput v4, v2, Ltnq;->b:I

    nop

    nop

    nop

    const/16 v4, 0x1e

    nop

    iput v4, v2, Ltnq;->d:I

    nop

    nop

    invoke-virtual {v1}, Ltkb;->i()Ltkg;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    check-cast v1, Ltnq;

    nop

    nop

    nop

    sget-object v2, Ltnh;->a:Ltnh;

    nop

    invoke-virtual {v2}, Ltkg;->m()Ltkb;

    move-result-object v2

    nop

    nop

    nop

    iget-object v4, v2, Ltkb;->b:Ltkg;

    nop

    nop

    invoke-virtual {v4}, Ltkg;->C()Z

    move-result v4

    nop

    nop

    nop

    nop

    nop

    if-nez v4, :cond_3b

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Ltkb;->o()V

    :cond_3b
    iget-object v4, v2, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    check-cast v4, Ltnh;

    nop

    nop

    nop

    nop

    nop

    const/4 v6, 0x0

    nop

    nop

    nop

    nop

    nop

    iput v6, v4, Ltnh;->c:I

    nop

    iget v6, v4, Ltnh;->b:I

    nop

    nop

    nop

    nop

    nop

    const/4 v5, 0x1

    nop

    nop

    nop

    nop

    or-int/2addr v6, v5

    nop

    iput v6, v4, Ltnh;->b:I

    nop

    nop

    sget-object v4, Ltnr;->a:Ltnr;

    nop

    invoke-virtual {v4}, Ltkg;->m()Ltkb;

    move-result-object v4

    nop

    iget-object v6, v4, Ltkb;->b:Ltkg;

    nop

    invoke-virtual {v6}, Ltkg;->C()Z

    move-result v6

    nop

    if-nez v6, :cond_3c

    nop

    nop

    invoke-virtual {v4}, Ltkb;->o()V

    :cond_3c
    iget-object v6, v4, Ltkb;->b:Ltkg;

    nop

    nop

    check-cast v6, Ltnr;

    nop

    nop

    const/4 v7, 0x4

    nop

    nop

    nop

    nop

    nop

    iput v7, v6, Ltnr;->c:I

    nop

    nop

    nop

    nop

    iget v7, v6, Ltnr;->b:I

    nop

    nop

    nop

    nop

    const/4 v5, 0x1

    nop

    nop

    nop

    or-int/2addr v7, v5

    nop

    iput v7, v6, Ltnr;->b:I

    nop

    sget-object v6, Ltnl;->a:Ltnl;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v6}, Ltkg;->m()Ltkb;

    move-result-object v6

    nop

    nop

    iget-object v7, v6, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v7}, Ltkg;->C()Z

    move-result v7

    nop

    nop

    nop

    nop

    if-nez v7, :cond_3d

    nop

    nop

    nop

    nop

    invoke-virtual {v6}, Ltkb;->o()V

    :cond_3d
    iget-object v7, v6, Ltkb;->b:Ltkg;

    nop

    nop

    check-cast v7, Ltnl;

    nop

    nop

    nop

    const/4 v8, 0x2

    nop

    nop

    nop

    iput v8, v7, Ltnl;->c:I

    nop

    iget v8, v7, Ltnl;->b:I

    nop

    const/4 v5, 0x1

    nop

    nop

    nop

    or-int/2addr v8, v5

    nop

    nop

    nop

    iput v8, v7, Ltnl;->b:I

    nop

    nop

    nop

    nop

    iget-object v7, v4, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    invoke-virtual {v7}, Ltkg;->C()Z

    move-result v7

    nop

    nop

    nop

    nop

    if-nez v7, :cond_3e

    nop

    nop

    nop

    invoke-virtual {v4}, Ltkb;->o()V

    :cond_3e
    iget-object v7, v4, Ltkb;->b:Ltkg;

    nop

    nop

    check-cast v7, Ltnr;

    nop

    nop

    nop

    nop

    invoke-virtual {v6}, Ltkb;->i()Ltkg;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    check-cast v6, Ltnl;

    nop

    nop

    nop

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v6, v7, Ltnr;->f:Ltnl;

    nop

    iget v6, v7, Ltnr;->b:I

    nop

    nop

    nop

    nop

    nop

    or-int/lit16 v6, v6, 0x800

    nop

    nop

    nop

    nop

    nop

    iput v6, v7, Ltnr;->b:I

    nop

    sget-object v6, Ltnl;->a:Ltnl;

    nop

    nop

    nop

    invoke-virtual {v6}, Ltkg;->m()Ltkb;

    move-result-object v6

    nop

    nop

    nop

    nop

    iget-object v7, v6, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    invoke-virtual {v7}, Ltkg;->C()Z

    move-result v7

    nop

    if-nez v7, :cond_3f

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v6}, Ltkb;->o()V

    :cond_3f
    iget-object v7, v6, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    check-cast v7, Ltnl;

    nop

    const/4 v8, 0x2

    nop

    nop

    nop

    nop

    nop

    iput v8, v7, Ltnl;->c:I

    nop

    nop

    nop

    nop

    iget v8, v7, Ltnl;->b:I

    nop

    nop

    nop

    const/4 v5, 0x1

    nop

    or-int/2addr v8, v5

    nop

    iput v8, v7, Ltnl;->b:I

    nop

    iget-object v7, v4, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    invoke-virtual {v7}, Ltkg;->C()Z

    move-result v7

    nop

    nop

    if-nez v7, :cond_40

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Ltkb;->o()V

    :cond_40
    iget-object v7, v4, Ltkb;->b:Ltkg;

    nop

    nop

    check-cast v7, Ltnr;

    nop

    nop

    invoke-virtual {v6}, Ltkb;->i()Ltkg;

    move-result-object v6

    nop

    check-cast v6, Ltnl;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v6, v7, Ltnr;->g:Ltnl;

    nop

    nop

    iget v6, v7, Ltnr;->b:I

    nop

    nop

    nop

    nop

    or-int/lit16 v6, v6, 0x1000

    nop

    nop

    iput v6, v7, Ltnr;->b:I

    nop

    nop

    nop

    nop

    nop

    iget-object v6, v2, Ltkb;->b:Ltkg;

    nop

    nop

    invoke-virtual {v6}, Ltkg;->C()Z

    move-result v6

    nop

    nop

    nop

    if-nez v6, :cond_41

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Ltkb;->o()V

    :cond_41
    iget-object v6, v2, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    check-cast v6, Ltnh;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Ltkb;->i()Ltkg;

    move-result-object v4

    nop

    nop

    nop

    check-cast v4, Ltnr;

    nop

    nop

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v4, v6, Ltnh;->d:Ltnr;

    nop

    nop

    iget v4, v6, Ltnh;->b:I

    nop

    const/4 v7, 0x2

    nop

    nop

    nop

    nop

    nop

    or-int/2addr v4, v7

    nop

    nop

    nop

    nop

    iput v4, v6, Ltnh;->b:I

    nop

    nop

    nop

    invoke-virtual {v2}, Ltkb;->i()Ltkg;

    move-result-object v2

    nop

    nop

    nop

    nop

    check-cast v2, Ltnh;

    nop

    nop

    nop

    nop

    sget-object v4, Ltni;->a:Ltni;

    nop

    invoke-virtual {v4}, Ltkg;->m()Ltkb;

    move-result-object v4

    nop

    nop

    nop

    sget-object v6, Lhep;->b:[Ljava/lang/String;

    nop

    nop

    nop

    nop

    array-length v7, v6

    nop

    const/4 v7, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_82
    const/4 v8, 0x3

    nop

    nop

    nop

    if-ge v7, v8, :cond_4c

    nop

    nop

    nop

    aget-object v8, v6, v7

    nop

    nop

    nop

    nop

    sget-object v10, Ltnj;->a:Ltnj;

    nop

    invoke-virtual {v10}, Ltkg;->m()Ltkb;

    move-result-object v10

    nop

    nop

    nop

    sget-object v12, Ltnm;->a:Ltnm;

    nop

    nop

    invoke-virtual {v12}, Ltkg;->m()Ltkb;

    move-result-object v12

    nop

    iget-object v13, v12, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    invoke-virtual {v13}, Ltkg;->C()Z

    move-result v13

    nop

    nop

    nop

    if-nez v13, :cond_42

    nop

    nop

    nop

    invoke-virtual {v12}, Ltkb;->o()V

    :cond_42
    iget-object v13, v12, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    check-cast v13, Ltnm;

    nop

    nop

    nop

    nop

    const-string v14, "com.google.perception"

    nop

    nop

    nop

    nop

    nop

    iget v15, v13, Ltnm;->b:I

    nop

    nop

    nop

    const/4 v5, 0x1

    nop

    nop

    nop

    nop

    nop

    or-int/2addr v15, v5

    nop

    nop

    nop

    nop

    iput v15, v13, Ltnm;->b:I

    nop

    nop

    nop

    nop

    nop

    iput-object v14, v13, Ltnm;->c:Ljava/lang/String;

    nop

    nop

    sget-object v13, Ltnn;->a:Ltnn;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v13}, Ltkg;->m()Ltkb;

    move-result-object v13

    nop

    nop

    nop

    nop

    nop

    iget-object v14, v13, Ltkb;->b:Ltkg;

    nop

    nop

    invoke-virtual {v14}, Ltkg;->C()Z

    move-result v14

    nop

    if-nez v14, :cond_43

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v13}, Ltkb;->o()V

    :cond_43
    iget-object v14, v13, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    check-cast v14, Ltnn;

    nop

    nop

    nop

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v15, v14, Ltnn;->b:I

    nop

    nop

    nop

    nop

    const/16 v17, 0x2

    nop

    or-int/lit8 v15, v15, 0x2

    nop

    nop

    nop

    iput v15, v14, Ltnn;->b:I

    nop

    iput-object v8, v14, Ltnn;->c:Ljava/lang/String;

    nop

    iget-object v8, v12, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    invoke-virtual {v8}, Ltkg;->C()Z

    move-result v8

    nop

    nop

    if-nez v8, :cond_44

    nop

    nop

    nop

    invoke-virtual {v12}, Ltkb;->o()V

    :cond_44
    iget-object v8, v12, Ltkb;->b:Ltkg;

    nop

    nop

    check-cast v8, Ltnm;

    nop

    nop

    nop

    invoke-virtual {v13}, Ltkb;->i()Ltkg;

    move-result-object v13

    nop

    nop

    nop

    check-cast v13, Ltnn;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v13, v8, Ltnm;->d:Ltnn;

    nop

    iget v13, v8, Ltnm;->b:I

    nop

    const/4 v14, 0x2

    nop

    nop

    nop

    nop

    or-int/2addr v13, v14

    nop

    nop

    nop

    iput v13, v8, Ltnm;->b:I

    nop

    nop

    iget-object v8, v10, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v8}, Ltkg;->C()Z

    move-result v8

    nop

    nop

    if-nez v8, :cond_45

    nop

    nop

    nop

    invoke-virtual {v10}, Ltkb;->o()V

    :cond_45
    iget-object v8, v10, Ltkb;->b:Ltkg;

    nop

    nop

    check-cast v8, Ltnj;

    nop

    invoke-virtual {v12}, Ltkb;->i()Ltkg;

    move-result-object v12

    nop

    nop

    nop

    check-cast v12, Ltnm;

    nop

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v12, v8, Ltnj;->c:Ltnm;

    nop

    nop

    nop

    iget v12, v8, Ltnj;->b:I

    nop

    nop

    const/4 v5, 0x1

    nop

    nop

    nop

    nop

    nop

    or-int/2addr v12, v5

    nop

    nop

    iput v12, v8, Ltnj;->b:I

    nop

    iget-object v8, v10, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v8}, Ltkg;->C()Z

    move-result v8

    nop

    nop

    nop

    nop

    if-nez v8, :cond_46

    nop

    nop

    nop

    invoke-virtual {v10}, Ltkb;->o()V

    :cond_46
    iget-object v8, v10, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    check-cast v8, Ltnj;

    nop

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v12, v8, Ltnj;->d:Ltkv;

    nop

    nop

    nop

    nop

    invoke-interface {v12}, Ltkv;->c()Z

    move-result v13

    nop

    nop

    if-nez v13, :cond_47

    nop

    nop

    nop

    nop

    invoke-static {v12}, Ltkg;->v(Ltkv;)Ltkv;

    move-result-object v12

    nop

    nop

    nop

    iput-object v12, v8, Ltnj;->d:Ltkv;

    nop

    nop

    :cond_47
    iget-object v8, v8, Ltnj;->d:Ltkv;

    nop

    nop

    nop

    invoke-interface {v8, v1}, Ltkv;->add(Ljava/lang/Object;)Z

    iget-object v8, v10, Ltkb;->b:Ltkg;

    nop

    invoke-virtual {v8}, Ltkg;->C()Z

    move-result v8

    nop

    nop

    if-nez v8, :cond_48

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v10}, Ltkb;->o()V

    :cond_48
    iget-object v8, v10, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    check-cast v8, Ltnj;

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v12, v8, Ltnj;->e:Ltkv;

    nop

    nop

    nop

    nop

    invoke-interface {v12}, Ltkv;->c()Z

    move-result v13

    nop

    nop

    nop

    if-nez v13, :cond_49

    nop

    nop

    nop

    nop

    nop

    invoke-static {v12}, Ltkg;->v(Ltkv;)Ltkv;

    move-result-object v12

    nop

    nop

    nop

    iput-object v12, v8, Ltnj;->e:Ltkv;

    nop

    nop

    nop

    nop

    nop

    :cond_49
    iget-object v8, v8, Ltnj;->e:Ltkv;

    nop

    nop

    nop

    invoke-interface {v8, v2}, Ltkv;->add(Ljava/lang/Object;)Z

    iget-object v8, v4, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    invoke-virtual {v8}, Ltkg;->C()Z

    move-result v8

    nop

    nop

    nop

    nop

    nop

    if-nez v8, :cond_4a

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Ltkb;->o()V

    :cond_4a
    iget-object v8, v4, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    check-cast v8, Ltni;

    nop

    nop

    nop

    nop

    invoke-virtual {v10}, Ltkb;->i()Ltkg;

    move-result-object v10

    nop

    nop

    check-cast v10, Ltnj;

    nop

    nop

    nop

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v12, v8, Ltni;->b:Ltkv;

    nop

    invoke-interface {v12}, Ltkv;->c()Z

    move-result v13

    nop

    if-nez v13, :cond_4b

    nop

    nop

    nop

    nop

    nop

    invoke-static {v12}, Ltkg;->v(Ltkv;)Ltkv;

    move-result-object v12

    nop

    nop

    nop

    nop

    nop

    iput-object v12, v8, Ltni;->b:Ltkv;

    nop

    :cond_4b
    iget-object v8, v8, Ltni;->b:Ltkv;

    nop

    nop

    invoke-interface {v8, v10}, Ltkv;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    nop

    nop

    goto/16 :goto_82

    nop

    nop

    nop

    :cond_4c
    invoke-virtual {v4}, Ltkb;->i()Ltkg;

    move-result-object v1

    nop

    nop

    check-cast v1, Ltni;

    nop

    nop

    nop

    iget-object v2, v9, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Ltkg;->C()Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    if-nez v2, :cond_4d

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v9}, Ltkb;->o()V

    :cond_4d
    iget-object v2, v9, Ltkd;->b:Ltkg;

    nop

    nop

    nop

    check-cast v2, Lreb;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, v2, Lreb;->k:Ltni;

    nop

    nop

    iget v1, v2, Lreb;->b:I

    nop

    nop

    nop

    nop

    const/high16 v4, 0x200000

    nop

    nop

    nop

    nop

    or-int/2addr v1, v4

    nop

    nop

    nop

    nop

    iput v1, v2, Lreb;->b:I

    nop

    nop

    nop

    iget-object v1, v11, Lhep;->c:Landroid/content/Context;

    nop

    nop

    nop

    nop

    const-string v2, "cvk_model_cache/v1"

    nop

    nop

    nop

    nop

    new-instance v4, Ljava/io/File;

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Landroid/content/Context;->getCodeCacheDir()Ljava/io/File;

    move-result-object v1

    nop

    invoke-direct {v4, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    if-nez v1, :cond_4e

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    if-nez v1, :cond_4e

    nop

    nop

    const-string v1, "CacheUtil"

    nop

    nop

    nop

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    const-string v4, "Unable to create accelerator cache directory "

    nop

    nop

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto :goto_83

    nop

    nop

    nop

    nop

    :cond_4e
    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    :goto_83
    invoke-static {v1}, Lrrf;->H(Ljava/lang/String;)Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    if-nez v2, :cond_52

    nop

    iget-object v2, v9, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Ltkg;->C()Z

    move-result v2

    nop

    if-nez v2, :cond_4f

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v9}, Ltkb;->o()V

    :cond_4f
    iget-object v2, v9, Ltkd;->b:Ltkg;

    nop

    nop

    nop

    check-cast v2, Lreb;

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v4, v2, Lreb;->b:I

    nop

    const/high16 v6, 0x800000

    nop

    nop

    nop

    or-int/2addr v4, v6

    nop

    nop

    nop

    nop

    nop

    iput v4, v2, Lreb;->b:I

    nop

    nop

    nop

    iput-object v1, v2, Lreb;->l:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto :goto_84

    nop

    :cond_50
    iget-object v1, v9, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Ltkg;->C()Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    if-nez v1, :cond_51

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v9}, Ltkb;->o()V

    :cond_51
    iget-object v1, v9, Ltkd;->b:Ltkg;

    nop

    check-cast v1, Lreb;

    nop

    nop

    nop

    nop

    nop

    const/4 v4, 0x2

    nop

    nop

    nop

    nop

    iput v4, v1, Lreb;->j:I

    nop

    iget v4, v1, Lreb;->b:I

    nop

    nop

    or-int/2addr v2, v4

    nop

    nop

    iput v2, v1, Lreb;->b:I

    nop

    nop

    nop

    nop

    :cond_52
    :goto_84
    invoke-virtual {v11, v9}, Lhep;->g(Ltkd;)Lrdy;

    move-result-object v1

    nop

    nop

    nop
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_23} :catch_5

    goto/32 :goto_60

    nop

    nop

    nop

    :goto_85
    if-eqz v14, :cond_53

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    :cond_53
    :try_start_24
    invoke-virtual {v12}, Ltkb;->o()V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_24} :catch_6

    :goto_86
    :try_start_25
    iget-object v14, v12, Ltkd;->b:Ltkg;

    nop

    nop

    check-cast v14, Ltox;

    nop

    nop

    iget v15, v14, Ltox;->b:I

    nop

    nop

    nop

    nop

    or-int/lit16 v15, v15, 0x100

    nop

    nop

    nop

    iput v15, v14, Ltox;->b:I

    nop

    const/4 v15, 0x4

    nop

    nop

    nop

    nop

    iput v15, v14, Ltox;->h:I

    nop

    nop

    nop

    nop

    iget-object v14, v12, Ltkb;->b:Ltkg;

    nop

    nop

    invoke-virtual {v14}, Ltkg;->C()Z

    move-result v14

    nop
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_25} :catch_7

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    :goto_87
    invoke-interface {v1, v2}, Lpdf;->h(Ljava/lang/String;)V

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    :goto_88
    new-instance v3, Lhih;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_89
    sget-object v7, Lreb;->a:Lreb;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8a
    goto/16 :goto_c1

    nop

    nop

    :catch_7
    move-exception v0

    nop

    goto/32 :goto_c0

    nop

    nop

    nop

    nop

    nop

    :goto_8b
    const/4 v5, 0x2

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_8c
    move-object/from16 v6, v21

    nop

    nop

    nop

    nop

    :try_start_26
    invoke-static {v4, v6, v7}, Lqrg;->F(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-wide v7, v4, Lrdx;->b:J

    nop
    :try_end_26
    .catch Lcom/google/android/libraries/vision/visionkit/pipeline/PipelineException; {:try_start_26 .. :try_end_26} :catch_4

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8d
    goto/32 :goto_49

    nop

    nop

    nop

    :goto_8e
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8f
    const-wide/16 v1, 0x0

    nop

    nop

    nop

    :try_start_27
    iget-object v4, v3, Lhex;->g:Lhgg;

    nop

    nop

    nop

    const/4 v6, 0x0

    nop

    new-array v7, v6, [Ljava/lang/Object;

    nop

    nop
    :try_end_27
    .catch Lcom/google/android/libraries/vision/visionkit/pipeline/PipelineException; {:try_start_27 .. :try_end_27} :catch_2

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    nop

    :goto_90
    move-object/from16 v21, v13

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    nop

    :goto_91
    const-string v13, "DocumentClassifier"

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

    :goto_92
    const-string v5, "camera_vkp_initialize"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    :goto_93
    const-string v2, "CameraVisionKitPipeline needs to be initialized first"

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

    :goto_94
    iget-object v3, v3, Lhhq;->c:Lhex;

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_95
    iput-object v6, v4, Lreb;->i:Lrec;

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_96
    invoke-static {v4, v6, v2, v1}, Lmf;->f(Ljava/lang/String;CLscz;Ljava/lang/Throwable;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_97
    iget-object v4, v4, Lhhq;->c:Lhex;

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_98
    move-object v11, v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_99
    iget-object v4, v4, Lhhq;->c:Lhex;

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    :goto_9a
    invoke-virtual {v1}, Lhep;->h()Ltkd;

    move-result-object v2

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_9b
    move-object v1, v0

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_9c
    invoke-direct {v2, v1, v3}, Lhgg;-><init>(Lrdy;Lhex;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9d
    iput-object v2, v1, Landroidx/wear/ambient/AmbientDelegate;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_9e
    or-int/2addr v6, v7

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    :goto_9f
    invoke-virtual {v1, v2}, Lhep;->g(Ltkd;)Lrdy;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    :goto_a0
    goto/32 :goto_78

    nop

    nop

    nop

    :goto_a1
    if-eqz v8, :cond_54

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    :cond_54
    :try_start_28
    invoke-virtual {v7}, Ltkb;->o()V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_28} :catch_6

    :goto_a2
    :try_start_29
    iget-object v8, v7, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    check-cast v8, Lutx;

    nop

    nop

    nop

    invoke-virtual {v6}, Ltkb;->i()Ltkg;

    move-result-object v6

    nop

    nop

    nop

    nop

    check-cast v6, Luty;

    nop

    nop

    nop

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v6, v8, Lutx;->d:Luty;

    nop

    iget v6, v8, Lutx;->b:I

    nop

    nop

    nop

    const/4 v10, 0x2

    nop

    nop

    nop

    nop

    or-int/2addr v6, v10

    nop

    iput v6, v8, Lutx;->b:I

    nop

    nop

    iget-object v6, v7, Ltkb;->b:Ltkg;

    nop

    invoke-virtual {v6}, Ltkg;->C()Z

    move-result v6

    nop

    nop
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_29} :catch_7

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_a3
    invoke-virtual {v4, v7}, Lhex;->c(I)V

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_a4
    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    :goto_a5
    if-eqz v5, :cond_55

    nop

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    :cond_55
    :try_start_2a
    invoke-virtual {v15}, Ltkb;->o()V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2a} :catch_6

    :goto_a6
    :try_start_2b
    iget-object v5, v15, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    check-cast v5, Ltow;

    nop

    nop

    nop

    move-object/from16 v23, v13

    nop

    nop

    nop

    nop

    iget v13, v5, Ltow;->b:I

    nop

    nop

    nop

    nop

    const/16 v22, 0x1

    nop

    nop

    or-int/lit8 v13, v13, 0x1

    nop

    nop

    nop

    nop

    move-object v1, v5

    nop

    nop

    nop

    move/from16 v5, v21

    nop

    nop

    iput v13, v1, Ltow;->b:I

    nop

    nop

    nop

    iput v5, v1, Ltow;->c:I

    nop

    nop

    nop

    nop

    nop
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2b} :catch_7

    goto/32 :goto_50

    nop

    nop

    :goto_a7
    move-object/from16 v21, v13

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_a8
    invoke-interface {v4, v5}, Lpdf;->f(Ljava/lang/String;)V

    goto/32 :goto_af

    nop

    nop

    nop

    nop

    :goto_a9
    if-eqz v14, :cond_56

    nop

    goto/32 :goto_aa

    nop

    nop

    :cond_56
    :try_start_2c
    invoke-virtual {v12}, Ltkb;->o()V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2c} :catch_6

    :goto_aa
    :try_start_2d
    iget-object v14, v12, Ltkd;->b:Ltkg;

    nop

    nop

    nop

    nop

    check-cast v14, Ltox;

    nop

    nop

    nop

    iget v15, v14, Ltox;->b:I

    nop

    nop

    nop

    nop

    nop

    or-int/lit8 v15, v15, 0x8

    nop

    nop

    nop

    nop

    iput v15, v14, Ltox;->b:I

    nop

    nop

    nop

    nop

    const/high16 v15, -0x40000000    # -2.0f

    nop

    nop

    nop

    iput v15, v14, Ltox;->e:F

    nop

    nop

    nop

    nop

    nop

    iget-object v14, v12, Ltkb;->b:Ltkg;

    nop

    invoke-virtual {v14}, Ltkg;->C()Z

    move-result v14

    nop

    nop

    nop

    nop
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_2d} :catch_7

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_ab
    iput v6, v4, Lreb;->b:I

    nop

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    :goto_ac
    invoke-static {v7, v6, v8}, Lqrg;->F(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_ad
    if-eqz v7, :cond_57

    nop

    goto/32 :goto_ae

    nop

    :cond_57
    :try_start_2e
    invoke-virtual {v10}, Ltkb;->o()V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_2e} :catch_6

    :goto_ae
    :try_start_2f
    iget-object v7, v10, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    check-cast v7, Lren;

    nop

    nop

    nop

    nop

    iget v14, v7, Lren;->b:I

    nop

    nop

    nop

    const/4 v15, 0x2

    nop

    nop

    nop

    or-int/2addr v14, v15

    nop

    nop

    iput v14, v7, Lren;->b:I

    nop

    nop

    nop

    nop

    iput-wide v4, v7, Lren;->d:J

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v10}, Ltkb;->i()Ltkg;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    check-cast v4, Lren;

    nop

    nop

    nop

    nop

    nop

    iget-object v5, v8, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    invoke-virtual {v5}, Ltkg;->C()Z

    move-result v5

    nop
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_2f} :catch_7

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_af
    iget-object v4, v3, Lhex;->g:Lhgg;

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_b0
    new-array v8, v8, [Ljava/lang/Object;

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    :goto_b1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b2
    const-string v2, "cvk-ex"

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b3
    iget-object v1, v3, Lhhm;->a:Lhhq;

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b4
    iget-object v1, v3, Lhex;->h:Lpdf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    :goto_b5
    const-string v12, "/m/015bv3"

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

    :goto_b6
    if-eqz v14, :cond_58

    nop

    nop

    nop

    nop

    goto/32 :goto_b7

    nop

    :cond_58
    :try_start_30
    invoke-virtual {v12}, Ltkb;->o()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_30} :catch_6

    :goto_b7
    :try_start_31
    iget-object v14, v12, Ltkd;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    check-cast v14, Ltox;

    nop

    nop

    nop

    nop

    nop

    iget v15, v14, Ltox;->b:I

    nop

    nop

    const/16 v18, 0x2

    nop

    nop

    nop

    nop

    nop

    or-int/lit8 v15, v15, 0x2

    nop

    nop

    nop

    iput v15, v14, Ltox;->b:I

    nop

    const/4 v5, 0x1

    nop

    nop

    iput v5, v14, Ltox;->d:I

    nop

    nop

    iget-object v14, v12, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    invoke-virtual {v14}, Ltkg;->C()Z

    move-result v14

    nop
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_31} :catch_7

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    :goto_b8
    const v1, 0x19

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_b9
    const/4 v8, 0x0

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    :goto_ba
    invoke-virtual {v1, v2}, Lhep;->i(Ltkd;)V

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bb
    if-eqz v8, :cond_59

    nop

    nop

    goto/32 :goto_bc

    nop

    nop

    nop

    :cond_59
    :try_start_32
    invoke-static {v7}, Ltkg;->v(Ltkv;)Ltkv;

    move-result-object v7

    nop

    nop

    nop

    nop

    nop

    iput-object v7, v6, Lreb;->f:Ltkv;

    nop

    nop
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_32} :catch_6

    :goto_bc
    :try_start_33
    iget-object v6, v6, Lreb;->f:Ltkv;

    nop

    nop

    nop

    nop

    invoke-interface {v6, v4}, Ltkv;->add(Ljava/lang/Object;)Z

    :goto_bd
    const-string v4, "camera_vkp/corner_detector_fixed_input_shape_with_partial_metadata.tflite.uncompressed"

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v11, v4}, Lhep;->a(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v4

    nop

    const-string v6, "camera_vkp/corner_detector_label_map.uncompressed"

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v11, v6}, Lhep;->a(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    nop

    const-string v7, "camera_vkp/corner_detector_anchor.uncompressed"

    nop

    nop

    nop

    nop

    invoke-virtual {v11, v7}, Lhep;->a(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v7

    nop

    nop

    invoke-virtual {v11}, Lhep;->d()Z

    move-result v8

    nop

    nop

    invoke-virtual {v11}, Lhep;->e()Z

    move-result v10

    nop

    sget-object v12, Ltox;->a:Ltox;

    nop

    nop

    nop

    nop

    invoke-virtual {v12}, Ltkg;->m()Ltkb;

    move-result-object v12

    nop

    nop

    check-cast v12, Ltkd;

    nop

    nop

    nop

    nop

    iget-object v14, v12, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v14}, Ltkg;->C()Z

    move-result v14

    nop
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_33} :catch_7

    goto/32 :goto_b6

    nop

    nop

    nop

    nop

    :goto_be
    const-string v2, "disableSubpipeline called but pipeline is not available. Ignoring call."

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_bf
    iget-object v2, v1, Landroidx/wear/ambient/AmbientDelegate;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    :goto_c0
    move-object/from16 v21, v2

    nop

    nop

    nop

    :goto_c1
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop
.end method

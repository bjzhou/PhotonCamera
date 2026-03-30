.class public final synthetic Llxe;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lrsk;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field private final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;II)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Llxe;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    :goto_3
    iput p4, p0, Llxe;->d:I

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    iput-object p2, p0, Llxe;->b:Ljava/lang/Object;

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

    :goto_5
    iput p3, p0, Llxe;->a:I

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
.end method

.method public synthetic constructor <init>(Llxg;Landroid/graphics/Bitmap;II)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iput p4, p0, Llxe;->d:I

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    iput p3, p0, Llxe;->a:I

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Llxe;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p2, p0, Llxe;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 23

    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_0
    move-object v10, v4

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    move-object v4, v1

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_2
    check-cast v6, Lpbf;

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    :goto_3
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

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

    :goto_4
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_5
    if-eq v6, v10, :cond_0

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/4 v2, 0x0

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_7
    iget-object v0, v0, Llxe;->c:Ljava/lang/Object;

    nop

    nop

    :try_start_0
    new-instance v7, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    nop

    nop

    check-cast v5, Llxg;

    nop

    nop

    nop

    nop

    iget-object v5, v5, Llxg;->c:Landroid/content/Context;

    nop

    nop

    const-string v8, "w"

    nop

    nop

    nop

    new-instance v9, Lqza;

    nop

    invoke-direct {v9}, Lqza;-><init>()V

    invoke-virtual {v9}, Lqza;->c()V

    iput-boolean v3, v9, Lqza;->b:Z

    nop

    nop

    nop

    new-instance v10, Lqyy;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v10}, Lqyy;-><init>()V

    invoke-virtual {v9, v10}, Lqza;->b(Lqzd;)V

    invoke-virtual {v9}, Lqza;->a()Lqzb;

    move-result-object v9

    nop

    invoke-static {v5, v1, v8, v9}, Lqzc;->b(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Lqzb;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v5

    nop

    invoke-virtual {v5}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    nop

    nop

    invoke-direct {v7, v5}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    check-cast v0, Landroid/graphics/Bitmap;

    nop

    nop

    invoke-static {v0, v4}, Lnzk;->ai(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    nop

    nop

    nop

    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    nop

    nop

    nop

    nop

    nop

    const/16 v5, 0x5a

    nop

    invoke-virtual {v0, v4, v5, v7}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_8
    iget-object v4, v4, Lpbe;->f:Lsui;

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_9
    move v2, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v4, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_b
    return-object v1

    nop

    :goto_c
    goto/32 :goto_4b

    nop

    nop

    :goto_d
    invoke-interface {v7, v4}, Lpcu;->f(Ljava/lang/String;)V

    goto/32 :goto_63

    nop

    nop

    nop

    :goto_e
    iget-object v7, v6, Llxg;->e:Lpcu;

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v3, v1, v2}, Lpik;->c(Lpgo;I)Lpgh;

    move-result-object v1

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

    :goto_10
    check-cast v5, Ljava/util/List;

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-ne v1, v3, :cond_1

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

    :cond_1
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    move v2, v3

    nop

    nop

    :goto_13
    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_14
    invoke-static {v6}, Lrrf;->x(Z)V

    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v0, v1}, Lows;->d(Lpci;)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_16
    iget-object v3, v0, Llxe;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_17
    move-object v6, v4

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_18
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_19
    check-cast v10, Lrss;

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object v4, v0, Llxe;->b:Ljava/lang/Object;

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

    :goto_1b
    iget v1, v0, Llxe;->d:I

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    check-cast v3, Lpik;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_1d
    move-object v6, v5

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

    nop

    :goto_1e
    iget-object v1, v0, Llxe;->c:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1f
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_3a

    nop

    :goto_21
    invoke-static {v6}, Lsgj;->X(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v6

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_22
    const-string v8, "Writing to URI "

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_23
    return-object v0

    nop

    :catch_0
    move-exception v0

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iget-object v0, v0, Llxe;->c:Ljava/lang/Object;

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

    :goto_25
    new-instance v1, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    :goto_26
    move v6, v3

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_27
    move-object/from16 v5, p1

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

    :goto_28
    invoke-static {v4}, Lsgj;->X(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_29
    const v1, 0x18

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_2a
    goto/16 :goto_5a

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    :goto_2b
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    const-string v4, "Failed to save bitmap to "

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-static {v2}, Lrrf;->x(Z)V

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_30
    check-cast v1, Lpgo;

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

    :goto_31
    check-cast v6, Llxg;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    iget v2, v0, Llxe;->a:I

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_33
    check-cast v7, Ljava/io/FileDescriptor;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_34
    if-eq v5, v7, :cond_2

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_35
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

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
    if-lez v0, :cond_3

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_39

    nop

    :goto_37
    invoke-virtual {v1, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_38
    const/4 v3, 0x1

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    goto/32 :goto_41

    nop

    nop

    nop

    :goto_3a
    goto/32 :goto_5b

    nop

    nop

    :goto_3b
    move v6, v2

    nop

    nop

    nop

    :goto_3c
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_3d
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

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

    :goto_3e
    iget-object v3, v6, Llxg;->e:Lpcu;

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_3f
    const-string v4, "thumbnail"

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_40
    return-object v0

    nop

    nop

    :goto_41
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_42
    check-cast v4, Lpbe;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_43
    check-cast v1, Landroid/net/Uri;

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_44
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

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

    :goto_45
    invoke-interface {v3, v1, v0}, Lpcu;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_46
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_47
    if-nez v1, :cond_4

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_48
    const-string v2, "Failed to create muxer processor"

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_49
    const-string v1, "VideoRecorderImpl"

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_4a
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

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

    :goto_4b
    move-object/from16 v1, p1

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_4c
    move-object v3, v0

    nop

    nop

    nop

    nop

    :try_start_3
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    goto/16 :goto_3c

    nop

    nop

    nop

    nop

    :goto_4e
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    move-object v7, v6

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_50
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_51
    invoke-virtual {v6}, Lpbf;->r()Lsui;

    move-result-object v6

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_52
    iget v8, v0, Llxe;->a:I

    nop

    nop

    nop

    :try_start_4
    new-instance v0, Lpax;

    nop

    nop

    nop

    move-object v2, v4

    nop

    check-cast v2, Lpbf;

    nop

    iget v9, v2, Lpbf;->l:I

    nop

    move-object v2, v4

    nop

    nop

    nop

    nop

    check-cast v2, Lpbf;

    nop

    nop

    nop

    nop

    iget-object v11, v2, Lpbf;->k:Lsui;

    nop

    nop

    nop

    nop

    nop

    move-object v2, v4

    nop

    nop

    nop

    nop

    nop

    check-cast v2, Lpbf;

    nop

    nop

    nop

    nop

    nop

    iget-wide v12, v2, Lpbf;->j:J

    nop

    nop

    nop

    nop

    nop

    move-object v2, v4

    nop

    nop

    nop

    nop

    nop

    check-cast v2, Lpbf;

    nop

    nop

    nop

    nop

    nop

    iget-object v2, v2, Lpbf;->c:Lozj;

    nop

    nop

    nop

    nop

    nop

    const/4 v5, 0x2

    nop

    nop

    nop

    nop

    nop

    const/4 v6, 0x3

    nop

    if-eqz v2, :cond_5

    nop

    nop

    move v14, v5

    nop

    nop

    nop

    nop

    goto :goto_53

    nop

    nop

    nop

    :cond_5
    move v14, v6

    nop

    nop

    nop

    :goto_53
    move-object v2, v4

    nop

    nop

    nop

    check-cast v2, Lpbf;

    nop

    nop

    nop

    nop

    iget-object v2, v2, Lpbf;->d:Lozm;

    nop

    if-eqz v2, :cond_6

    nop

    nop

    nop

    move v15, v3

    nop

    nop

    nop

    goto :goto_54

    nop

    nop

    nop

    :cond_6
    move v15, v6

    nop

    nop

    nop

    nop

    nop

    :goto_54
    move-object v2, v4

    nop

    nop

    nop

    nop

    nop

    check-cast v2, Lpbf;

    nop

    iget-object v2, v2, Lpbf;->o:Ljava/util/List;

    nop

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    nop

    if-eq v3, v2, :cond_7

    nop

    move/from16 v16, v5

    nop

    nop

    nop

    nop

    goto :goto_55

    nop

    nop

    nop

    nop

    :cond_7
    move/from16 v16, v6

    nop

    nop

    nop

    :goto_55
    move-object v2, v4

    nop

    nop

    nop

    nop

    check-cast v2, Lpbf;

    nop

    nop

    nop

    iget-object v2, v2, Lpbf;->n:Lpad;

    nop

    move-object v3, v4

    nop

    check-cast v3, Lpbf;

    nop

    nop

    iget-object v3, v3, Lpbf;->i:Landroid/os/Handler;

    nop

    nop

    nop

    nop

    nop

    move-object v5, v1

    nop

    nop

    nop

    nop

    nop

    check-cast v5, Lpbe;

    nop

    iget-object v5, v5, Lpbe;->g:Ljava/util/concurrent/ExecutorService;

    nop

    check-cast v1, Lpbe;

    nop

    nop

    nop

    nop

    nop

    iget-object v1, v1, Lpbe;->c:Lpau;

    nop

    nop

    nop

    nop

    move-object v6, v4

    nop

    nop

    nop

    nop

    check-cast v6, Lpbf;

    nop

    nop

    nop

    iget-boolean v6, v6, Lpbf;->r:Z

    nop

    nop

    nop

    nop

    check-cast v4, Lpbf;

    nop

    iget-boolean v4, v4, Lpbf;->w:Z

    nop

    nop

    nop

    nop

    move/from16 v21, v6

    nop

    nop

    nop

    move-object v6, v0

    nop

    nop

    move-object/from16 v17, v2

    nop

    nop

    nop

    move-object/from16 v18, v3

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v19, v5

    nop

    nop

    move-object/from16 v20, v1

    nop

    nop

    nop

    move/from16 v22, v4

    nop

    nop

    nop

    nop

    nop

    invoke-direct/range {v6 .. v22}, Lpax;-><init>(Ljava/io/FileDescriptor;IILrss;Lsui;JIIILpad;Landroid/os/Handler;Ljava/util/concurrent/ExecutorService;Lpau;ZZ)V
    :try_end_4
    .catch Lpac; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_56
    iget-object v5, v0, Llxe;->b:Ljava/lang/Object;

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

    :goto_57
    rem-int v0, v0, v1

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_58
    invoke-virtual {v8, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

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

    :goto_59
    move-object v4, v0

    nop

    :try_start_5
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5a
    throw v3

    nop

    nop

    nop

    nop

    nop
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    move-exception v0

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_5b
    move-object/from16 v0, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    const v0, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_5e
    check-cast v0, Lows;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_5f
    throw v1

    nop

    nop

    nop

    nop

    nop

    :goto_60
    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :goto_61
    goto/16 :goto_46

    nop

    nop

    nop

    :catchall_1
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_62
    move-object/from16 v1, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_63
    iget v4, v0, Llxe;->a:I

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop
.end method

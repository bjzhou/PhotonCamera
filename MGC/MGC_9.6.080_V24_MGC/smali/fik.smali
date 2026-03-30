.class final Lfik;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lftq;


# instance fields
.field final synthetic a:Lfia;

.field final synthetic b:Ljava/util/List;

.field private c:Z


# direct methods
.method public constructor <init>(Lfia;Ljava/util/List;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lfik;->a:Lfia;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    :goto_3
    iput-object p2, p0, Lfik;->b:Ljava/util/List;

    nop

    goto/32 :goto_2

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 25

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-string v4, "Bitmap"

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_1
    move-object/from16 v1, p0

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

    :goto_2
    const v1, 0x7

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_3
    throw v0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-nez v8, :cond_0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_0
    :try_start_0
    const-class v8, Landroid/os/ParcelFileDescriptor;

    nop

    const-class v13, Landroid/graphics/Bitmap;

    nop

    nop

    move-object/from16 v23, v15

    nop

    nop

    nop

    nop

    new-instance v15, Lfpi;

    nop

    nop

    nop

    move-object/from16 v24, v11

    nop

    nop

    const/4 v11, 0x3

    nop

    invoke-direct {v15, v6, v11}, Lfpi;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v12, v4, v8, v13, v15}, Lhcs;->h(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lfjr;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/16 :goto_16

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_8
    const-string v1, "Recursive Registry initialization! In your AppGlideModule and LibraryGlideModules, Make sure you\'re using the provided Registry rather calling glide.getRegistry()!"

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_9
    move-object/from16 v1, p0

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_a
    goto/16 :goto_10

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_c
    iput-boolean v5, v1, Lfik;->c:Z

    nop

    nop

    :try_start_1
    iget-object v7, v1, Lfik;->a:Lfia;

    nop

    nop

    iget-object v8, v1, Lfik;->b:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    iget-object v9, v7, Lfia;->a:Lfmf;

    nop

    iget-object v10, v7, Lfia;->d:Lfmm;

    nop

    nop

    nop

    nop

    iget-object v11, v7, Lfia;->b:Lfid;

    nop

    nop

    invoke-virtual {v11}, Lfid;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    nop

    nop

    nop

    nop

    iget-object v7, v7, Lfia;->b:Lfid;

    nop

    nop

    nop

    iget-object v7, v7, Lfid;->f:Lfdo;

    nop

    nop

    nop

    nop

    nop

    new-instance v12, Lhcs;

    nop

    invoke-direct {v12}, Lhcs;-><init>()V

    new-instance v13, Lfpp;

    nop

    nop

    nop

    invoke-direct {v13}, Lfpp;-><init>()V

    invoke-virtual {v12, v13}, Lhcs;->i(Lfjf;)V

    new-instance v13, Lfqb;

    nop

    nop

    nop

    invoke-direct {v13}, Lfqb;-><init>()V

    invoke-virtual {v12, v13}, Lhcs;->i(Lfjf;)V

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    nop

    nop

    nop

    invoke-virtual {v12}, Lhcs;->b()Ljava/util/List;

    move-result-object v14

    nop

    nop

    nop

    nop

    nop

    new-instance v15, Lfrb;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v15, v11, v14, v9, v10}, Lfrb;-><init>(Landroid/content/Context;Ljava/util/List;Lfmf;Lfmm;)V

    new-instance v5, Lfqs;

    nop

    nop

    nop

    nop

    new-instance v6, Lfqp;

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_e
    if-nez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    :cond_1
    :try_start_2
    new-instance v0, Lfkl;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v0}, Lfkl;-><init>()V

    invoke-virtual {v12, v0}, Lhcs;->j(Lfjz;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_f
    :try_start_3
    new-instance v0, Lfnp;

    nop

    nop

    move-object/from16 v1, v24

    nop

    nop

    nop

    nop

    nop

    const/4 v2, 0x2

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v0, v1, v2}, Lfnp;-><init>(Landroid/content/Context;I)V

    new-instance v2, Lfnp;

    nop

    nop

    nop

    nop

    const/4 v3, 0x1

    nop

    nop

    invoke-direct {v2, v1, v3}, Lfnp;-><init>(Landroid/content/Context;I)V

    new-instance v3, Lfnp;

    nop

    nop

    nop

    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v3, v1, v4}, Lfnp;-><init>(Landroid/content/Context;I)V

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    nop

    const-class v6, Ljava/io/InputStream;

    nop

    nop

    invoke-virtual {v12, v4, v6, v0}, Lhcs;->g(Ljava/lang/Class;Ljava/lang/Class;Lfoi;)V

    const-class v4, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    const-class v6, Ljava/io/InputStream;

    nop

    nop

    nop

    nop

    invoke-virtual {v12, v4, v6, v0}, Lhcs;->g(Ljava/lang/Class;Ljava/lang/Class;Lfoi;)V

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    nop

    nop

    nop

    nop

    const-class v4, Landroid/content/res/AssetFileDescriptor;

    nop

    nop

    nop

    nop

    invoke-virtual {v12, v0, v4, v2}, Lhcs;->g(Ljava/lang/Class;Ljava/lang/Class;Lfoi;)V

    const-class v0, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    nop

    const-class v4, Landroid/content/res/AssetFileDescriptor;

    nop

    nop

    nop

    nop

    invoke-virtual {v12, v0, v4, v2}, Lhcs;->g(Ljava/lang/Class;Ljava/lang/Class;Lfoi;)V

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    nop

    nop

    nop

    nop

    const-class v2, Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    nop

    invoke-virtual {v12, v0, v2, v3}, Lhcs;->g(Ljava/lang/Class;Ljava/lang/Class;Lfoi;)V

    const-class v0, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    const-class v2, Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    invoke-virtual {v12, v0, v2, v3}, Lhcs;->g(Ljava/lang/Class;Ljava/lang/Class;Lfoi;)V

    const-class v0, Landroid/net/Uri;

    nop

    nop

    nop

    const-class v2, Ljava/io/InputStream;

    nop

    nop

    nop

    nop

    new-instance v3, Lfnt;

    nop

    nop

    nop

    const/4 v4, 0x3

    nop

    nop

    nop

    invoke-direct {v3, v1, v4}, Lfnt;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v12, v0, v2, v3}, Lhcs;->g(Ljava/lang/Class;Ljava/lang/Class;Lfoi;)V

    const-class v0, Landroid/net/Uri;

    nop

    const-class v2, Landroid/content/res/AssetFileDescriptor;

    nop

    nop

    nop

    nop

    new-instance v3, Lfnt;

    nop

    nop

    const/4 v4, 0x2

    nop

    invoke-direct {v3, v1, v4}, Lfnt;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v12, v0, v2, v3}, Lhcs;->g(Ljava/lang/Class;Ljava/lang/Class;Lfoi;)V

    new-instance v0, Lfon;

    nop

    nop

    nop

    const/4 v2, 0x3

    nop

    nop

    nop

    nop

    invoke-direct {v0, v13, v2}, Lfon;-><init>(Ljava/lang/Object;I)V

    new-instance v2, Lfon;

    nop

    nop

    nop

    nop

    nop

    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    invoke-direct {v2, v13, v3}, Lfon;-><init>(Ljava/lang/Object;I)V

    new-instance v3, Lfon;

    nop

    nop

    nop

    nop

    nop

    const/4 v4, 0x2

    nop

    invoke-direct {v3, v13, v4}, Lfon;-><init>(Ljava/lang/Object;I)V

    const-class v4, Ljava/lang/Integer;

    nop

    const-class v6, Landroid/net/Uri;

    nop

    nop

    invoke-virtual {v12, v4, v6, v0}, Lhcs;->g(Ljava/lang/Class;Ljava/lang/Class;Lfoi;)V

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    nop

    nop

    nop

    nop

    const-class v6, Landroid/net/Uri;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v12, v4, v6, v0}, Lhcs;->g(Ljava/lang/Class;Ljava/lang/Class;Lfoi;)V

    const-class v0, Ljava/lang/Integer;

    nop

    const-class v4, Landroid/content/res/AssetFileDescriptor;

    nop

    nop

    nop

    nop

    invoke-virtual {v12, v0, v4, v2}, Lhcs;->g(Ljava/lang/Class;Ljava/lang/Class;Lfoi;)V

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    nop

    nop

    const-class v4, Landroid/content/res/AssetFileDescriptor;

    nop

    invoke-virtual {v12, v0, v4, v2}, Lhcs;->g(Ljava/lang/Class;Ljava/lang/Class;Lfoi;)V

    const-class v0, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    nop

    const-class v2, Ljava/io/InputStream;

    nop

    nop

    nop

    invoke-virtual {v12, v0, v2, v3}, Lhcs;->g(Ljava/lang/Class;Ljava/lang/Class;Lfoi;)V

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    nop

    nop

    nop

    nop

    nop

    const-class v2, Ljava/io/InputStream;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v12, v0, v2, v3}, Lhcs;->g(Ljava/lang/Class;Ljava/lang/Class;Lfoi;)V

    const-class v0, Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    const-class v2, Ljava/io/InputStream;

    nop

    new-instance v3, Lfnt;

    nop

    nop

    const/4 v4, 0x0

    nop

    nop

    const/4 v6, 0x1

    nop

    nop

    nop

    nop

    invoke-direct {v3, v6, v4}, Lfnt;-><init>(I[B)V

    invoke-virtual {v12, v0, v2, v3}, Lhcs;->g(Ljava/lang/Class;Ljava/lang/Class;Lfoi;)V

    const-class v0, Landroid/net/Uri;

    nop

    nop

    nop

    const-class v2, Ljava/io/InputStream;

    nop

    nop

    nop

    new-instance v3, Lfnt;

    nop

    invoke-direct {v3, v6, v4}, Lfnt;-><init>(I[B)V

    invoke-virtual {v12, v0, v2, v3}, Lhcs;->g(Ljava/lang/Class;Ljava/lang/Class;Lfoi;)V

    const-class v0, Ljava/lang/String;

    nop

    const-class v2, Ljava/io/InputStream;

    nop

    new-instance v3, Lfnl;

    nop

    nop

    const/4 v4, 0x5

    nop

    nop

    invoke-direct {v3, v4}, Lfnl;-><init>(I)V

    invoke-virtual {v12, v0, v2, v3}, Lhcs;->g(Ljava/lang/Class;Ljava/lang/Class;Lfoi;)V

    const-class v0, Ljava/lang/String;

    nop

    const-class v2, Landroid/os/ParcelFileDescriptor;

    nop

    new-instance v3, Lfnl;

    nop

    nop

    nop

    nop

    const/4 v4, 0x4

    nop

    nop

    nop

    nop

    invoke-direct {v3, v4}, Lfnl;-><init>(I)V

    invoke-virtual {v12, v0, v2, v3}, Lhcs;->g(Ljava/lang/Class;Ljava/lang/Class;Lfoi;)V

    const-class v0, Ljava/lang/String;

    nop

    nop

    nop

    nop

    const-class v2, Landroid/content/res/AssetFileDescriptor;

    nop

    nop

    nop

    new-instance v3, Lfnl;

    nop

    nop

    nop

    const/4 v4, 0x3

    nop

    nop

    invoke-direct {v3, v4}, Lfnl;-><init>(I)V

    invoke-virtual {v12, v0, v2, v3}, Lhcs;->g(Ljava/lang/Class;Ljava/lang/Class;Lfoi;)V

    const-class v0, Landroid/net/Uri;

    nop

    const-class v2, Ljava/io/InputStream;

    nop

    new-instance v3, Lfnh;

    nop

    nop

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    nop

    nop

    nop

    const/4 v6, 0x0

    nop

    nop

    invoke-direct {v3, v4, v6}, Lfnh;-><init>(Landroid/content/res/AssetManager;I)V

    invoke-virtual {v12, v0, v2, v3}, Lhcs;->g(Ljava/lang/Class;Ljava/lang/Class;Lfoi;)V

    const-class v0, Landroid/net/Uri;

    nop

    const-class v2, Landroid/content/res/AssetFileDescriptor;

    nop

    nop

    nop

    new-instance v3, Lfnh;

    nop

    nop

    nop

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    nop

    nop

    nop

    nop

    const/4 v6, 0x1

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v3, v4, v6}, Lfnh;-><init>(Landroid/content/res/AssetManager;I)V

    invoke-virtual {v12, v0, v2, v3}, Lhcs;->g(Ljava/lang/Class;Ljava/lang/Class;Lfoi;)V

    const-class v0, Landroid/net/Uri;

    nop

    nop

    nop

    const-class v2, Ljava/io/InputStream;

    nop

    nop

    nop

    nop

    new-instance v3, Lfon;

    nop

    nop

    nop

    nop

    const/4 v4, 0x5

    nop

    nop

    nop

    invoke-direct {v3, v1, v4}, Lfon;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v12, v0, v2, v3}, Lhcs;->g(Ljava/lang/Class;Ljava/lang/Class;Lfoi;)V

    const-class v0, Landroid/net/Uri;

    nop

    nop

    nop

    const-class v2, Ljava/io/InputStream;

    nop

    nop

    nop

    new-instance v3, Lfon;

    nop

    nop

    invoke-direct {v3, v1, v5}, Lfon;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v12, v0, v2, v3}, Lhcs;->g(Ljava/lang/Class;Ljava/lang/Class;Lfoi;)V

    const-class v0, Landroid/net/Uri;

    nop

    nop

    const-class v2, Ljava/io/InputStream;

    nop

    nop

    nop

    nop

    new-instance v3, Lfow;

    nop

    const-class v4, Ljava/io/InputStream;

    nop

    nop

    invoke-direct {v3, v1, v4}, Lfow;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v12, v0, v2, v3}, Lhcs;->g(Ljava/lang/Class;Ljava/lang/Class;Lfoi;)V

    const-class v0, Landroid/net/Uri;

    nop

    const-class v2, Landroid/os/ParcelFileDescriptor;

    nop

    nop

    nop

    nop

    nop

    new-instance v3, Lfow;

    nop

    nop

    const-class v4, Landroid/os/ParcelFileDescriptor;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v3, v1, v4}, Lfow;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v12, v0, v2, v3}, Lhcs;->g(Ljava/lang/Class;Ljava/lang/Class;Lfoi;)V

    const-class v0, Landroid/net/Uri;

    nop

    nop

    nop

    nop

    const-class v2, Ljava/io/InputStream;

    nop

    nop

    nop

    new-instance v3, Lfoq;

    nop

    nop

    nop

    move-object/from16 v4, v23

    nop

    nop

    nop

    nop

    nop

    const/4 v5, 0x2

    nop

    invoke-direct {v3, v4, v5}, Lfoq;-><init>(Landroid/content/ContentResolver;I)V

    invoke-virtual {v12, v0, v2, v3}, Lhcs;->g(Ljava/lang/Class;Ljava/lang/Class;Lfoi;)V

    const-class v0, Landroid/net/Uri;

    nop

    nop

    nop

    nop

    nop

    const-class v2, Landroid/os/ParcelFileDescriptor;

    nop

    nop

    nop

    nop

    new-instance v3, Lfoq;

    nop

    nop

    nop

    nop

    nop

    const/4 v5, 0x0

    nop

    nop

    nop

    invoke-direct {v3, v4, v5}, Lfoq;-><init>(Landroid/content/ContentResolver;I)V

    invoke-virtual {v12, v0, v2, v3}, Lhcs;->g(Ljava/lang/Class;Ljava/lang/Class;Lfoi;)V

    const-class v0, Landroid/net/Uri;

    nop

    nop

    nop

    nop

    const-class v2, Landroid/content/res/AssetFileDescriptor;

    nop

    nop

    nop

    nop

    new-instance v3, Lfoq;

    nop

    nop

    const/4 v5, 0x1

    nop

    nop

    invoke-direct {v3, v4, v5}, Lfoq;-><init>(Landroid/content/ContentResolver;I)V

    invoke-virtual {v12, v0, v2, v3}, Lhcs;->g(Ljava/lang/Class;Ljava/lang/Class;Lfoi;)V

    const-class v0, Landroid/net/Uri;

    nop

    const-class v2, Ljava/io/InputStream;

    nop

    nop

    nop

    nop

    nop

    new-instance v3, Lfot;

    nop

    nop

    nop

    const/4 v4, 0x0

    nop

    nop

    nop

    invoke-direct {v3, v4}, Lfot;-><init>(I)V

    invoke-virtual {v12, v0, v2, v3}, Lhcs;->g(Ljava/lang/Class;Ljava/lang/Class;Lfoi;)V

    const-class v0, Ljava/net/URL;

    nop

    nop

    const-class v2, Ljava/io/InputStream;

    nop

    nop

    nop

    nop

    nop

    new-instance v3, Lfot;

    nop

    nop

    nop

    nop

    nop

    const/4 v4, 0x2

    nop

    nop

    invoke-direct {v3, v4}, Lfot;-><init>(I)V

    invoke-virtual {v12, v0, v2, v3}, Lhcs;->g(Ljava/lang/Class;Ljava/lang/Class;Lfoi;)V

    const-class v0, Landroid/net/Uri;

    nop

    nop

    nop

    const-class v2, Ljava/io/File;

    nop

    nop

    new-instance v3, Lfon;

    nop

    const/4 v4, 0x1

    nop

    nop

    nop

    invoke-direct {v3, v1, v4}, Lfon;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v12, v0, v2, v3}, Lhcs;->g(Ljava/lang/Class;Ljava/lang/Class;Lfoi;)V

    const-class v0, Lfny;

    nop

    const-class v1, Ljava/io/InputStream;

    nop

    nop

    nop

    nop

    nop

    new-instance v2, Lfon;

    nop

    nop

    const/4 v3, 0x4

    nop

    nop

    invoke-direct {v2, v3}, Lfon;-><init>(I)V

    invoke-virtual {v12, v0, v1, v2}, Lhcs;->g(Ljava/lang/Class;Ljava/lang/Class;Lfoi;)V

    const-class v0, Ljava/nio/ByteBuffer;

    nop

    new-instance v1, Lfnl;

    nop

    nop

    nop

    nop

    const/4 v2, 0x1

    nop

    nop

    nop

    invoke-direct {v1, v2}, Lfnl;-><init>(I)V

    move-object/from16 v2, v17

    nop

    nop

    nop

    invoke-virtual {v12, v2, v0, v1}, Lhcs;->g(Ljava/lang/Class;Ljava/lang/Class;Lfoi;)V

    const-class v0, Ljava/io/InputStream;

    nop

    nop

    nop

    new-instance v1, Lfnl;

    nop

    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v1, v3}, Lfnl;-><init>(I)V

    invoke-virtual {v12, v2, v0, v1}, Lhcs;->g(Ljava/lang/Class;Ljava/lang/Class;Lfoi;)V

    const-class v0, Landroid/net/Uri;

    nop

    const-class v1, Landroid/net/Uri;

    nop

    sget-object v3, Lfot;->a:Lfot;

    nop

    invoke-virtual {v12, v0, v1, v3}, Lhcs;->g(Ljava/lang/Class;Ljava/lang/Class;Lfoi;)V

    const-class v0, Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    nop

    const-class v1, Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    nop

    nop

    sget-object v3, Lfot;->a:Lfot;

    nop

    invoke-virtual {v12, v0, v1, v3}, Lhcs;->g(Ljava/lang/Class;Ljava/lang/Class;Lfoi;)V

    const-class v0, Landroid/graphics/drawable/Drawable;

    nop

    const-class v1, Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    nop

    new-instance v3, Lfra;

    nop

    const/4 v4, 0x0

    nop

    nop

    nop

    invoke-direct {v3, v4}, Lfra;-><init>(I)V

    invoke-virtual {v12, v0, v1, v3}, Lhcs;->f(Ljava/lang/Class;Ljava/lang/Class;Lfjr;)V

    const-class v0, Landroid/graphics/Bitmap;

    nop

    nop

    const-class v1, Landroid/graphics/drawable/BitmapDrawable;

    nop

    nop

    nop

    new-instance v3, Lfrl;

    nop

    nop

    nop

    invoke-direct {v3, v13, v4}, Lfrl;-><init>(Landroid/content/res/Resources;I)V

    invoke-virtual {v12, v0, v1, v3}, Lhcs;->k(Ljava/lang/Class;Ljava/lang/Class;Lfrn;)V

    const-class v0, Landroid/graphics/Bitmap;

    nop

    nop

    nop

    nop

    move-object/from16 v1, v22

    nop

    nop

    nop

    nop

    invoke-virtual {v12, v0, v2, v1}, Lhcs;->k(Ljava/lang/Class;Ljava/lang/Class;Lfrn;)V

    const-class v0, Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    nop

    nop

    new-instance v3, Lfrm;

    nop

    nop

    nop

    nop

    move-object/from16 v4, v21

    nop

    nop

    nop

    nop

    invoke-direct {v3, v9, v1, v4}, Lfrm;-><init>(Lfmf;Lfrn;Lfrn;)V

    invoke-virtual {v12, v0, v2, v3}, Lhcs;->k(Ljava/lang/Class;Ljava/lang/Class;Lfrn;)V

    const-class v0, Lfrd;

    nop

    nop

    nop

    nop

    invoke-virtual {v12, v0, v2, v4}, Lhcs;->k(Ljava/lang/Class;Ljava/lang/Class;Lfrn;)V

    new-instance v0, Lfqs;

    nop

    new-instance v1, Lfqp;

    nop

    nop

    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    invoke-direct {v1, v2}, Lfqp;-><init>(I)V

    invoke-direct {v0, v9, v1}, Lfqs;-><init>(Lfmf;Lfqq;)V

    const-class v1, Ljava/nio/ByteBuffer;

    nop

    nop

    nop

    nop

    nop

    const-class v2, Landroid/graphics/Bitmap;

    nop

    nop

    nop

    invoke-virtual {v12, v1, v2, v0}, Lhcs;->f(Ljava/lang/Class;Ljava/lang/Class;Lfjr;)V

    const-class v1, Ljava/nio/ByteBuffer;

    nop

    const-class v2, Landroid/graphics/drawable/BitmapDrawable;

    nop

    nop

    nop

    nop

    new-instance v3, Lfpd;

    nop

    nop

    nop

    nop

    invoke-direct {v3, v13, v0}, Lfpd;-><init>(Landroid/content/res/Resources;Lfjr;)V

    invoke-virtual {v12, v1, v2, v3}, Lhcs;->f(Ljava/lang/Class;Ljava/lang/Class;Lfjr;)V

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    nop

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-nez v1, :cond_2

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :cond_2
    :try_start_4
    new-instance v1, Lfpi;

    nop

    nop

    nop

    const/4 v7, 0x2

    nop

    nop

    invoke-direct {v1, v7}, Lfpi;-><init>(I)V

    new-instance v7, Lfpi;

    nop

    nop

    const/4 v8, 0x0

    nop

    nop

    nop

    invoke-direct {v7, v8}, Lfpi;-><init>(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_14
    move-object/from16 v1, p0

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

    :goto_15
    move-object/from16 v23, v15

    nop

    :goto_16
    :try_start_5
    const-class v6, Landroid/content/res/AssetFileDescriptor;

    nop

    nop

    nop

    const-class v8, Landroid/graphics/Bitmap;

    nop

    new-instance v11, Lfqs;

    nop

    nop

    new-instance v13, Lfqp;

    nop

    nop

    nop

    const/4 v15, 0x1

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v13, v15}, Lfqp;-><init>(I)V

    invoke-direct {v11, v9, v13}, Lfqs;-><init>(Lfmf;Lfqq;)V

    invoke-virtual {v12, v4, v6, v8, v11}, Lhcs;->h(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lfjr;)V

    const-class v6, Landroid/os/ParcelFileDescriptor;

    nop

    nop

    nop

    nop

    nop

    const-class v8, Landroid/graphics/Bitmap;

    nop

    invoke-virtual {v12, v4, v6, v8, v5}, Lhcs;->h(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lfjr;)V

    const-class v6, Landroid/graphics/Bitmap;

    nop

    nop

    nop

    nop

    nop

    const-class v8, Landroid/graphics/Bitmap;

    nop

    nop

    nop

    sget-object v11, Lfot;->a:Lfot;

    nop

    invoke-virtual {v12, v6, v8, v11}, Lhcs;->g(Ljava/lang/Class;Ljava/lang/Class;Lfoi;)V

    const-class v6, Landroid/graphics/Bitmap;

    nop

    nop

    nop

    const-class v8, Landroid/graphics/Bitmap;

    nop

    nop

    nop

    new-instance v11, Lfra;

    nop

    nop

    const/4 v13, 0x1

    nop

    nop

    nop

    invoke-direct {v11, v13}, Lfra;-><init>(I)V

    invoke-virtual {v12, v4, v6, v8, v11}, Lhcs;->h(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lfjr;)V

    const-class v6, Landroid/graphics/Bitmap;

    nop

    nop

    nop

    invoke-virtual {v12, v6, v3}, Lhcs;->e(Ljava/lang/Class;Lfjs;)V

    const-class v6, Ljava/nio/ByteBuffer;

    nop

    const-class v8, Landroid/graphics/drawable/BitmapDrawable;

    nop

    nop

    nop

    nop

    nop

    new-instance v11, Lfpd;

    nop

    nop

    nop

    nop

    move-object/from16 v13, v20

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v11, v13, v7}, Lfpd;-><init>(Landroid/content/res/Resources;Lfjr;)V

    move-object/from16 v7, v19

    nop

    invoke-virtual {v12, v7, v6, v8, v11}, Lhcs;->h(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lfjr;)V

    const-class v6, Ljava/io/InputStream;

    nop

    const-class v8, Landroid/graphics/drawable/BitmapDrawable;

    nop

    nop

    nop

    nop

    nop

    new-instance v11, Lfpd;

    nop

    nop

    nop

    nop

    invoke-direct {v11, v13, v1}, Lfpd;-><init>(Landroid/content/res/Resources;Lfjr;)V

    invoke-virtual {v12, v7, v6, v8, v11}, Lhcs;->h(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lfjr;)V

    const-class v1, Landroid/os/ParcelFileDescriptor;

    nop

    nop

    nop

    const-class v6, Landroid/graphics/drawable/BitmapDrawable;

    nop

    new-instance v8, Lfpd;

    nop

    nop

    invoke-direct {v8, v13, v5}, Lfpd;-><init>(Landroid/content/res/Resources;Lfjr;)V

    invoke-virtual {v12, v7, v1, v6, v8}, Lhcs;->h(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lfjr;)V

    const-class v1, Landroid/graphics/drawable/BitmapDrawable;

    nop

    nop

    new-instance v5, Lfpe;

    nop

    nop

    nop

    invoke-direct {v5, v9, v3}, Lfpe;-><init>(Lfmf;Lfjs;)V

    invoke-virtual {v12, v1, v5}, Lhcs;->e(Ljava/lang/Class;Lfjs;)V

    const-class v1, Ljava/io/InputStream;

    nop

    nop

    nop

    nop

    const-class v3, Lfrd;

    nop

    nop

    nop

    new-instance v5, Lfrk;

    nop

    nop

    nop

    nop

    move-object/from16 v6, v18

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v5, v14, v6, v10}, Lfrk;-><init>(Ljava/util/List;Lfjr;Lfmm;)V

    invoke-virtual {v12, v2, v1, v3, v5}, Lhcs;->h(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lfjr;)V

    const-class v1, Ljava/nio/ByteBuffer;

    nop

    nop

    nop

    const-class v3, Lfrd;

    nop

    nop

    nop

    nop

    invoke-virtual {v12, v2, v1, v3, v6}, Lhcs;->h(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lfjr;)V

    const-class v1, Lfrd;

    nop

    nop

    nop

    new-instance v2, Lfre;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v2}, Lfre;-><init>()V

    invoke-virtual {v12, v1, v2}, Lhcs;->e(Ljava/lang/Class;Lfjs;)V

    const-class v1, Lfix;

    nop

    nop

    nop

    const-class v2, Lfix;

    nop

    nop

    nop

    nop

    nop

    sget-object v3, Lfot;->a:Lfot;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v12, v1, v2, v3}, Lhcs;->g(Ljava/lang/Class;Ljava/lang/Class;Lfoi;)V

    const-class v1, Lfix;

    nop

    nop

    nop

    nop

    nop

    const-class v2, Landroid/graphics/Bitmap;

    nop

    nop

    nop

    nop

    nop

    new-instance v3, Lfpi;

    nop

    const/4 v5, 0x6

    nop

    nop

    nop

    invoke-direct {v3, v9, v5}, Lfpi;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v12, v4, v1, v2, v3}, Lhcs;->h(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lfjr;)V

    const-class v1, Landroid/net/Uri;

    nop

    nop

    const-class v2, Landroid/graphics/drawable/Drawable;

    nop

    nop

    invoke-virtual {v12, v1, v2, v0}, Lhcs;->f(Ljava/lang/Class;Ljava/lang/Class;Lfjr;)V

    const-class v1, Landroid/net/Uri;

    nop

    nop

    const-class v2, Landroid/graphics/Bitmap;

    nop

    new-instance v3, Lfqk;

    nop

    nop

    nop

    nop

    const/4 v4, 0x1

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v3, v0, v9, v4}, Lfqk;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v12, v1, v2, v3}, Lhcs;->f(Ljava/lang/Class;Ljava/lang/Class;Lfjr;)V

    new-instance v0, Lfqt;

    nop

    nop

    invoke-direct {v0}, Lfqt;-><init>()V

    invoke-virtual {v12, v0}, Lhcs;->j(Lfjz;)V

    const-class v0, Ljava/io/File;

    nop

    nop

    nop

    const-class v1, Ljava/nio/ByteBuffer;

    nop

    nop

    nop

    new-instance v2, Lfnl;

    nop

    nop

    nop

    nop

    nop

    const/4 v3, 0x2

    nop

    invoke-direct {v2, v3}, Lfnl;-><init>(I)V

    invoke-virtual {v12, v0, v1, v2}, Lhcs;->g(Ljava/lang/Class;Ljava/lang/Class;Lfoi;)V

    const-class v0, Ljava/io/File;

    nop

    const-class v1, Ljava/io/InputStream;

    nop

    nop

    nop

    nop

    new-instance v2, Lfnt;

    nop

    new-instance v3, Lfnw;

    nop

    nop

    nop

    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v3, v4}, Lfnw;-><init>(I)V

    invoke-direct {v2, v3, v4}, Lfnt;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v12, v0, v1, v2}, Lhcs;->g(Ljava/lang/Class;Ljava/lang/Class;Lfoi;)V

    const-class v0, Ljava/io/File;

    nop

    nop

    nop

    nop

    nop

    const-class v1, Ljava/io/File;

    nop

    nop

    nop

    nop

    new-instance v2, Lfra;

    nop

    nop

    const/4 v3, 0x2

    nop

    invoke-direct {v2, v3}, Lfra;-><init>(I)V

    invoke-virtual {v12, v0, v1, v2}, Lhcs;->f(Ljava/lang/Class;Ljava/lang/Class;Lfjr;)V

    const-class v0, Ljava/io/File;

    nop

    nop

    nop

    nop

    const-class v1, Landroid/os/ParcelFileDescriptor;

    nop

    nop

    nop

    new-instance v2, Lfnt;

    nop

    new-instance v3, Lfnw;

    nop

    const/4 v4, 0x1

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v3, v4}, Lfnw;-><init>(I)V

    const/4 v4, 0x0

    nop

    invoke-direct {v2, v3, v4}, Lfnt;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v12, v0, v1, v2}, Lhcs;->g(Ljava/lang/Class;Ljava/lang/Class;Lfoi;)V

    const-class v0, Ljava/io/File;

    nop

    nop

    nop

    const-class v1, Ljava/io/File;

    nop

    nop

    sget-object v2, Lfot;->a:Lfot;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v12, v0, v1, v2}, Lhcs;->g(Ljava/lang/Class;Ljava/lang/Class;Lfoi;)V

    new-instance v0, Lfki;

    nop

    invoke-direct {v0, v10}, Lfki;-><init>(Lfmm;)V

    invoke-virtual {v12, v0}, Lhcs;->j(Lfjz;)V

    invoke-static {}, Lfkm;->d()Z

    move-result v0

    nop

    nop

    nop
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const-string v0, "BitmapDrawable"

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_18
    if-nez v1, :cond_3

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_3
    :try_start_6
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    check-cast v1, Lcom/google/android/apps/camera/filmstrip/GlideConfiguration;

    nop

    nop

    nop
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_19
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_1a
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1b
    const v0, 0xb

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

    nop

    :goto_1c
    const/4 v2, 0x0

    nop

    :goto_1d
    goto/32 :goto_36

    nop

    nop

    nop

    :goto_1e
    invoke-static {v5}, Ldwa;->j(Ljava/lang/String;)V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/16 :goto_1d

    nop

    nop

    nop

    :goto_20
    :try_start_7
    new-instance v7, Lfpi;

    nop

    nop

    nop

    nop

    const/4 v1, 0x1

    nop

    nop

    invoke-direct {v7, v6, v1}, Lfpi;-><init>(Ljava/lang/Object;I)V

    new-instance v1, Lfqk;

    nop

    nop

    nop

    nop

    nop

    const/4 v8, 0x0

    nop

    invoke-direct {v1, v6, v10, v8}, Lfqk;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    :goto_21
    const-class v8, Ljava/io/InputStream;

    nop

    nop

    move-object/from16 v17, v3

    nop

    nop

    nop

    nop

    const-class v3, Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    nop

    move-object/from16 v18, v15

    nop

    nop

    new-instance v15, Lfpi;

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v19, v0

    nop

    new-instance v0, Liof;

    nop

    nop

    nop

    invoke-direct {v0, v14, v10}, Liof;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v20, v13

    nop

    const/4 v13, 0x5

    nop

    nop

    nop

    invoke-direct {v15, v0, v13}, Lfpi;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v12, v2, v8, v3, v15}, Lhcs;->h(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lfjr;)V

    const-class v0, Ljava/nio/ByteBuffer;

    nop

    const-class v3, Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    nop

    new-instance v8, Lfpi;

    nop

    nop

    nop

    nop

    new-instance v15, Liof;

    nop

    invoke-direct {v15, v14, v10}, Liof;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v13, 0x4

    nop

    nop

    nop

    invoke-direct {v8, v15, v13}, Lfpi;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v12, v2, v0, v3, v8}, Lhcs;->h(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lfjr;)V

    new-instance v0, Lfqz;

    nop

    nop

    nop

    invoke-direct {v0, v11}, Lfqz;-><init>(Landroid/content/Context;)V

    new-instance v3, Lfpf;

    nop

    nop

    nop

    invoke-direct {v3, v10}, Lfpf;-><init>(Lfmm;)V

    new-instance v8, Lfrl;

    nop

    nop

    const/4 v15, 0x1

    nop

    nop

    nop

    invoke-direct {v8, v15}, Lfrl;-><init>(I)V

    new-instance v13, Lfro;

    nop

    nop

    nop

    invoke-direct {v13, v15}, Lfro;-><init>(I)V

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v21, v13

    nop

    nop

    nop

    nop

    nop

    const-class v13, Ljava/nio/ByteBuffer;

    nop

    move-object/from16 v22, v8

    nop

    new-instance v8, Lfnm;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v8}, Lfnm;-><init>()V

    invoke-virtual {v12, v13, v8}, Lhcs;->d(Ljava/lang/Class;Lfjd;)V

    const-class v8, Ljava/io/InputStream;

    nop

    new-instance v13, Lfoo;

    nop

    invoke-direct {v13, v10}, Lfoo;-><init>(Lfmm;)V

    invoke-virtual {v12, v8, v13}, Lhcs;->d(Ljava/lang/Class;Lfjd;)V

    const-class v8, Ljava/nio/ByteBuffer;

    nop

    nop

    nop

    nop

    nop

    const-class v13, Landroid/graphics/Bitmap;

    nop

    invoke-virtual {v12, v4, v8, v13, v7}, Lhcs;->h(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lfjr;)V

    const-class v8, Ljava/io/InputStream;

    nop

    nop

    nop

    const-class v13, Landroid/graphics/Bitmap;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v12, v4, v8, v13, v1}, Lhcs;->h(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lfjr;)V

    invoke-static {}, Lfkm;->d()Z

    move-result v8

    nop

    nop

    nop
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_22
    return-object v12

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_23
    const/4 v5, 0x1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_24
    if-lez v0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_11

    nop

    :goto_25
    const/4 v1, 0x2

    nop

    nop

    :try_start_8
    invoke-direct {v6, v1}, Lfqp;-><init>(I)V

    invoke-direct {v5, v9, v6}, Lfqs;-><init>(Lfmf;Lfqq;)V

    new-instance v6, Lfpx;

    nop

    nop

    nop

    nop

    invoke-virtual {v12}, Lhcs;->b()Ljava/util/List;

    move-result-object v1

    nop

    move-object/from16 v16, v8

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v13}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v6, v1, v8, v9, v10}, Lfpx;-><init>(Ljava/util/List;Landroid/util/DisplayMetrics;Lfmf;Lfmm;)V

    const-class v1, Lfib;

    nop

    nop

    invoke-virtual {v7, v1}, Lfdo;->a(Ljava/lang/Class;)Z

    move-result v1

    nop
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_26
    goto/16 :goto_21

    nop

    nop

    :catchall_1
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_27
    const-string v2, "Animation"

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_28
    iput-boolean v2, v1, Lfik;->c:Z

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

    :goto_29
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_2b
    const-class v3, [B

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2c
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/32 :goto_2f

    nop

    nop

    :goto_2f
    throw v0

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_31
    new-instance v0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_32
    move-object/from16 v24, v11

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_33
    const-string v5, "Glide registry"

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_34
    move-object/from16 v1, p0

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_35
    if-eqz v5, :cond_5

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_33

    nop

    nop

    :goto_36
    iput-boolean v2, v1, Lfik;->c:Z

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_37
    iget-boolean v5, v1, Lfik;->c:Z

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_38
    goto :goto_39

    nop

    nop

    :catchall_2
    move-exception v0

    nop

    nop

    nop

    :goto_39
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop
.end method

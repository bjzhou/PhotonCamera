.class final Lboz;
.super Ljava/lang/Object;

# interfaces
.implements Lcaq;


# instance fields
.field final synthetic a:Lbol;

.field final synthetic b:Ljava/util/List;

.field private c:Z


# direct methods
.method public constructor <init>(Lbol;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lboz;->a:Lbol;

    iput-object p2, p0, Lboz;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 28

    move-object/from16 v1, p0

    const-string v0, "BitmapDrawable"

    const-string v2, "Animation"

    const-class v3, [B

    const-string v4, "Bitmap"

    iget-boolean v5, v1, Lboz;->c:Z

    if-nez v5, :cond_5

    const-string v5, "Glide registry"

    invoke-static {v5}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    const/4 v5, 0x1

    iput-boolean v5, v1, Lboz;->c:Z

    :try_start_0
    iget-object v7, v1, Lboz;->a:Lbol;

    iget-object v8, v1, Lboz;->b:Ljava/util/List;

    iget-object v9, v7, Lbol;->a:Lbsw;

    iget-object v10, v7, Lbol;->c:Lbsu;

    iget-object v11, v7, Lbol;->b:Lboq;

    invoke-virtual {v11}, Lboq;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    iget-object v7, v7, Lbol;->b:Lboq;

    iget-object v7, v7, Lboq;->f:Lbkc;

    new-instance v12, Lboy;

    invoke-direct {v12}, Lboy;-><init>()V

    new-instance v13, Lbwh;

    invoke-direct {v13}, Lbwh;-><init>()V

    invoke-virtual {v12, v13}, Lboy;->i(Lbpv;)V

    new-instance v13, Lbwt;

    invoke-direct {v13}, Lbwt;-><init>()V

    invoke-virtual {v12, v13}, Lboy;->i(Lbpv;)V

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v12}, Lboy;->b()Ljava/util/List;

    move-result-object v14

    new-instance v15, Lbxt;

    invoke-direct {v15, v11, v14, v9, v10}, Lbxt;-><init>(Landroid/content/Context;Ljava/util/List;Lbsw;Lbsu;)V

    new-instance v5, Lbxk;

    new-instance v6, Lbxh;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x2

    :try_start_1
    invoke-direct {v6, v1}, Lbxh;-><init>(I)V

    invoke-direct {v5, v9, v6}, Lbxk;-><init>(Lbsw;Lbxi;)V

    new-instance v6, Lbwp;

    invoke-virtual {v12}, Lboy;->b()Ljava/util/List;

    move-result-object v1

    move-object/from16 v16, v8

    invoke-virtual {v13}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    invoke-direct {v6, v1, v8, v9, v10}, Lbwp;-><init>(Ljava/util/List;Landroid/util/DisplayMetrics;Lbsw;Lbsu;)V

    const-class v1, Lbom;

    invoke-virtual {v7, v1}, Lbkc;->a(Ljava/lang/Class;)Z

    move-result v1

    const/4 v8, 0x0

    if-eqz v1, :cond_0

    new-instance v1, Lbwa;

    move-object/from16 v17, v3

    const/4 v3, 0x2

    invoke-direct {v1, v3, v8}, Lbwa;-><init>(I[B)V

    new-instance v3, Lbwa;

    const/4 v8, 0x0

    invoke-direct {v3, v8}, Lbwa;-><init>(I)V

    goto :goto_0

    :cond_0
    move-object/from16 v17, v3

    new-instance v3, Lbwa;

    const/4 v1, 0x1

    invoke-direct {v3, v6, v1}, Lbwa;-><init>(Lbwp;I)V

    new-instance v1, Lbxc;

    const/4 v8, 0x0

    invoke-direct {v1, v6, v10, v8}, Lbxc;-><init>(Lbwp;Lbsu;I)V

    :goto_0
    const-class v8, Ljava/io/InputStream;

    move-object/from16 v18, v7

    const-class v7, Landroid/graphics/drawable/Drawable;

    move-object/from16 v26, v15

    new-instance v15, Lbwa;

    move-object/from16 v27, v0

    new-instance v0, Ldne;

    invoke-direct {v0, v14, v10}, Ldne;-><init>(Ljava/util/List;Lbsu;)V

    const/16 v21, 0x5

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v19, v15

    move-object/from16 v20, v0

    invoke-direct/range {v19 .. v25}, Lbwa;-><init>(Ldne;I[B[B[B[B)V

    invoke-virtual {v12, v2, v8, v7, v15}, Lboy;->h(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lbqh;)V

    const-class v0, Ljava/nio/ByteBuffer;

    const-class v7, Landroid/graphics/drawable/Drawable;

    new-instance v8, Lbwa;

    new-instance v15, Ldne;

    invoke-direct {v15, v14, v10}, Ldne;-><init>(Ljava/util/List;Lbsu;)V

    const/16 v21, 0x4

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v19, v8

    move-object/from16 v20, v15

    invoke-direct/range {v19 .. v25}, Lbwa;-><init>(Ldne;I[B[B[B[B)V

    invoke-virtual {v12, v2, v0, v7, v8}, Lboy;->h(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lbqh;)V

    new-instance v0, Lbxr;

    invoke-direct {v0, v11}, Lbxr;-><init>(Landroid/content/Context;)V

    new-instance v7, Lbvx;

    invoke-direct {v7, v10}, Lbvx;-><init>(Lbsu;)V

    new-instance v8, Lbye;

    const/4 v15, 0x1

    invoke-direct {v8, v15}, Lbye;-><init>(I)V

    new-instance v15, Lbyh;

    move-object/from16 v19, v8

    const/4 v8, 0x1

    invoke-direct {v15, v8}, Lbyh;-><init>(I)V

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    move-object/from16 v20, v15

    const-class v15, Ljava/nio/ByteBuffer;

    move-object/from16 v21, v8

    new-instance v8, Lbue;

    invoke-direct {v8}, Lbue;-><init>()V

    invoke-virtual {v12, v15, v8}, Lboy;->d(Ljava/lang/Class;Lbpt;)V

    const-class v8, Ljava/io/InputStream;

    new-instance v15, Lbvg;

    invoke-direct {v15, v10}, Lbvg;-><init>(Lbsu;)V

    invoke-virtual {v12, v8, v15}, Lboy;->d(Ljava/lang/Class;Lbpt;)V

    const-class v8, Ljava/nio/ByteBuffer;

    const-class v15, Landroid/graphics/Bitmap;

    invoke-virtual {v12, v4, v8, v15, v3}, Lboy;->h(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lbqh;)V

    const-class v8, Ljava/io/InputStream;

    const-class v15, Landroid/graphics/Bitmap;

    invoke-virtual {v12, v4, v8, v15, v1}, Lboy;->h(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lbqh;)V

    invoke-static {}, Lbrc;->d()Z

    move-result v8

    if-eqz v8, :cond_1

    const-class v8, Landroid/os/ParcelFileDescriptor;

    const-class v15, Landroid/graphics/Bitmap;

    move-object/from16 v23, v11

    new-instance v11, Lbwa;

    move-object/from16 v24, v0

    const/4 v0, 0x3

    invoke-direct {v11, v6, v0}, Lbwa;-><init>(Lbwp;I)V

    invoke-virtual {v12, v4, v8, v15, v11}, Lboy;->h(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lbqh;)V

    goto :goto_1

    :cond_1
    move-object/from16 v24, v0

    move-object/from16 v23, v11

    :goto_1
    const-class v0, Landroid/os/ParcelFileDescriptor;

    const-class v6, Landroid/graphics/Bitmap;

    invoke-virtual {v12, v4, v0, v6, v5}, Lboy;->h(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lbqh;)V

    const-class v0, Landroid/content/res/AssetFileDescriptor;

    const-class v6, Landroid/graphics/Bitmap;

    new-instance v8, Lbxk;

    new-instance v11, Lbxh;

    const/4 v15, 0x1

    invoke-direct {v11, v15}, Lbxh;-><init>(I)V

    invoke-direct {v8, v9, v11}, Lbxk;-><init>(Lbsw;Lbxi;)V

    invoke-virtual {v12, v4, v0, v6, v8}, Lboy;->h(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lbqh;)V

    const-class v0, Landroid/graphics/Bitmap;

    const-class v6, Landroid/graphics/Bitmap;

    sget-object v8, Lbvl;->a:Lbvl;

    invoke-virtual {v12, v0, v6, v8}, Lboy;->g(Ljava/lang/Class;Ljava/lang/Class;Lbva;)V

    const-class v0, Landroid/graphics/Bitmap;

    const-class v6, Landroid/graphics/Bitmap;

    new-instance v8, Lbxs;

    const/4 v11, 0x1

    invoke-direct {v8, v11}, Lbxs;-><init>(I)V

    invoke-virtual {v12, v4, v0, v6, v8}, Lboy;->h(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lbqh;)V

    const-class v0, Landroid/graphics/Bitmap;

    invoke-virtual {v12, v0, v7}, Lboy;->e(Ljava/lang/Class;Lbqi;)V

    const-class v0, Ljava/nio/ByteBuffer;

    const-class v6, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v8, Lbvv;

    invoke-direct {v8, v13, v3}, Lbvv;-><init>(Landroid/content/res/Resources;Lbqh;)V

    move-object/from16 v3, v27

    invoke-virtual {v12, v3, v0, v6, v8}, Lboy;->h(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lbqh;)V

    const-class v0, Ljava/io/InputStream;

    const-class v6, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v8, Lbvv;

    invoke-direct {v8, v13, v1}, Lbvv;-><init>(Landroid/content/res/Resources;Lbqh;)V

    invoke-virtual {v12, v3, v0, v6, v8}, Lboy;->h(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lbqh;)V

    const-class v0, Landroid/os/ParcelFileDescriptor;

    const-class v1, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v6, Lbvv;

    invoke-direct {v6, v13, v5}, Lbvv;-><init>(Landroid/content/res/Resources;Lbqh;)V

    invoke-virtual {v12, v3, v0, v1, v6}, Lboy;->h(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lbqh;)V

    const-class v0, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v1, Lbvw;

    invoke-direct {v1, v9, v7}, Lbvw;-><init>(Lbsw;Lbqi;)V

    invoke-virtual {v12, v0, v1}, Lboy;->e(Ljava/lang/Class;Lbqi;)V

    const-class v0, Ljava/io/InputStream;

    const-class v1, Lbxv;

    new-instance v3, Lbyd;

    move-object/from16 v5, v26

    invoke-direct {v3, v14, v5, v10}, Lbyd;-><init>(Ljava/util/List;Lbqh;Lbsu;)V

    invoke-virtual {v12, v2, v0, v1, v3}, Lboy;->h(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lbqh;)V

    const-class v0, Ljava/nio/ByteBuffer;

    const-class v1, Lbxv;

    invoke-virtual {v12, v2, v0, v1, v5}, Lboy;->h(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lbqh;)V

    const-class v0, Lbxv;

    new-instance v1, Lbxw;

    invoke-direct {v1}, Lbxw;-><init>()V

    invoke-virtual {v12, v0, v1}, Lboy;->e(Ljava/lang/Class;Lbqi;)V

    const-class v0, Lbpn;

    const-class v1, Lbpn;

    sget-object v2, Lbvl;->a:Lbvl;

    invoke-virtual {v12, v0, v1, v2}, Lboy;->g(Ljava/lang/Class;Ljava/lang/Class;Lbva;)V

    const-class v0, Lbpn;

    const-class v1, Landroid/graphics/Bitmap;

    new-instance v2, Lbwa;

    const/4 v3, 0x6

    invoke-direct {v2, v9, v3}, Lbwa;-><init>(Lbsw;I)V

    invoke-virtual {v12, v4, v0, v1, v2}, Lboy;->h(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lbqh;)V

    const-class v0, Landroid/net/Uri;

    const-class v1, Landroid/graphics/drawable/Drawable;

    move-object/from16 v2, v24

    invoke-virtual {v12, v0, v1, v2}, Lboy;->f(Ljava/lang/Class;Ljava/lang/Class;Lbqh;)V

    const-class v0, Landroid/net/Uri;

    const-class v1, Landroid/graphics/Bitmap;

    new-instance v4, Lbxc;

    const/4 v5, 0x1

    invoke-direct {v4, v2, v9, v5}, Lbxc;-><init>(Lbxr;Lbsw;I)V

    invoke-virtual {v12, v0, v1, v4}, Lboy;->f(Ljava/lang/Class;Ljava/lang/Class;Lbqh;)V

    new-instance v0, Lbxl;

    invoke-direct {v0}, Lbxl;-><init>()V

    invoke-virtual {v12, v0}, Lboy;->j(Lbqp;)V

    const-class v0, Ljava/io/File;

    const-class v1, Ljava/nio/ByteBuffer;

    new-instance v2, Lbud;

    const/4 v4, 0x2

    invoke-direct {v2, v4}, Lbud;-><init>(I)V

    invoke-virtual {v12, v0, v1, v2}, Lboy;->g(Ljava/lang/Class;Ljava/lang/Class;Lbva;)V

    const-class v0, Ljava/io/File;

    const-class v1, Ljava/io/InputStream;

    new-instance v2, Lbul;

    new-instance v4, Lbuo;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lbuo;-><init>(I)V

    invoke-direct {v2, v4, v5}, Lbul;-><init>(Lbun;I)V

    invoke-virtual {v12, v0, v1, v2}, Lboy;->g(Ljava/lang/Class;Ljava/lang/Class;Lbva;)V

    const-class v0, Ljava/io/File;

    const-class v1, Ljava/io/File;

    new-instance v2, Lbxs;

    const/4 v4, 0x2

    invoke-direct {v2, v4}, Lbxs;-><init>(I)V

    invoke-virtual {v12, v0, v1, v2}, Lboy;->f(Ljava/lang/Class;Ljava/lang/Class;Lbqh;)V

    const-class v0, Ljava/io/File;

    const-class v1, Landroid/os/ParcelFileDescriptor;

    new-instance v2, Lbul;

    new-instance v4, Lbuo;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Lbuo;-><init>(I)V

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lbul;-><init>(Lbun;I)V

    invoke-virtual {v12, v0, v1, v2}, Lboy;->g(Ljava/lang/Class;Ljava/lang/Class;Lbva;)V

    const-class v0, Ljava/io/File;

    const-class v1, Ljava/io/File;

    sget-object v2, Lbvl;->a:Lbvl;

    invoke-virtual {v12, v0, v1, v2}, Lboy;->g(Ljava/lang/Class;Ljava/lang/Class;Lbva;)V

    new-instance v0, Lbqy;

    invoke-direct {v0, v10}, Lbqy;-><init>(Lbsu;)V

    invoke-virtual {v12, v0}, Lboy;->j(Lbqp;)V

    invoke-static {}, Lbrc;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lbrb;

    invoke-direct {v0}, Lbrb;-><init>()V

    invoke-virtual {v12, v0}, Lboy;->j(Lbqp;)V

    :cond_2
    const-class v0, Lbop;

    move-object/from16 v1, v18

    invoke-virtual {v1, v0}, Lbkc;->a(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lbuh;

    move-object/from16 v2, v23

    const/4 v4, 0x2

    invoke-direct {v0, v2, v4}, Lbuh;-><init>(Landroid/content/Context;I)V

    new-instance v4, Lbuh;

    const/4 v5, 0x1

    invoke-direct {v4, v2, v5}, Lbuh;-><init>(Landroid/content/Context;I)V

    new-instance v5, Lbuh;

    const/4 v6, 0x0

    invoke-direct {v5, v2, v6}, Lbuh;-><init>(Landroid/content/Context;I)V

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v7, Ljava/io/InputStream;

    invoke-virtual {v12, v6, v7, v0}, Lboy;->g(Ljava/lang/Class;Ljava/lang/Class;Lbva;)V

    const-class v6, Ljava/lang/Integer;

    const-class v7, Ljava/io/InputStream;

    invoke-virtual {v12, v6, v7, v0}, Lboy;->g(Ljava/lang/Class;Ljava/lang/Class;Lbva;)V

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v6, Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v12, v0, v6, v4}, Lboy;->g(Ljava/lang/Class;Ljava/lang/Class;Lbva;)V

    const-class v0, Ljava/lang/Integer;

    const-class v6, Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v12, v0, v6, v4}, Lboy;->g(Ljava/lang/Class;Ljava/lang/Class;Lbva;)V

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v4, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v12, v0, v4, v5}, Lboy;->g(Ljava/lang/Class;Ljava/lang/Class;Lbva;)V

    const-class v0, Ljava/lang/Integer;

    const-class v4, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v12, v0, v4, v5}, Lboy;->g(Ljava/lang/Class;Ljava/lang/Class;Lbva;)V

    const-class v0, Landroid/net/Uri;

    const-class v4, Ljava/io/InputStream;

    new-instance v5, Lbul;

    const/4 v6, 0x3

    invoke-direct {v5, v2, v6}, Lbul;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v12, v0, v4, v5}, Lboy;->g(Ljava/lang/Class;Ljava/lang/Class;Lbva;)V

    const-class v0, Landroid/net/Uri;

    const-class v4, Landroid/content/res/AssetFileDescriptor;

    new-instance v5, Lbul;

    const/4 v6, 0x2

    invoke-direct {v5, v2, v6}, Lbul;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v12, v0, v4, v5}, Lboy;->g(Ljava/lang/Class;Ljava/lang/Class;Lbva;)V

    goto :goto_2

    :cond_3
    move-object/from16 v2, v23

    new-instance v0, Lbvf;

    const/4 v4, 0x3

    invoke-direct {v0, v13, v4}, Lbvf;-><init>(Landroid/content/res/Resources;I)V

    new-instance v4, Lbvf;

    const/4 v5, 0x2

    invoke-direct {v4, v13, v5}, Lbvf;-><init>(Landroid/content/res/Resources;I)V

    new-instance v5, Lbvf;

    const/4 v6, 0x0

    invoke-direct {v5, v13, v6}, Lbvf;-><init>(Landroid/content/res/Resources;I)V

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v7, Ljava/io/InputStream;

    invoke-virtual {v12, v6, v7, v0}, Lboy;->g(Ljava/lang/Class;Ljava/lang/Class;Lbva;)V

    const-class v6, Ljava/lang/Integer;

    const-class v7, Ljava/io/InputStream;

    invoke-virtual {v12, v6, v7, v0}, Lboy;->g(Ljava/lang/Class;Ljava/lang/Class;Lbva;)V

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v6, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v12, v0, v6, v4}, Lboy;->g(Ljava/lang/Class;Ljava/lang/Class;Lbva;)V

    const-class v0, Ljava/lang/Integer;

    const-class v6, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v12, v0, v6, v4}, Lboy;->g(Ljava/lang/Class;Ljava/lang/Class;Lbva;)V

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v4, Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v12, v0, v4, v5}, Lboy;->g(Ljava/lang/Class;Ljava/lang/Class;Lbva;)V

    const-class v0, Ljava/lang/Integer;

    const-class v4, Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v12, v0, v4, v5}, Lboy;->g(Ljava/lang/Class;Ljava/lang/Class;Lbva;)V

    :goto_2
    new-instance v0, Lbvf;

    const/4 v4, 0x4

    invoke-direct {v0, v13, v4}, Lbvf;-><init>(Landroid/content/res/Resources;I)V

    const-class v5, Ljava/lang/Integer;

    const-class v6, Landroid/net/Uri;

    invoke-virtual {v12, v5, v6, v0}, Lboy;->g(Ljava/lang/Class;Ljava/lang/Class;Lbva;)V

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v6, Landroid/net/Uri;

    invoke-virtual {v12, v5, v6, v0}, Lboy;->g(Ljava/lang/Class;Ljava/lang/Class;Lbva;)V

    const-class v0, Ljava/lang/String;

    const-class v5, Ljava/io/InputStream;

    new-instance v6, Lbul;

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct {v6, v8, v7}, Lbul;-><init>(I[B)V

    invoke-virtual {v12, v0, v5, v6}, Lboy;->g(Ljava/lang/Class;Ljava/lang/Class;Lbva;)V

    const-class v0, Landroid/net/Uri;

    const-class v5, Ljava/io/InputStream;

    new-instance v6, Lbul;

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct {v6, v8, v7}, Lbul;-><init>(I[B)V

    invoke-virtual {v12, v0, v5, v6}, Lboy;->g(Ljava/lang/Class;Ljava/lang/Class;Lbva;)V

    const-class v0, Ljava/lang/String;

    const-class v5, Ljava/io/InputStream;

    new-instance v6, Lbud;

    const/4 v7, 0x5

    invoke-direct {v6, v7}, Lbud;-><init>(I)V

    invoke-virtual {v12, v0, v5, v6}, Lboy;->g(Ljava/lang/Class;Ljava/lang/Class;Lbva;)V

    const-class v0, Ljava/lang/String;

    const-class v5, Landroid/os/ParcelFileDescriptor;

    new-instance v6, Lbud;

    invoke-direct {v6, v4}, Lbud;-><init>(I)V

    invoke-virtual {v12, v0, v5, v6}, Lboy;->g(Ljava/lang/Class;Ljava/lang/Class;Lbva;)V

    const-class v0, Ljava/lang/String;

    const-class v4, Landroid/content/res/AssetFileDescriptor;

    new-instance v5, Lbud;

    const/4 v6, 0x3

    invoke-direct {v5, v6}, Lbud;-><init>(I)V

    invoke-virtual {v12, v0, v4, v5}, Lboy;->g(Ljava/lang/Class;Ljava/lang/Class;Lbva;)V

    const-class v0, Landroid/net/Uri;

    const-class v4, Ljava/io/InputStream;

    new-instance v5, Lbtz;

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    const/4 v8, 0x0

    invoke-direct {v5, v6, v8}, Lbtz;-><init>(Landroid/content/res/AssetManager;I)V

    invoke-virtual {v12, v0, v4, v5}, Lboy;->g(Ljava/lang/Class;Ljava/lang/Class;Lbva;)V

    const-class v0, Landroid/net/Uri;

    const-class v4, Landroid/content/res/AssetFileDescriptor;

    new-instance v5, Lbtz;

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    const/4 v8, 0x1

    invoke-direct {v5, v6, v8}, Lbtz;-><init>(Landroid/content/res/AssetManager;I)V

    invoke-virtual {v12, v0, v4, v5}, Lboy;->g(Ljava/lang/Class;Ljava/lang/Class;Lbva;)V

    const-class v0, Landroid/net/Uri;

    const-class v4, Ljava/io/InputStream;

    new-instance v5, Lbvf;

    invoke-direct {v5, v2, v3}, Lbvf;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v12, v0, v4, v5}, Lboy;->g(Ljava/lang/Class;Ljava/lang/Class;Lbva;)V

    const-class v0, Landroid/net/Uri;

    const-class v3, Ljava/io/InputStream;

    new-instance v4, Lbvf;

    const/4 v5, 0x7

    invoke-direct {v4, v2, v5}, Lbvf;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v12, v0, v3, v4}, Lboy;->g(Ljava/lang/Class;Ljava/lang/Class;Lbva;)V

    const-class v0, Landroid/net/Uri;

    const-class v3, Ljava/io/InputStream;

    new-instance v4, Lbvo;

    const-class v5, Ljava/io/InputStream;

    invoke-direct {v4, v2, v5}, Lbvo;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v12, v0, v3, v4}, Lboy;->g(Ljava/lang/Class;Ljava/lang/Class;Lbva;)V

    const-class v0, Landroid/net/Uri;

    const-class v3, Landroid/os/ParcelFileDescriptor;

    new-instance v4, Lbvo;

    const-class v5, Landroid/os/ParcelFileDescriptor;

    invoke-direct {v4, v2, v5}, Lbvo;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v12, v0, v3, v4}, Lboy;->g(Ljava/lang/Class;Ljava/lang/Class;Lbva;)V

    const-class v0, Landroid/net/Uri;

    const-class v3, Ljava/io/InputStream;

    new-instance v4, Lbvi;

    move-object/from16 v5, v21

    const/4 v6, 0x0

    const/4 v8, 0x2

    invoke-direct {v4, v5, v1, v8, v6}, Lbvi;-><init>(Landroid/content/ContentResolver;Lbkc;I[B)V

    invoke-virtual {v12, v0, v3, v4}, Lboy;->g(Ljava/lang/Class;Ljava/lang/Class;Lbva;)V

    const-class v0, Landroid/net/Uri;

    const-class v3, Landroid/os/ParcelFileDescriptor;

    new-instance v4, Lbvi;

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-direct {v4, v5, v1, v8, v6}, Lbvi;-><init>(Landroid/content/ContentResolver;Lbkc;I[B)V

    invoke-virtual {v12, v0, v3, v4}, Lboy;->g(Ljava/lang/Class;Ljava/lang/Class;Lbva;)V

    const-class v0, Landroid/net/Uri;

    const-class v3, Landroid/content/res/AssetFileDescriptor;

    new-instance v4, Lbvi;

    const/4 v6, 0x0

    const/4 v8, 0x1

    invoke-direct {v4, v5, v1, v8, v6}, Lbvi;-><init>(Landroid/content/ContentResolver;Lbkc;I[B)V

    invoke-virtual {v12, v0, v3, v4}, Lboy;->g(Ljava/lang/Class;Ljava/lang/Class;Lbva;)V

    const-class v0, Landroid/net/Uri;

    const-class v1, Ljava/io/InputStream;

    new-instance v3, Lbvl;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lbvl;-><init>(I)V

    invoke-virtual {v12, v0, v1, v3}, Lboy;->g(Ljava/lang/Class;Ljava/lang/Class;Lbva;)V

    const-class v0, Ljava/net/URL;

    const-class v1, Ljava/io/InputStream;

    new-instance v3, Lbvl;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Lbvl;-><init>(I)V

    invoke-virtual {v12, v0, v1, v3}, Lboy;->g(Ljava/lang/Class;Ljava/lang/Class;Lbva;)V

    const-class v0, Landroid/net/Uri;

    const-class v1, Ljava/io/File;

    new-instance v3, Lbvf;

    const/4 v4, 0x1

    invoke-direct {v3, v2, v4}, Lbvf;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v12, v0, v1, v3}, Lboy;->g(Ljava/lang/Class;Ljava/lang/Class;Lbva;)V

    const-class v0, Lbuq;

    const-class v1, Ljava/io/InputStream;

    new-instance v2, Lbvf;

    invoke-direct {v2, v7}, Lbvf;-><init>(I)V

    invoke-virtual {v12, v0, v1, v2}, Lboy;->g(Ljava/lang/Class;Ljava/lang/Class;Lbva;)V

    const-class v0, Ljava/nio/ByteBuffer;

    new-instance v1, Lbud;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lbud;-><init>(I)V

    move-object/from16 v2, v17

    invoke-virtual {v12, v2, v0, v1}, Lboy;->g(Ljava/lang/Class;Ljava/lang/Class;Lbva;)V

    const-class v0, Ljava/io/InputStream;

    new-instance v1, Lbud;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lbud;-><init>(I)V

    invoke-virtual {v12, v2, v0, v1}, Lboy;->g(Ljava/lang/Class;Ljava/lang/Class;Lbva;)V

    const-class v0, Landroid/net/Uri;

    const-class v1, Landroid/net/Uri;

    sget-object v3, Lbvl;->a:Lbvl;

    invoke-virtual {v12, v0, v1, v3}, Lboy;->g(Ljava/lang/Class;Ljava/lang/Class;Lbva;)V

    const-class v0, Landroid/graphics/drawable/Drawable;

    const-class v1, Landroid/graphics/drawable/Drawable;

    sget-object v3, Lbvl;->a:Lbvl;

    invoke-virtual {v12, v0, v1, v3}, Lboy;->g(Ljava/lang/Class;Ljava/lang/Class;Lbva;)V

    const-class v0, Landroid/graphics/drawable/Drawable;

    const-class v1, Landroid/graphics/drawable/Drawable;

    new-instance v3, Lbxs;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lbxs;-><init>(I)V

    invoke-virtual {v12, v0, v1, v3}, Lboy;->f(Ljava/lang/Class;Ljava/lang/Class;Lbqh;)V

    const-class v0, Landroid/graphics/Bitmap;

    const-class v1, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v3, Lbye;

    const/4 v4, 0x0

    invoke-direct {v3, v13, v4}, Lbye;-><init>(Landroid/content/res/Resources;I)V

    invoke-virtual {v12, v0, v1, v3}, Lboy;->k(Ljava/lang/Class;Ljava/lang/Class;Lbyg;)V

    const-class v0, Landroid/graphics/Bitmap;

    move-object/from16 v1, v19

    invoke-virtual {v12, v0, v2, v1}, Lboy;->k(Ljava/lang/Class;Ljava/lang/Class;Lbyg;)V

    const-class v0, Landroid/graphics/drawable/Drawable;

    new-instance v3, Lbyf;

    move-object/from16 v4, v20

    invoke-direct {v3, v9, v1, v4}, Lbyf;-><init>(Lbsw;Lbyg;Lbyg;)V

    invoke-virtual {v12, v0, v2, v3}, Lboy;->k(Ljava/lang/Class;Ljava/lang/Class;Lbyg;)V

    const-class v0, Lbxv;

    invoke-virtual {v12, v0, v2, v4}, Lboy;->k(Ljava/lang/Class;Ljava/lang/Class;Lbyg;)V

    new-instance v0, Lbxk;

    new-instance v1, Lbxh;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lbxh;-><init>(I)V

    invoke-direct {v0, v9, v1}, Lbxk;-><init>(Lbsw;Lbxi;)V

    const-class v1, Ljava/nio/ByteBuffer;

    const-class v2, Landroid/graphics/Bitmap;

    invoke-virtual {v12, v1, v2, v0}, Lboy;->f(Ljava/lang/Class;Ljava/lang/Class;Lbqh;)V

    const-class v1, Ljava/nio/ByteBuffer;

    const-class v2, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v3, Lbvv;

    invoke-direct {v3, v13, v0}, Lbvv;-><init>(Landroid/content/res/Resources;Lbqh;)V

    invoke-virtual {v12, v1, v2, v3}, Lboy;->f(Ljava/lang/Class;Ljava/lang/Class;Lbqh;)V

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/camera/filmstrip/GlideConfiguration;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    move-object/from16 v1, p0

    iput-boolean v2, v1, Lboz;->c:Z

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-object v12

    :catchall_0
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_4

    :catchall_1
    move-exception v0

    :goto_4
    const/4 v2, 0x0

    iput-boolean v2, v1, Lboz;->c:Z

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Recursive Registry initialization! In your AppGlideModule and LibraryGlideModules, Make sure you\'re using the provided Registry rather calling glide.getRegistry()!"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_6

    :goto_5
    throw v0

    :goto_6
    goto :goto_5
.end method

.class public final synthetic Lebp;
.super Ljava/lang/Object;

# interfaces
.implements Ljzs;


# instance fields
.field public final synthetic a:Lkbc;

.field public final synthetic b:Loiw;

.field public final synthetic c:Landroid/content/Context;

.field public final synthetic d:Ljava/lang/String;

.field private final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Lkbc;Loiw;Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    iput p5, p0, Lebp;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lebp;->a:Lkbc;

    iput-object p2, p0, Lebp;->b:Loiw;

    iput-object p3, p0, Lebp;->c:Landroid/content/Context;

    iput-object p4, p0, Lebp;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 20

    move-object/from16 v1, p0

    iget v0, v1, Lebp;->e:I

    const-string v2, "addSuppressed"

    const-string v3, "Unable to get model asset file"

    const/4 v4, 0x0

    const/4 v5, 0x1

    packed-switch v0, :pswitch_data_0

    iget-object v6, v1, Lebp;->a:Lkbc;

    iget-object v0, v1, Lebp;->b:Loiw;

    iget-object v7, v1, Lebp;->c:Landroid/content/Context;

    iget-object v8, v1, Lebp;->d:Ljava/lang/String;

    move-object/from16 v9, p1

    check-cast v9, Lcjp;

    const-string v9, "Lancet#initialize"

    invoke-interface {v6, v9}, Lkbc;->e(Ljava/lang/String;)V

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/gcam/Gcam;

    invoke-static {}, Lebq;->b()Lnrz;

    move-result-object v9

    goto/16 :goto_2

    :pswitch_0
    iget-object v6, v1, Lebp;->a:Lkbc;

    iget-object v0, v1, Lebp;->b:Loiw;

    iget-object v7, v1, Lebp;->c:Landroid/content/Context;

    iget-object v8, v1, Lebp;->d:Ljava/lang/String;

    move-object/from16 v9, p1

    check-cast v9, Lcjp;

    const-string v9, "Pecan#initialize"

    invoke-interface {v6, v9}, Lkbc;->e(Ljava/lang/String;)V

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/gcam/Gcam;

    invoke-static {}, Lebq;->b()Lnrz;

    move-result-object v9

    :try_start_0
    invoke-virtual {v7}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v7
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v11

    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v12

    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v14

    invoke-static {v0}, Lcom/google/googlex/gcam/Gcam;->a(Lcom/google/googlex/gcam/Gcam;)J

    move-result-wide v16

    move-object v10, v9

    check-cast v10, Lcom/google/googlex/gcam/hdrplus/NativeHdrPlusInterface;

    invoke-virtual/range {v10 .. v17}, Lcom/google/googlex/gcam/hdrplus/NativeHdrPlusInterface;->nativeInitializePecanFromOpenFile(IJJJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v7, :cond_1

    :try_start_2
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v8, v0

    if-eqz v7, :cond_0

    :try_start_3
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v7, v0

    :try_start_4
    const-class v0, Ljava/lang/Throwable;

    new-array v9, v5, [Ljava/lang/Class;

    const-class v10, Ljava/lang/Throwable;

    aput-object v10, v9, v4

    invoke-virtual {v0, v2, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v2, v5, [Ljava/lang/Object;

    aput-object v7, v2, v4

    invoke-virtual {v0, v8, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_0
    :goto_0
    :try_start_5
    throw v8
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    move-exception v0

    sget-object v2, Ledh;->a:Lnak;

    invoke-virtual {v2}, Lnaf;->b()Lnaz;

    move-result-object v2

    const-string v3, "Failed to initialize Pecan"

    const/16 v4, 0x52d

    invoke-static {v2, v3, v4, v0}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V

    goto :goto_1

    :catch_2
    move-exception v0

    sget-object v2, Ledh;->a:Lnak;

    invoke-virtual {v2}, Lnaf;->b()Lnaz;

    move-result-object v2

    const/16 v4, 0x52c

    invoke-static {v2, v3, v4, v0}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V

    :cond_1
    :goto_1
    invoke-interface {v6}, Lkbc;->f()V

    return-void

    :goto_2
    :try_start_6
    invoke-virtual {v7}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v7
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_4

    :try_start_7
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v10

    invoke-virtual {v10}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v12

    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v13

    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v15

    invoke-static {v0}, Lcom/google/googlex/gcam/Gcam;->a(Lcom/google/googlex/gcam/Gcam;)J

    move-result-wide v18

    move-object v11, v9

    check-cast v11, Lcom/google/googlex/gcam/hdrplus/NativeHdrPlusInterface;

    const/16 v17, 0x0

    invoke-virtual/range {v11 .. v19}, Lcom/google/googlex/gcam/hdrplus/NativeHdrPlusInterface;->nativeInitializeLancetFromOpenFile(IJJZJ)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-eqz v7, :cond_3

    :try_start_8
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v9, v0

    if-eqz v7, :cond_2

    :try_start_9
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object v7, v0

    :try_start_a
    const-class v0, Ljava/lang/Throwable;

    new-array v10, v5, [Ljava/lang/Class;

    const-class v11, Ljava/lang/Throwable;

    aput-object v11, v10, v4

    invoke-virtual {v0, v2, v10}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v2, v5, [Ljava/lang/Object;

    aput-object v7, v2, v4

    invoke-virtual {v0, v9, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    :cond_2
    :goto_3
    :try_start_b
    throw v9
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_4

    :catch_4
    move-exception v0

    sget-object v2, Ledf;->a:Lnak;

    invoke-virtual {v2}, Lnaf;->b()Lnaz;

    move-result-object v2

    const-string v3, "Failed to initialize %s"

    const/16 v4, 0x528

    invoke-static {v2, v3, v8, v4, v0}, Ld;->i(Lnaz;Ljava/lang/String;Ljava/lang/Object;CLjava/lang/Throwable;)V

    goto :goto_4

    :catch_5
    move-exception v0

    sget-object v2, Ledf;->a:Lnak;

    invoke-virtual {v2}, Lnaf;->b()Lnaz;

    move-result-object v2

    const/16 v4, 0x527

    invoke-static {v2, v3, v4, v0}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V

    :cond_3
    :goto_4
    invoke-interface {v6}, Lkbc;->f()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

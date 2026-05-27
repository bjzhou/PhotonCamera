.class Lcom/agc/net/NetworkUtil$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/agc/net/NetworkUtil;->downloadLutFile(Ljava/lang/String;Ljava/lang/String;Lcom/agc/net/NetworkUtil$DownloadProgressListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$fileUrl:Ljava/lang/String;

.field public final synthetic val$filename:Ljava/lang/String;

.field public final synthetic val$progressListener:Lcom/agc/net/NetworkUtil$DownloadProgressListener;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/agc/net/NetworkUtil$DownloadProgressListener;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/agc/net/NetworkUtil$5;->val$filename:Ljava/lang/String;

    iput-object p2, p0, Lcom/agc/net/NetworkUtil$5;->val$progressListener:Lcom/agc/net/NetworkUtil$DownloadProgressListener;

    iput-object p3, p0, Lcom/agc/net/NetworkUtil$5;->val$fileUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 20

    move-object/from16 v1, p0

    const-string v0, "NetworkUtil"

    :try_start_0
    iget-object v2, v1, Lcom/agc/net/NetworkUtil$5;->val$filename:Ljava/lang/String;

    invoke-static {v2}, Lcom/agc/net/NetworkUtil;->removeFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeFileExtension = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/agc/Log;->d(Ljava/lang/Object;Ljava/lang/Object;)I

    sget-object v3, Lcom/Globals;->lutFolder:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    :cond_0
    new-instance v4, Ljava/io/File;

    iget-object v5, v1, Lcom/agc/net/NetworkUtil$5;->val$filename:Ljava/lang/String;

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v7, ".png"

    const-string v8, "cube"

    if-eqz v6, :cond_3

    :try_start_1
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v3, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LUT exist: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/agc/Log;->d(Ljava/lang/Object;Ljava/lang/Object;)I

    iget-object v0, v1, Lcom/agc/net/NetworkUtil$5;->val$progressListener:Lcom/agc/net/NetworkUtil$DownloadProgressListener;

    if-eqz v0, :cond_2

    invoke-interface {v0, v5}, Lcom/agc/net/NetworkUtil$DownloadProgressListener;->onDownloadSuccess(Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    iget-object v5, v1, Lcom/agc/net/NetworkUtil$5;->val$progressListener:Lcom/agc/net/NetworkUtil$DownloadProgressListener;

    if-eqz v5, :cond_4

    invoke-interface {v5}, Lcom/agc/net/NetworkUtil$DownloadProgressListener;->onDownloadStart()V

    :cond_4
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ".temp"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v3, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    :cond_5
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    new-instance v6, Ljava/net/URL;

    iget-object v9, v1, Lcom/agc/net/NetworkUtil$5;->val$fileUrl:Ljava/lang/String;

    invoke-direct {v6, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    check-cast v6, Ljava/net/HttpURLConnection;

    const-string v9, "GET"

    invoke-virtual {v6, v9}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v9

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    new-instance v11, Ljava/io/FileOutputStream;

    invoke-direct {v11, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v12, 0x400

    new-array v12, v12, [B

    const-wide/16 v13, 0x0

    :goto_0
    invoke-virtual {v10, v12}, Ljava/io/InputStream;->read([B)I

    move-result v15

    move-object/from16 v16, v3

    const/4 v3, -0x1

    if-eq v15, v3, :cond_7

    const/4 v3, 0x0

    invoke-virtual {v11, v12, v3, v15}, Ljava/io/OutputStream;->write([BII)V

    move-object/from16 v17, v2

    int-to-long v2, v15

    add-long/2addr v13, v2

    const-wide/16 v2, 0x64

    mul-long/2addr v2, v13

    move-object v15, v12

    move-wide/from16 v18, v13

    int-to-long v12, v9

    div-long/2addr v2, v12

    long-to-int v2, v2

    iget-object v3, v1, Lcom/agc/net/NetworkUtil$5;->val$progressListener:Lcom/agc/net/NetworkUtil$DownloadProgressListener;

    if-eqz v3, :cond_6

    invoke-interface {v3, v2}, Lcom/agc/net/NetworkUtil$DownloadProgressListener;->onProgress(I)V

    :cond_6
    move-object v12, v15

    move-object/from16 v3, v16

    move-object/from16 v2, v17

    move-wide/from16 v13, v18

    goto :goto_0

    :cond_7
    move-object/from16 v17, v2

    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    invoke-virtual {v5, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    const/16 v4, 0x64

    if-eqz v3, :cond_8

    const-string v3, "cube download successful, change format to png."

    invoke-static {v0, v3}, Lcom/agc/Log;->d(Ljava/lang/Object;Ljava/lang/Object;)I

    invoke-static {v2}, Lcom/agc/util/CubeUtil;->getLutPathBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_8

    new-instance v2, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v6, v17

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v6, v16

    invoke-direct {v2, v6, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v4}, Lcom/agc/util/ImageUtil;->saveBitmapFile(Landroid/graphics/Bitmap;Ljava/lang/String;I)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    :cond_8
    iget-object v3, v1, Lcom/agc/net/NetworkUtil$5;->val$progressListener:Lcom/agc/net/NetworkUtil$DownloadProgressListener;

    if-eqz v3, :cond_9

    invoke-interface {v3, v4}, Lcom/agc/net/NetworkUtil$DownloadProgressListener;->onProgress(I)V

    iget-object v3, v1, Lcom/agc/net/NetworkUtil$5;->val$progressListener:Lcom/agc/net/NetworkUtil$DownloadProgressListener;

    invoke-interface {v3, v2}, Lcom/agc/net/NetworkUtil$DownloadProgressListener;->onDownloadSuccess(Ljava/lang/String;)V

    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cube download finish "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/agc/Log;->d(Ljava/lang/Object;Ljava/lang/Object;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v0, v1, Lcom/agc/net/NetworkUtil$5;->val$progressListener:Lcom/agc/net/NetworkUtil$DownloadProgressListener;

    if-eqz v0, :cond_a

    invoke-interface {v0}, Lcom/agc/net/NetworkUtil$DownloadProgressListener;->onDownloadError()V

    :cond_a
    :goto_1
    return-void
.end method

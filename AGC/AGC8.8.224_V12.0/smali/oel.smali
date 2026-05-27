.class public final Loel;
.super Ljava/lang/Object;

# interfaces
.implements Loeo;


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Loel;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Loel;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(Loey;)Lngb;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final b()Loev;
    .locals 5

    iget-object v0, p0, Loel;->a:Landroid/content/Context;

    sget-object v1, Lodz;->a:Ljava/lang/String;

    sget-object v1, Loev;->a:Loev;

    invoke-virtual {v1}, Lnws;->O()Lnwn;

    move-result-object v1

    const-string v2, "current_device_params"

    const v3, 0x35587a2b

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4, v0}, Lodz;->a(Lnxx;Ljava/lang/String;IZLandroid/content/Context;)Lnxy;

    move-result-object v0

    check-cast v0, Loev;

    return-object v0
.end method

.method public final c()Loew;
    .locals 12

    iget-object v0, p0, Loel;->a:Landroid/content/Context;

    sget-object v1, Lodz;->a:Ljava/lang/String;

    sget-object v1, Loew;->e:Loew;

    invoke-virtual {v1}, Lnws;->O()Lnwn;

    move-result-object v1

    const-string v2, "phone_params"

    const v3, 0x2e765996

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4, v0}, Lodz;->a(Lnxx;Ljava/lang/String;IZLandroid/content/Context;)Lnxy;

    move-result-object v0

    check-cast v0, Loew;

    if-nez v0, :cond_10

    iget-object v0, p0, Loel;->a:Landroid/content/Context;

    sget-object v1, Loen;->a:Ljava/util/ArrayList;

    sget-object v1, Loew;->e:Loew;

    invoke-virtual {v1}, Lnws;->O()Lnwn;

    move-result-object v1

    sget-object v2, Loen;->b:Ljava/util/List;

    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v5, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v7, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    invoke-static {v5}, Loen;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const/4 v10, 0x0

    if-eqz v9, :cond_f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Loem;

    invoke-virtual {v9, v3, v5, v6, v7}, Loem;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_1

    invoke-virtual {v9, v3, v8, v6, v7}, Loem;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    :cond_1
    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, v9, Loem;->a:Ljava/lang/Object;

    aput-object v3, v2, v4

    iget-object v3, v9, Loem;->b:Ljava/lang/Object;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    iget-object v3, v9, Loem;->c:Ljava/lang/Object;

    const/4 v6, 0x2

    aput-object v3, v2, v6

    const/4 v3, 0x3

    iget-object v7, v9, Loem;->d:Ljava/lang/Object;

    aput-object v7, v2, v3

    iget-object v3, v9, Loem;->e:Ljava/lang/Object;

    const/4 v7, 0x4

    aput-object v3, v2, v7

    const/4 v3, 0x5

    iget-object v8, v9, Loem;->f:Ljava/lang/Object;

    aput-object v8, v2, v3

    const/4 v3, 0x6

    iget-object v8, v9, Loem;->g:Ljava/lang/Object;

    aput-object v8, v2, v3

    const-string v3, "Found override: {MANUFACTURER=%s, DEVICE=%s, MODEL=%s, HARDWARE=%s} : x_ppi=%f, y_ppi=%f, bottom_bezel_height=%f)"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    iget-object v2, v9, Loem;->e:Ljava/lang/Object;

    if-eqz v2, :cond_3

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget-object v3, v1, Lnwn;->b:Lnws;

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_2
    iget-object v3, v1, Lnwn;->b:Lnws;

    check-cast v3, Loew;

    iget v8, v3, Loew;->a:I

    or-int/2addr v8, v5

    iput v8, v3, Loew;->a:I

    iput v2, v3, Loew;->b:F

    :cond_3
    iget-object v2, v9, Loem;->f:Ljava/lang/Object;

    if-eqz v2, :cond_5

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget-object v3, v1, Lnwn;->b:Lnws;

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_4
    iget-object v3, v1, Lnwn;->b:Lnws;

    check-cast v3, Loew;

    iget v8, v3, Loew;->a:I

    or-int/2addr v8, v6

    iput v8, v3, Loew;->a:I

    iput v2, v3, Loew;->c:F

    :cond_5
    iget-object v2, v9, Loem;->g:Ljava/lang/Object;

    if-eqz v2, :cond_7

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget-object v3, v1, Lnwn;->b:Lnws;

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_6
    iget-object v3, v1, Lnwn;->b:Lnws;

    check-cast v3, Loew;

    iget v8, v3, Loew;->a:I

    or-int/2addr v7, v8

    iput v7, v3, Loew;->a:I

    iput v2, v3, Loew;->d:F

    :cond_7
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v3, "samsung"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-static {v0}, Llho;->W(Landroid/content/Context;)Landroid/view/Display;

    move-result-object v0

    invoke-static {v0}, Llho;->V(Landroid/view/Display;)Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    if-nez v0, :cond_8

    goto :goto_1

    :cond_8
    sget-object v10, Loen;->a:Ljava/util/ArrayList;

    if-eqz v10, :cond_9

    goto :goto_1

    :cond_9
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    sput-object v7, Loen;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroid/view/Display;->getSupportedModes()[Landroid/view/Display$Mode;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v7, 0x0

    :goto_0
    array-length v8, v0

    if-ge v7, v8, :cond_a

    aget-object v8, v0, v7

    sget-object v9, Loen;->a:Ljava/util/ArrayList;

    new-instance v10, Landroid/util/Size;

    invoke-virtual {v8}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v11

    invoke-virtual {v8}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v8

    invoke-direct {v10, v11, v8}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_a
    sget-object v10, Loen;->a:Ljava/util/ArrayList;

    :goto_1
    if-eqz v10, :cond_e

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    :goto_2
    if-ge v4, v0, :cond_b

    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/Size;

    invoke-virtual {v7}, Landroid/util/Size;->getWidth()I

    move-result v8

    invoke-virtual {v7}, Landroid/util/Size;->getHeight()I

    move-result v7

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_b
    iget v0, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    if-eq v0, v3, :cond_e

    iget v0, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Non-native screen resolution; scaling DPI by: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-float v3, v3

    div-float/2addr v0, v3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lnwn;->b:Lnws;

    move-object v3, v2

    check-cast v3, Loew;

    iget v3, v3, Loew;->b:F

    mul-float v3, v3, v0

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_c

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_c
    iget-object v2, v1, Lnwn;->b:Lnws;

    move-object v4, v2

    check-cast v4, Loew;

    iget v7, v4, Loew;->a:I

    or-int/2addr v5, v7

    iput v5, v4, Loew;->a:I

    iput v3, v4, Loew;->b:F

    iget v3, v4, Loew;->c:F

    mul-float v3, v3, v0

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_d
    iget-object v0, v1, Lnwn;->b:Lnws;

    check-cast v0, Loew;

    iget v2, v0, Loew;->a:I

    or-int/2addr v2, v6

    iput v2, v0, Loew;->a:I

    iput v3, v0, Loew;->c:F

    :cond_e
    invoke-virtual {v1}, Lnwn;->i()Lnws;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Loew;

    goto :goto_3

    :cond_f
    :goto_3
    return-object v10

    :cond_10
    return-object v0
.end method

.method public final d()Loex;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final e()V
    .locals 0

    return-void
.end method

.method public final f(Loev;)Z
    .locals 8

    const-string v0, "Error writing parameters: "

    const/4 v1, 0x1

    const-string v2, "current_device_params"

    const/4 v3, 0x0

    if-nez p1, :cond_2

    iget-object p1, p0, Loel;->a:Landroid/content/Context;

    sget-object v0, Lodz;->a:Ljava/lang/String;

    :try_start_0
    invoke-static {v2, p1}, Lodz;->b(Ljava/lang/String;Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception p1

    sget-object v0, Lodz;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Error clearing device parameters: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    sget-object p1, Lodz;->a:Ljava/lang/String;

    const-string v0, "Could not clear Cardboard parameters from storage."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v1

    :cond_2
    iget-object v4, p0, Loel;->a:Landroid/content/Context;

    sget-object v5, Lodz;->a:Ljava/lang/String;

    invoke-interface {p1}, Lnxy;->J()[B

    move-result-object p1

    const/4 v5, 0x0

    :try_start_1
    new-instance v6, Ljava/io/BufferedOutputStream;

    new-instance v7, Ljava/io/FileOutputStream;

    invoke-static {v2, v4}, Lodz;->b(Ljava/lang/String;Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    invoke-direct {v7, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v2, 0x8

    :try_start_2
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    const v4, 0x35587a2b

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    array-length v4, p1

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v6, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    goto :goto_4

    :catch_2
    move-exception p1

    :try_start_3
    sget-object v1, Lodz;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v1, 0x0

    :goto_1
    :try_start_4
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    :catch_3
    move-exception p1

    :goto_2
    move v3, v1

    goto :goto_7

    :goto_3
    move-object v5, v6

    goto :goto_8

    :goto_4
    move-object v5, v6

    goto :goto_5

    :catch_4
    move-exception p1

    move-object v5, v6

    goto :goto_6

    :catchall_1
    move-exception p1

    goto :goto_8

    :catch_5
    move-exception p1

    :goto_5
    :try_start_5
    sget-object v1, Lodz;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v5, :cond_3

    :try_start_6
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_7

    :catch_6
    move-exception p1

    goto :goto_7

    :catch_7
    move-exception p1

    :goto_6
    :try_start_7
    sget-object v0, Lodz;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parameters file not found for writing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-eqz v5, :cond_3

    :try_start_8
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_7

    :cond_3
    :goto_7
    if-nez v3, :cond_4

    sget-object p1, Lodz;->a:Ljava/lang/String;

    const-string v0, "Could not write Cardboard parameters to storage."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return v3

    :catchall_2
    move-exception p1

    :goto_8
    if-eqz v5, :cond_5

    :try_start_9
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    goto :goto_9

    :catch_8
    move-exception v0

    :cond_5
    :goto_9
    throw p1
.end method

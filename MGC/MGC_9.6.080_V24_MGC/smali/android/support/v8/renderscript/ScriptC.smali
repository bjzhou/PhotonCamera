.class public Landroid/support/v8/renderscript/ScriptC;
.super Landroid/support/v8/renderscript/Script;
.source "PG"


# static fields
.field private static final TAG:Ljava/lang/String; = "ScriptC"


# direct methods
.method public constructor <init>(JLandroid/support/v8/renderscript/RenderScript;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v8/renderscript/Script;-><init>(JLandroid/support/v8/renderscript/RenderScript;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method protected constructor <init>(Landroid/support/v8/renderscript/RenderScript;Landroid/content/res/Resources;I)V
    .locals 2

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_0
    cmp-long p3, p1, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {p1, p2, p3}, Landroid/support/v8/renderscript/ScriptC;->RjLKHEmpcwTXDxAZ(Landroid/support/v8/renderscript/RenderScript;Landroid/content/res/Resources;I)J

    move-result-wide p1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    const v1, 0x1a

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_6
    const v0, 0x1e

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_7
    goto/32 :goto_14

    nop

    nop

    :goto_8
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_9
    if-nez p3, :cond_1

    nop

    nop

    goto/32 :goto_2

    nop

    :cond_1
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-direct {p0, p1}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_13

    nop

    nop

    :goto_d
    invoke-static {p0, p1, p2}, Landroid/support/v8/renderscript/ScriptC;->mGzSdvynYvjZedfG(Landroid/support/v8/renderscript/BaseObj;J)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_8

    nop

    nop

    :goto_f
    const-string p1, "Loading of ScriptC script failed."

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_10
    new-instance p0, Landroid/support/v8/renderscript/RSRuntimeException;

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_11
    const-wide/16 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_12
    invoke-direct {p0, v0, v1, p1}, Landroid/support/v8/renderscript/Script;-><init>(JLandroid/support/v8/renderscript/RenderScript;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_13
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method protected constructor <init>(Landroid/support/v8/renderscript/RenderScript;Ljava/lang/String;[B[B)V
    .locals 4

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_0
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0, p1}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    cmp-long p3, p1, v0

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const-string p1, "Loading of ScriptC script failed."

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_5
    add-int v0, v0, v1

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

    :goto_6
    const v0, 0x14

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    :goto_8
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_1

    nop

    nop

    :goto_a
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {p1, p2, p4}, Landroid/support/v8/renderscript/ScriptC;->lfVnrofLBVslrHpg(Landroid/support/v8/renderscript/RenderScript;Ljava/lang/String;[B)J

    move-result-wide p1

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    new-instance p0, Landroid/support/v8/renderscript/RSRuntimeException;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_10
    invoke-direct {p0, v0, v1, p1}, Landroid/support/v8/renderscript/Script;-><init>(JLandroid/support/v8/renderscript/RenderScript;)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_11
    const v1, 0xa

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-static {p0, p1, p2}, Landroid/support/v8/renderscript/ScriptC;->BHsKyPYDXMrROMxA(Landroid/support/v8/renderscript/BaseObj;J)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-eq v2, v3, :cond_1

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :cond_1
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const/4 v3, 0x4

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_15
    invoke-static {p1, p2, p3}, Landroid/support/v8/renderscript/ScriptC;->pXUyObtYinSEwSnf(Landroid/support/v8/renderscript/RenderScript;Ljava/lang/String;[B)J

    move-result-wide p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_16
    if-nez p3, :cond_2

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

    :cond_2
    goto/32 :goto_12

    nop

    nop

    :goto_17
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_18
    const-wide/16 v0, 0x0

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

    :goto_19
    sget v2, Landroid/support/v8/renderscript/RenderScript;->sPointerSize:I

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_1a
    goto/16 :goto_c

    nop

    nop

    :goto_1b
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static BHsKyPYDXMrROMxA(Landroid/support/v8/renderscript/BaseObj;J)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1, p2}, Landroid/support/v8/renderscript/BaseObj;->setID(J)V

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static BMEasBopdVvZgwpO(Ljava/io/File;)Ljava/lang/String;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static CFjqDashAoPObJNl(Landroid/support/v8/renderscript/RenderScript;Ljava/lang/String;Ljava/lang/String;[BI)J
    .locals 2

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const v0, 0x1f

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_7

    nop

    nop

    :goto_2
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0x11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/v8/renderscript/RenderScript;->nScriptCCreate(Ljava/lang/String;Ljava/lang/String;[BI)J

    move-result-wide v0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-wide v0

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop
.end method

.method public static HfhfmPmhScjuXvkE(Ljava/io/InputStream;)V
    .locals 0

    goto/32 :goto_1

    nop

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
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static IOBmHrdrXSsQVmwy(Landroid/content/res/Resources;I)Ljava/lang/String;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static MeFASmnENWBxlXxC(Landroid/support/v8/renderscript/RenderScript;)Landroid/content/Context;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop
.end method

.method public static NQKhwlkUtYDIjdeW(Ljava/io/InputStream;[BII)I
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public static QfJEJIVrcExKdGLx(Ljava/lang/Object;ILjava/lang/Object;II)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, p1, p2, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop
.end method

.method public static RjLKHEmpcwTXDxAZ(Landroid/support/v8/renderscript/RenderScript;Landroid/content/res/Resources;I)J
    .locals 2

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-wide v0

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0x14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_1

    nop

    :goto_4
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_4

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_8
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

    :goto_9
    invoke-static {p0, p1, p2}, Landroid/support/v8/renderscript/ScriptC;->internalCreate(Landroid/support/v8/renderscript/RenderScript;Landroid/content/res/Resources;I)J

    move-result-wide v0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop
.end method

.method public static WCkSLEllviUzLwrr(Landroid/content/res/Resources;I)Ljava/io/InputStream;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

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

    nop
.end method

.method public static evDqLXheharDKeam(Landroid/support/v8/renderscript/RenderScript;)Landroid/content/Context;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method private static declared-synchronized internalCreate(Landroid/support/v8/renderscript/RenderScript;Landroid/content/res/Resources;I)J
    .locals 8

    goto/32 :goto_b

    nop

    nop

    :goto_0
    const/16 v2, 0x400

    nop

    nop

    nop

    nop

    :try_start_0
    new-array v2, v2, [B

    nop

    nop

    nop

    nop

    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    move v4, v3

    nop

    nop

    nop

    :goto_1
    array-length v5, v2

    nop

    nop

    nop

    nop

    nop

    sub-int v6, v5, v4

    nop

    nop

    nop

    if-nez v6, :cond_0

    nop

    nop

    nop

    nop

    nop

    add-int v6, v5, v5

    nop

    nop

    nop

    nop

    nop

    new-array v7, v6, [B

    nop

    nop

    nop

    invoke-static {v2, v3, v7, v3, v5}, Landroid/support/v8/renderscript/ScriptC;->QfJEJIVrcExKdGLx(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr v6, v4

    nop

    nop

    nop

    nop

    move-object v2, v7

    nop

    nop

    nop

    nop

    nop

    :cond_0
    invoke-static {v1, v2, v4, v6}, Landroid/support/v8/renderscript/ScriptC;->NQKhwlkUtYDIjdeW(Ljava/io/InputStream;[BII)I

    move-result v5

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_a

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_e

    nop

    :goto_4
    add-int/2addr v4, v5

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_5
    throw p0

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_11

    nop

    nop

    :goto_7
    return-wide p0

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0x13

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v5, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_2
    :try_start_1
    invoke-static {v1}, Landroid/support/v8/renderscript/ScriptC;->lrXISBnNzZWoABTG(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {p1, p2}, Landroid/support/v8/renderscript/ScriptC;->IOBmHrdrXSsQVmwy(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    invoke-static {p0}, Landroid/support/v8/renderscript/ScriptC;->MeFASmnENWBxlXxC(Landroid/support/v8/renderscript/RenderScript;)Landroid/content/Context;

    move-result-object p2

    nop

    nop

    invoke-static {p2}, Landroid/support/v8/renderscript/ScriptC;->pTYfcBurZkiCZPCh(Landroid/content/Context;)Ljava/io/File;

    move-result-object p2

    nop

    nop

    nop

    nop

    invoke-static {p2}, Landroid/support/v8/renderscript/ScriptC;->BMEasBopdVvZgwpO(Ljava/io/File;)Ljava/lang/String;

    move-result-object p2

    nop

    nop

    nop

    nop

    invoke-static {p0, p1, p2, v2, v4}, Landroid/support/v8/renderscript/ScriptC;->nODUoeWiFElQMTBv(Landroid/support/v8/renderscript/RenderScript;Ljava/lang/String;Ljava/lang/String;[BI)J

    move-result-wide p0

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v0, 0x16

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_c
    monitor-exit v0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/16 :goto_1

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    :try_start_3
    invoke-static {v1}, Landroid/support/v8/renderscript/ScriptC;->HfhfmPmhScjuXvkE(Ljava/io/InputStream;)V

    throw p0

    nop

    nop

    nop

    nop

    nop
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catch_0
    :try_start_4
    new-instance p0, Landroid/content/res/Resources$NotFoundException;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {p0}, Landroid/content/res/Resources$NotFoundException;-><init>()V

    throw p0

    nop

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/32 :goto_5

    nop

    nop

    :goto_e
    goto/32 :goto_6

    nop

    :goto_f
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_10
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_11
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_12
    monitor-enter v0

    nop

    :try_start_5
    invoke-static {p1, p2}, Landroid/support/v8/renderscript/ScriptC;->WCkSLEllviUzLwrr(Landroid/content/res/Resources;I)Ljava/io/InputStream;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_13
    const-class v0, Landroid/support/v8/renderscript/ScriptC;

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
.end method

.method private static declared-synchronized internalStringCreate(Landroid/support/v8/renderscript/RenderScript;Ljava/lang/String;[B)J
    .locals 3

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    throw p0

    nop

    nop

    :goto_3
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_4
    monitor-enter v0

    nop

    nop

    nop

    nop

    :try_start_0
    invoke-static {p0}, Landroid/support/v8/renderscript/ScriptC;->evDqLXheharDKeam(Landroid/support/v8/renderscript/RenderScript;)Landroid/content/Context;

    move-result-object v1

    nop

    nop

    nop

    nop

    invoke-static {v1}, Landroid/support/v8/renderscript/ScriptC;->qjDUEzrhaPruVYfu(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    nop

    nop

    invoke-static {v1}, Landroid/support/v8/renderscript/ScriptC;->mzUmOJBKdUOjNlsE(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    array-length v2, p2

    nop

    nop

    invoke-static {p0, p1, v1, p2, v2}, Landroid/support/v8/renderscript/ScriptC;->CFjqDashAoPObJNl(Landroid/support/v8/renderscript/RenderScript;Ljava/lang/String;Ljava/lang/String;[BI)J

    move-result-wide p0

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_5
    const-class v0, Landroid/support/v8/renderscript/ScriptC;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_6
    const v0, 0x8

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0xa

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_9
    return-wide p0

    nop

    :catchall_0
    move-exception p0

    nop

    :try_start_1
    monitor-exit v0

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_2

    nop

    nop

    :goto_a
    monitor-exit v0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

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

    :goto_d
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_0
    goto/32 :goto_0

    nop
.end method

.method public static lfVnrofLBVslrHpg(Landroid/support/v8/renderscript/RenderScript;Ljava/lang/String;[B)J
    .locals 2

    goto/32 :goto_7

    nop

    nop

    :goto_0
    return-wide v0

    nop

    :goto_1
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_4
    invoke-static {p0, p1, p2}, Landroid/support/v8/renderscript/ScriptC;->internalStringCreate(Landroid/support/v8/renderscript/RenderScript;Ljava/lang/String;[B)J

    move-result-wide v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_6
    const v1, 0xe

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_7
    const v0, 0x5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method public static lrXISBnNzZWoABTG(Ljava/io/InputStream;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static mGzSdvynYvjZedfG(Landroid/support/v8/renderscript/BaseObj;J)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1, p2}, Landroid/support/v8/renderscript/BaseObj;->setID(J)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static mzUmOJBKdUOjNlsE(Ljava/io/File;)Ljava/lang/String;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

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
.end method

.method public static nODUoeWiFElQMTBv(Landroid/support/v8/renderscript/RenderScript;Ljava/lang/String;Ljava/lang/String;[BI)J
    .locals 2

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_a

    nop

    nop

    :goto_2
    goto/32 :goto_5

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_4
    const v1, 0x12

    nop

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

    :goto_5
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/v8/renderscript/RenderScript;->nScriptCCreate(Ljava/lang/String;Ljava/lang/String;[BI)J

    move-result-wide v0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_2

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_7
    const v0, 0x5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_9
    return-wide v0

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static pTYfcBurZkiCZPCh(Landroid/content/Context;)Ljava/io/File;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

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

    nop

    nop

    nop
.end method

.method public static pXUyObtYinSEwSnf(Landroid/support/v8/renderscript/RenderScript;Ljava/lang/String;[B)J
    .locals 2

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0x6

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_3
    const v1, 0x18

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-wide v0

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_7
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {p0, p1, p2}, Landroid/support/v8/renderscript/ScriptC;->internalStringCreate(Landroid/support/v8/renderscript/RenderScript;Ljava/lang/String;[B)J

    move-result-wide v0

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_9
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_8

    nop

    nop

    nop
.end method

.method public static qjDUEzrhaPruVYfu(Landroid/content/Context;)Ljava/io/File;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop
.end method

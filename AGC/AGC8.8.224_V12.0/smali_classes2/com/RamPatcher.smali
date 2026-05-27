.class public Lcom/RamPatcher;
.super Ljava/lang/Object;
.source "RamPatcher.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "rampatcher"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "libgcastartup.so"

    invoke-direct {p0, v0}, Lcom/RamPatcher;->ReadyToPatch(Ljava/lang/String;)V

    const-wide/32 v0, 0x2e2149c

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/RamPatcher;->ReadUserAddr(Ljava/lang/Long;)J

    move-result-wide v0

    const-string v2, "2a1f03e0"

    invoke-static {v2}, Lcom/RamPatcher;->String2Byte(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/RamPatcher;->setBytes(J[B)V

    invoke-direct {p0}, Lcom/RamPatcher;->PatchDone()V

    return-void
.end method

.method private native PatchDone()V
.end method

.method private ReadUserAddr(Ljava/lang/Long;)J
    .locals 4

    const-string v0, "Java_com_google_googlex_gcam_AndroidJniUtils_unlockBitmap"

    invoke-direct {p0, v0}, Lcom/RamPatcher;->getLibraryOffset(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/32 v2, 0x1877ea4

    sub-long/2addr v0, v2

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private native ReadyToPatch(Ljava/lang/String;)V
.end method

.method public static String2Byte(Ljava/lang/String;)[B
    .locals 6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v1, v0, 0x2

    new-array v1, v1, [B

    const/4 v2, 0x0

    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    add-int/lit8 v3, v0, -0x2

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    move v0, v3

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private native getLibraryOffset(Ljava/lang/String;)J
.end method

.method private native readRegion(JI)Ljava/lang/String;
.end method

.method private native readRegionRight(JI)Ljava/lang/String;
.end method

.method private native setBytes(J[B)V
.end method

.method private native setDouble(JD)V
.end method

.method private native setFloat(JF)V
.end method

.method private native setInt(JI)V
.end method

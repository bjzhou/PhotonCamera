.class Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$IntFloatFloatSort;
.super Ljava/lang/Object;
.source "KeyCycleOscillator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IntFloatFloatSort"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static partition([I[F[FII)I
    .locals 3

    .line 274
    aget v0, p0, p4

    move v1, p3

    :goto_0
    if-ge p3, p4, :cond_1

    .line 277
    aget v2, p0, p3

    if-gt v2, v0, :cond_0

    .line 278
    invoke-static {p0, p1, p2, v1, p3}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$IntFloatFloatSort;->swap([I[F[FII)V

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 282
    :cond_1
    invoke-static {p0, p1, p2, v1, p4}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$IntFloatFloatSort;->swap([I[F[FII)V

    return v1
.end method

.method static sort([I[F[FII)V
    .locals 6

    .line 256
    array-length v0, p0

    add-int/lit8 v0, v0, 0xa

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 258
    aput p4, v0, v1

    const/4 p4, 0x1

    .line 259
    aput p3, v0, p4

    const/4 p3, 0x2

    :cond_0
    :goto_0
    if-lez p3, :cond_1

    add-int/lit8 p3, p3, -0x1

    .line 261
    aget v1, v0, p3

    add-int/lit8 p3, p3, -0x1

    .line 262
    aget v2, v0, p3

    if-ge v1, v2, :cond_0

    .line 264
    invoke-static {p0, p1, p2, v1, v2}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$IntFloatFloatSort;->partition([I[F[FII)I

    move-result v3

    add-int/lit8 v4, p3, 0x1

    add-int/lit8 v5, v3, -0x1

    .line 265
    aput v5, v0, p3

    add-int/lit8 p3, v4, 0x1

    .line 266
    aput v1, v0, v4

    add-int/lit8 v1, p3, 0x1

    .line 267
    aput v2, v0, p3

    add-int/lit8 p3, v1, 0x1

    add-int/2addr v3, p4

    .line 268
    aput v3, v0, v1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static swap([I[F[FII)V
    .locals 2

    .line 287
    aget v0, p0, p3

    .line 288
    aget v1, p0, p4

    aput v1, p0, p3

    .line 289
    aput v0, p0, p4

    .line 290
    aget p0, p1, p3

    .line 291
    aget v0, p1, p4

    aput v0, p1, p3

    .line 292
    aput p0, p1, p4

    .line 293
    aget p0, p2, p3

    .line 294
    aget p1, p2, p4

    aput p1, p2, p3

    .line 295
    aput p0, p2, p4

    return-void
.end method

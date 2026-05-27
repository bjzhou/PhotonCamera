.class public final Lkotlin/experimental/BitwiseOperationsKt;
.super Ljava/lang/Object;
.source "bitwiseOperations.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0005\n\u0000\n\u0002\u0010\n\n\u0002\u0008\u0004\u001a\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\u0087\u000c\u001a\u0015\u0010\u0000\u001a\u00020\u0003*\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u0003H\u0087\u000c\u001a\r\u0010\u0004\u001a\u00020\u0001*\u00020\u0001H\u0087\u0008\u001a\r\u0010\u0004\u001a\u00020\u0003*\u00020\u0003H\u0087\u0008\u001a\u0015\u0010\u0005\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\u0087\u000c\u001a\u0015\u0010\u0005\u001a\u00020\u0003*\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u0003H\u0087\u000c\u001a\u0015\u0010\u0006\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\u0087\u000c\u001a\u0015\u0010\u0006\u001a\u00020\u0003*\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u0003H\u0087\u000c\u00a8\u0006\u0007"
    }
    d2 = {
        "and",
        "",
        "other",
        "",
        "inv",
        "or",
        "xor",
        "kotlin-stdlib"
    }
    k = 0x2
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method private static final and(BB)B
    .locals 1
    .param p0, "$this$and"    # B
    .param p1, "other"    # B

    .line 11
    and-int v0, p0, p1

    int-to-byte v0, v0

    return v0
.end method

.method private static final and(SS)S
    .locals 1
    .param p0, "$this$and"    # S
    .param p1, "other"    # S

    .line 32
    and-int v0, p0, p1

    int-to-short v0, v0

    return v0
.end method

.method private static final inv(B)B
    .locals 1
    .param p0, "$this$inv"    # B

    .line 26
    not-int v0, p0

    int-to-byte v0, v0

    return v0
.end method

.method private static final inv(S)S
    .locals 1
    .param p0, "$this$inv"    # S

    .line 47
    not-int v0, p0

    int-to-short v0, v0

    return v0
.end method

.method private static final or(BB)B
    .locals 1
    .param p0, "$this$or"    # B
    .param p1, "other"    # B

    .line 16
    or-int v0, p0, p1

    int-to-byte v0, v0

    return v0
.end method

.method private static final or(SS)S
    .locals 1
    .param p0, "$this$or"    # S
    .param p1, "other"    # S

    .line 37
    or-int v0, p0, p1

    int-to-short v0, v0

    return v0
.end method

.method private static final xor(BB)B
    .locals 1
    .param p0, "$this$xor"    # B
    .param p1, "other"    # B

    .line 21
    xor-int v0, p0, p1

    int-to-byte v0, v0

    return v0
.end method

.method private static final xor(SS)S
    .locals 1
    .param p0, "$this$xor"    # S
    .param p1, "other"    # S

    .line 42
    xor-int v0, p0, p1

    int-to-short v0, v0

    return v0
.end method

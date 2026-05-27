.class public final Landroidx/core/database/CursorWindowCompat;
.super Ljava/lang/Object;
.source "CursorWindowCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/database/CursorWindowCompat$Api15Impl;,
        Landroidx/core/database/CursorWindowCompat$Api28Impl;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/lang/String;J)Landroid/database/CursorWindow;
    .locals 2

    .line 44
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 45
    invoke-static {p0, p1, p2}, Landroidx/core/database/CursorWindowCompat$Api28Impl;->createCursorWindow(Ljava/lang/String;J)Landroid/database/CursorWindow;

    move-result-object p0

    return-object p0

    .line 46
    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0xf

    if-lt p1, p2, :cond_1

    .line 47
    invoke-static {p0}, Landroidx/core/database/CursorWindowCompat$Api15Impl;->createCursorWindow(Ljava/lang/String;)Landroid/database/CursorWindow;

    move-result-object p0

    return-object p0

    .line 49
    :cond_1
    new-instance p0, Landroid/database/CursorWindow;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/database/CursorWindow;-><init>(Z)V

    return-object p0
.end method

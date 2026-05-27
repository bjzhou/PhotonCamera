.class public Lcom/agc/Res$attr;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agc/Res;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "attr"
.end annotation


# static fields
.field public static final contrastColorThemeOverlay:I

.field public static final dynamicColorThemeOverlay:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "dynamicColorThemeOverlay"

    invoke-static {v0}, Lcom/agc/Res;->getAttrID(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/agc/Res$attr;->dynamicColorThemeOverlay:I

    const-string v0, "contrastColorThemeOverlay"

    invoke-static {v0}, Lcom/agc/Res;->getAttrID(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/agc/Res$attr;->contrastColorThemeOverlay:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

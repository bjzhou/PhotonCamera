.class public Lcom/agc/Res$style;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agc/Res;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "style"
.end annotation


# static fields
.field public static final black_dialog_style:I

.field public static final dialog_style:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "dialog_style"

    invoke-static {v0}, Lcom/agc/Res;->getStyleID(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/agc/Res$style;->dialog_style:I

    const-string v0, "black_dialog_style"

    invoke-static {v0}, Lcom/agc/Res;->getStyleID(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/agc/Res$style;->black_dialog_style:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

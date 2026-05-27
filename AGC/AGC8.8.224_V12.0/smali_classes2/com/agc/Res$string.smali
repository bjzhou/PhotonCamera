.class public Lcom/agc/Res$string;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agc/Res;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "string"
.end annotation


# static fields
.field public static final auto:I

.field public static final gcam_tools_title:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "auto"

    invoke-static {v0}, Lcom/agc/Res;->getStringID(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/agc/Res$string;->auto:I

    const-string v0, "gcam_tools_title"

    invoke-static {v0}, Lcom/agc/Res;->getStringID(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/agc/Res$string;->gcam_tools_title:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

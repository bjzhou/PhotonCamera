.class public Lcom/agc/LogData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/agc/LogData$Device;,
        Lcom/agc/LogData$Lens;,
        Lcom/agc/LogData$HardwareLevel;,
        Lcom/agc/LogData$Format;
    }
.end annotation


# static fields
.field static BLANK_STRING:Ljava/lang/String; = "--"

.field static NO_VALUE_FLOAT:F = 3.4028235E38f

.field static NO_VALUE_INT:I = 0x7fffffff

.field static NO_VALUE_STRING:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static format(F)Ljava/lang/String;
    .locals 1

    sget v0, Lcom/agc/LogData;->NO_VALUE_FLOAT:F

    cmpl-float v0, p0, v0

    if-nez v0, :cond_0

    sget-object p0, Lcom/agc/LogData;->BLANK_STRING:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static format(I)Ljava/lang/String;
    .locals 1

    sget v0, Lcom/agc/LogData;->NO_VALUE_INT:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/agc/LogData;->BLANK_STRING:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static format(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/agc/LogData;->NO_VALUE_STRING:Ljava/lang/String;

    invoke-static {p0, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/agc/LogData;->BLANK_STRING:Ljava/lang/String;

    :cond_0
    return-object p0
.end method
